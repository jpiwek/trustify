#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-Trustify.mk)" "nbproject/Makefile-local-Trustify.mk"
include nbproject/Makefile-local-Trustify.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=Trustify
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Trust_and_Go.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Trust_and_Go.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/Trustify/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/Trustify/peripheral/sercom/i2c_master/plib_sercom1_i2c_master.c ../src/config/Trustify/peripheral/evsys/plib_evsys.c ../src/config/Trustify/peripheral/sercom/usart/plib_sercom0_usart.c ../src/config/Trustify/peripheral/pm/plib_pm.c ../src/main.c ../src/config/Trustify/initialization.c ../src/config/Trustify/interrupts.c ../src/config/Trustify/exceptions.c ../src/config/Trustify/stdio/xc32_monitor.c ../src/config/Trustify/peripheral/port/plib_port.c ../src/config/Trustify/peripheral/clock/plib_clock.c ../src/config/Trustify/peripheral/nvic/plib_nvic.c ../src/config/Trustify/peripheral/systick/plib_systick.c ../src/config/Trustify/startup_xc32.c ../src/config/Trustify/libc_syscalls.c ../src/config/Trustify/peripheral/eic/plib_eic.c ../src/config/Trustify/library/cryptoauthlib/tng/tnglora_cert_def_1_signer.c ../src/config/Trustify/library/cryptoauthlib/tng/tnglora_cert_def_2_device.c ../src/config/Trustify/library/cryptoauthlib/tng/tnglora_cert_def_4_device.c ../src/config/Trustify/library/cryptoauthlib/tng/tngtls_cert_def_1_signer.c ../src/config/Trustify/library/cryptoauthlib/tng/tngtls_cert_def_2_device.c ../src/config/Trustify/library/cryptoauthlib/tng/tngtls_cert_def_3_device.c ../src/config/Trustify/library/cryptoauthlib/tng/tng_atca.c ../src/config/Trustify/library/cryptoauthlib/tng/tng_atcacert_client.c ../src/config/Trustify/library/cryptoauthlib/tng/tng_root_cert.c ../src/config/Trustify/library/cryptoauthlib/atcacert/atcacert_client.c ../src/config/Trustify/library/cryptoauthlib/atcacert/atcacert_date.c ../src/config/Trustify/library/cryptoauthlib/atcacert/atcacert_def.c ../src/config/Trustify/library/cryptoauthlib/atcacert/atcacert_der.c ../src/config/Trustify/library/cryptoauthlib/atcacert/atcacert_host_hw.c ../src/config/Trustify/library/cryptoauthlib/atcacert/atcacert_host_sw.c ../src/config/Trustify/library/cryptoauthlib/atcacert/atcacert_pem.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_aes.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_aes_cbc.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_aes_cmac.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_aes_ctr.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_aes_gcm.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_checkmac.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_counter.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_derivekey.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_ecdh.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_gendig.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_genkey.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_hmac.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_info.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_kdf.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_lock.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_mac.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_nonce.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_privwrite.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_random.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_read.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_secureboot.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_selftest.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_sha.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_sign.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_updateextra.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_verify.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_write.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_helpers.c ../src/config/Trustify/library/cryptoauthlib/crypto/hashes/sha1_routines.c ../src/config/Trustify/library/cryptoauthlib/crypto/hashes/sha2_routines.c ../src/config/Trustify/library/cryptoauthlib/crypto/atca_crypto_sw_ecdsa.c ../src/config/Trustify/library/cryptoauthlib/crypto/atca_crypto_sw_rand.c ../src/config/Trustify/library/cryptoauthlib/crypto/atca_crypto_sw_sha1.c ../src/config/Trustify/library/cryptoauthlib/crypto/atca_crypto_sw_sha2.c ../src/config/Trustify/library/cryptoauthlib/host/atca_host.c ../src/config/Trustify/library/cryptoauthlib/jwt/atca_jwt.c ../src/config/Trustify/library/cryptoauthlib/atca_cfgs.c ../src/config/Trustify/library/cryptoauthlib/atca_command.c ../src/config/Trustify/library/cryptoauthlib/atca_device.c ../src/config/Trustify/library/cryptoauthlib/atca_execution.c ../src/config/Trustify/library/cryptoauthlib/atca_iface.c ../src/config/Trustify/library/cryptoauthlib/hal/hal_i2c_harmony.c ../src/config/Trustify/library/cryptoauthlib/hal/atca_hal.c ../src/config/Trustify/library/cryptoauthlib/hal/hal_i2c_harmony_init.c ../src/config/Trustify/library/cryptoauthlib/hal/hal_cortex_m_delay.c ../src/config/Trustify/library/cryptoauthlib/hal/ATECC608A_0.c ../src/config/Trustify/bsp/bsp.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/2117940715/plib_nvmctrl.o ${OBJECTDIR}/_ext/671368090/plib_sercom1_i2c_master.o ${OBJECTDIR}/_ext/1025033151/plib_evsys.o ${OBJECTDIR}/_ext/1247632078/plib_sercom0_usart.o ${OBJECTDIR}/_ext/1958438824/plib_pm.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1060005641/initialization.o ${OBJECTDIR}/_ext/1060005641/interrupts.o ${OBJECTDIR}/_ext/1060005641/exceptions.o ${OBJECTDIR}/_ext/874600305/xc32_monitor.o ${OBJECTDIR}/_ext/864028644/plib_port.o ${OBJECTDIR}/_ext/1027182637/plib_clock.o ${OBJECTDIR}/_ext/864081795/plib_nvic.o ${OBJECTDIR}/_ext/1883465617/plib_systick.o ${OBJECTDIR}/_ext/1060005641/startup_xc32.o ${OBJECTDIR}/_ext/1060005641/libc_syscalls.o ${OBJECTDIR}/_ext/582071996/plib_eic.o ${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_1_signer.o ${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_2_device.o ${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_4_device.o ${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_1_signer.o ${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_2_device.o ${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_3_device.o ${OBJECTDIR}/_ext/1345471186/tng_atca.o ${OBJECTDIR}/_ext/1345471186/tng_atcacert_client.o ${OBJECTDIR}/_ext/1345471186/tng_root_cert.o ${OBJECTDIR}/_ext/2128581100/atcacert_client.o ${OBJECTDIR}/_ext/2128581100/atcacert_date.o ${OBJECTDIR}/_ext/2128581100/atcacert_def.o ${OBJECTDIR}/_ext/2128581100/atcacert_der.o ${OBJECTDIR}/_ext/2128581100/atcacert_host_hw.o ${OBJECTDIR}/_ext/2128581100/atcacert_host_sw.o ${OBJECTDIR}/_ext/2128581100/atcacert_pem.o ${OBJECTDIR}/_ext/229649425/atca_basic.o ${OBJECTDIR}/_ext/229649425/atca_basic_aes.o ${OBJECTDIR}/_ext/229649425/atca_basic_aes_cbc.o ${OBJECTDIR}/_ext/229649425/atca_basic_aes_cmac.o ${OBJECTDIR}/_ext/229649425/atca_basic_aes_ctr.o ${OBJECTDIR}/_ext/229649425/atca_basic_aes_gcm.o ${OBJECTDIR}/_ext/229649425/atca_basic_checkmac.o ${OBJECTDIR}/_ext/229649425/atca_basic_counter.o ${OBJECTDIR}/_ext/229649425/atca_basic_derivekey.o ${OBJECTDIR}/_ext/229649425/atca_basic_ecdh.o ${OBJECTDIR}/_ext/229649425/atca_basic_gendig.o ${OBJECTDIR}/_ext/229649425/atca_basic_genkey.o ${OBJECTDIR}/_ext/229649425/atca_basic_hmac.o ${OBJECTDIR}/_ext/229649425/atca_basic_info.o ${OBJECTDIR}/_ext/229649425/atca_basic_kdf.o ${OBJECTDIR}/_ext/229649425/atca_basic_lock.o ${OBJECTDIR}/_ext/229649425/atca_basic_mac.o ${OBJECTDIR}/_ext/229649425/atca_basic_nonce.o ${OBJECTDIR}/_ext/229649425/atca_basic_privwrite.o ${OBJECTDIR}/_ext/229649425/atca_basic_random.o ${OBJECTDIR}/_ext/229649425/atca_basic_read.o ${OBJECTDIR}/_ext/229649425/atca_basic_secureboot.o ${OBJECTDIR}/_ext/229649425/atca_basic_selftest.o ${OBJECTDIR}/_ext/229649425/atca_basic_sha.o ${OBJECTDIR}/_ext/229649425/atca_basic_sign.o ${OBJECTDIR}/_ext/229649425/atca_basic_updateextra.o ${OBJECTDIR}/_ext/229649425/atca_basic_verify.o ${OBJECTDIR}/_ext/229649425/atca_basic_write.o ${OBJECTDIR}/_ext/229649425/atca_helpers.o ${OBJECTDIR}/_ext/204130805/sha1_routines.o ${OBJECTDIR}/_ext/204130805/sha2_routines.o ${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_ecdsa.o ${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_rand.o ${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_sha1.o ${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_sha2.o ${OBJECTDIR}/_ext/1239710151/atca_host.o ${OBJECTDIR}/_ext/1345480504/atca_jwt.o ${OBJECTDIR}/_ext/543975056/atca_cfgs.o ${OBJECTDIR}/_ext/543975056/atca_command.o ${OBJECTDIR}/_ext/543975056/atca_device.o ${OBJECTDIR}/_ext/543975056/atca_execution.o ${OBJECTDIR}/_ext/543975056/atca_iface.o ${OBJECTDIR}/_ext/1345483116/hal_i2c_harmony.o ${OBJECTDIR}/_ext/1345483116/atca_hal.o ${OBJECTDIR}/_ext/1345483116/hal_i2c_harmony_init.o ${OBJECTDIR}/_ext/1345483116/hal_cortex_m_delay.o ${OBJECTDIR}/_ext/1345483116/ATECC608A_0.o ${OBJECTDIR}/_ext/1542791463/bsp.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/2117940715/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/671368090/plib_sercom1_i2c_master.o.d ${OBJECTDIR}/_ext/1025033151/plib_evsys.o.d ${OBJECTDIR}/_ext/1247632078/plib_sercom0_usart.o.d ${OBJECTDIR}/_ext/1958438824/plib_pm.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1060005641/initialization.o.d ${OBJECTDIR}/_ext/1060005641/interrupts.o.d ${OBJECTDIR}/_ext/1060005641/exceptions.o.d ${OBJECTDIR}/_ext/874600305/xc32_monitor.o.d ${OBJECTDIR}/_ext/864028644/plib_port.o.d ${OBJECTDIR}/_ext/1027182637/plib_clock.o.d ${OBJECTDIR}/_ext/864081795/plib_nvic.o.d ${OBJECTDIR}/_ext/1883465617/plib_systick.o.d ${OBJECTDIR}/_ext/1060005641/startup_xc32.o.d ${OBJECTDIR}/_ext/1060005641/libc_syscalls.o.d ${OBJECTDIR}/_ext/582071996/plib_eic.o.d ${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_1_signer.o.d ${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_2_device.o.d ${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_4_device.o.d ${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_1_signer.o.d ${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_2_device.o.d ${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_3_device.o.d ${OBJECTDIR}/_ext/1345471186/tng_atca.o.d ${OBJECTDIR}/_ext/1345471186/tng_atcacert_client.o.d ${OBJECTDIR}/_ext/1345471186/tng_root_cert.o.d ${OBJECTDIR}/_ext/2128581100/atcacert_client.o.d ${OBJECTDIR}/_ext/2128581100/atcacert_date.o.d ${OBJECTDIR}/_ext/2128581100/atcacert_def.o.d ${OBJECTDIR}/_ext/2128581100/atcacert_der.o.d ${OBJECTDIR}/_ext/2128581100/atcacert_host_hw.o.d ${OBJECTDIR}/_ext/2128581100/atcacert_host_sw.o.d ${OBJECTDIR}/_ext/2128581100/atcacert_pem.o.d ${OBJECTDIR}/_ext/229649425/atca_basic.o.d ${OBJECTDIR}/_ext/229649425/atca_basic_aes.o.d ${OBJECTDIR}/_ext/229649425/atca_basic_aes_cbc.o.d ${OBJECTDIR}/_ext/229649425/atca_basic_aes_cmac.o.d ${OBJECTDIR}/_ext/229649425/atca_basic_aes_ctr.o.d ${OBJECTDIR}/_ext/229649425/atca_basic_aes_gcm.o.d ${OBJECTDIR}/_ext/229649425/atca_basic_checkmac.o.d ${OBJECTDIR}/_ext/229649425/atca_basic_counter.o.d ${OBJECTDIR}/_ext/229649425/atca_basic_derivekey.o.d ${OBJECTDIR}/_ext/229649425/atca_basic_ecdh.o.d ${OBJECTDIR}/_ext/229649425/atca_basic_gendig.o.d ${OBJECTDIR}/_ext/229649425/atca_basic_genkey.o.d ${OBJECTDIR}/_ext/229649425/atca_basic_hmac.o.d ${OBJECTDIR}/_ext/229649425/atca_basic_info.o.d ${OBJECTDIR}/_ext/229649425/atca_basic_kdf.o.d ${OBJECTDIR}/_ext/229649425/atca_basic_lock.o.d ${OBJECTDIR}/_ext/229649425/atca_basic_mac.o.d ${OBJECTDIR}/_ext/229649425/atca_basic_nonce.o.d ${OBJECTDIR}/_ext/229649425/atca_basic_privwrite.o.d ${OBJECTDIR}/_ext/229649425/atca_basic_random.o.d ${OBJECTDIR}/_ext/229649425/atca_basic_read.o.d ${OBJECTDIR}/_ext/229649425/atca_basic_secureboot.o.d ${OBJECTDIR}/_ext/229649425/atca_basic_selftest.o.d ${OBJECTDIR}/_ext/229649425/atca_basic_sha.o.d ${OBJECTDIR}/_ext/229649425/atca_basic_sign.o.d ${OBJECTDIR}/_ext/229649425/atca_basic_updateextra.o.d ${OBJECTDIR}/_ext/229649425/atca_basic_verify.o.d ${OBJECTDIR}/_ext/229649425/atca_basic_write.o.d ${OBJECTDIR}/_ext/229649425/atca_helpers.o.d ${OBJECTDIR}/_ext/204130805/sha1_routines.o.d ${OBJECTDIR}/_ext/204130805/sha2_routines.o.d ${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_ecdsa.o.d ${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_rand.o.d ${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_sha1.o.d ${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_sha2.o.d ${OBJECTDIR}/_ext/1239710151/atca_host.o.d ${OBJECTDIR}/_ext/1345480504/atca_jwt.o.d ${OBJECTDIR}/_ext/543975056/atca_cfgs.o.d ${OBJECTDIR}/_ext/543975056/atca_command.o.d ${OBJECTDIR}/_ext/543975056/atca_device.o.d ${OBJECTDIR}/_ext/543975056/atca_execution.o.d ${OBJECTDIR}/_ext/543975056/atca_iface.o.d ${OBJECTDIR}/_ext/1345483116/hal_i2c_harmony.o.d ${OBJECTDIR}/_ext/1345483116/atca_hal.o.d ${OBJECTDIR}/_ext/1345483116/hal_i2c_harmony_init.o.d ${OBJECTDIR}/_ext/1345483116/hal_cortex_m_delay.o.d ${OBJECTDIR}/_ext/1345483116/ATECC608A_0.o.d ${OBJECTDIR}/_ext/1542791463/bsp.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/2117940715/plib_nvmctrl.o ${OBJECTDIR}/_ext/671368090/plib_sercom1_i2c_master.o ${OBJECTDIR}/_ext/1025033151/plib_evsys.o ${OBJECTDIR}/_ext/1247632078/plib_sercom0_usart.o ${OBJECTDIR}/_ext/1958438824/plib_pm.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1060005641/initialization.o ${OBJECTDIR}/_ext/1060005641/interrupts.o ${OBJECTDIR}/_ext/1060005641/exceptions.o ${OBJECTDIR}/_ext/874600305/xc32_monitor.o ${OBJECTDIR}/_ext/864028644/plib_port.o ${OBJECTDIR}/_ext/1027182637/plib_clock.o ${OBJECTDIR}/_ext/864081795/plib_nvic.o ${OBJECTDIR}/_ext/1883465617/plib_systick.o ${OBJECTDIR}/_ext/1060005641/startup_xc32.o ${OBJECTDIR}/_ext/1060005641/libc_syscalls.o ${OBJECTDIR}/_ext/582071996/plib_eic.o ${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_1_signer.o ${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_2_device.o ${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_4_device.o ${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_1_signer.o ${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_2_device.o ${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_3_device.o ${OBJECTDIR}/_ext/1345471186/tng_atca.o ${OBJECTDIR}/_ext/1345471186/tng_atcacert_client.o ${OBJECTDIR}/_ext/1345471186/tng_root_cert.o ${OBJECTDIR}/_ext/2128581100/atcacert_client.o ${OBJECTDIR}/_ext/2128581100/atcacert_date.o ${OBJECTDIR}/_ext/2128581100/atcacert_def.o ${OBJECTDIR}/_ext/2128581100/atcacert_der.o ${OBJECTDIR}/_ext/2128581100/atcacert_host_hw.o ${OBJECTDIR}/_ext/2128581100/atcacert_host_sw.o ${OBJECTDIR}/_ext/2128581100/atcacert_pem.o ${OBJECTDIR}/_ext/229649425/atca_basic.o ${OBJECTDIR}/_ext/229649425/atca_basic_aes.o ${OBJECTDIR}/_ext/229649425/atca_basic_aes_cbc.o ${OBJECTDIR}/_ext/229649425/atca_basic_aes_cmac.o ${OBJECTDIR}/_ext/229649425/atca_basic_aes_ctr.o ${OBJECTDIR}/_ext/229649425/atca_basic_aes_gcm.o ${OBJECTDIR}/_ext/229649425/atca_basic_checkmac.o ${OBJECTDIR}/_ext/229649425/atca_basic_counter.o ${OBJECTDIR}/_ext/229649425/atca_basic_derivekey.o ${OBJECTDIR}/_ext/229649425/atca_basic_ecdh.o ${OBJECTDIR}/_ext/229649425/atca_basic_gendig.o ${OBJECTDIR}/_ext/229649425/atca_basic_genkey.o ${OBJECTDIR}/_ext/229649425/atca_basic_hmac.o ${OBJECTDIR}/_ext/229649425/atca_basic_info.o ${OBJECTDIR}/_ext/229649425/atca_basic_kdf.o ${OBJECTDIR}/_ext/229649425/atca_basic_lock.o ${OBJECTDIR}/_ext/229649425/atca_basic_mac.o ${OBJECTDIR}/_ext/229649425/atca_basic_nonce.o ${OBJECTDIR}/_ext/229649425/atca_basic_privwrite.o ${OBJECTDIR}/_ext/229649425/atca_basic_random.o ${OBJECTDIR}/_ext/229649425/atca_basic_read.o ${OBJECTDIR}/_ext/229649425/atca_basic_secureboot.o ${OBJECTDIR}/_ext/229649425/atca_basic_selftest.o ${OBJECTDIR}/_ext/229649425/atca_basic_sha.o ${OBJECTDIR}/_ext/229649425/atca_basic_sign.o ${OBJECTDIR}/_ext/229649425/atca_basic_updateextra.o ${OBJECTDIR}/_ext/229649425/atca_basic_verify.o ${OBJECTDIR}/_ext/229649425/atca_basic_write.o ${OBJECTDIR}/_ext/229649425/atca_helpers.o ${OBJECTDIR}/_ext/204130805/sha1_routines.o ${OBJECTDIR}/_ext/204130805/sha2_routines.o ${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_ecdsa.o ${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_rand.o ${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_sha1.o ${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_sha2.o ${OBJECTDIR}/_ext/1239710151/atca_host.o ${OBJECTDIR}/_ext/1345480504/atca_jwt.o ${OBJECTDIR}/_ext/543975056/atca_cfgs.o ${OBJECTDIR}/_ext/543975056/atca_command.o ${OBJECTDIR}/_ext/543975056/atca_device.o ${OBJECTDIR}/_ext/543975056/atca_execution.o ${OBJECTDIR}/_ext/543975056/atca_iface.o ${OBJECTDIR}/_ext/1345483116/hal_i2c_harmony.o ${OBJECTDIR}/_ext/1345483116/atca_hal.o ${OBJECTDIR}/_ext/1345483116/hal_i2c_harmony_init.o ${OBJECTDIR}/_ext/1345483116/hal_cortex_m_delay.o ${OBJECTDIR}/_ext/1345483116/ATECC608A_0.o ${OBJECTDIR}/_ext/1542791463/bsp.o

# Source Files
SOURCEFILES=../src/config/Trustify/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/Trustify/peripheral/sercom/i2c_master/plib_sercom1_i2c_master.c ../src/config/Trustify/peripheral/evsys/plib_evsys.c ../src/config/Trustify/peripheral/sercom/usart/plib_sercom0_usart.c ../src/config/Trustify/peripheral/pm/plib_pm.c ../src/main.c ../src/config/Trustify/initialization.c ../src/config/Trustify/interrupts.c ../src/config/Trustify/exceptions.c ../src/config/Trustify/stdio/xc32_monitor.c ../src/config/Trustify/peripheral/port/plib_port.c ../src/config/Trustify/peripheral/clock/plib_clock.c ../src/config/Trustify/peripheral/nvic/plib_nvic.c ../src/config/Trustify/peripheral/systick/plib_systick.c ../src/config/Trustify/startup_xc32.c ../src/config/Trustify/libc_syscalls.c ../src/config/Trustify/peripheral/eic/plib_eic.c ../src/config/Trustify/library/cryptoauthlib/tng/tnglora_cert_def_1_signer.c ../src/config/Trustify/library/cryptoauthlib/tng/tnglora_cert_def_2_device.c ../src/config/Trustify/library/cryptoauthlib/tng/tnglora_cert_def_4_device.c ../src/config/Trustify/library/cryptoauthlib/tng/tngtls_cert_def_1_signer.c ../src/config/Trustify/library/cryptoauthlib/tng/tngtls_cert_def_2_device.c ../src/config/Trustify/library/cryptoauthlib/tng/tngtls_cert_def_3_device.c ../src/config/Trustify/library/cryptoauthlib/tng/tng_atca.c ../src/config/Trustify/library/cryptoauthlib/tng/tng_atcacert_client.c ../src/config/Trustify/library/cryptoauthlib/tng/tng_root_cert.c ../src/config/Trustify/library/cryptoauthlib/atcacert/atcacert_client.c ../src/config/Trustify/library/cryptoauthlib/atcacert/atcacert_date.c ../src/config/Trustify/library/cryptoauthlib/atcacert/atcacert_def.c ../src/config/Trustify/library/cryptoauthlib/atcacert/atcacert_der.c ../src/config/Trustify/library/cryptoauthlib/atcacert/atcacert_host_hw.c ../src/config/Trustify/library/cryptoauthlib/atcacert/atcacert_host_sw.c ../src/config/Trustify/library/cryptoauthlib/atcacert/atcacert_pem.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_aes.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_aes_cbc.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_aes_cmac.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_aes_ctr.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_aes_gcm.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_checkmac.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_counter.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_derivekey.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_ecdh.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_gendig.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_genkey.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_hmac.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_info.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_kdf.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_lock.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_mac.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_nonce.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_privwrite.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_random.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_read.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_secureboot.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_selftest.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_sha.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_sign.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_updateextra.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_verify.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_write.c ../src/config/Trustify/library/cryptoauthlib/basic/atca_helpers.c ../src/config/Trustify/library/cryptoauthlib/crypto/hashes/sha1_routines.c ../src/config/Trustify/library/cryptoauthlib/crypto/hashes/sha2_routines.c ../src/config/Trustify/library/cryptoauthlib/crypto/atca_crypto_sw_ecdsa.c ../src/config/Trustify/library/cryptoauthlib/crypto/atca_crypto_sw_rand.c ../src/config/Trustify/library/cryptoauthlib/crypto/atca_crypto_sw_sha1.c ../src/config/Trustify/library/cryptoauthlib/crypto/atca_crypto_sw_sha2.c ../src/config/Trustify/library/cryptoauthlib/host/atca_host.c ../src/config/Trustify/library/cryptoauthlib/jwt/atca_jwt.c ../src/config/Trustify/library/cryptoauthlib/atca_cfgs.c ../src/config/Trustify/library/cryptoauthlib/atca_command.c ../src/config/Trustify/library/cryptoauthlib/atca_device.c ../src/config/Trustify/library/cryptoauthlib/atca_execution.c ../src/config/Trustify/library/cryptoauthlib/atca_iface.c ../src/config/Trustify/library/cryptoauthlib/hal/hal_i2c_harmony.c ../src/config/Trustify/library/cryptoauthlib/hal/atca_hal.c ../src/config/Trustify/library/cryptoauthlib/hal/hal_i2c_harmony_init.c ../src/config/Trustify/library/cryptoauthlib/hal/hal_cortex_m_delay.c ../src/config/Trustify/library/cryptoauthlib/hal/ATECC608A_0.c ../src/config/Trustify/bsp/bsp.c

# Pack Options 
PACK_COMMON_OPTIONS=-I ${CMSIS_DIR}\CMSIS\Core\Include



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-Trustify.mk dist/${CND_CONF}/${IMAGE_TYPE}/Trust_and_Go.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATSAML11E16A
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/2117940715/plib_nvmctrl.o: ../src/config/Trustify/peripheral/nvmctrl/plib_nvmctrl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2117940715" 
	@${RM} ${OBJECTDIR}/_ext/2117940715/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/2117940715/plib_nvmctrl.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2117940715/plib_nvmctrl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2117940715/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/2117940715/plib_nvmctrl.o ../src/config/Trustify/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/671368090/plib_sercom1_i2c_master.o: ../src/config/Trustify/peripheral/sercom/i2c_master/plib_sercom1_i2c_master.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/671368090" 
	@${RM} ${OBJECTDIR}/_ext/671368090/plib_sercom1_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/671368090/plib_sercom1_i2c_master.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/671368090/plib_sercom1_i2c_master.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/671368090/plib_sercom1_i2c_master.o.d" -o ${OBJECTDIR}/_ext/671368090/plib_sercom1_i2c_master.o ../src/config/Trustify/peripheral/sercom/i2c_master/plib_sercom1_i2c_master.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1025033151/plib_evsys.o: ../src/config/Trustify/peripheral/evsys/plib_evsys.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1025033151" 
	@${RM} ${OBJECTDIR}/_ext/1025033151/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1025033151/plib_evsys.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1025033151/plib_evsys.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1025033151/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1025033151/plib_evsys.o ../src/config/Trustify/peripheral/evsys/plib_evsys.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1247632078/plib_sercom0_usart.o: ../src/config/Trustify/peripheral/sercom/usart/plib_sercom0_usart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1247632078" 
	@${RM} ${OBJECTDIR}/_ext/1247632078/plib_sercom0_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1247632078/plib_sercom0_usart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1247632078/plib_sercom0_usart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1247632078/plib_sercom0_usart.o.d" -o ${OBJECTDIR}/_ext/1247632078/plib_sercom0_usart.o ../src/config/Trustify/peripheral/sercom/usart/plib_sercom0_usart.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1958438824/plib_pm.o: ../src/config/Trustify/peripheral/pm/plib_pm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1958438824" 
	@${RM} ${OBJECTDIR}/_ext/1958438824/plib_pm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1958438824/plib_pm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1958438824/plib_pm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1958438824/plib_pm.o.d" -o ${OBJECTDIR}/_ext/1958438824/plib_pm.o ../src/config/Trustify/peripheral/pm/plib_pm.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1060005641/initialization.o: ../src/config/Trustify/initialization.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1060005641" 
	@${RM} ${OBJECTDIR}/_ext/1060005641/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1060005641/initialization.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1060005641/initialization.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1060005641/initialization.o.d" -o ${OBJECTDIR}/_ext/1060005641/initialization.o ../src/config/Trustify/initialization.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1060005641/interrupts.o: ../src/config/Trustify/interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1060005641" 
	@${RM} ${OBJECTDIR}/_ext/1060005641/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1060005641/interrupts.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1060005641/interrupts.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1060005641/interrupts.o.d" -o ${OBJECTDIR}/_ext/1060005641/interrupts.o ../src/config/Trustify/interrupts.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1060005641/exceptions.o: ../src/config/Trustify/exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1060005641" 
	@${RM} ${OBJECTDIR}/_ext/1060005641/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1060005641/exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1060005641/exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1060005641/exceptions.o.d" -o ${OBJECTDIR}/_ext/1060005641/exceptions.o ../src/config/Trustify/exceptions.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/874600305/xc32_monitor.o: ../src/config/Trustify/stdio/xc32_monitor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/874600305" 
	@${RM} ${OBJECTDIR}/_ext/874600305/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/874600305/xc32_monitor.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/874600305/xc32_monitor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/874600305/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/874600305/xc32_monitor.o ../src/config/Trustify/stdio/xc32_monitor.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/864028644/plib_port.o: ../src/config/Trustify/peripheral/port/plib_port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/864028644" 
	@${RM} ${OBJECTDIR}/_ext/864028644/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/864028644/plib_port.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/864028644/plib_port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/864028644/plib_port.o.d" -o ${OBJECTDIR}/_ext/864028644/plib_port.o ../src/config/Trustify/peripheral/port/plib_port.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1027182637/plib_clock.o: ../src/config/Trustify/peripheral/clock/plib_clock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1027182637" 
	@${RM} ${OBJECTDIR}/_ext/1027182637/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1027182637/plib_clock.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1027182637/plib_clock.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1027182637/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1027182637/plib_clock.o ../src/config/Trustify/peripheral/clock/plib_clock.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/864081795/plib_nvic.o: ../src/config/Trustify/peripheral/nvic/plib_nvic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/864081795" 
	@${RM} ${OBJECTDIR}/_ext/864081795/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/864081795/plib_nvic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/864081795/plib_nvic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/864081795/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/864081795/plib_nvic.o ../src/config/Trustify/peripheral/nvic/plib_nvic.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1883465617/plib_systick.o: ../src/config/Trustify/peripheral/systick/plib_systick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1883465617" 
	@${RM} ${OBJECTDIR}/_ext/1883465617/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1883465617/plib_systick.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1883465617/plib_systick.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1883465617/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1883465617/plib_systick.o ../src/config/Trustify/peripheral/systick/plib_systick.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1060005641/startup_xc32.o: ../src/config/Trustify/startup_xc32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1060005641" 
	@${RM} ${OBJECTDIR}/_ext/1060005641/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1060005641/startup_xc32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1060005641/startup_xc32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1060005641/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1060005641/startup_xc32.o ../src/config/Trustify/startup_xc32.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1060005641/libc_syscalls.o: ../src/config/Trustify/libc_syscalls.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1060005641" 
	@${RM} ${OBJECTDIR}/_ext/1060005641/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1060005641/libc_syscalls.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1060005641/libc_syscalls.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1060005641/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1060005641/libc_syscalls.o ../src/config/Trustify/libc_syscalls.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/582071996/plib_eic.o: ../src/config/Trustify/peripheral/eic/plib_eic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/582071996" 
	@${RM} ${OBJECTDIR}/_ext/582071996/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/582071996/plib_eic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/582071996/plib_eic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/582071996/plib_eic.o.d" -o ${OBJECTDIR}/_ext/582071996/plib_eic.o ../src/config/Trustify/peripheral/eic/plib_eic.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_1_signer.o: ../src/config/Trustify/library/cryptoauthlib/tng/tnglora_cert_def_1_signer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1345471186" 
	@${RM} ${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_1_signer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_1_signer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_1_signer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_1_signer.o.d" -o ${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_1_signer.o ../src/config/Trustify/library/cryptoauthlib/tng/tnglora_cert_def_1_signer.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_2_device.o: ../src/config/Trustify/library/cryptoauthlib/tng/tnglora_cert_def_2_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1345471186" 
	@${RM} ${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_2_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_2_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_2_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_2_device.o.d" -o ${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_2_device.o ../src/config/Trustify/library/cryptoauthlib/tng/tnglora_cert_def_2_device.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_4_device.o: ../src/config/Trustify/library/cryptoauthlib/tng/tnglora_cert_def_4_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1345471186" 
	@${RM} ${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_4_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_4_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_4_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_4_device.o.d" -o ${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_4_device.o ../src/config/Trustify/library/cryptoauthlib/tng/tnglora_cert_def_4_device.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_1_signer.o: ../src/config/Trustify/library/cryptoauthlib/tng/tngtls_cert_def_1_signer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1345471186" 
	@${RM} ${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_1_signer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_1_signer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_1_signer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_1_signer.o.d" -o ${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_1_signer.o ../src/config/Trustify/library/cryptoauthlib/tng/tngtls_cert_def_1_signer.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_2_device.o: ../src/config/Trustify/library/cryptoauthlib/tng/tngtls_cert_def_2_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1345471186" 
	@${RM} ${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_2_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_2_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_2_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_2_device.o.d" -o ${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_2_device.o ../src/config/Trustify/library/cryptoauthlib/tng/tngtls_cert_def_2_device.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_3_device.o: ../src/config/Trustify/library/cryptoauthlib/tng/tngtls_cert_def_3_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1345471186" 
	@${RM} ${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_3_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_3_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_3_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_3_device.o.d" -o ${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_3_device.o ../src/config/Trustify/library/cryptoauthlib/tng/tngtls_cert_def_3_device.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1345471186/tng_atca.o: ../src/config/Trustify/library/cryptoauthlib/tng/tng_atca.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1345471186" 
	@${RM} ${OBJECTDIR}/_ext/1345471186/tng_atca.o.d 
	@${RM} ${OBJECTDIR}/_ext/1345471186/tng_atca.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1345471186/tng_atca.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1345471186/tng_atca.o.d" -o ${OBJECTDIR}/_ext/1345471186/tng_atca.o ../src/config/Trustify/library/cryptoauthlib/tng/tng_atca.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1345471186/tng_atcacert_client.o: ../src/config/Trustify/library/cryptoauthlib/tng/tng_atcacert_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1345471186" 
	@${RM} ${OBJECTDIR}/_ext/1345471186/tng_atcacert_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/1345471186/tng_atcacert_client.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1345471186/tng_atcacert_client.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1345471186/tng_atcacert_client.o.d" -o ${OBJECTDIR}/_ext/1345471186/tng_atcacert_client.o ../src/config/Trustify/library/cryptoauthlib/tng/tng_atcacert_client.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1345471186/tng_root_cert.o: ../src/config/Trustify/library/cryptoauthlib/tng/tng_root_cert.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1345471186" 
	@${RM} ${OBJECTDIR}/_ext/1345471186/tng_root_cert.o.d 
	@${RM} ${OBJECTDIR}/_ext/1345471186/tng_root_cert.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1345471186/tng_root_cert.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1345471186/tng_root_cert.o.d" -o ${OBJECTDIR}/_ext/1345471186/tng_root_cert.o ../src/config/Trustify/library/cryptoauthlib/tng/tng_root_cert.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2128581100/atcacert_client.o: ../src/config/Trustify/library/cryptoauthlib/atcacert/atcacert_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2128581100" 
	@${RM} ${OBJECTDIR}/_ext/2128581100/atcacert_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/2128581100/atcacert_client.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2128581100/atcacert_client.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2128581100/atcacert_client.o.d" -o ${OBJECTDIR}/_ext/2128581100/atcacert_client.o ../src/config/Trustify/library/cryptoauthlib/atcacert/atcacert_client.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2128581100/atcacert_date.o: ../src/config/Trustify/library/cryptoauthlib/atcacert/atcacert_date.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2128581100" 
	@${RM} ${OBJECTDIR}/_ext/2128581100/atcacert_date.o.d 
	@${RM} ${OBJECTDIR}/_ext/2128581100/atcacert_date.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2128581100/atcacert_date.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2128581100/atcacert_date.o.d" -o ${OBJECTDIR}/_ext/2128581100/atcacert_date.o ../src/config/Trustify/library/cryptoauthlib/atcacert/atcacert_date.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2128581100/atcacert_def.o: ../src/config/Trustify/library/cryptoauthlib/atcacert/atcacert_def.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2128581100" 
	@${RM} ${OBJECTDIR}/_ext/2128581100/atcacert_def.o.d 
	@${RM} ${OBJECTDIR}/_ext/2128581100/atcacert_def.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2128581100/atcacert_def.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2128581100/atcacert_def.o.d" -o ${OBJECTDIR}/_ext/2128581100/atcacert_def.o ../src/config/Trustify/library/cryptoauthlib/atcacert/atcacert_def.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2128581100/atcacert_der.o: ../src/config/Trustify/library/cryptoauthlib/atcacert/atcacert_der.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2128581100" 
	@${RM} ${OBJECTDIR}/_ext/2128581100/atcacert_der.o.d 
	@${RM} ${OBJECTDIR}/_ext/2128581100/atcacert_der.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2128581100/atcacert_der.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2128581100/atcacert_der.o.d" -o ${OBJECTDIR}/_ext/2128581100/atcacert_der.o ../src/config/Trustify/library/cryptoauthlib/atcacert/atcacert_der.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2128581100/atcacert_host_hw.o: ../src/config/Trustify/library/cryptoauthlib/atcacert/atcacert_host_hw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2128581100" 
	@${RM} ${OBJECTDIR}/_ext/2128581100/atcacert_host_hw.o.d 
	@${RM} ${OBJECTDIR}/_ext/2128581100/atcacert_host_hw.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2128581100/atcacert_host_hw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2128581100/atcacert_host_hw.o.d" -o ${OBJECTDIR}/_ext/2128581100/atcacert_host_hw.o ../src/config/Trustify/library/cryptoauthlib/atcacert/atcacert_host_hw.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2128581100/atcacert_host_sw.o: ../src/config/Trustify/library/cryptoauthlib/atcacert/atcacert_host_sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2128581100" 
	@${RM} ${OBJECTDIR}/_ext/2128581100/atcacert_host_sw.o.d 
	@${RM} ${OBJECTDIR}/_ext/2128581100/atcacert_host_sw.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2128581100/atcacert_host_sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2128581100/atcacert_host_sw.o.d" -o ${OBJECTDIR}/_ext/2128581100/atcacert_host_sw.o ../src/config/Trustify/library/cryptoauthlib/atcacert/atcacert_host_sw.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2128581100/atcacert_pem.o: ../src/config/Trustify/library/cryptoauthlib/atcacert/atcacert_pem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2128581100" 
	@${RM} ${OBJECTDIR}/_ext/2128581100/atcacert_pem.o.d 
	@${RM} ${OBJECTDIR}/_ext/2128581100/atcacert_pem.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2128581100/atcacert_pem.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2128581100/atcacert_pem.o.d" -o ${OBJECTDIR}/_ext/2128581100/atcacert_pem.o ../src/config/Trustify/library/cryptoauthlib/atcacert/atcacert_pem.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_aes.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_aes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_aes.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_aes.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_aes.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_aes.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_aes.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_aes.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_aes_cbc.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_aes_cbc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_aes_cbc.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_aes_cbc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_aes_cbc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_aes_cbc.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_aes_cbc.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_aes_cbc.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_aes_cmac.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_aes_cmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_aes_cmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_aes_cmac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_aes_cmac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_aes_cmac.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_aes_cmac.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_aes_cmac.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_aes_ctr.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_aes_ctr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_aes_ctr.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_aes_ctr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_aes_ctr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_aes_ctr.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_aes_ctr.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_aes_ctr.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_aes_gcm.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_aes_gcm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_aes_gcm.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_aes_gcm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_aes_gcm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_aes_gcm.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_aes_gcm.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_aes_gcm.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_checkmac.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_checkmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_checkmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_checkmac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_checkmac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_checkmac.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_checkmac.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_checkmac.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_counter.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_counter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_counter.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_counter.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_counter.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_counter.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_counter.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_counter.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_derivekey.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_derivekey.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_derivekey.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_derivekey.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_derivekey.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_derivekey.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_derivekey.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_derivekey.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_ecdh.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_ecdh.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_ecdh.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_ecdh.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_ecdh.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_ecdh.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_ecdh.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_ecdh.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_gendig.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_gendig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_gendig.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_gendig.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_gendig.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_gendig.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_gendig.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_gendig.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_genkey.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_genkey.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_genkey.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_genkey.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_genkey.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_genkey.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_genkey.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_genkey.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_hmac.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_hmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_hmac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_hmac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_hmac.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_hmac.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_hmac.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_info.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_info.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_info.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_info.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_info.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_info.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_info.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_info.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_kdf.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_kdf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_kdf.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_kdf.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_kdf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_kdf.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_kdf.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_kdf.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_lock.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_lock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_lock.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_lock.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_lock.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_lock.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_lock.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_lock.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_mac.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_mac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_mac.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_mac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_mac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_mac.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_mac.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_mac.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_nonce.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_nonce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_nonce.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_nonce.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_nonce.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_nonce.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_nonce.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_nonce.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_privwrite.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_privwrite.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_privwrite.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_privwrite.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_privwrite.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_privwrite.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_privwrite.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_privwrite.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_random.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_random.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_random.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_random.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_random.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_random.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_read.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_read.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_read.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_read.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_read.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_read.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_read.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_read.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_secureboot.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_secureboot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_secureboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_secureboot.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_secureboot.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_secureboot.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_secureboot.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_secureboot.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_selftest.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_selftest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_selftest.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_selftest.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_selftest.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_selftest.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_selftest.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_selftest.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_sha.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_sha.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_sha.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_sha.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_sha.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_sha.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_sha.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_sha.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_sign.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_sign.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_sign.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_sign.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_sign.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_sign.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_sign.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_sign.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_updateextra.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_updateextra.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_updateextra.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_updateextra.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_updateextra.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_updateextra.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_updateextra.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_updateextra.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_verify.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_verify.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_verify.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_verify.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_verify.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_verify.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_verify.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_verify.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_write.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_write.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_write.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_write.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_write.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_write.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_write.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_helpers.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_helpers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_helpers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_helpers.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_helpers.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_helpers.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/204130805/sha1_routines.o: ../src/config/Trustify/library/cryptoauthlib/crypto/hashes/sha1_routines.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/204130805" 
	@${RM} ${OBJECTDIR}/_ext/204130805/sha1_routines.o.d 
	@${RM} ${OBJECTDIR}/_ext/204130805/sha1_routines.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/204130805/sha1_routines.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/204130805/sha1_routines.o.d" -o ${OBJECTDIR}/_ext/204130805/sha1_routines.o ../src/config/Trustify/library/cryptoauthlib/crypto/hashes/sha1_routines.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/204130805/sha2_routines.o: ../src/config/Trustify/library/cryptoauthlib/crypto/hashes/sha2_routines.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/204130805" 
	@${RM} ${OBJECTDIR}/_ext/204130805/sha2_routines.o.d 
	@${RM} ${OBJECTDIR}/_ext/204130805/sha2_routines.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/204130805/sha2_routines.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/204130805/sha2_routines.o.d" -o ${OBJECTDIR}/_ext/204130805/sha2_routines.o ../src/config/Trustify/library/cryptoauthlib/crypto/hashes/sha2_routines.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_ecdsa.o: ../src/config/Trustify/library/cryptoauthlib/crypto/atca_crypto_sw_ecdsa.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1515317536" 
	@${RM} ${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_ecdsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_ecdsa.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_ecdsa.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_ecdsa.o.d" -o ${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_ecdsa.o ../src/config/Trustify/library/cryptoauthlib/crypto/atca_crypto_sw_ecdsa.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_rand.o: ../src/config/Trustify/library/cryptoauthlib/crypto/atca_crypto_sw_rand.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1515317536" 
	@${RM} ${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_rand.o.d 
	@${RM} ${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_rand.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_rand.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_rand.o.d" -o ${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_rand.o ../src/config/Trustify/library/cryptoauthlib/crypto/atca_crypto_sw_rand.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_sha1.o: ../src/config/Trustify/library/cryptoauthlib/crypto/atca_crypto_sw_sha1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1515317536" 
	@${RM} ${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_sha1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_sha1.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_sha1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_sha1.o.d" -o ${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_sha1.o ../src/config/Trustify/library/cryptoauthlib/crypto/atca_crypto_sw_sha1.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_sha2.o: ../src/config/Trustify/library/cryptoauthlib/crypto/atca_crypto_sw_sha2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1515317536" 
	@${RM} ${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_sha2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_sha2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_sha2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_sha2.o.d" -o ${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_sha2.o ../src/config/Trustify/library/cryptoauthlib/crypto/atca_crypto_sw_sha2.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1239710151/atca_host.o: ../src/config/Trustify/library/cryptoauthlib/host/atca_host.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1239710151" 
	@${RM} ${OBJECTDIR}/_ext/1239710151/atca_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/1239710151/atca_host.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1239710151/atca_host.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1239710151/atca_host.o.d" -o ${OBJECTDIR}/_ext/1239710151/atca_host.o ../src/config/Trustify/library/cryptoauthlib/host/atca_host.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1345480504/atca_jwt.o: ../src/config/Trustify/library/cryptoauthlib/jwt/atca_jwt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1345480504" 
	@${RM} ${OBJECTDIR}/_ext/1345480504/atca_jwt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1345480504/atca_jwt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1345480504/atca_jwt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1345480504/atca_jwt.o.d" -o ${OBJECTDIR}/_ext/1345480504/atca_jwt.o ../src/config/Trustify/library/cryptoauthlib/jwt/atca_jwt.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/543975056/atca_cfgs.o: ../src/config/Trustify/library/cryptoauthlib/atca_cfgs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/543975056" 
	@${RM} ${OBJECTDIR}/_ext/543975056/atca_cfgs.o.d 
	@${RM} ${OBJECTDIR}/_ext/543975056/atca_cfgs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/543975056/atca_cfgs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/543975056/atca_cfgs.o.d" -o ${OBJECTDIR}/_ext/543975056/atca_cfgs.o ../src/config/Trustify/library/cryptoauthlib/atca_cfgs.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/543975056/atca_command.o: ../src/config/Trustify/library/cryptoauthlib/atca_command.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/543975056" 
	@${RM} ${OBJECTDIR}/_ext/543975056/atca_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/543975056/atca_command.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/543975056/atca_command.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/543975056/atca_command.o.d" -o ${OBJECTDIR}/_ext/543975056/atca_command.o ../src/config/Trustify/library/cryptoauthlib/atca_command.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/543975056/atca_device.o: ../src/config/Trustify/library/cryptoauthlib/atca_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/543975056" 
	@${RM} ${OBJECTDIR}/_ext/543975056/atca_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/543975056/atca_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/543975056/atca_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/543975056/atca_device.o.d" -o ${OBJECTDIR}/_ext/543975056/atca_device.o ../src/config/Trustify/library/cryptoauthlib/atca_device.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/543975056/atca_execution.o: ../src/config/Trustify/library/cryptoauthlib/atca_execution.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/543975056" 
	@${RM} ${OBJECTDIR}/_ext/543975056/atca_execution.o.d 
	@${RM} ${OBJECTDIR}/_ext/543975056/atca_execution.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/543975056/atca_execution.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/543975056/atca_execution.o.d" -o ${OBJECTDIR}/_ext/543975056/atca_execution.o ../src/config/Trustify/library/cryptoauthlib/atca_execution.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/543975056/atca_iface.o: ../src/config/Trustify/library/cryptoauthlib/atca_iface.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/543975056" 
	@${RM} ${OBJECTDIR}/_ext/543975056/atca_iface.o.d 
	@${RM} ${OBJECTDIR}/_ext/543975056/atca_iface.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/543975056/atca_iface.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/543975056/atca_iface.o.d" -o ${OBJECTDIR}/_ext/543975056/atca_iface.o ../src/config/Trustify/library/cryptoauthlib/atca_iface.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1345483116/hal_i2c_harmony.o: ../src/config/Trustify/library/cryptoauthlib/hal/hal_i2c_harmony.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1345483116" 
	@${RM} ${OBJECTDIR}/_ext/1345483116/hal_i2c_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/1345483116/hal_i2c_harmony.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1345483116/hal_i2c_harmony.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1345483116/hal_i2c_harmony.o.d" -o ${OBJECTDIR}/_ext/1345483116/hal_i2c_harmony.o ../src/config/Trustify/library/cryptoauthlib/hal/hal_i2c_harmony.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1345483116/atca_hal.o: ../src/config/Trustify/library/cryptoauthlib/hal/atca_hal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1345483116" 
	@${RM} ${OBJECTDIR}/_ext/1345483116/atca_hal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1345483116/atca_hal.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1345483116/atca_hal.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1345483116/atca_hal.o.d" -o ${OBJECTDIR}/_ext/1345483116/atca_hal.o ../src/config/Trustify/library/cryptoauthlib/hal/atca_hal.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1345483116/hal_i2c_harmony_init.o: ../src/config/Trustify/library/cryptoauthlib/hal/hal_i2c_harmony_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1345483116" 
	@${RM} ${OBJECTDIR}/_ext/1345483116/hal_i2c_harmony_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1345483116/hal_i2c_harmony_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1345483116/hal_i2c_harmony_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1345483116/hal_i2c_harmony_init.o.d" -o ${OBJECTDIR}/_ext/1345483116/hal_i2c_harmony_init.o ../src/config/Trustify/library/cryptoauthlib/hal/hal_i2c_harmony_init.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1345483116/hal_cortex_m_delay.o: ../src/config/Trustify/library/cryptoauthlib/hal/hal_cortex_m_delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1345483116" 
	@${RM} ${OBJECTDIR}/_ext/1345483116/hal_cortex_m_delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1345483116/hal_cortex_m_delay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1345483116/hal_cortex_m_delay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1345483116/hal_cortex_m_delay.o.d" -o ${OBJECTDIR}/_ext/1345483116/hal_cortex_m_delay.o ../src/config/Trustify/library/cryptoauthlib/hal/hal_cortex_m_delay.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1345483116/ATECC608A_0.o: ../src/config/Trustify/library/cryptoauthlib/hal/ATECC608A_0.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1345483116" 
	@${RM} ${OBJECTDIR}/_ext/1345483116/ATECC608A_0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1345483116/ATECC608A_0.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1345483116/ATECC608A_0.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1345483116/ATECC608A_0.o.d" -o ${OBJECTDIR}/_ext/1345483116/ATECC608A_0.o ../src/config/Trustify/library/cryptoauthlib/hal/ATECC608A_0.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1542791463/bsp.o: ../src/config/Trustify/bsp/bsp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1542791463" 
	@${RM} ${OBJECTDIR}/_ext/1542791463/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1542791463/bsp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1542791463/bsp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1542791463/bsp.o.d" -o ${OBJECTDIR}/_ext/1542791463/bsp.o ../src/config/Trustify/bsp/bsp.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/2117940715/plib_nvmctrl.o: ../src/config/Trustify/peripheral/nvmctrl/plib_nvmctrl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2117940715" 
	@${RM} ${OBJECTDIR}/_ext/2117940715/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/2117940715/plib_nvmctrl.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2117940715/plib_nvmctrl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2117940715/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/2117940715/plib_nvmctrl.o ../src/config/Trustify/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/671368090/plib_sercom1_i2c_master.o: ../src/config/Trustify/peripheral/sercom/i2c_master/plib_sercom1_i2c_master.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/671368090" 
	@${RM} ${OBJECTDIR}/_ext/671368090/plib_sercom1_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/671368090/plib_sercom1_i2c_master.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/671368090/plib_sercom1_i2c_master.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/671368090/plib_sercom1_i2c_master.o.d" -o ${OBJECTDIR}/_ext/671368090/plib_sercom1_i2c_master.o ../src/config/Trustify/peripheral/sercom/i2c_master/plib_sercom1_i2c_master.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1025033151/plib_evsys.o: ../src/config/Trustify/peripheral/evsys/plib_evsys.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1025033151" 
	@${RM} ${OBJECTDIR}/_ext/1025033151/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1025033151/plib_evsys.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1025033151/plib_evsys.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1025033151/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1025033151/plib_evsys.o ../src/config/Trustify/peripheral/evsys/plib_evsys.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1247632078/plib_sercom0_usart.o: ../src/config/Trustify/peripheral/sercom/usart/plib_sercom0_usart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1247632078" 
	@${RM} ${OBJECTDIR}/_ext/1247632078/plib_sercom0_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1247632078/plib_sercom0_usart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1247632078/plib_sercom0_usart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1247632078/plib_sercom0_usart.o.d" -o ${OBJECTDIR}/_ext/1247632078/plib_sercom0_usart.o ../src/config/Trustify/peripheral/sercom/usart/plib_sercom0_usart.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1958438824/plib_pm.o: ../src/config/Trustify/peripheral/pm/plib_pm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1958438824" 
	@${RM} ${OBJECTDIR}/_ext/1958438824/plib_pm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1958438824/plib_pm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1958438824/plib_pm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1958438824/plib_pm.o.d" -o ${OBJECTDIR}/_ext/1958438824/plib_pm.o ../src/config/Trustify/peripheral/pm/plib_pm.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1060005641/initialization.o: ../src/config/Trustify/initialization.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1060005641" 
	@${RM} ${OBJECTDIR}/_ext/1060005641/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1060005641/initialization.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1060005641/initialization.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1060005641/initialization.o.d" -o ${OBJECTDIR}/_ext/1060005641/initialization.o ../src/config/Trustify/initialization.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1060005641/interrupts.o: ../src/config/Trustify/interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1060005641" 
	@${RM} ${OBJECTDIR}/_ext/1060005641/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1060005641/interrupts.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1060005641/interrupts.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1060005641/interrupts.o.d" -o ${OBJECTDIR}/_ext/1060005641/interrupts.o ../src/config/Trustify/interrupts.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1060005641/exceptions.o: ../src/config/Trustify/exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1060005641" 
	@${RM} ${OBJECTDIR}/_ext/1060005641/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1060005641/exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1060005641/exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1060005641/exceptions.o.d" -o ${OBJECTDIR}/_ext/1060005641/exceptions.o ../src/config/Trustify/exceptions.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/874600305/xc32_monitor.o: ../src/config/Trustify/stdio/xc32_monitor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/874600305" 
	@${RM} ${OBJECTDIR}/_ext/874600305/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/874600305/xc32_monitor.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/874600305/xc32_monitor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/874600305/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/874600305/xc32_monitor.o ../src/config/Trustify/stdio/xc32_monitor.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/864028644/plib_port.o: ../src/config/Trustify/peripheral/port/plib_port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/864028644" 
	@${RM} ${OBJECTDIR}/_ext/864028644/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/864028644/plib_port.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/864028644/plib_port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/864028644/plib_port.o.d" -o ${OBJECTDIR}/_ext/864028644/plib_port.o ../src/config/Trustify/peripheral/port/plib_port.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1027182637/plib_clock.o: ../src/config/Trustify/peripheral/clock/plib_clock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1027182637" 
	@${RM} ${OBJECTDIR}/_ext/1027182637/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1027182637/plib_clock.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1027182637/plib_clock.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1027182637/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1027182637/plib_clock.o ../src/config/Trustify/peripheral/clock/plib_clock.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/864081795/plib_nvic.o: ../src/config/Trustify/peripheral/nvic/plib_nvic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/864081795" 
	@${RM} ${OBJECTDIR}/_ext/864081795/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/864081795/plib_nvic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/864081795/plib_nvic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/864081795/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/864081795/plib_nvic.o ../src/config/Trustify/peripheral/nvic/plib_nvic.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1883465617/plib_systick.o: ../src/config/Trustify/peripheral/systick/plib_systick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1883465617" 
	@${RM} ${OBJECTDIR}/_ext/1883465617/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1883465617/plib_systick.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1883465617/plib_systick.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1883465617/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1883465617/plib_systick.o ../src/config/Trustify/peripheral/systick/plib_systick.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1060005641/startup_xc32.o: ../src/config/Trustify/startup_xc32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1060005641" 
	@${RM} ${OBJECTDIR}/_ext/1060005641/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1060005641/startup_xc32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1060005641/startup_xc32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1060005641/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1060005641/startup_xc32.o ../src/config/Trustify/startup_xc32.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1060005641/libc_syscalls.o: ../src/config/Trustify/libc_syscalls.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1060005641" 
	@${RM} ${OBJECTDIR}/_ext/1060005641/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1060005641/libc_syscalls.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1060005641/libc_syscalls.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1060005641/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1060005641/libc_syscalls.o ../src/config/Trustify/libc_syscalls.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/582071996/plib_eic.o: ../src/config/Trustify/peripheral/eic/plib_eic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/582071996" 
	@${RM} ${OBJECTDIR}/_ext/582071996/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/582071996/plib_eic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/582071996/plib_eic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/582071996/plib_eic.o.d" -o ${OBJECTDIR}/_ext/582071996/plib_eic.o ../src/config/Trustify/peripheral/eic/plib_eic.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_1_signer.o: ../src/config/Trustify/library/cryptoauthlib/tng/tnglora_cert_def_1_signer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1345471186" 
	@${RM} ${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_1_signer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_1_signer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_1_signer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_1_signer.o.d" -o ${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_1_signer.o ../src/config/Trustify/library/cryptoauthlib/tng/tnglora_cert_def_1_signer.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_2_device.o: ../src/config/Trustify/library/cryptoauthlib/tng/tnglora_cert_def_2_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1345471186" 
	@${RM} ${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_2_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_2_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_2_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_2_device.o.d" -o ${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_2_device.o ../src/config/Trustify/library/cryptoauthlib/tng/tnglora_cert_def_2_device.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_4_device.o: ../src/config/Trustify/library/cryptoauthlib/tng/tnglora_cert_def_4_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1345471186" 
	@${RM} ${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_4_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_4_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_4_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_4_device.o.d" -o ${OBJECTDIR}/_ext/1345471186/tnglora_cert_def_4_device.o ../src/config/Trustify/library/cryptoauthlib/tng/tnglora_cert_def_4_device.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_1_signer.o: ../src/config/Trustify/library/cryptoauthlib/tng/tngtls_cert_def_1_signer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1345471186" 
	@${RM} ${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_1_signer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_1_signer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_1_signer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_1_signer.o.d" -o ${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_1_signer.o ../src/config/Trustify/library/cryptoauthlib/tng/tngtls_cert_def_1_signer.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_2_device.o: ../src/config/Trustify/library/cryptoauthlib/tng/tngtls_cert_def_2_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1345471186" 
	@${RM} ${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_2_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_2_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_2_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_2_device.o.d" -o ${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_2_device.o ../src/config/Trustify/library/cryptoauthlib/tng/tngtls_cert_def_2_device.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_3_device.o: ../src/config/Trustify/library/cryptoauthlib/tng/tngtls_cert_def_3_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1345471186" 
	@${RM} ${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_3_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_3_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_3_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_3_device.o.d" -o ${OBJECTDIR}/_ext/1345471186/tngtls_cert_def_3_device.o ../src/config/Trustify/library/cryptoauthlib/tng/tngtls_cert_def_3_device.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1345471186/tng_atca.o: ../src/config/Trustify/library/cryptoauthlib/tng/tng_atca.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1345471186" 
	@${RM} ${OBJECTDIR}/_ext/1345471186/tng_atca.o.d 
	@${RM} ${OBJECTDIR}/_ext/1345471186/tng_atca.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1345471186/tng_atca.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1345471186/tng_atca.o.d" -o ${OBJECTDIR}/_ext/1345471186/tng_atca.o ../src/config/Trustify/library/cryptoauthlib/tng/tng_atca.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1345471186/tng_atcacert_client.o: ../src/config/Trustify/library/cryptoauthlib/tng/tng_atcacert_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1345471186" 
	@${RM} ${OBJECTDIR}/_ext/1345471186/tng_atcacert_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/1345471186/tng_atcacert_client.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1345471186/tng_atcacert_client.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1345471186/tng_atcacert_client.o.d" -o ${OBJECTDIR}/_ext/1345471186/tng_atcacert_client.o ../src/config/Trustify/library/cryptoauthlib/tng/tng_atcacert_client.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1345471186/tng_root_cert.o: ../src/config/Trustify/library/cryptoauthlib/tng/tng_root_cert.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1345471186" 
	@${RM} ${OBJECTDIR}/_ext/1345471186/tng_root_cert.o.d 
	@${RM} ${OBJECTDIR}/_ext/1345471186/tng_root_cert.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1345471186/tng_root_cert.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1345471186/tng_root_cert.o.d" -o ${OBJECTDIR}/_ext/1345471186/tng_root_cert.o ../src/config/Trustify/library/cryptoauthlib/tng/tng_root_cert.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2128581100/atcacert_client.o: ../src/config/Trustify/library/cryptoauthlib/atcacert/atcacert_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2128581100" 
	@${RM} ${OBJECTDIR}/_ext/2128581100/atcacert_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/2128581100/atcacert_client.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2128581100/atcacert_client.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2128581100/atcacert_client.o.d" -o ${OBJECTDIR}/_ext/2128581100/atcacert_client.o ../src/config/Trustify/library/cryptoauthlib/atcacert/atcacert_client.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2128581100/atcacert_date.o: ../src/config/Trustify/library/cryptoauthlib/atcacert/atcacert_date.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2128581100" 
	@${RM} ${OBJECTDIR}/_ext/2128581100/atcacert_date.o.d 
	@${RM} ${OBJECTDIR}/_ext/2128581100/atcacert_date.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2128581100/atcacert_date.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2128581100/atcacert_date.o.d" -o ${OBJECTDIR}/_ext/2128581100/atcacert_date.o ../src/config/Trustify/library/cryptoauthlib/atcacert/atcacert_date.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2128581100/atcacert_def.o: ../src/config/Trustify/library/cryptoauthlib/atcacert/atcacert_def.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2128581100" 
	@${RM} ${OBJECTDIR}/_ext/2128581100/atcacert_def.o.d 
	@${RM} ${OBJECTDIR}/_ext/2128581100/atcacert_def.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2128581100/atcacert_def.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2128581100/atcacert_def.o.d" -o ${OBJECTDIR}/_ext/2128581100/atcacert_def.o ../src/config/Trustify/library/cryptoauthlib/atcacert/atcacert_def.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2128581100/atcacert_der.o: ../src/config/Trustify/library/cryptoauthlib/atcacert/atcacert_der.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2128581100" 
	@${RM} ${OBJECTDIR}/_ext/2128581100/atcacert_der.o.d 
	@${RM} ${OBJECTDIR}/_ext/2128581100/atcacert_der.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2128581100/atcacert_der.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2128581100/atcacert_der.o.d" -o ${OBJECTDIR}/_ext/2128581100/atcacert_der.o ../src/config/Trustify/library/cryptoauthlib/atcacert/atcacert_der.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2128581100/atcacert_host_hw.o: ../src/config/Trustify/library/cryptoauthlib/atcacert/atcacert_host_hw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2128581100" 
	@${RM} ${OBJECTDIR}/_ext/2128581100/atcacert_host_hw.o.d 
	@${RM} ${OBJECTDIR}/_ext/2128581100/atcacert_host_hw.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2128581100/atcacert_host_hw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2128581100/atcacert_host_hw.o.d" -o ${OBJECTDIR}/_ext/2128581100/atcacert_host_hw.o ../src/config/Trustify/library/cryptoauthlib/atcacert/atcacert_host_hw.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2128581100/atcacert_host_sw.o: ../src/config/Trustify/library/cryptoauthlib/atcacert/atcacert_host_sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2128581100" 
	@${RM} ${OBJECTDIR}/_ext/2128581100/atcacert_host_sw.o.d 
	@${RM} ${OBJECTDIR}/_ext/2128581100/atcacert_host_sw.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2128581100/atcacert_host_sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2128581100/atcacert_host_sw.o.d" -o ${OBJECTDIR}/_ext/2128581100/atcacert_host_sw.o ../src/config/Trustify/library/cryptoauthlib/atcacert/atcacert_host_sw.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2128581100/atcacert_pem.o: ../src/config/Trustify/library/cryptoauthlib/atcacert/atcacert_pem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2128581100" 
	@${RM} ${OBJECTDIR}/_ext/2128581100/atcacert_pem.o.d 
	@${RM} ${OBJECTDIR}/_ext/2128581100/atcacert_pem.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2128581100/atcacert_pem.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2128581100/atcacert_pem.o.d" -o ${OBJECTDIR}/_ext/2128581100/atcacert_pem.o ../src/config/Trustify/library/cryptoauthlib/atcacert/atcacert_pem.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_aes.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_aes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_aes.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_aes.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_aes.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_aes.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_aes.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_aes.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_aes_cbc.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_aes_cbc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_aes_cbc.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_aes_cbc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_aes_cbc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_aes_cbc.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_aes_cbc.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_aes_cbc.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_aes_cmac.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_aes_cmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_aes_cmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_aes_cmac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_aes_cmac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_aes_cmac.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_aes_cmac.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_aes_cmac.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_aes_ctr.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_aes_ctr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_aes_ctr.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_aes_ctr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_aes_ctr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_aes_ctr.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_aes_ctr.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_aes_ctr.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_aes_gcm.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_aes_gcm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_aes_gcm.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_aes_gcm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_aes_gcm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_aes_gcm.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_aes_gcm.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_aes_gcm.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_checkmac.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_checkmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_checkmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_checkmac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_checkmac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_checkmac.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_checkmac.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_checkmac.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_counter.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_counter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_counter.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_counter.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_counter.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_counter.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_counter.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_counter.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_derivekey.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_derivekey.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_derivekey.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_derivekey.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_derivekey.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_derivekey.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_derivekey.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_derivekey.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_ecdh.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_ecdh.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_ecdh.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_ecdh.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_ecdh.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_ecdh.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_ecdh.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_ecdh.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_gendig.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_gendig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_gendig.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_gendig.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_gendig.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_gendig.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_gendig.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_gendig.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_genkey.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_genkey.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_genkey.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_genkey.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_genkey.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_genkey.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_genkey.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_genkey.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_hmac.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_hmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_hmac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_hmac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_hmac.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_hmac.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_hmac.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_info.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_info.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_info.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_info.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_info.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_info.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_info.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_info.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_kdf.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_kdf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_kdf.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_kdf.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_kdf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_kdf.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_kdf.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_kdf.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_lock.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_lock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_lock.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_lock.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_lock.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_lock.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_lock.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_lock.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_mac.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_mac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_mac.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_mac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_mac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_mac.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_mac.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_mac.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_nonce.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_nonce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_nonce.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_nonce.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_nonce.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_nonce.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_nonce.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_nonce.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_privwrite.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_privwrite.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_privwrite.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_privwrite.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_privwrite.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_privwrite.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_privwrite.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_privwrite.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_random.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_random.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_random.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_random.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_random.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_random.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_read.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_read.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_read.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_read.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_read.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_read.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_read.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_read.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_secureboot.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_secureboot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_secureboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_secureboot.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_secureboot.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_secureboot.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_secureboot.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_secureboot.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_selftest.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_selftest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_selftest.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_selftest.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_selftest.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_selftest.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_selftest.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_selftest.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_sha.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_sha.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_sha.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_sha.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_sha.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_sha.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_sha.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_sha.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_sign.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_sign.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_sign.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_sign.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_sign.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_sign.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_sign.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_sign.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_updateextra.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_updateextra.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_updateextra.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_updateextra.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_updateextra.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_updateextra.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_updateextra.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_updateextra.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_verify.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_verify.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_verify.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_verify.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_verify.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_verify.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_verify.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_verify.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_basic_write.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_write.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_basic_write.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_basic_write.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_basic_write.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_basic_write.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_basic_write.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/229649425/atca_helpers.o: ../src/config/Trustify/library/cryptoauthlib/basic/atca_helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/229649425" 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/229649425/atca_helpers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/229649425/atca_helpers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/229649425/atca_helpers.o.d" -o ${OBJECTDIR}/_ext/229649425/atca_helpers.o ../src/config/Trustify/library/cryptoauthlib/basic/atca_helpers.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/204130805/sha1_routines.o: ../src/config/Trustify/library/cryptoauthlib/crypto/hashes/sha1_routines.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/204130805" 
	@${RM} ${OBJECTDIR}/_ext/204130805/sha1_routines.o.d 
	@${RM} ${OBJECTDIR}/_ext/204130805/sha1_routines.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/204130805/sha1_routines.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/204130805/sha1_routines.o.d" -o ${OBJECTDIR}/_ext/204130805/sha1_routines.o ../src/config/Trustify/library/cryptoauthlib/crypto/hashes/sha1_routines.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/204130805/sha2_routines.o: ../src/config/Trustify/library/cryptoauthlib/crypto/hashes/sha2_routines.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/204130805" 
	@${RM} ${OBJECTDIR}/_ext/204130805/sha2_routines.o.d 
	@${RM} ${OBJECTDIR}/_ext/204130805/sha2_routines.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/204130805/sha2_routines.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/204130805/sha2_routines.o.d" -o ${OBJECTDIR}/_ext/204130805/sha2_routines.o ../src/config/Trustify/library/cryptoauthlib/crypto/hashes/sha2_routines.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_ecdsa.o: ../src/config/Trustify/library/cryptoauthlib/crypto/atca_crypto_sw_ecdsa.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1515317536" 
	@${RM} ${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_ecdsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_ecdsa.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_ecdsa.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_ecdsa.o.d" -o ${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_ecdsa.o ../src/config/Trustify/library/cryptoauthlib/crypto/atca_crypto_sw_ecdsa.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_rand.o: ../src/config/Trustify/library/cryptoauthlib/crypto/atca_crypto_sw_rand.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1515317536" 
	@${RM} ${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_rand.o.d 
	@${RM} ${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_rand.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_rand.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_rand.o.d" -o ${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_rand.o ../src/config/Trustify/library/cryptoauthlib/crypto/atca_crypto_sw_rand.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_sha1.o: ../src/config/Trustify/library/cryptoauthlib/crypto/atca_crypto_sw_sha1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1515317536" 
	@${RM} ${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_sha1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_sha1.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_sha1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_sha1.o.d" -o ${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_sha1.o ../src/config/Trustify/library/cryptoauthlib/crypto/atca_crypto_sw_sha1.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_sha2.o: ../src/config/Trustify/library/cryptoauthlib/crypto/atca_crypto_sw_sha2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1515317536" 
	@${RM} ${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_sha2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_sha2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_sha2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_sha2.o.d" -o ${OBJECTDIR}/_ext/1515317536/atca_crypto_sw_sha2.o ../src/config/Trustify/library/cryptoauthlib/crypto/atca_crypto_sw_sha2.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1239710151/atca_host.o: ../src/config/Trustify/library/cryptoauthlib/host/atca_host.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1239710151" 
	@${RM} ${OBJECTDIR}/_ext/1239710151/atca_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/1239710151/atca_host.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1239710151/atca_host.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1239710151/atca_host.o.d" -o ${OBJECTDIR}/_ext/1239710151/atca_host.o ../src/config/Trustify/library/cryptoauthlib/host/atca_host.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1345480504/atca_jwt.o: ../src/config/Trustify/library/cryptoauthlib/jwt/atca_jwt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1345480504" 
	@${RM} ${OBJECTDIR}/_ext/1345480504/atca_jwt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1345480504/atca_jwt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1345480504/atca_jwt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1345480504/atca_jwt.o.d" -o ${OBJECTDIR}/_ext/1345480504/atca_jwt.o ../src/config/Trustify/library/cryptoauthlib/jwt/atca_jwt.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/543975056/atca_cfgs.o: ../src/config/Trustify/library/cryptoauthlib/atca_cfgs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/543975056" 
	@${RM} ${OBJECTDIR}/_ext/543975056/atca_cfgs.o.d 
	@${RM} ${OBJECTDIR}/_ext/543975056/atca_cfgs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/543975056/atca_cfgs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/543975056/atca_cfgs.o.d" -o ${OBJECTDIR}/_ext/543975056/atca_cfgs.o ../src/config/Trustify/library/cryptoauthlib/atca_cfgs.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/543975056/atca_command.o: ../src/config/Trustify/library/cryptoauthlib/atca_command.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/543975056" 
	@${RM} ${OBJECTDIR}/_ext/543975056/atca_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/543975056/atca_command.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/543975056/atca_command.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/543975056/atca_command.o.d" -o ${OBJECTDIR}/_ext/543975056/atca_command.o ../src/config/Trustify/library/cryptoauthlib/atca_command.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/543975056/atca_device.o: ../src/config/Trustify/library/cryptoauthlib/atca_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/543975056" 
	@${RM} ${OBJECTDIR}/_ext/543975056/atca_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/543975056/atca_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/543975056/atca_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/543975056/atca_device.o.d" -o ${OBJECTDIR}/_ext/543975056/atca_device.o ../src/config/Trustify/library/cryptoauthlib/atca_device.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/543975056/atca_execution.o: ../src/config/Trustify/library/cryptoauthlib/atca_execution.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/543975056" 
	@${RM} ${OBJECTDIR}/_ext/543975056/atca_execution.o.d 
	@${RM} ${OBJECTDIR}/_ext/543975056/atca_execution.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/543975056/atca_execution.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/543975056/atca_execution.o.d" -o ${OBJECTDIR}/_ext/543975056/atca_execution.o ../src/config/Trustify/library/cryptoauthlib/atca_execution.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/543975056/atca_iface.o: ../src/config/Trustify/library/cryptoauthlib/atca_iface.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/543975056" 
	@${RM} ${OBJECTDIR}/_ext/543975056/atca_iface.o.d 
	@${RM} ${OBJECTDIR}/_ext/543975056/atca_iface.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/543975056/atca_iface.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/543975056/atca_iface.o.d" -o ${OBJECTDIR}/_ext/543975056/atca_iface.o ../src/config/Trustify/library/cryptoauthlib/atca_iface.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1345483116/hal_i2c_harmony.o: ../src/config/Trustify/library/cryptoauthlib/hal/hal_i2c_harmony.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1345483116" 
	@${RM} ${OBJECTDIR}/_ext/1345483116/hal_i2c_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/1345483116/hal_i2c_harmony.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1345483116/hal_i2c_harmony.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1345483116/hal_i2c_harmony.o.d" -o ${OBJECTDIR}/_ext/1345483116/hal_i2c_harmony.o ../src/config/Trustify/library/cryptoauthlib/hal/hal_i2c_harmony.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1345483116/atca_hal.o: ../src/config/Trustify/library/cryptoauthlib/hal/atca_hal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1345483116" 
	@${RM} ${OBJECTDIR}/_ext/1345483116/atca_hal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1345483116/atca_hal.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1345483116/atca_hal.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1345483116/atca_hal.o.d" -o ${OBJECTDIR}/_ext/1345483116/atca_hal.o ../src/config/Trustify/library/cryptoauthlib/hal/atca_hal.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1345483116/hal_i2c_harmony_init.o: ../src/config/Trustify/library/cryptoauthlib/hal/hal_i2c_harmony_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1345483116" 
	@${RM} ${OBJECTDIR}/_ext/1345483116/hal_i2c_harmony_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1345483116/hal_i2c_harmony_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1345483116/hal_i2c_harmony_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1345483116/hal_i2c_harmony_init.o.d" -o ${OBJECTDIR}/_ext/1345483116/hal_i2c_harmony_init.o ../src/config/Trustify/library/cryptoauthlib/hal/hal_i2c_harmony_init.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1345483116/hal_cortex_m_delay.o: ../src/config/Trustify/library/cryptoauthlib/hal/hal_cortex_m_delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1345483116" 
	@${RM} ${OBJECTDIR}/_ext/1345483116/hal_cortex_m_delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1345483116/hal_cortex_m_delay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1345483116/hal_cortex_m_delay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1345483116/hal_cortex_m_delay.o.d" -o ${OBJECTDIR}/_ext/1345483116/hal_cortex_m_delay.o ../src/config/Trustify/library/cryptoauthlib/hal/hal_cortex_m_delay.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1345483116/ATECC608A_0.o: ../src/config/Trustify/library/cryptoauthlib/hal/ATECC608A_0.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1345483116" 
	@${RM} ${OBJECTDIR}/_ext/1345483116/ATECC608A_0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1345483116/ATECC608A_0.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1345483116/ATECC608A_0.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1345483116/ATECC608A_0.o.d" -o ${OBJECTDIR}/_ext/1345483116/ATECC608A_0.o ../src/config/Trustify/library/cryptoauthlib/hal/ATECC608A_0.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1542791463/bsp.o: ../src/config/Trustify/bsp/bsp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1542791463" 
	@${RM} ${OBJECTDIR}/_ext/1542791463/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1542791463/bsp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1542791463/bsp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/Trustify" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -I"../src/arm" -I"../src/config/Trustify/library/cryptoauthlib" -I"../src/config/Trustify/library/cryptoauthlib/crypto" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1542791463/bsp.o.d" -o ${OBJECTDIR}/_ext/1542791463/bsp.o ../src/config/Trustify/bsp/bsp.c    -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp=${DFP_DIR} ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Trust_and_Go.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o dist/${CND_CONF}/${IMAGE_TYPE}/Trust_and_Go.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",-DSECURE,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml,-DAS=65000,-DRS=16300,-DANSC=1024, -mdfp=${DFP_DIR}
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/Trust_and_Go.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o dist/${CND_CONF}/${IMAGE_TYPE}/Trust_and_Go.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_Trustify=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",-DSECURE,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml,-DAS=65000,-DRS=16300,-DANSC=1024, -mdfp=${DFP_DIR}
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/Trust_and_Go.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/Trustify
	${RM} -r dist/Trustify

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
