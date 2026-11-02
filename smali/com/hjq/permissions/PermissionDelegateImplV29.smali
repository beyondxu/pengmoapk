###### Class com.hjq.permissions.PermissionDelegateImplV29 (com.hjq.permissions.PermissionDelegateImplV29)
.class Lcom/hjq/permissions/PermissionDelegateImplV29;
.super Lcom/hjq/permissions/PermissionDelegateImplV28;
.source "PermissionDelegateImplV29.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/hjq/permissions/PermissionDelegateImplV28;-><init>()V

    return-void
.end method

.method private hasReadStoragePermission(Landroid/content/Context;)Z
    .registers 8

    .line 90
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid13()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "android.permission.MANAGE_EXTERNAL_STORAGE"

    const/4 v3, 0x1

    if-eqz v0, :cond_23

    invoke-static {p1}, Lcom/hjq/permissions/AndroidVersion;->getTargetSdkVersionCode(Landroid/content/Context;)I

    move-result v0

    const/16 v4, 0x21

    if-lt v0, v4, :cond_23

    .line 91
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 92
    invoke-virtual {p0, p1, v2}, Lcom/hjq/permissions/PermissionDelegateImplV29;->isGrantedPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_22

    :cond_21
    return v1

    :cond_22
    :goto_22
    return v3

    .line 94
    :cond_23
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid11()Z

    move-result v0

    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    if-eqz v0, :cond_42

    invoke-static {p1}, Lcom/hjq/permissions/AndroidVersion;->getTargetSdkVersionCode(Landroid/content/Context;)I

    move-result v0

    const/16 v5, 0x1e

    if-lt v0, v5, :cond_42

    .line 95
    invoke-static {p1, v4}, Lcom/hjq/permissions/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 96
    invoke-virtual {p0, p1, v2}, Lcom/hjq/permissions/PermissionDelegateImplV29;->isGrantedPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_40

    goto :goto_41

    :cond_40
    return v1

    :cond_41
    :goto_41
    return v3

    .line 98
    :cond_42
    invoke-static {p1, v4}, Lcom/hjq/permissions/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private static isUseDeprecationExternalStorage()Z
    .registers 1

    .line 83
    invoke-static {}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public isDoNotAskAgainPermission(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 7

    .line 46
    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {p2, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_26

    .line 47
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 48
    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    .line 50
    :cond_18
    invoke-static {p1, p2}, Lcom/hjq/permissions/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 51
    invoke-static {p1, p2}, Lcom/hjq/permissions/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_25

    return v2

    :cond_25
    return v1

    .line 54
    :cond_26
    const-string v0, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-static {p2, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 55
    invoke-direct {p0, p1}, Lcom/hjq/permissions/PermissionDelegateImplV29;->hasReadStoragePermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 56
    invoke-static {p1, p2}, Lcom/hjq/permissions/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 57
    invoke-static {p1, p2}, Lcom/hjq/permissions/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_41

    return v2

    :cond_41
    return v1

    .line 60
    :cond_42
    const-string v0, "android.permission.ACTIVITY_RECOGNITION"

    invoke-static {p2, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 61
    invoke-static {p1, p2}, Lcom/hjq/permissions/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 62
    invoke-static {p1, p2}, Lcom/hjq/permissions/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_57

    return v2

    :cond_57
    return v1

    .line 66
    :cond_58
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid11()Z

    move-result v0

    if-nez v0, :cond_6d

    .line 67
    const-string v0, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-static {p2, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 69
    invoke-static {}, Lcom/hjq/permissions/PermissionDelegateImplV29;->isUseDeprecationExternalStorage()Z

    move-result v0

    if-nez v0, :cond_6d

    return v2

    .line 75
    :cond_6d
    invoke-super {p0, p1, p2}, Lcom/hjq/permissions/PermissionDelegateImplV28;->isDoNotAskAgainPermission(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isGrantedPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    .line 20
    const-string v0, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-static {p2, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 21
    invoke-direct {p0, p1}, Lcom/hjq/permissions/PermissionDelegateImplV29;->hasReadStoragePermission(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_17

    .line 22
    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_17

    const/4 p1, 0x1

    return p1

    :cond_17
    return v2

    .line 25
    :cond_18
    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {p2, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "android.permission.ACTIVITY_RECOGNITION"

    .line 26
    invoke-static {p2, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_43

    .line 31
    :cond_29
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid11()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 32
    const-string v0, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-static {p2, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 35
    invoke-static {}, Lcom/hjq/permissions/PermissionDelegateImplV29;->isUseDeprecationExternalStorage()Z

    move-result v0

    if-nez v0, :cond_3e

    return v2

    .line 41
    :cond_3e
    invoke-super {p0, p1, p2}, Lcom/hjq/permissions/PermissionDelegateImplV28;->isGrantedPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 27
    :cond_43
    :goto_43
    invoke-static {p1, p2}, Lcom/hjq/permissions/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
