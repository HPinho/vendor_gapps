LOCAL_PATH := vendor/gapps/system
LOCAL_PATH_PRODUCT := $(LOCAL_PATH)/product

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH_PRODUCT)/lib,$(TARGET_COPY_OUT_PRODUCT)/lib)
ifeq ($(TARGET_GAPPS_ARCH),arm64)
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH_PRODUCT)/lib64,$(TARGET_COPY_OUT_PRODUCT)/lib64)
endif
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH_PRODUCT)/usr,$(TARGET_COPY_OUT_PRODUCT)/usr)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/permissions/GoogleExtServices_permissions.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/GoogleExtServices_permissions.xml \
    $(LOCAL_PATH)/etc/permissions/privapp-permissions-google.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-google.xml \
    $(LOCAL_PATH_PRODUCT)/etc/default-permissions/default-permissions.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/default-permissions/default-permissions.xml \
    $(LOCAL_PATH_PRODUCT)/etc/permissions/com.google.android.maps.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.google.android.maps.xml \
    $(LOCAL_PATH_PRODUCT)/etc/permissions/privapp-permissions-google-p.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-google-p.xml \
    $(LOCAL_PATH_PRODUCT)/etc/permissions/privapp-permissions-google-ps.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-google-ps.xml \
    $(LOCAL_PATH_PRODUCT)/etc/permissions/split-permissions-google.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/split-permissions-google.xml \
    $(LOCAL_PATH_PRODUCT)/etc/preferred-apps/google.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/preferred-apps/google.xml \
    $(LOCAL_PATH_PRODUCT)/etc/sysconfig/google-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/google-hiddenapi-package-whitelist.xml \
    $(LOCAL_PATH_PRODUCT)/etc/sysconfig/google.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/google.xml \
    $(LOCAL_PATH_PRODUCT)/etc/sysconfig/google_build.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/google_build.xml \
    $(LOCAL_PATH_PRODUCT)/etc/sysconfig/google_vr_build.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/google_vr_build.xml \
    $(LOCAL_PATH_PRODUCT)/etc/sysconfig/nexus.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/nexus.xml \
    $(LOCAL_PATH_PRODUCT)/etc/sysconfig/nga.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/nga.xml \
    $(LOCAL_PATH_PRODUCT)/etc/sysconfig/pixel_experience_2017.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/pixel_experience_2017.xml \
    $(LOCAL_PATH_PRODUCT)/etc/sysconfig/pixel_experience_2018.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/pixel_experience_2018.xml \
    $(LOCAL_PATH_PRODUCT)/etc/sysconfig/pixel_experience_2019.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/pixel_experience_2019.xml \
    $(LOCAL_PATH_PRODUCT)/etc/sysconfig/pixel_experience_2019_midyear.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/pixel_experience_2019_midyear.xml \
    $(LOCAL_PATH_PRODUCT)/etc/sysconfig/whitelist_com.android.omadm.service.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/whitelist_com.android.omadm.service.xml

ifeq ($(IS_PHONE),true)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH_PRODUCT)/etc/permissions/com.google.android.dialer.support.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.google.android.dialer.support.xml
endif
