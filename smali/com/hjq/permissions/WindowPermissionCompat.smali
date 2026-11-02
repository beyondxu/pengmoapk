###### Class com.hjq.permissions.WindowPermissionCompat (com.hjq.permissions.WindowPermissionCompat)
.class final Lcom/hjq/permissions/WindowPermissionCompat;
.super Ljava/lang/Object;
.source "WindowPermissionCompat.java"


# static fields
.field private static final OP_SYSTEM_ALERT_WINDOW_DEFAULT_VALUE:I = 0x18

.field private static final OP_SYSTEM_ALERT_WINDOW_FIELD_NAME:Ljava/lang/String; = "OP_SYSTEM_ALERT_WINDOW"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getPermissionIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3

    .line 35
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid6()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 36
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid11()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {}, Lcom/hjq/permissions/PhoneRomUtils;->isMiui()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {}, Lcom/hjq/permissions/PhoneRomUtils;->isMiuiOptimization()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 39
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getMiuiPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 41
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getApplicationDetailsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/hjq/permissions/StartActivityManager;->addSubIntentToMainIntent(Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 45
    :cond_25
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-static {p0}, Lcom/hjq/permissions/PermissionUtils;->getPackageNameUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 50
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_3a

    return-object v0

    .line 54
    :cond_3a
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getApplicationDetailsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 59
    :cond_3f
    invoke-static {}, Lcom/hjq/permissions/PhoneRomUtils;->isEmui()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 60
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getEmuiWindowPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 61
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getApplicationDetailsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/hjq/permissions/StartActivityManager;->addSubIntentToMainIntent(Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 65
    :cond_52
    invoke-static {}, Lcom/hjq/permissions/PhoneRomUtils;->isMiui()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 68
    invoke-static {}, Lcom/hjq/permissions/PhoneRomUtils;->isMiuiOptimization()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 70
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getMiuiWindowPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_64

    :cond_63
    const/4 v0, 0x0

    .line 74
    :goto_64
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getApplicationDetailsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/hjq/permissions/StartActivityManager;->addSubIntentToMainIntent(Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 78
    :cond_6d
    invoke-static {}, Lcom/hjq/permissions/PhoneRomUtils;->isColorOs()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 79
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getColorOsWindowPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 80
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getApplicationDetailsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/hjq/permissions/StartActivityManager;->addSubIntentToMainIntent(Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 84
    :cond_80
    invoke-static {}, Lcom/hjq/permissions/PhoneRomUtils;->isOriginOs()Z

    move-result v0

    if-eqz v0, :cond_93

    .line 85
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getOriginOsWindowPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 86
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getApplicationDetailsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/hjq/permissions/StartActivityManager;->addSubIntentToMainIntent(Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 90
    :cond_93
    invoke-static {}, Lcom/hjq/permissions/PhoneRomUtils;->isOneUi()Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 91
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getOneUiWindowPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 92
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getApplicationDetailsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/hjq/permissions/StartActivityManager;->addSubIntentToMainIntent(Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 100
    :cond_a6
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getApplicationDetailsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static isGrantedPermission(Landroid/content/Context;)Z
    .registers 3

    .line 20
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid6()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 21
    invoke-static {p0}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 24
    :cond_b
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid4_4()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 28
    const-string v0, "OP_SYSTEM_ALERT_WINDOW"

    const/16 v1, 0x18

    invoke-static {p0, v0, v1}, Lcom/hjq/permissions/PermissionUtils;->checkOpNoThrow(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_1a
    const/4 p0, 0x1

    return p0
.end method
