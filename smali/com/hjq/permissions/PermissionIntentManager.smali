###### Class com.hjq.permissions.PermissionIntentManager (com.hjq.permissions.PermissionIntentManager)
.class final Lcom/hjq/permissions/PermissionIntentManager;
.super Ljava/lang/Object;
.source "PermissionIntentManager.java"


# static fields
.field private static final COLOR_OS_SAFE_CENTER_APP_PACKAGE_NAME_1:Ljava/lang/String; = "com.oppo.safe"

.field private static final COLOR_OS_SAFE_CENTER_APP_PACKAGE_NAME_2:Ljava/lang/String; = "com.color.safecenter"

.field private static final COLOR_OS_SAFE_CENTER_APP_PACKAGE_NAME_3:Ljava/lang/String; = "com.oplus.safecenter"

.field private static final EMUI_MOBILE_MANAGER_APP_PACKAGE_NAME:Ljava/lang/String; = "com.huawei.systemmanager"

.field private static final MIUI_MOBILE_MANAGER_APP_PACKAGE_NAME:Ljava/lang/String; = "com.miui.securitycenter"

.field private static final ORIGIN_OS_MOBILE_MANAGER_APP_PACKAGE_NAME:Ljava/lang/String; = "com.iqoo.secure"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAndroidSettingAppIntent()Landroid/content/Intent;
    .registers 2

    .line 322
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static getApplicationDetailsIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 2

    const/4 v0, 0x0

    .line 283
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionIntentManager;->getApplicationDetailsIntent(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static getApplicationDetailsIntent(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 291
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-static {p0}, Lcom/hjq/permissions/PermissionUtils;->getPackageNameUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    if-eqz p1, :cond_3c

    .line 293
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3c

    invoke-static {}, Lcom/hjq/permissions/PhoneRomUtils;->isColorOs()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 295
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 297
    instance-of v2, p1, Ljava/util/ArrayList;

    if-eqz v2, :cond_28

    check-cast p1, Ljava/util/ArrayList;

    goto :goto_2e

    :cond_28
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v2

    :goto_2e
    const-string v2, "permissionList"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 299
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 301
    const-string p1, "isGetPermission"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 303
    :cond_3c
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_43

    return-object v0

    .line 307
    :cond_43
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
    invoke-static {p0, p1}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_51

    return-object p1

    .line 312
    :cond_51
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.MANAGE_APPLICATIONS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 313
    invoke-static {p0, p1}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_5f

    return-object p1

    .line 316
    :cond_5f
    invoke-static {}, Lcom/hjq/permissions/PermissionIntentManager;->getAndroidSettingAppIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static getColorOsWindowPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.safe.permission.PermissionTopActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getOppoSafeCenterAppIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 129
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 133
    :goto_13
    invoke-static {p0, v1}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_1e

    .line 134
    invoke-static {v0, v1}, Lcom/hjq/permissions/StartActivityManager;->addSubIntentToMainIntent(Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_1e
    return-object v0
.end method

.method static getEmuiWindowPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 6

    .line 42
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 44
    const-string v1, "com.huawei.systemmanager.addviewmonitor.AddViewMonitorActivity"

    const-string v2, "com.huawei.systemmanager"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 48
    const-string v3, "com.huawei.notificationmanager.ui.NotificationManagmentActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getHuaWeiMobileManagerAppIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 54
    invoke-static {}, Lcom/hjq/permissions/PhoneRomUtils;->getRomVersionName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_22

    .line 56
    const-string v3, ""

    .line 60
    :cond_22
    const-string v4, "3.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3e

    .line 62
    invoke-static {p0, v1}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_33

    :cond_32
    move-object v1, v4

    .line 66
    :goto_33
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 67
    invoke-static {v1, v0}, Lcom/hjq/permissions/StartActivityManager;->addSubIntentToMainIntent(Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_52

    .line 71
    :cond_3e
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_45

    goto :goto_46

    :cond_45
    move-object v0, v4

    .line 75
    :goto_46
    invoke-static {p0, v1}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 76
    invoke-static {v0, v1}, Lcom/hjq/permissions/StartActivityManager;->addSubIntentToMainIntent(Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_52

    :cond_51
    move-object v1, v0

    .line 80
    :cond_52
    :goto_52
    invoke-static {p0, v2}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_5d

    .line 81
    invoke-static {v1, v2}, Lcom/hjq/permissions/StartActivityManager;->addSubIntentToMainIntent(Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_5d
    return-object v1
.end method

.method static getHuaWeiMobileManagerAppIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3

    .line 228
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.huawei.systemmanager"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 229
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_11

    return-object v0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method static getMiuiPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4

    .line 175
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "miui.intent.action.APP_PERM_EDITOR"

    .line 176
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_pkgname"

    .line 177
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 179
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getXiaoMiMobileManagerAppIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 182
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 186
    :goto_21
    invoke-static {p0, v1}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_2c

    .line 187
    invoke-static {v0, v1}, Lcom/hjq/permissions/StartActivityManager;->addSubIntentToMainIntent(Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_2c
    return-object v0
.end method

.method static getMiuiWindowPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 1

    .line 92
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getMiuiPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static getOneUiPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 5

    .line 209
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 210
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$AppOpsDetailsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 212
    const-string v2, "package"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v2, ":settings:show_fragment_args"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 214
    invoke-static {p0}, Lcom/hjq/permissions/PermissionUtils;->getPackageNameUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 215
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_2d

    return-object v0

    :cond_2d
    const/4 p0, 0x0

    return-object p0
.end method

.method static getOneUiWindowPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 1

    .line 168
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getOneUiPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static getOppoSafeCenterAppIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3

    .line 252
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.oppo.safe"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 253
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_11

    return-object v0

    .line 256
    :cond_11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.color.safecenter"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 257
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_22

    return-object v0

    .line 260
    :cond_22
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.oplus.safecenter"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 261
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_33

    return-object v0

    :cond_33
    const/4 p0, 0x0

    return-object p0
.end method

.method static getOriginOsPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4

    .line 196
    new-instance v0, Landroid/content/Intent;

    const-string v1, "permission.intent.action.softPermissionDetail"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    const-string v1, "packagename"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_17

    return-object v0

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method static getOriginOsWindowPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 2

    .line 158
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getVivoMobileManagerAppIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 159
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_b

    return-object v0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method static getVivoMobileManagerAppIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3

    .line 272
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.iqoo.secure"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 273
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_11

    return-object v0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method static getXiaoMiMobileManagerAppIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3

    .line 240
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 241
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_11

    return-object v0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method
