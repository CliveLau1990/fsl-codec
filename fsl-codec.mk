MAJOR_VERSION := $(shell echo $(PLATFORM_VERSION) | cut -d "." -f1)
ANDROID_VERSION_GE_O := $(shell if [ $(MAJOR_VERSION) -ge 8 ];then echo "true";fi)

ifeq ($(ANDROID_VERSION_GE_O), true)
    FSL_CODEC_OUT_PATH := vendor/lib
else
    FSL_CODEC_OUT_PATH := system/lib
endif

PRODUCT_COPY_FILES += \
    device/fsl-codec/lib/lib_avi_parser_arm11_elinux.3.0.so:$(FSL_CODEC_OUT_PATH)/lib_avi_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib/lib_aac_dec_v2_arm12_elinux.so:$(FSL_CODEC_OUT_PATH)/lib_aac_dec_v2_arm12_elinux.so \
    device/fsl-codec/lib/lib_aacd_wrap_arm12_elinux_android.so:$(FSL_CODEC_OUT_PATH)/lib_aacd_wrap_arm12_elinux_android.so \
    device/fsl-codec/lib/lib_mp3_dec_v2_arm12_elinux.so:$(FSL_CODEC_OUT_PATH)/lib_mp3_dec_v2_arm12_elinux.so \
    device/fsl-codec/lib/lib_mp3d_wrap_arm12_elinux_android.so:$(FSL_CODEC_OUT_PATH)/lib_mp3d_wrap_arm12_elinux_android.so \
    device/fsl-codec/lib/lib_oggvorbis_dec_v2_arm11_elinux.so:$(FSL_CODEC_OUT_PATH)/lib_oggvorbis_dec_v2_arm11_elinux.so \
    device/fsl-codec/lib/lib_vorbisd_wrap_arm11_elinux_android.so:$(FSL_CODEC_OUT_PATH)/lib_vorbisd_wrap_arm11_elinux_android.so \
    device/fsl-codec/lib/lib_flv_parser_arm11_elinux.3.0.so:$(FSL_CODEC_OUT_PATH)/lib_flv_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib/lib_mkv_parser_arm11_elinux.3.0.so:$(FSL_CODEC_OUT_PATH)/lib_mkv_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib/lib_mp4_parser_arm11_elinux.3.0.so:$(FSL_CODEC_OUT_PATH)/lib_mp4_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib/lib_mpg2_parser_arm11_elinux.3.0.so:$(FSL_CODEC_OUT_PATH)/lib_mpg2_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib/lib_ogg_parser_arm11_elinux.3.0.so:$(FSL_CODEC_OUT_PATH)/lib_ogg_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib/lib_amr_parser_arm11_elinux.3.0.so:$(FSL_CODEC_OUT_PATH)/lib_amr_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib/lib_aac_parser_arm11_elinux.3.0.so:$(FSL_CODEC_OUT_PATH)/lib_aac_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib/lib_mp3_parser_arm11_elinux.3.0.so:$(FSL_CODEC_OUT_PATH)/lib_mp3_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib/lib_wav_parser_arm11_elinux.3.0.so:$(FSL_CODEC_OUT_PATH)/lib_wav_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib/lib_flac_parser_arm11_elinux.3.0.so:$(FSL_CODEC_OUT_PATH)/lib_flac_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib/lib_ape_parser_arm11_elinux.3.0.so:$(FSL_CODEC_OUT_PATH)/lib_ape_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib/lib_nb_amr_enc_v2_arm11_elinux.so:$(FSL_CODEC_OUT_PATH)/lib_nb_amr_enc_v2_arm11_elinux.so \
    device/fsl-codec/lib/lib_wb_amr_enc_arm11_elinux.so:$(FSL_CODEC_OUT_PATH)/lib_wb_amr_enc_arm11_elinux.so \
    device/fsl-codec/lib/libfsl_jpeg_enc_arm11_elinux.so:$(FSL_CODEC_OUT_PATH)/libfsl_jpeg_enc_arm11_elinux.so \
    device/fsl-codec/lib/lib_g.711_dec_arm11_elinux.so:$(FSL_CODEC_OUT_PATH)/lib_g.711_dec_arm11_elinux.so \
    device/fsl-codec/lib/lib_g.711_enc_arm11_elinux.so:$(FSL_CODEC_OUT_PATH)/lib_g.711_enc_arm11_elinux.so \
    device/fsl-codec/lib/lib_g.723.1_dec_arm11_elinux.so:$(FSL_CODEC_OUT_PATH)/lib_g.723.1_dec_arm11_elinux.so \
    device/fsl-codec/lib/lib_g.723.1_enc_arm11_elinux.so:$(FSL_CODEC_OUT_PATH)/lib_g.723.1_enc_arm11_elinux.so \
    device/fsl-codec/lib/lib_g.726_dec_arm11_elinux.so:$(FSL_CODEC_OUT_PATH)/lib_g.726_dec_arm11_elinux.so \
    device/fsl-codec/lib/lib_g.726_enc_arm11_elinux.so:$(FSL_CODEC_OUT_PATH)/lib_g.726_enc_arm11_elinux.so \
    device/fsl-codec/lib/lib_g.729ab_dec_arm11_elinux.so:$(FSL_CODEC_OUT_PATH)/lib_g.729ab_dec_arm11_elinux.so \
    device/fsl-codec/lib/lib_g.729ab_enc_arm11_elinux.so:$(FSL_CODEC_OUT_PATH)/lib_g.729ab_enc_arm11_elinux.so \
    device/fsl-codec/lib/lib_mp4_muxer_arm11_elinux.so:$(FSL_CODEC_OUT_PATH)/lib_mp4_muxer_arm11_elinux.so \
    device/fsl-codec/lib/lib_flac_parser_arm11_elinux.so:$(FSL_CODEC_OUT_PATH)/lib_flac_parser_arm11_elinux.so \
    device/fsl-codec/lib/lib_aac_parser_arm11_elinux.so:$(FSL_CODEC_OUT_PATH)/lib_aac_parser_arm11_elinux.so \
    device/fsl-codec/lib/lib_wav_parser_arm11_elinux.so:$(FSL_CODEC_OUT_PATH)/lib_wav_parser_arm11_elinux.so \
    device/fsl-codec/lib/lib_mp3_enc_v2_arm12_elinux.so:$(FSL_CODEC_OUT_PATH)/lib_mp3_enc_v2_arm12_elinux.so

ifeq ($(TARGET_ARCH),arm64)
PRODUCT_COPY_FILES += \
    device/fsl-codec/lib64/lib_avi_parser_arm11_elinux.3.0.so:$(FSL_CODEC_OUT_PATH)64/lib_avi_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib64/lib_aac_dec_arm_android.so:$(FSL_CODEC_OUT_PATH)64/lib_aac_dec_v2_arm12_elinux.so \
    device/fsl-codec/lib64/lib_aacd_wrap_arm_android.so:$(FSL_CODEC_OUT_PATH)64/lib_aacd_wrap_arm_android.so \
    device/fsl-codec/lib64/lib_mp3_dec_arm_android.so:$(FSL_CODEC_OUT_PATH)64/lib_mp3_dec_v2_arm12_elinux.so \
    device/fsl-codec/lib64/lib_mp3d_wrap_arm_android.so:$(FSL_CODEC_OUT_PATH)64/lib_mp3d_wrap_arm12_elinux_android.so \
    device/fsl-codec/lib64/lib_oggvorbis_dec_arm_android.so:$(FSL_CODEC_OUT_PATH)64/lib_oggvorbis_dec_v2_arm11_elinux.so \
    device/fsl-codec/lib64/lib_vorbisd_wrap_arm_android.so:$(FSL_CODEC_OUT_PATH)64/lib_vorbisd_wrap_arm11_elinux_android.so \
    device/fsl-codec/lib64/lib_flv_parser_arm11_elinux.3.0.so:$(FSL_CODEC_OUT_PATH)64/lib_flv_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib64/lib_mkv_parser_arm11_elinux.3.0.so:$(FSL_CODEC_OUT_PATH)64/lib_mkv_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib64/lib_mp4_parser_arm11_elinux.3.0.so:$(FSL_CODEC_OUT_PATH)64/lib_mp4_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib64/lib_mpg2_parser_arm11_elinux.3.0.so:$(FSL_CODEC_OUT_PATH)64/lib_mpg2_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib64/lib_ogg_parser_arm11_elinux.3.0.so:$(FSL_CODEC_OUT_PATH)64/lib_ogg_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib64/lib_amr_parser_arm11_elinux.3.0.so:$(FSL_CODEC_OUT_PATH)64/lib_amr_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib64/lib_aac_parser_arm11_elinux.3.0.so:$(FSL_CODEC_OUT_PATH)64/lib_aac_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib64/lib_mp3_parser_arm11_elinux.3.0.so:$(FSL_CODEC_OUT_PATH)64/lib_mp3_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib64/lib_wav_parser_arm11_elinux.3.0.so:$(FSL_CODEC_OUT_PATH)64/lib_wav_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib64/lib_flac_parser_arm11_elinux.3.0.so:$(FSL_CODEC_OUT_PATH)64/lib_flac_parser_arm11_elinux.3.0.so \
    device/fsl-codec/lib64/lib_ape_parser_arm11_elinux.3.0.so:$(FSL_CODEC_OUT_PATH)64/lib_ape_parser_arm11_elinux.3.0.so
endif
