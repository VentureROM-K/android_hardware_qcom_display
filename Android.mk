ifneq ($(filter msm8974 msm8x74,$(TARGET_BOARD_PLATFORM)),)
    #This is for 8974 based platforms
    include $(call all-named-subdir-makefiles,msm8974)
	include hardware/qcom/display/libgenlock/Android.mk
	include hardware/qcom/display/libcopybit/Android.mk
	include hardware/qcom/display/libexternal/Android.mk
	include hardware/qcom/display/libgralloc/Android.mk
	include hardware/qcom/display/libhwcomposer/Android.mk
	include hardware/qcom/display/liblight/Android.mk
	include hardware/qcom/display/liboverlay/Android.mk
	include hardware/qcom/display/libqdutils/Android.mk
	include hardware/qcom/display/libqservice/Android.mk
	include hardware/qcom/display/libtilerenderer/Android.mk
else
ifneq ($(filter msm8226,$(TARGET_BOARD_PLATFORM)),)
    #This is for 8226 based platforms
    include $(call all-named-subdir-makefiles,msm8x26)
else
    #This is for 8960 based platforms
    include $(call all-named-subdir-makefiles,msm8960)
endif
endif

