###### Class com.hjq.permissions.PermissionDelegateImplV33 (com.hjq.permissions.PermissionDelegateImplV33)
.class Lcom/hjq/permissions/PermissionDelegateImplV33;
.super Lcom/hjq/permissions/PermissionDelegateImplV31;
.source "PermissionDelegateImplV33.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/hjq/permissions/PermissionDelegateImplV31;-><init>()V

    return-void
.end method


# virtual methods
.method public getPermissionIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 93
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p2, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 94
    invoke-static {p1}, Lcom/hjq/permissions/NotificationPermissionCompat;->getPermissionIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    .line 96
    :cond_d
    invoke-super {p0, p1, p2}, Lcom/hjq/permissions/PermissionDelegateImplV31;->getPermissionIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public isDoNotAskAgainPermission(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 10

    .line 53
    const-string v0, "android.permission.BODY_SENSORS_BACKGROUND"

    invoke-static {p2, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_26

    .line 54
    const-string v0, "android.permission.BODY_SENSORS"

    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 55
    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    .line 57
    :cond_18
    invoke-static {p1, p2}, Lcom/hjq/permissions/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 58
    invoke-static {p1, p2}, Lcom/hjq/permissions/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_25

    return v2

    :cond_25
    return v1

    .line 61
    :cond_26
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p2, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_93

    const-string v0, "android.permission.NEARBY_WIFI_DEVICES"

    .line 62
    invoke-static {p2, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_93

    .line 63
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {p2, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_93

    .line 64
    const-string v3, "android.permission.READ_MEDIA_VIDEO"

    invoke-static {p2, v3}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_93

    .line 65
    const-string v4, "android.permission.READ_MEDIA_AUDIO"

    invoke-static {p2, v4}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4f

    goto :goto_93

    .line 70
    :cond_4f
    invoke-static {p1}, Lcom/hjq/permissions/AndroidVersion;->getTargetSdkVersionCode(Landroid/content/Context;)I

    move-result v5

    const/16 v6, 0x21

    if-lt v5, v6, :cond_8e

    .line 72
    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p2, v5}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_60

    return v1

    .line 76
    :cond_60
    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p2, v5}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8e

    .line 77
    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_8d

    .line 78
    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_8d

    .line 79
    invoke-static {p1, v3}, Lcom/hjq/permissions/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_8d

    .line 80
    invoke-static {p1, v3}, Lcom/hjq/permissions/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_8d

    .line 81
    invoke-static {p1, v4}, Lcom/hjq/permissions/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_8d

    .line 82
    invoke-static {p1, v4}, Lcom/hjq/permissions/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8d

    return v2

    :cond_8d
    return v1

    .line 86
    :cond_8e
    invoke-super {p0, p1, p2}, Lcom/hjq/permissions/PermissionDelegateImplV31;->isDoNotAskAgainPermission(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 66
    :cond_93
    :goto_93
    invoke-static {p1, p2}, Lcom/hjq/permissions/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a0

    .line 67
    invoke-static {p1, p2}, Lcom/hjq/permissions/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a0

    return v2

    :cond_a0
    return v1
.end method

.method public isGrantedPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 10

    .line 20
    const-string v0, "android.permission.BODY_SENSORS_BACKGROUND"

    invoke-static {p2, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1a

    .line 22
    const-string p2, "android.permission.BODY_SENSORS"

    invoke-static {p1, p2}, Lcom/hjq/permissions/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_19

    .line 23
    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    return v3

    :cond_19
    return v2

    .line 26
    :cond_1a
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p2, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_75

    const-string v0, "android.permission.NEARBY_WIFI_DEVICES"

    .line 27
    invoke-static {p2, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_75

    .line 28
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {p2, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_75

    .line 29
    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    invoke-static {p2, v1}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_75

    .line 30
    const-string v4, "android.permission.READ_MEDIA_AUDIO"

    invoke-static {p2, v4}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_43

    goto :goto_75

    .line 34
    :cond_43
    invoke-static {p1}, Lcom/hjq/permissions/AndroidVersion;->getTargetSdkVersionCode(Landroid/content/Context;)I

    move-result v5

    const/16 v6, 0x21

    if-lt v5, v6, :cond_70

    .line 37
    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p2, v5}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_54

    return v3

    .line 41
    :cond_54
    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p2, v5}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 42
    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6f

    .line 43
    invoke-static {p1, v1}, Lcom/hjq/permissions/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6f

    .line 44
    invoke-static {p1, v4}, Lcom/hjq/permissions/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6f

    return v3

    :cond_6f
    return v2

    .line 48
    :cond_70
    invoke-super {p0, p1, p2}, Lcom/hjq/permissions/PermissionDelegateImplV31;->isGrantedPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 31
    :cond_75
    :goto_75
    invoke-static {p1, p2}, Lcom/hjq/permissions/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
