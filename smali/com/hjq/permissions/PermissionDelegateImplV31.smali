###### Class com.hjq.permissions.PermissionDelegateImplV31 (com.hjq.permissions.PermissionDelegateImplV31)
.class Lcom/hjq/permissions/PermissionDelegateImplV31;
.super Lcom/hjq/permissions/PermissionDelegateImplV30;
.source "PermissionDelegateImplV31.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Lcom/hjq/permissions/PermissionDelegateImplV30;-><init>()V

    return-void
.end method

.method private static getAlarmPermissionIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.REQUEST_SCHEDULE_EXACT_ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-static {p0}, Lcom/hjq/permissions/PermissionUtils;->getPackageNameUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 84
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 85
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getApplicationDetailsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_19
    return-object v0
.end method

.method private static isGrantedAlarmPermission(Landroid/content/Context;)Z
    .registers 2

    .line 75
    const-class v0, Landroid/app/AlarmManager;

    invoke-static {p0, v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    invoke-static {p0}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/AlarmManager;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getPermissionIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 64
    const-string v0, "android.permission.SCHEDULE_EXACT_ALARM"

    invoke-static {p2, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 65
    invoke-static {p1}, Lcom/hjq/permissions/PermissionDelegateImplV31;->getAlarmPermissionIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    .line 68
    :cond_d
    invoke-super {p0, p1, p2}, Lcom/hjq/permissions/PermissionDelegateImplV30;->getPermissionIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public isDoNotAskAgainPermission(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 8

    .line 37
    const-string v0, "android.permission.SCHEDULE_EXACT_ALARM"

    invoke-static {p2, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 41
    :cond_a
    const-string v0, "android.permission.BLUETOOTH_SCAN"

    invoke-static {p2, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_67

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    .line 42
    invoke-static {p2, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_67

    const-string v0, "android.permission.BLUETOOTH_ADVERTISE"

    .line 43
    invoke-static {p2, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_67

    .line 48
    :cond_24
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1f

    if-lt v0, v3, :cond_62

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 49
    invoke-static {p2, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 50
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_54

    .line 51
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p1, v3}, Lcom/hjq/permissions/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_54

    .line 52
    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_53

    .line 53
    invoke-static {p1, v3}, Lcom/hjq/permissions/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_53

    return v2

    :cond_53
    return v1

    .line 56
    :cond_54
    invoke-static {p1, p2}, Lcom/hjq/permissions/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 57
    invoke-static {p1, p2}, Lcom/hjq/permissions/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_61

    return v2

    :cond_61
    return v1

    .line 59
    :cond_62
    invoke-super {p0, p1, p2}, Lcom/hjq/permissions/PermissionDelegateImplV30;->isDoNotAskAgainPermission(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 44
    :cond_67
    :goto_67
    invoke-static {p1, p2}, Lcom/hjq/permissions/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_74

    .line 45
    invoke-static {p1, p2}, Lcom/hjq/permissions/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_74

    return v2

    :cond_74
    return v1
.end method

.method public isGrantedPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 23
    const-string v0, "android.permission.SCHEDULE_EXACT_ALARM"

    invoke-static {p2, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 24
    invoke-static {p1}, Lcom/hjq/permissions/PermissionDelegateImplV31;->isGrantedAlarmPermission(Landroid/content/Context;)Z

    move-result p1

    return p1

    .line 27
    :cond_d
    const-string v0, "android.permission.BLUETOOTH_SCAN"

    invoke-static {p2, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    .line 28
    invoke-static {p2, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "android.permission.BLUETOOTH_ADVERTISE"

    .line 29
    invoke-static {p2, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_2b

    .line 32
    :cond_26
    invoke-super {p0, p1, p2}, Lcom/hjq/permissions/PermissionDelegateImplV30;->isGrantedPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 30
    :cond_2b
    :goto_2b
    invoke-static {p1, p2}, Lcom/hjq/permissions/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
