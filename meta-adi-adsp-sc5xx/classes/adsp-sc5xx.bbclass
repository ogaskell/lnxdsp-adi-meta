inherit core-image extrausers

SUMMARY = "Minimal image for Analog Devices ADSP-SC5xx boards"
LICENSE = "MIT"

ICC = " \
    libmcapi \
    sc5xx-corecontrol \
"

CRYPTO = " \
	openssl \
	openssl-bin \
	cryptodev-linux \
	cryptodev-module \
	crypto-tests \
"

IMAGE_INSTALL = " \
    packagegroup-core-boot \
    packagegroup-base \
    ${CORE_IMAGE_EXTRA_INSTALL} \
    openssh \
    openssl \
    ncurses \
    busybox-watchdog-init \
    util-linux \
    rng-tools \
    ${ICC} \
    ${CRYPTO} \
"

IMAGE_INSTALL_append_adsp-sc594-som-ezkit = " \
	remoteproc-examples-sc594 \
"

COMPATIBLE_MACHINE = "(adsp-sc573-ezkit|adsp-sc584-ezkit|adsp-sc589-ezkit|adsp-sc589-mini|adsp-sc594-som-ezkit|adsp-sc598-som-ezkit)"

EXTRA_USERS_PARAMS = " \
	usermod -P adi root; \
"
