###### Class io.dcloud.common.util.AppPermissionUtil (io.dcloud.common.util.AppPermissionUtil)
.class public Lio/dcloud/common/util/AppPermissionUtil;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# static fields
.field public static final MODE_ALLOWED:I = 0x0

.field public static final MODE_ASK:I = 0x4

.field public static final MODE_DEFAULT:I = 0x3

.field public static final MODE_ERRORED:I = 0x2

.field public static final MODE_IGNORED:I = 0x1

.field public static final MODE_UNKNOWN:I = -0x1

.field public static OP_INSTALL_SHORTCUT:Ljava/lang/String;

.field public static mXiaoMiCode19OPSIDs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static mXiaoMiCode21OPSIDs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static mXiaoMiCode23OPSIDs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/dcloud/common/util/AppPermissionUtil;->mXiaoMiCode19OPSIDs:Ljava/util/HashMap;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/dcloud/common/util/AppPermissionUtil;->mXiaoMiCode21OPSIDs:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/dcloud/common/util/AppPermissionUtil;->mXiaoMiCode23OPSIDs:Ljava/util/HashMap;

    .line 5
    const-string v0, "op_install_shortcut"

    sput-object v0, Lio/dcloud/common/util/AppPermissionUtil;->OP_INSTALL_SHORTCUT:Ljava/lang/String;

    .line 15
    sget-object v1, Lio/dcloud/common/util/AppPermissionUtil;->mXiaoMiCode19OPSIDs:Ljava/util/HashMap;

    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lio/dcloud/common/util/AppPermissionUtil;->mXiaoMiCode21OPSIDs:Ljava/util/HashMap;

    sget-object v1, Lio/dcloud/common/util/AppPermissionUtil;->OP_INSTALL_SHORTCUT:Ljava/lang/String;

    const/16 v2, 0x3f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lio/dcloud/common/util/AppPermissionUtil;->mXiaoMiCode23OPSIDs:Ljava/util/HashMap;

    sget-object v1, Lio/dcloud/common/util/AppPermissionUtil;->OP_INSTALL_SHORTCUT:Ljava/lang/String;

    const/16 v2, 0x2721

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static againShortcutOpsDialog(Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    const-string p3, "pdr"

    invoke-static {p1, p3}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p3

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Lio/dcloud/common/util/DialogUtil;->initDialogTheme(Landroid/app/Activity;Z)Lcom/dcloud/android/widget/dialog/DCloudAlertDialog;

    move-result-object v0

    .line 3
    sget v1, Lio/dcloud/base/R$string;->dcloud_short_cut_set_pms:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 4
    sget v1, Lio/dcloud/base/R$string;->dcloud_short_cut_create_error_tips:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 5
    sget v1, Lio/dcloud/base/R$string;->dcloud_short_cut_goto_pms:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lio/dcloud/common/util/AppPermissionUtil$4;

    invoke-direct {v2, p1, p3, p2}, Lio/dcloud/common/util/AppPermissionUtil$4;-><init>(Landroid/app/Activity;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    const/4 p2, -0x1

    invoke-virtual {v0, p2, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 16
    sget p2, Lio/dcloud/base/R$string;->dcloud_short_cut_not_install:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lio/dcloud/common/util/AppPermissionUtil$5;

    invoke-direct {p2, p0}, Lio/dcloud/common/util/AppPermissionUtil$5;-><init>(Lio/dcloud/common/DHInterface/IApp;)V

    const/4 p0, -0x2

    invoke-virtual {v0, p0, p1, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 27
    new-instance p0, Lio/dcloud/common/util/AppPermissionUtil$6;

    invoke-direct {p0}, Lio/dcloud/common/util/AppPermissionUtil$6;-><init>()V

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 p0, 0x0

    .line 34
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 35
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static checkNoShortcutPermionGuide(Landroid/content/Context;Ljava/lang/String;ZLio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Landroid/content/SharedPreferences;Z)I
    .registers 15

    .line 1
    sget v0, Lio/dcloud/base/R$string;->dcloud_short_cut_pms_unauthorized_tips1:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v2, Lio/dcloud/common/adapter/util/MobilePhoneModel;->MEIZU:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v2, :cond_2a

    .line 6
    invoke-static {p1}, Lio/dcloud/common/util/ShortCutUtil;->getHeadShortCutIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lio/dcloud/common/util/AppPermissionUtil;->isFlymeShortcutallowAllow(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_c7

    .line 8
    sget p1, Lio/dcloud/PdrR;->DCLOUD_GUIDE_GIF_MEIZU:I

    .line 10
    sget v0, Lio/dcloud/base/R$string;->dcloud_short_cut_pms_unauthorized_tips2:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_staremapp_shortcut_guide_is_first_flyme"

    :goto_27
    const/4 v5, 0x1

    goto/16 :goto_c9

    .line 12
    :cond_2a
    sget-object p1, Lio/dcloud/common/adapter/util/MobilePhoneModel;->XIAOMI:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_42

    .line 13
    invoke-static {p0}, Lio/dcloud/common/util/AppPermissionUtil;->checkOp(Landroid/content/Context;)I

    move-result v5

    .line 14
    sget p1, Lio/dcloud/base/R$string;->dcloud_short_cut_pms_unauthorized_tips2:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 15
    sget p1, Lio/dcloud/PdrR;->DCLOUD_GUIDE_GIF_XIAOMI:I

    .line 16
    const-string v1, "_staremapp_shortcut_guide_is_first_miui"

    goto/16 :goto_c9

    .line 17
    :cond_42
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v2, Lio/dcloud/common/adapter/util/MobilePhoneModel;->HUAWEI:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 18
    invoke-static {}, Lio/dcloud/common/util/AppPermissionUtil;->isEmuiShortcutallowAllow()Z

    move-result p1

    if-nez p1, :cond_c7

    .line 20
    sget p1, Lio/dcloud/base/R$string;->dcloud_short_cut_pms_unauthorized_tips3:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 21
    sget p1, Lio/dcloud/PdrR;->DCLOUD_GUIDE_GIF_HUAWEI:I

    .line 22
    const-string v1, "_staremapp_shortcut_guide_is_first_emui"

    goto :goto_27

    .line 24
    :cond_5d
    sget-object p1, Lio/dcloud/common/adapter/util/MobilePhoneModel;->VIVO:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c7

    .line 25
    const-string p1, "com.iqoo.secure"

    invoke-static {p0, p1}, Lio/dcloud/common/util/LoadAppUtils;->getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-static {p0}, Lio/dcloud/common/util/LoadAppUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-static {p0, v1}, Lio/dcloud/common/util/ShortCutUtil;->requestShortCutPermissionVivo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c7

    .line 29
    const-string v6, "2"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c6

    const-string v6, "1"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8a

    goto :goto_c6

    .line 31
    :cond_8a
    invoke-static {v6, v2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_98

    const-string v6, "17"

    invoke-static {v6, v2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c7

    .line 34
    :cond_98
    const-string v2, "3"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v5, "_staremapp_shortcut_guide_is_first_vivo"

    if-eqz v2, :cond_b4

    .line 35
    sget p1, Lio/dcloud/base/R$string;->dcloud_short_cut_pms_unauthorized_tips4:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v1, v0, v4

    invoke-static {p1, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v5

    const/4 p1, 0x1

    goto/16 :goto_27

    .line 37
    :cond_b4
    const-string v1, "4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c2

    .line 38
    sget p1, Lio/dcloud/base/R$string;->dcloud_short_cut_open_set_pms:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_c2
    move-object v1, v5

    const/4 p1, 0x0

    goto/16 :goto_27

    :cond_c6
    :goto_c6
    return v5

    :cond_c7
    const/4 v1, 0x0

    const/4 p1, 0x0

    :goto_c9
    if-ne v5, v3, :cond_156

    if-eqz p6, :cond_156

    .line 45
    invoke-interface {p3}, Lio/dcloud/common/DHInterface/IApp;->forceShortCut()Ljava/lang/String;

    move-result-object p6

    const-string/jumbo v2, "tipOnce"

    invoke-static {p6, v2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_12f

    .line 46
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-interface {p5, p6, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p6

    if-eqz p6, :cond_156

    .line 47
    invoke-interface {p5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p6, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p6

    invoke-interface {p6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz p2, :cond_118

    move-object p2, p4

    move p4, p1

    .line 49
    invoke-interface {p3}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object p1

    move-object p0, p3

    move-object p3, p5

    move-object p5, v0

    invoke-static/range {p0 .. p5}, Lio/dcloud/common/util/AppPermissionUtil;->showShortCutDialog(Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;Landroid/content/SharedPreferences;ILjava/lang/String;)V

    return v5

    :cond_118
    move p4, p1

    move-object p5, v0

    .line 52
    invoke-static {p0}, Lio/dcloud/common/util/LoadAppUtils;->startSecuritySettingPage(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_156

    .line 53
    invoke-static {p0, p5, v3}, Lcom/dcloud/android/widget/toast/ToastCompat;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/dcloud/android/widget/toast/ToastCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dcloud/android/widget/toast/ToastCompat;->show()V

    .line 54
    invoke-static {p0}, Lio/dcloud/common/ui/PermissionGuideWindow;->getInstance(Landroid/content/Context;)Lio/dcloud/common/ui/PermissionGuideWindow;

    move-result-object p0

    invoke-virtual {p0, p5, p4}, Lio/dcloud/common/ui/PermissionGuideWindow;->showWindow(Ljava/lang/String;I)V

    return v5

    :cond_12f
    move p6, p1

    move-object p1, p0

    move-object p0, p3

    move p3, p2

    move-object p2, p4

    move p4, p6

    move-object p6, p5

    move-object p5, v0

    if-eqz p3, :cond_142

    .line 60
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object p1

    move-object p3, p6

    invoke-static/range {p0 .. p5}, Lio/dcloud/common/util/AppPermissionUtil;->showShortCutDialog(Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;Landroid/content/SharedPreferences;ILjava/lang/String;)V

    return v5

    .line 63
    :cond_142
    invoke-static {p1}, Lio/dcloud/common/util/LoadAppUtils;->startSecuritySettingPage(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_156

    .line 64
    invoke-static {p1, p5, v3}, Lcom/dcloud/android/widget/toast/ToastCompat;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/dcloud/android/widget/toast/ToastCompat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dcloud/android/widget/toast/ToastCompat;->show()V

    .line 65
    invoke-static {p1}, Lio/dcloud/common/ui/PermissionGuideWindow;->getInstance(Landroid/content/Context;)Lio/dcloud/common/ui/PermissionGuideWindow;

    move-result-object p0

    invoke-virtual {p0, p5, p4}, Lio/dcloud/common/ui/PermissionGuideWindow;->showWindow(Ljava/lang/String;I)V

    :cond_156
    return v5
.end method

.method public static checkOp(Landroid/content/Context;)I
    .registers 10

    .line 3
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 6
    :try_start_a
    const-string v2, "OP_INSTALL_SHORTCUT"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 7
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    const/4 v3, 0x3

    .line 11
    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    .line 12
    const-string v5, "checkOp"

    invoke-virtual {v1, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 14
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v6

    aput-object v4, v3, v7

    aput-object p0, v3, v8

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_4d} :catch_4e

    return p0

    :catch_4e
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)I
    .registers 6

    .line 1
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v1, Lio/dcloud/common/adapter/util/MobilePhoneModel;->MEIZU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eqz v1, :cond_18

    .line 2
    invoke-static {p1}, Lio/dcloud/common/util/ShortCutUtil;->getHeadShortCutIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lio/dcloud/common/util/AppPermissionUtil;->isFlymeShortcutallowAllow(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-nez p0, :cond_17

    return v2

    :cond_17
    return v3

    .line 7
    :cond_18
    sget-object p1, Lio/dcloud/common/adapter/util/MobilePhoneModel;->XIAOMI:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x4

    if-eqz p1, :cond_30

    .line 8
    invoke-static {p0}, Lio/dcloud/common/util/AppPermissionUtil;->checkOp(Landroid/content/Context;)I

    move-result p0

    if-eqz p0, :cond_2f

    if-eq p0, v2, :cond_2f

    if-eq p0, v3, :cond_2e

    if-eq p0, v0, :cond_2e

    goto :goto_42

    :cond_2e
    const/4 p0, 0x2

    :cond_2f
    return p0

    .line 20
    :cond_30
    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object p1, Lio/dcloud/common/adapter/util/MobilePhoneModel;->HUAWEI:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_42

    .line 21
    invoke-static {}, Lio/dcloud/common/util/AppPermissionUtil;->isEmuiShortcutallowAllow()Z

    move-result p0

    if-nez p0, :cond_41

    return v2

    :cond_41
    return v3

    :cond_42
    :goto_42
    return v0
.end method

.method public static checkShortcutOps(Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1
    const-string p3, "pdr"

    invoke-static {p1, p3}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p3

    .line 3
    invoke-static {p1}, Lio/dcloud/common/util/AppPermissionUtil;->getCheckShortcutOps(Landroid/app/Activity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 4
    invoke-static {p0, p1, p2, p3}, Lio/dcloud/common/util/AppPermissionUtil;->showShortCutOpsDialog(Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    const/4 p0, 0x0

    return p0

    :cond_12
    return v1
.end method

.method public static getCheckShortcutOps(Landroid/app/Activity;)I
    .registers 3

    .line 1
    invoke-static {}, Lio/dcloud/common/util/AppPermissionUtil;->getShotCutOpId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_c

    .line 3
    invoke-static {p0}, Lio/dcloud/common/util/AppPermissionUtil;->checkOp(Landroid/content/Context;)I

    move-result p0

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private static getFlymePermissionGranted(Landroid/content/Context;ILandroid/content/Intent;)I
    .registers 13

    .line 1
    :try_start_0
    const-string v0, "meizu.security.IFlymePermissionService$Stub"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2
    const-string v1, "android.os.ServiceManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 3
    const-string v2, "getService"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 4
    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "flyme_permission"

    aput-object v5, v4, v6

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 5
    const-string v2, "asInterface"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 6
    new-array v4, v3, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "noteIntentOperation"

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    aput-object v7, v5, v3

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v7, v5, v8

    const-class v7, Landroid/content/Intent;

    const/4 v9, 0x3

    aput-object v7, v5, v9

    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    aput-object v2, v4, v3

    aput-object p0, v4, v8

    aput-object p2, v4, v9

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7b} :catch_7c

    return p0

    :catch_7c
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method private static getFlymeShortcutPid()I
    .registers 3

    .line 1
    :try_start_0
    const-string v0, "meizu.security.FlymePermissionManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2
    const-string v1, "OP_SEND_SHORTCUT_BROADCAST"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    return v0

    :catch_1b
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public static getShotCutOpId()I
    .registers 3

    .line 1
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v1, Lio/dcloud/common/adapter/util/MobilePhoneModel;->XIAOMI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2f

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    packed-switch v0, :pswitch_data_48

    return v1

    .line 9
    :pswitch_11
    sget-object v0, Lio/dcloud/common/util/AppPermissionUtil;->mXiaoMiCode23OPSIDs:Ljava/util/HashMap;

    sget-object v1, Lio/dcloud/common/util/AppPermissionUtil;->OP_INSTALL_SHORTCUT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 10
    :pswitch_20
    sget-object v0, Lio/dcloud/common/util/AppPermissionUtil;->mXiaoMiCode21OPSIDs:Ljava/util/HashMap;

    sget-object v1, Lio/dcloud/common/util/AppPermissionUtil;->OP_INSTALL_SHORTCUT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 20
    :cond_2f
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v2, Lio/dcloud/common/adapter/util/MobilePhoneModel;->HUAWEI:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-eq v0, v2, :cond_44

    const/16 v2, 0x18

    if-eq v0, v2, :cond_44

    goto :goto_47

    :cond_44
    const/high16 v0, 0x1000000

    return v0

    :cond_47
    :goto_47
    return v1

    :pswitch_data_48
    .packed-switch 0x15
        :pswitch_20
        :pswitch_20
        :pswitch_11
    .end packed-switch
.end method

.method public static isEmuiShortcutallowAllow()Z
    .registers 10

    const/4 v0, 0x1

    .line 1
    :try_start_1
    invoke-static {}, Lio/dcloud/common/util/AppPermissionUtil;->getShotCutOpId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_9

    return v0

    .line 5
    :cond_9
    const-string v2, "com.huawei.hsm.permission.StubController"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 6
    const-string v3, "holdForGetPermissionSelection"

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    aput-object v6, v5, v0

    const/4 v8, 0x2

    aput-object v6, v5, v8

    const-class v6, Ljava/lang/String;

    const/4 v9, 0x3

    aput-object v6, v5, v9

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v7

    aput-object v5, v4, v0

    aput-object v6, v4, v8

    const/4 v1, 0x0

    aput-object v1, v4, v9

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_50} :catch_53

    if-ne v1, v8, :cond_57

    return v7

    :catch_53
    move-exception v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_57
    return v0
.end method

.method public static isFlymeShortcutallowAllow(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 5

    .line 1
    invoke-static {}, Lio/dcloud/common/util/AppPermissionUtil;->getFlymeShortcutPid()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_10

    .line 3
    invoke-static {p0, v0, p1}, Lio/dcloud/common/util/AppPermissionUtil;->getFlymePermissionGranted(Landroid/content/Context;ILandroid/content/Intent;)I

    move-result p0

    if-ne p0, v2, :cond_10

    const/4 p0, 0x0

    return p0

    :cond_10
    return v2
.end method

.method public static showShortCutDialog(Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;Landroid/content/SharedPreferences;ILjava/lang/String;)V
    .registers 13

    const/4 p0, 0x1

    .line 1
    invoke-static {p1, p0}, Lio/dcloud/common/util/DialogUtil;->initDialogTheme(Landroid/app/Activity;Z)Lcom/dcloud/android/widget/dialog/DCloudAlertDialog;

    move-result-object p0

    .line 3
    sget v0, Lio/dcloud/base/R$string;->dcloud_short_cut_create_error:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    sget v1, Lio/dcloud/base/R$string;->dcloud_short_cut_set_pms:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 6
    sget v0, Lio/dcloud/base/R$string;->dcloud_short_cut_set_up:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lio/dcloud/common/util/AppPermissionUtil$7;

    move-object v2, p1

    move-object v4, p2

    move-object v3, p3

    move v6, p4

    move-object v5, p5

    invoke-direct/range {v1 .. v6}, Lio/dcloud/common/util/AppPermissionUtil$7;-><init>(Landroid/app/Activity;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 19
    sget p1, Lio/dcloud/base/R$string;->dcloud_short_cut_abandon_install:I

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lio/dcloud/common/util/AppPermissionUtil$8;

    invoke-direct {p2}, Lio/dcloud/common/util/AppPermissionUtil$8;-><init>()V

    const/4 p3, -0x2

    invoke-virtual {p0, p3, p1, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p1, 0x0

    .line 28
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 29
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 31
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_6c

    .line 34
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 35
    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 36
    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 p1, 0x50

    .line 37
    invoke-virtual {p0, p1}, Landroid/view/Window;->setGravity(I)V

    .line 38
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double p3, p1

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    mul-double p3, p3, v0

    double-to-int p1, p3

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0, p1, p2}, Landroid/view/Window;->setLayout(II)V

    :cond_6c
    return-void
.end method

.method public static showShortCutOpsDialog(Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .registers 8

    const/4 v0, 0x1

    .line 1
    invoke-static {p1, v0}, Lio/dcloud/common/util/DialogUtil;->initDialogTheme(Landroid/app/Activity;Z)Lcom/dcloud/android/widget/dialog/DCloudAlertDialog;

    move-result-object v0

    .line 2
    sget v1, Lio/dcloud/base/R$string;->dcloud_short_cut_create_error_tips2:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v3, Lio/dcloud/common/adapter/util/MobilePhoneModel;->MEIZU:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 4
    sget v1, Lio/dcloud/base/R$string;->dcloud_short_cut_create_error_tips3:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2c

    .line 5
    :cond_1c
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v3, Lio/dcloud/common/adapter/util/MobilePhoneModel;->HUAWEI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 6
    sget v1, Lio/dcloud/base/R$string;->dcloud_short_cut_create_error_tips4:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8
    :cond_2c
    :goto_2c
    sget v2, Lio/dcloud/base/R$string;->dcloud_short_cut_set_pms:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setTitle(I)V

    .line 9
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 10
    sget v1, Lio/dcloud/base/R$string;->dcloud_short_cut_goto_pms:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lio/dcloud/common/util/AppPermissionUtil$1;

    invoke-direct {v2, p1, p3, p2}, Lio/dcloud/common/util/AppPermissionUtil$1;-><init>(Landroid/app/Activity;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    const/4 p3, -0x1

    invoke-virtual {v0, p3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 21
    sget p3, Lio/dcloud/base/R$string;->dcloud_short_cut_not_install:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v1, Lio/dcloud/common/util/AppPermissionUtil$2;

    invoke-direct {v1, p0, p1, p2}, Lio/dcloud/common/util/AppPermissionUtil$2;-><init>(Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;)V

    const/4 v2, -0x2

    invoke-virtual {v0, v2, p3, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 30
    new-instance p3, Lio/dcloud/common/util/AppPermissionUtil$3;

    invoke-direct {p3, p0, p1, p2}, Lio/dcloud/common/util/AppPermissionUtil$3;-><init>(Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 p0, 0x0

    .line 38
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 39
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

###### Class io.dcloud.common.util.AppPermissionUtil.AnonymousClass1 (io.dcloud.common.util.AppPermissionUtil$1)
.class Lio/dcloud/common/util/AppPermissionUtil$1;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/AppPermissionUtil;->showShortCutOpsDialog(Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;Landroid/content/SharedPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$appid:Ljava/lang/String;

.field final synthetic val$sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/AppPermissionUtil$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lio/dcloud/common/util/AppPermissionUtil$1;->val$sharedPreferences:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lio/dcloud/common/util/AppPermissionUtil$1;->val$appid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "package:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lio/dcloud/common/util/AppPermissionUtil$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3
    iget-object p1, p0, Lio/dcloud/common/util/AppPermissionUtil$1;->val$sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/dcloud/common/util/AppPermissionUtil$1;->val$appid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_is_create_shortcut"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4
    iget-object p1, p0, Lio/dcloud/common/util/AppPermissionUtil$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

###### Class io.dcloud.common.util.AppPermissionUtil.AnonymousClass2 (io.dcloud.common.util.AppPermissionUtil$2)
.class Lio/dcloud/common/util/AppPermissionUtil$2;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/AppPermissionUtil;->showShortCutOpsDialog(Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;Landroid/content/SharedPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$app:Lio/dcloud/common/DHInterface/IApp;

.field final synthetic val$appid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/AppPermissionUtil$2;->val$app:Lio/dcloud/common/DHInterface/IApp;

    iput-object p2, p0, Lio/dcloud/common/util/AppPermissionUtil$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lio/dcloud/common/util/AppPermissionUtil$2;->val$appid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 1
    iget-object p1, p0, Lio/dcloud/common/util/AppPermissionUtil$2;->val$app:Lio/dcloud/common/DHInterface/IApp;

    iget-object p2, p0, Lio/dcloud/common/util/AppPermissionUtil$2;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lio/dcloud/common/util/AppPermissionUtil$2;->val$appid:Ljava/lang/String;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lio/dcloud/common/util/AppPermissionUtil;->againShortcutOpsDialog(Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.common.util.AppPermissionUtil.AnonymousClass3 (io.dcloud.common.util.AppPermissionUtil$3)
.class Lio/dcloud/common/util/AppPermissionUtil$3;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/AppPermissionUtil;->showShortCutOpsDialog(Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;Landroid/content/SharedPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$app:Lio/dcloud/common/DHInterface/IApp;

.field final synthetic val$appid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/AppPermissionUtil$3;->val$app:Lio/dcloud/common/DHInterface/IApp;

    iput-object p2, p0, Lio/dcloud/common/util/AppPermissionUtil$3;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lio/dcloud/common/util/AppPermissionUtil$3;->val$appid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lio/dcloud/common/util/AppPermissionUtil$3;->val$app:Lio/dcloud/common/DHInterface/IApp;

    iget-object v0, p0, Lio/dcloud/common/util/AppPermissionUtil$3;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lio/dcloud/common/util/AppPermissionUtil$3;->val$appid:Ljava/lang/String;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lio/dcloud/common/util/AppPermissionUtil;->againShortcutOpsDialog(Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.common.util.AppPermissionUtil.AnonymousClass4 (io.dcloud.common.util.AppPermissionUtil$4)
.class Lio/dcloud/common/util/AppPermissionUtil$4;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/AppPermissionUtil;->againShortcutOpsDialog(Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$appid:Ljava/lang/String;

.field final synthetic val$sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/AppPermissionUtil$4;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lio/dcloud/common/util/AppPermissionUtil$4;->val$sharedPreferences:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lio/dcloud/common/util/AppPermissionUtil$4;->val$appid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "package:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lio/dcloud/common/util/AppPermissionUtil$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3
    iget-object p1, p0, Lio/dcloud/common/util/AppPermissionUtil$4;->val$sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/dcloud/common/util/AppPermissionUtil$4;->val$appid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_is_create_shortcut"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4
    iget-object p1, p0, Lio/dcloud/common/util/AppPermissionUtil$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

###### Class io.dcloud.common.util.AppPermissionUtil.AnonymousClass5 (io.dcloud.common.util.AppPermissionUtil$5)
.class Lio/dcloud/common/util/AppPermissionUtil$5;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/AppPermissionUtil;->againShortcutOpsDialog(Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$app:Lio/dcloud/common/DHInterface/IApp;


# direct methods
.method constructor <init>(Lio/dcloud/common/DHInterface/IApp;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/AppPermissionUtil$5;->val$app:Lio/dcloud/common/DHInterface/IApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    sget-object p1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object p2, Lio/dcloud/common/adapter/util/MobilePhoneModel;->MEIZU:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_16

    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object p2, Lio/dcloud/common/adapter/util/MobilePhoneModel;->HUAWEI:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_16

    :cond_15
    return-void

    .line 2
    :cond_16
    :goto_16
    iget-object p1, p0, Lio/dcloud/common/util/AppPermissionUtil$5;->val$app:Lio/dcloud/common/DHInterface/IApp;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lio/dcloud/common/util/ShortCutUtil;->createShortcutToDeskTop(Lio/dcloud/common/DHInterface/IApp;Z)Z

    return-void
.end method

###### Class io.dcloud.common.util.AppPermissionUtil.AnonymousClass6 (io.dcloud.common.util.AppPermissionUtil$6)
.class Lio/dcloud/common/util/AppPermissionUtil$6;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/AppPermissionUtil;->againShortcutOpsDialog(Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    return-void
.end method

###### Class io.dcloud.common.util.AppPermissionUtil.AnonymousClass7 (io.dcloud.common.util.AppPermissionUtil$7)
.class Lio/dcloud/common/util/AppPermissionUtil$7;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/AppPermissionUtil;->showShortCutDialog(Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;Landroid/content/SharedPreferences;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$appid:Ljava/lang/String;

.field final synthetic val$resId:I

.field final synthetic val$sharedPreferences:Landroid/content/SharedPreferences;

.field final synthetic val$tips:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/AppPermissionUtil$7;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lio/dcloud/common/util/AppPermissionUtil$7;->val$sharedPreferences:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lio/dcloud/common/util/AppPermissionUtil$7;->val$appid:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/common/util/AppPermissionUtil$7;->val$tips:Ljava/lang/String;

    iput p5, p0, Lio/dcloud/common/util/AppPermissionUtil$7;->val$resId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/dcloud/common/util/AppPermissionUtil$7;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lio/dcloud/common/util/LoadAppUtils;->startSecuritySettingPage(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_41

    .line 2
    iget-object p1, p0, Lio/dcloud/common/util/AppPermissionUtil$7;->val$sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lio/dcloud/common/util/AppPermissionUtil$7;->val$appid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_is_create_shortcut"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3
    iget-object p1, p0, Lio/dcloud/common/util/AppPermissionUtil$7;->val$activity:Landroid/app/Activity;

    iget-object p2, p0, Lio/dcloud/common/util/AppPermissionUtil$7;->val$tips:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/dcloud/android/widget/toast/ToastCompat;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/dcloud/android/widget/toast/ToastCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dcloud/android/widget/toast/ToastCompat;->show()V

    .line 4
    iget-object p1, p0, Lio/dcloud/common/util/AppPermissionUtil$7;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lio/dcloud/common/ui/PermissionGuideWindow;->getInstance(Landroid/content/Context;)Lio/dcloud/common/ui/PermissionGuideWindow;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/common/util/AppPermissionUtil$7;->val$tips:Ljava/lang/String;

    iget v0, p0, Lio/dcloud/common/util/AppPermissionUtil$7;->val$resId:I

    invoke-virtual {p1, p2, v0}, Lio/dcloud/common/ui/PermissionGuideWindow;->showWindow(Ljava/lang/String;I)V

    :cond_41
    return-void
.end method

###### Class io.dcloud.common.util.AppPermissionUtil.AnonymousClass8 (io.dcloud.common.util.AppPermissionUtil$8)
.class Lio/dcloud/common/util/AppPermissionUtil$8;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/AppPermissionUtil;->showShortCutDialog(Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;Landroid/content/SharedPreferences;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
