#!/sbin/sh

log_file="/tmp/recovery.log"

log() {
    echo "I:start_crypto_services.sh: $1" | tee -a "$log_file"
}

wait_for_service() {
	i=0
	while [ "$i" -lt 30 ]; do
		if [ "$(getprop init.svc."$1")" = "$2" ]; then
			return 0
		fi
		sleep 1
		i=$((i + 1))
	done
	log "$1 did not reach state $2."
	return 1
}

# The HAL reads the version properties in its constructor and hands them to the
# TA, so it is left disabled until they match the installed system. Start it
# even when they could not be read: keystore2 blocks until KeyMint registers,
# and nothing decrypts without it.
start_crypto_services() {
	
    log "Starting KeyMint..."
	setprop ctl.start vendor.keymint-qti
	wait_for_service vendor.keymint-qti running
}

start_crypto_services
