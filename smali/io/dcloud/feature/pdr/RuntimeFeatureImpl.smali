###### Class io.dcloud.feature.pdr.RuntimeFeatureImpl (io.dcloud.feature.pdr.RuntimeFeatureImpl)
.class public Lio/dcloud/feature/pdr/RuntimeFeatureImpl;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/IFeature;
.implements Lio/dcloud/common/adapter/util/MessageHandler$IMessages;


# instance fields
.field final a:Ljava/lang/String;

.field b:Lio/dcloud/common/DHInterface/AbsMgr;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-class v0, Lio/dcloud/PandoraEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl;->b:Lio/dcloud/common/DHInterface/AbsMgr;

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3d

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 60
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 61
    const-string v1, "LOCAL_BADGE_SETTING"

    const-string v2, "badge"

    invoke-static {v1, v2}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/app/NotificationChannelGroup;

    move-result-object v1

    invoke-static {v0, v1}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannelGroup;)V

    .line 62
    invoke-static {}, Lio/dcloud/p/g4$$ExternalSyntheticApiModelOutline0;->m$1()V

    sget v1, Lio/dcloud/base/R$string;->dcloud_nf_desktop_icon_corner:I

    .line 63
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "LOCAL_BADGE_NUM"

    const/4 v2, 0x3

    invoke-static {v1, p1, v2}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object p1

    const/4 v1, 0x1

    .line 64
    invoke-static {p1, v1}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Z)V

    .line 65
    invoke-static {p1, v1}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/app/NotificationChannel;Z)V

    .line 66
    invoke-static {v0, p1}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    :cond_3d
    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 6

    .line 30
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 31
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 32
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lio/dcloud/WebviewActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 33
    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 35
    const-string p2, "android.intent.action.VIEW"

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 36
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 37
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32

    :cond_31
    return-void

    :catch_32
    move-exception p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_21

    .line 4
    :cond_f
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x0

    .line 5
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_23

    .line 6
    :cond_21
    :goto_21
    const-string p2, ""

    .line 13
    :goto_23
    :try_start_23
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/feature/pdr/RuntimeFeatureImpl;->b(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 15
    :cond_31
    const-string p3, "samsung"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3d

    .line 16
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/pdr/RuntimeFeatureImpl;->c(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-void

    .line 17
    :cond_3d
    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sony"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 18
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/pdr/RuntimeFeatureImpl;->d(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-void

    .line 19
    :cond_4f
    invoke-virtual {v0, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "huawei"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 20
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/pdr/RuntimeFeatureImpl;->e(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-void

    .line 21
    :cond_5f
    invoke-virtual {v0, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "vivo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 22
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/pdr/RuntimeFeatureImpl;->g(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-void

    .line 23
    :cond_6f
    invoke-virtual {v0, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "oppo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 24
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/pdr/RuntimeFeatureImpl;->f(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-void

    .line 25
    :cond_7f
    invoke-virtual {v0, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "honor"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_8e

    .line 26
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/pdr/RuntimeFeatureImpl;->b(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_8e} :catch_8f

    :cond_8e
    return-void

    :catch_8f
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private a(Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;)V
    .registers 6

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_65

    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->ISAMU:Z

    if-eqz v0, :cond_65

    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 43
    sget-object v1, Lio/dcloud/common/constant/StringConst;->POINT_APP_EN:Ljava/lang/String;

    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v2, v1

    if-eqz v2, :cond_34

    .line 47
    const-string v1, ".wgt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    sub-int v1, v0, v1

    add-int/lit8 v1, v1, -0x4

    if-eqz v1, :cond_34

    .line 48
    const-string v1, ".wgtu"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x5

    if-nez v0, :cond_65

    .line 50
    :cond_34
    :try_start_34
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 51
    const-string v1, "type"

    const-string v2, "install"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string v1, "file"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string p1, "appid"

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->obtainOriginalAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string p1, "version"

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppVersionName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string p1, ".stream_json"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catch Lorg/json/JSONException; {:try_start_34 .. :try_end_60} :catch_61

    return-void

    :catch_61
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_65
    return-void
.end method

.method private b(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 7

    .line 65
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 66
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_f

    :cond_e
    const/4 p2, 0x0

    :goto_f
    if-gez p2, :cond_12

    goto :goto_13

    :cond_12
    move v1, p2

    .line 69
    :goto_13
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 70
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "package"

    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 72
    const-string v2, "class"

    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v0, "badgenumber"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 74
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "content://com.hihonor.android.launcher.settings/badge/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "change_badge"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v2, v3, p2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 76
    invoke-static {}, Lio/dcloud/common/DHInterface/message/ActionBus;->getInstance()Lio/dcloud/common/DHInterface/message/ActionBus;

    move-result-object p1

    sget-object p2, Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction$ENUM_ACTION_TYPE;->SYNC_NUM:Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction$ENUM_ACTION_TYPE;

    .line 77
    invoke-static {p2}, Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction;->obtain(Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction$ENUM_ACTION_TYPE;)Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction;

    move-result-object p2

    .line 78
    invoke-virtual {p2, v1}, Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction;->setSyncNum(I)Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction;

    move-result-object p2

    .line 79
    invoke-virtual {p1, p2}, Lio/dcloud/common/DHInterface/message/ActionBus;->sendToBus(Lio/dcloud/common/DHInterface/message/action/IAction;)Z

    return-void
.end method

.method private b(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    .line 1
    const-string v0, "title"

    const-string v1, "content"

    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_f

    .line 3
    :catch_a
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 5
    :goto_f
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v3, "notification"

    invoke-virtual {p3, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/NotificationManager;

    const v3, 0x18a92

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 10
    :try_start_21
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    if-lt v7, v8, :cond_3c

    .line 11
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {p0, v7}, Lio/dcloud/feature/pdr/RuntimeFeatureImpl;->a(Landroid/content/Context;)V

    .line 12
    invoke-static {}, Lio/dcloud/p/g4$$ExternalSyntheticApiModelOutline0;->m$2()V

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "LOCAL_BADGE_NUM"

    invoke-static {v7, v8}, Lio/dcloud/p/g4$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v7

    goto :goto_45

    .line 14
    :cond_3c
    new-instance v7, Landroid/app/Notification$Builder;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 16
    :goto_45
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_62

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v8, Lio/dcloud/base/R$string;->dcloud_common_msg_unread_prompt:I

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v8, v5, [Ljava/lang/Object;

    aput-object p2, v8, v4

    invoke-static {v1, v8}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_66

    .line 17
    :cond_62
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_66
    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 18
    invoke-virtual {v7, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 19
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v8, "drawable"

    const-string v9, "push"

    invoke-static {v1, v8, v9}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_88

    .line 21
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_8b

    .line 23
    :cond_88
    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    :goto_8b
    const/4 v1, 0x4

    .line 25
    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 26
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 28
    invoke-virtual {v8, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 29
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b6

    sget-object v0, Lio/dcloud/common/adapter/util/AndroidResources;->mApplicationInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_ba

    .line 30
    :cond_b6
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_ba
    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 31
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v2, 0x2723

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v0, v2, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 32
    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 33
    invoke-virtual {v7, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 34
    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    const/16 v0, 0x10

    .line 35
    iput v0, v6, Landroid/app/Notification;->flags:I

    .line 36
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "extraNotification"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 37
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setMessageCount"

    new-array v7, v5, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    invoke-virtual {v1, v2, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 39
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v2, v7, v4

    invoke-virtual {v1, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_104} :catch_10b
    .catchall {:try_start_21 .. :try_end_104} :catchall_108

    .line 51
    invoke-virtual {p3, v3, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_129

    :catchall_108
    move-exception p1

    const/4 v4, 0x1

    goto :goto_12b

    :catch_10b
    move-exception v0

    .line 52
    :try_start_10c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_10f
    .catchall {:try_start_10c .. :try_end_10f} :catchall_108

    .line 55
    :try_start_10f
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.APPLICATION_MESSAGE_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    const-string v1, "android.intent.extra.update_application_component_name"

    iget-object v2, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v1, "android.intent.extra.update_application_message_text"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_129
    .catchall {:try_start_10f .. :try_end_129} :catchall_12a

    :goto_129
    return-void

    :catchall_12a
    move-exception p1

    :goto_12b
    if-eqz v6, :cond_132

    if-eqz v4, :cond_132

    .line 62
    invoke-virtual {p3, v3, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 64
    :cond_132
    throw p1
.end method

.method private b(Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;)V
    .registers 6

    .line 80
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 81
    const-string v1, "type"

    const-string v2, "openurl"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string p1, "appid"

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->obtainOriginalAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string p1, "version"

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppVersionName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string p1, ".stream_json"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2c} :catch_2d

    return-void

    :catch_2d
    move-exception p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private c(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BADGE_COUNT_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const-string v1, "badge_count"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "badge_count_package_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object p2, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl;->a:Ljava/lang/String;

    const-string v1, "badge_count_class_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private d(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sonymobile.home.resourceprovider"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v2, 0x1

    .line 7
    :goto_19
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 8
    const-string v1, "com.sonyericsson.home.action.UPDATE_BADGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    const-string v1, "com.sonyericsson.home.intent.extra.badge.SHOW_MESSAGE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10
    iget-object v1, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl;->a:Ljava/lang/String;

    const-string v2, "com.sonyericsson.home.intent.extra.badge.ACTIVITY_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    const-string v1, "com.sonyericsson.home.intent.extra.badge.MESSAGE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "com.sonyericsson.home.intent.extra.badge.PACKAGE_NAME"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 15
    :cond_49
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BADGE_COUNT_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    const-string v1, "badge_count"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "badge_count_package_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    iget-object p2, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl;->a:Ljava/lang/String;

    const-string v1, "badge_count_class_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private e(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 7

    .line 1
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_f

    :cond_e
    const/4 p2, 0x0

    :goto_f
    if-gez p2, :cond_12

    goto :goto_13

    :cond_12
    move v1, p2

    .line 5
    :goto_13
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 6
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "package"

    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 8
    const-string v2, "class"

    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const-string v0, "badgenumber"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "content://com.huawei.android.launcher.settings/badge/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "change_badge"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v2, v3, p2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 13
    invoke-static {}, Lio/dcloud/common/DHInterface/message/ActionBus;->getInstance()Lio/dcloud/common/DHInterface/message/ActionBus;

    move-result-object p1

    sget-object p2, Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction$ENUM_ACTION_TYPE;->SYNC_NUM:Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction$ENUM_ACTION_TYPE;

    .line 14
    invoke-static {p2}, Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction;->obtain(Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction$ENUM_ACTION_TYPE;)Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction;

    move-result-object p2

    .line 15
    invoke-virtual {p2, v1}, Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction;->setSyncNum(I)Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction;

    move-result-object p2

    .line 16
    invoke-virtual {p1, p2}, Lio/dcloud/common/DHInterface/message/ActionBus;->sendToBus(Lio/dcloud/common/DHInterface/message/action/IAction;)Z

    return-void
.end method

.method private f(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_7

    const/4 p2, -0x1

    .line 5
    :cond_7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    const-string v1, "app_badge_count"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "content://com.android.badge/badge"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "setAppBadgeCount"

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method private g(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 6

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "launcher.action.CHANGE_APPLICATION_NOTIFICATION_NUM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    const-string v1, "packageName"

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 4
    const-string v2, "className"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    const-string v1, "notificationNum"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_45} :catch_45

    :catch_45
    return-void
.end method


# virtual methods
.method public dispose(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 20

    move-object/from16 v0, p2

    const-string v1, "pname"

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    sparse-switch v2, :sswitch_data_260

    :goto_16
    const/4 v2, -0x1

    goto/16 :goto_7d

    :sswitch_19
    const-string v2, "agreePrivacy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    goto :goto_16

    :cond_22
    const/16 v2, 0x8

    goto/16 :goto_7d

    :sswitch_26
    const-string v2, "disagreePrivacy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    goto :goto_16

    :cond_2f
    const/4 v2, 0x7

    goto :goto_7d

    :sswitch_31
    const-string v2, "downloadBlob"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    goto :goto_16

    :cond_3a
    const/4 v2, 0x6

    goto :goto_7d

    :sswitch_3c
    const-string v2, "isAgreePrivacy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    goto :goto_16

    :cond_45
    const/4 v2, 0x5

    goto :goto_7d

    :sswitch_47
    const-string v2, "isStreamValid"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    goto :goto_16

    :cond_50
    const/4 v2, 0x4

    goto :goto_7d

    :sswitch_52
    const-string v2, "processDirectPage"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5b

    goto :goto_16

    :cond_5b
    const/4 v2, 0x3

    goto :goto_7d

    :sswitch_5d
    const-string v2, "isCustomLaunchPath"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_66

    goto :goto_16

    :cond_66
    const/4 v2, 0x2

    goto :goto_7d

    :sswitch_68
    const-string v2, "isApplicationExist"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_71

    goto :goto_16

    :cond_71
    const/4 v2, 0x1

    goto :goto_7d

    :sswitch_73
    const-string v2, "getDCloudId"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7c

    goto :goto_16

    :cond_7c
    const/4 v2, 0x0

    :goto_7d
    const-string v8, "true"

    const-string v9, "scok"

    const-string v10, "false"

    const-string v11, "pdr"

    const-string v12, "1"

    const/4 v13, 0x0

    packed-switch v2, :pswitch_data_286

    .line 119
    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v5

    aput-object v0, v1, v6

    aput-object p3, v1, v4

    move-object/from16 v14, p0

    invoke-static {v14, v1}, Lio/dcloud/common/adapter/util/MessageHandler;->sendMessage(Lio/dcloud/common/adapter/util/MessageHandler$IMessages;Ljava/lang/Object;)V

    return-object v13

    :pswitch_99
    move-object/from16 v14, p0

    .line 120
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v11, v9, v12}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v13

    :pswitch_a3
    move-object/from16 v14, p0

    .line 124
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v0, v11, v9, v1}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v13

    :pswitch_af
    move-object/from16 v14, p0

    .line 148
    :try_start_b1
    aget-object v0, p3, v5
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b3} :catch_c0

    .line 149
    :try_start_b3
    aget-object v1, p3, v4
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_b5} :catch_bd

    .line 150
    :try_start_b5
    aget-object v2, p3, v6
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_b7} :catch_bb

    move-object v15, v2

    move-object v2, v1

    move-object v1, v15

    goto :goto_c5

    :catch_bb
    nop

    goto :goto_c3

    :catch_bd
    nop

    move-object v1, v13

    goto :goto_c3

    :catch_c0
    nop

    move-object v0, v13

    move-object v1, v0

    :goto_c3
    move-object v2, v1

    move-object v1, v13

    .line 152
    :goto_c5
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_159

    .line 154
    :try_start_cb
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v6

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_d6} :catch_d7

    goto :goto_d8

    :catch_d7
    nop

    .line 156
    :goto_d8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceRootDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/Download/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 157
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_103

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_103
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-static {v0, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 161
    :try_start_111
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 162
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 163
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_11c} :catch_13d

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\'code\':0,\'message\':\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_168

    :catch_13d
    move-exception v0

    move-object/from16 v1, p1

    .line 175
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 177
    :try_start_145
    const-string v4, "code"

    invoke-virtual {v3, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 178
    const-string v4, "message"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_153
    .catch Lorg/json/JSONException; {:try_start_145 .. :try_end_153} :catch_153

    .line 181
    :catch_153
    sget v0, Lio/dcloud/common/util/JSUtil;->ERROR:I

    invoke-static {v1, v2, v3, v0, v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    return-object v13

    :cond_159
    move-object/from16 v1, p1

    .line 186
    const-string v0, "blob error"

    invoke-static {v7, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :goto_168
    move-object v10, v13

    goto/16 :goto_23b

    :pswitch_16b
    move-object/from16 v14, p0

    .line 187
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v11, v9}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    const-string v1, "DCLOUD_PRIVACY_PROMPT"

    invoke-static {v1}, Lio/dcloud/common/adapter/util/AndroidResources;->getMetaValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b8

    .line 191
    const-string v2, "template"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_196

    .line 192
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c5

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c5

    goto :goto_1c4

    .line 193
    :cond_196
    const-string v2, "custom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1ab

    .line 194
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c5

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c5

    goto :goto_1c4

    .line 196
    :cond_1ab
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c4

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c5

    goto :goto_1c4

    .line 199
    :cond_1b8
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c4

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c5

    :cond_1c4
    :goto_1c4
    const/4 v5, 0x1

    .line 201
    :cond_1c5
    invoke-static {v5}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1ca
    move-object/from16 v14, p0

    .line 203
    invoke-static {}, Lio/dcloud/common/util/BaseInfo;->existsStreamEnv()Z

    move-result v0

    if-eqz v0, :cond_1d9

    invoke-static {}, Lio/dcloud/common/util/BaseInfo;->existsLibso()Z

    move-result v0

    if-eqz v0, :cond_1d9

    return-object v8

    :cond_1d9
    return-object v10

    :pswitch_1da
    move-object/from16 v14, p0

    .line 285
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->getDirectPage()Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-interface {v1, v13}, Lio/dcloud/common/DHInterface/IApp;->setDirectPage(Ljava/lang/String;)V

    .line 287
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f3

    .line 288
    const-string v0, ""

    .line 290
    :cond_1f3
    invoke-static {v0}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1f8
    move-object/from16 v14, p0

    .line 294
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->checkIsCustomPath()Z

    move-result v0

    if-eqz v0, :cond_209

    return-object v8

    :cond_209
    return-object v10

    :pswitch_20a
    move-object/from16 v14, p0

    .line 384
    aget-object v0, p3, v5

    .line 385
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_215

    goto :goto_22b

    .line 389
    :cond_215
    :try_start_215
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_221

    goto :goto_22b

    .line 393
    :cond_221
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 394
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22c

    :goto_22b
    return-object v10

    .line 397
    :cond_22c
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lio/dcloud/common/util/LoadAppUtils;->isAppLoad(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0
    :try_end_234
    .catch Lorg/json/JSONException; {:try_start_215 .. :try_end_234} :catch_237

    if-eqz v0, :cond_23b

    return-object v8

    :catch_237
    move-exception v0

    .line 401
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_23b
    :goto_23b
    return-object v10

    :pswitch_23c
    move-object/from16 v14, p0

    .line 428
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "_deviceId"

    invoke-static {v0, v11, v1}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 429
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_253

    .line 430
    invoke-static {v0, v6}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 432
    :cond_253
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6, v6}, Lio/dcloud/common/util/TelephonyUtil;->getIMEI(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_260
    .sparse-switch
        -0x5950755e -> :sswitch_73
        -0x5777fb2f -> :sswitch_68
        -0x2c9dc9ed -> :sswitch_5d
        0x19051e7 -> :sswitch_52
        0xc6e9cd2 -> :sswitch_47
        0x38f72186 -> :sswitch_3c
        0x4212e845 -> :sswitch_31
        0x48e14eca -> :sswitch_26
        0x66582f3c -> :sswitch_19
    .end sparse-switch

    :pswitch_data_286
    .packed-switch 0x0
        :pswitch_23c
        :pswitch_20a
        :pswitch_1f8
        :pswitch_1da
        :pswitch_1ca
        :pswitch_16b
        :pswitch_af
        :pswitch_a3
        :pswitch_99
    .end packed-switch
.end method

.method public execute(Ljava/lang/Object;)V
    .registers 18

    move-object/from16 v1, p0

    const-string v0, "newTask"

    .line 433
    move-object/from16 v2, p1

    check-cast v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 434
    aget-object v4, v2, v3

    move-object v5, v4

    check-cast v5, Lio/dcloud/common/DHInterface/IWebview;

    const/4 v4, 0x1

    .line 435
    aget-object v6, v2, v4

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    .line 436
    aget-object v2, v2, v7

    check-cast v2, [Ljava/lang/String;

    .line 437
    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v8

    invoke-interface {v8}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v8

    .line 438
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v10, 0x5

    const/4 v11, 0x3

    const/4 v12, -0x1

    sparse-switch v9, :sswitch_data_370

    goto/16 :goto_b2

    :sswitch_31
    const-string v9, "install"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3b

    goto/16 :goto_b2

    :cond_3b
    const/16 v12, 0xa

    goto/16 :goto_b2

    :sswitch_3f
    const-string v9, "showPrivacyDialog"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_49

    goto/16 :goto_b2

    :cond_49
    const/16 v12, 0x9

    goto/16 :goto_b2

    :sswitch_4d
    const-string v9, "restart"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_57

    goto/16 :goto_b2

    :cond_57
    const/16 v12, 0x8

    goto/16 :goto_b2

    :sswitch_5b
    const-string v9, "getProperty"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_64

    goto :goto_b2

    :cond_64
    const/4 v12, 0x7

    goto :goto_b2

    :sswitch_66
    const-string v9, "setBadgeNumber"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6f

    goto :goto_b2

    :cond_6f
    const/4 v12, 0x6

    goto :goto_b2

    :sswitch_71
    const-string v9, "quit"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7a

    goto :goto_b2

    :cond_7a
    const/4 v12, 0x5

    goto :goto_b2

    :sswitch_7c
    const-string v9, "openFile"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_85

    goto :goto_b2

    :cond_85
    const/4 v12, 0x4

    goto :goto_b2

    :sswitch_87
    const-string v9, "openDocument"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_90

    goto :goto_b2

    :cond_90
    const/4 v12, 0x3

    goto :goto_b2

    :sswitch_92
    const-string v9, "launchApplication"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9b

    goto :goto_b2

    :cond_9b
    const/4 v12, 0x2

    goto :goto_b2

    :sswitch_9d
    const-string v9, "openWeb"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a6

    goto :goto_b2

    :cond_a6
    const/4 v12, 0x1

    goto :goto_b2

    :sswitch_a8
    const-string v9, "openURL"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b1

    goto :goto_b2

    :cond_b1
    const/4 v12, 0x0

    :goto_b2
    const/4 v6, -0x4

    const-string v9, "pname"

    const/4 v13, 0x0

    packed-switch v12, :pswitch_data_39e

    goto/16 :goto_36e

    .line 447
    :pswitch_bb
    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "Runtime-install"

    invoke-static {v0, v4}, Lio/dcloud/common/util/AppRuntime;->checkPrivacyComplianceAndPrompt(Landroid/content/Context;Ljava/lang/String;)V

    .line 448
    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v0

    aget-object v3, v2, v3

    invoke-interface {v8, v0, v3}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 449
    invoke-direct {v1, v0, v8}, Lio/dcloud/feature/pdr/RuntimeFeatureImpl;->a(Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;)V

    .line 450
    new-instance v3, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$a;

    invoke-direct {v3, v1, v2, v0, v5}, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$a;-><init>(Lio/dcloud/feature/pdr/RuntimeFeatureImpl;[Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;)V

    .line 468
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    return-void

    .line 474
    :pswitch_da
    aget-object v6, v2, v3

    .line 475
    aget-object v0, v2, v4

    .line 479
    :try_start_de
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_e3
    .catch Lorg/json/JSONException; {:try_start_de .. :try_end_e3} :catch_e4

    goto :goto_e9

    :catch_e4
    move-exception v0

    .line 482
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v2, v13

    .line 487
    :goto_e9
    invoke-static {}, Lio/dcloud/common/ui/PrivacyManager;->getInstance()Lio/dcloud/common/ui/PrivacyManager;

    move-result-object v0

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v0, v7}, Lio/dcloud/common/ui/PrivacyManager;->resetPrivacyLocalConfig(Landroid/content/Context;)V

    if-nez v2, :cond_102

    .line 490
    invoke-static {}, Lio/dcloud/common/ui/PrivacyManager;->getInstance()Lio/dcloud/common/ui/PrivacyManager;

    move-result-object v0

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v13}, Lio/dcloud/common/ui/PrivacyManager;->reInit(Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_129

    .line 493
    :cond_102
    const-string v0, "config"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_116

    .line 495
    invoke-static {}, Lio/dcloud/common/ui/PrivacyManager;->getInstance()Lio/dcloud/common/ui/PrivacyManager;

    move-result-object v0

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v13}, Lio/dcloud/common/ui/PrivacyManager;->reInit(Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_129

    .line 497
    :cond_116
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 498
    invoke-static {}, Lio/dcloud/common/ui/PrivacyManager;->getInstance()Lio/dcloud/common/ui/PrivacyManager;

    move-result-object v2

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v2, v7, v0}, Lio/dcloud/common/ui/PrivacyManager;->reInit(Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;)V

    .line 508
    :goto_129
    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lio/dcloud/WebAppActivity;

    .line 509
    invoke-static {}, Lio/dcloud/common/ui/PrivacyManager;->getInstance()Lio/dcloud/common/ui/PrivacyManager;

    move-result-object v2

    new-instance v7, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b;

    invoke-direct {v7, v1, v5, v6, v0}, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b;-><init>(Lio/dcloud/feature/pdr/RuntimeFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lio/dcloud/WebAppActivity;)V

    invoke-virtual {v2, v0, v7, v3, v4}, Lio/dcloud/common/ui/PrivacyManager;->showPrivacyDialog(Landroid/app/Activity;Lio/dcloud/common/ui/PrivacyManager$b;ZZ)V

    goto/16 :goto_36e

    .line 510
    :pswitch_13d
    invoke-interface {v8}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    .line 512
    invoke-interface {v8}, Lio/dcloud/common/DHInterface/IApp;->clearRuntimeArgs()V

    .line 513
    iget-object v2, v1, Lio/dcloud/feature/pdr/RuntimeFeatureImpl;->b:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v3, Lio/dcloud/common/DHInterface/IMgr$MgrType;->AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    invoke-interface {v2, v3, v11, v0}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 680
    :pswitch_14c
    aget-object v0, v2, v3

    .line 681
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_160

    .line 682
    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    .line 684
    :cond_160
    aget-object v2, v2, v4

    .line 685
    iget-object v3, v1, Lio/dcloud/feature/pdr/RuntimeFeatureImpl;->b:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v6, Lio/dcloud/common/DHInterface/IMgr$MgrType;->AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    invoke-interface {v3, v6, v10, v0}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 686
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_178

    .line 687
    invoke-static {v5, v2, v0, v4}, Lio/dcloud/common/util/JSUtil;->excCallbackSuccess(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 689
    :cond_178
    invoke-static {v5, v2, v13}, Lio/dcloud/common/util/JSUtil;->excCallbackError(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 699
    :pswitch_17c
    array-length v0, v2

    if-le v0, v4, :cond_18a

    .line 700
    aget-object v0, v2, v4

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18a

    .line 701
    aget-object v0, v2, v4

    goto :goto_18c

    :cond_18a
    const-string v0, "{}"

    .line 704
    :goto_18c
    aget-object v2, v2, v3

    invoke-direct {v1, v5, v2, v0}, Lio/dcloud/feature/pdr/RuntimeFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 705
    :pswitch_192
    iget-object v0, v1, Lio/dcloud/feature/pdr/RuntimeFeatureImpl;->b:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v3, 0x14

    invoke-interface {v0, v2, v3, v8}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 773
    :pswitch_19c
    aget-object v0, v2, v3

    invoke-interface {v8, v0}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDirAndCopy2Temp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 774
    aget-object v7, v2, v7

    .line 777
    :try_start_1a4
    new-instance v0, Lorg/json/JSONObject;

    aget-object v2, v2, v4

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1af
    .catch Ljava/lang/Exception; {:try_start_1a4 .. :try_end_1af} :catch_1b0

    goto :goto_1b5

    :catch_1b0
    move-exception v0

    .line 779
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v13

    .line 781
    :goto_1b5
    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2, v3}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 783
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1d6

    .line 784
    invoke-interface {v8}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$c;

    invoke-direct {v4, v1, v5, v7}, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$c;-><init>(Lio/dcloud/feature/pdr/RuntimeFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    invoke-static {v3, v2, v0, v13, v4}, Lio/dcloud/common/adapter/util/PlatformUtil;->openFileBySystem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)V

    goto/16 :goto_36e

    .line 794
    :cond_1d6
    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_FILE_NOT_EXIST:Ljava/lang/String;

    invoke-static {v6, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v8, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v6, v7

    move-object v7, v0

    invoke-static/range {v5 .. v10}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto/16 :goto_36e

    .line 800
    :pswitch_1e7
    aget-object v0, v2, v3

    invoke-interface {v8, v0}, Lio/dcloud/common/DHInterface/IApp;->checkPrivateDirAndCopy2Temp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 801
    aget-object v3, v2, v7

    .line 805
    :try_start_1ef
    new-instance v7, Lorg/json/JSONObject;

    aget-object v2, v2, v4

    invoke-direct {v7, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 806
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1fa
    .catch Ljava/lang/Exception; {:try_start_1ef .. :try_end_1fa} :catch_25e

    .line 807
    :try_start_1fa
    const-string v4, "fileType"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 808
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_3b8

    goto :goto_260

    :sswitch_20e
    const-string v7, "xlsx"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_260

    .line 819
    const-string v4, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    :goto_218
    move-object v13, v4

    goto :goto_260

    .line 820
    :sswitch_21a
    const-string v7, "pptx"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_260

    .line 837
    const-string v4, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    goto :goto_218

    .line 838
    :sswitch_225
    const-string v7, "docx"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_260

    .line 843
    const-string v4, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    goto :goto_218

    .line 844
    :sswitch_230
    const-string v7, "xls"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_260

    .line 852
    const-string v4, "application/vnd.ms-excel"

    goto :goto_218

    .line 853
    :sswitch_23b
    const-string v7, "ppt"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_260

    .line 867
    const-string v4, "application/vnd.ms-powerpoint"

    goto :goto_218

    .line 868
    :sswitch_246
    const-string v7, "pdf"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_260

    .line 888
    const-string v4, "application/pdf"

    goto :goto_218

    .line 889
    :sswitch_251
    const-string v7, "doc"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_260

    .line 891
    const-string v4, "application/msword"
    :try_end_25b
    .catch Ljava/lang/Exception; {:try_start_1fa .. :try_end_25b} :catch_25c

    goto :goto_218

    :catch_25c
    nop

    goto :goto_260

    :catch_25e
    nop

    move-object v2, v13

    .line 914
    :cond_260
    :goto_260
    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v4, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 915
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_281

    .line 916
    invoke-interface {v8}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v6, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$d;

    invoke-direct {v6, v1, v5, v3}, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$d;-><init>(Lio/dcloud/feature/pdr/RuntimeFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    invoke-static {v4, v0, v2, v13, v6}, Lio/dcloud/common/adapter/util/PlatformUtil;->openFileBySystem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)V

    goto/16 :goto_36e

    .line 928
    :cond_281
    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_FILE_NOT_EXIST:Ljava/lang/String;

    invoke-static {v6, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget v8, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v6, v3

    invoke-static/range {v5 .. v10}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto/16 :goto_36e

    .line 929
    :pswitch_291
    :try_start_291
    new-instance v6, Lorg/json/JSONObject;

    aget-object v7, v2, v3

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 930
    invoke-virtual {v6}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v7

    .line 934
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object v10, v13

    const/4 v11, 0x1

    .line 935
    :goto_2a3
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v3, v12, :cond_2ff

    .line 936
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 937
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2bb

    .line 938
    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v13, v12

    :cond_2b8
    :goto_2b8
    const/16 p1, 0x1

    goto :goto_2fb

    .line 939
    :cond_2bb
    const-string v14, "action"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2c8

    .line 940
    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_2b8

    .line 941
    :cond_2c8
    const-string v14, "extra"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2ef

    .line 942
    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 943
    invoke-virtual {v12}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v14

    .line 944
    :goto_2d8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2b8

    .line 945
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;
    :try_end_2e4
    .catch Ljava/lang/Exception; {:try_start_291 .. :try_end_2e4} :catch_30b

    const/16 p1, 0x1

    .line 946
    :try_start_2e6
    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 947
    invoke-virtual {v8, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    goto :goto_2d8

    :cond_2ef
    const/16 p1, 0x1

    .line 949
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2fb

    .line 950
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    :cond_2fb
    :goto_2fb
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    goto :goto_2a3

    :cond_2ff
    const/16 p1, 0x1

    .line 953
    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v13, v10, v8, v11}, Lio/dcloud/common/adapter/util/PlatformUtil;->launchApplication(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)V
    :try_end_308
    .catch Ljava/lang/Exception; {:try_start_2e6 .. :try_end_308} :catch_309

    return-void

    :catch_309
    move-exception v0

    goto :goto_30e

    :catch_30b
    move-exception v0

    const/16 p1, 0x1

    .line 955
    :goto_30e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 956
    aget-object v6, v2, p1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v2, -0x63

    invoke-static {v2, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget v8, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_36e

    .line 957
    :pswitch_325
    aget-object v0, v2, v3

    invoke-direct {v1, v5, v0}, Lio/dcloud/feature/pdr/RuntimeFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-void

    :pswitch_32b
    const/16 p1, 0x1

    .line 962
    :try_start_32d
    aget-object v0, v2, v3

    .line 963
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isDeviceRootDir(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_34a

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_34a

    const-string v4, "file://"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_34a

    .line 964
    invoke-interface {v8, v0}, Lio/dcloud/common/DHInterface/IApp;->checkSchemeWhite(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34a

    goto :goto_36e

    .line 968
    :cond_34a
    aget-object v0, v2, v3

    invoke-direct {v1, v0, v8}, Lio/dcloud/feature/pdr/RuntimeFeatureImpl;->b(Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;)V

    .line 969
    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    aget-object v3, v2, v3

    invoke-static {v2, v7}, Lio/dcloud/common/util/PdrUtil;->getObject([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lio/dcloud/common/adapter/util/PlatformUtil;->openURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_360
    .catch Ljava/lang/Exception; {:try_start_32d .. :try_end_360} :catch_361

    return-void

    :catch_361
    move-exception v0

    .line 971
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 972
    aget-object v2, v2, p1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v2, v0}, Lio/dcloud/common/util/JSUtil;->excCallbackError(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    :goto_36e
    return-void

    nop

    :sswitch_data_370
    .sparse-switch
        -0x4b4af93b -> :sswitch_a8
        -0x4b4aef56 -> :sswitch_9d
        -0x4498b463 -> :sswitch_92
        -0x38528e7b -> :sswitch_87
        -0x1e1aa51a -> :sswitch_7c
        0x35224f -> :sswitch_71
        0x2083970a -> :sswitch_66
        0x40a81b4b -> :sswitch_5b
        0x416a9e0f -> :sswitch_4d
        0x4a551ef3 -> :sswitch_3f
        0x74ae259b -> :sswitch_31
    .end sparse-switch

    :pswitch_data_39e
    .packed-switch 0x0
        :pswitch_32b
        :pswitch_325
        :pswitch_291
        :pswitch_1e7
        :pswitch_19c
        :pswitch_192
        :pswitch_17c
        :pswitch_14c
        :pswitch_13d
        :pswitch_da
        :pswitch_bb
    .end packed-switch

    :sswitch_data_3b8
    .sparse-switch
        0x18538 -> :sswitch_251
        0x1b0f2 -> :sswitch_246
        0x1b274 -> :sswitch_23b
        0x1cfff -> :sswitch_230
        0x2f2240 -> :sswitch_225
        0x349c84 -> :sswitch_21a
        0x383059 -> :sswitch_20e
    .end sparse-switch
.end method

.method public init(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl;->b:Lio/dcloud/common/DHInterface/AbsMgr;

    return-void
.end method

###### Class io.dcloud.feature.pdr.RuntimeFeatureImpl.a (io.dcloud.feature.pdr.RuntimeFeatureImpl$a)
.class Lio/dcloud/feature/pdr/RuntimeFeatureImpl$a;
.super Ljava/lang/Thread;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/pdr/RuntimeFeatureImpl;->execute(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic d:Lio/dcloud/feature/pdr/RuntimeFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/feature/pdr/RuntimeFeatureImpl;[Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$a;->d:Lio/dcloud/feature/pdr/RuntimeFeatureImpl;

    iput-object p2, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$a;->a:[Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$a;->c:Lio/dcloud/common/DHInterface/IWebview;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$a;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v3, v0, v1

    const/4 v2, 0x2

    .line 3
    aget-object v0, v0, v2

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$a;->a:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {v0}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 7
    :goto_18
    iget-object v4, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$a;->d:Lio/dcloud/feature/pdr/RuntimeFeatureImpl;

    iget-object v4, v4, Lio/dcloud/feature/pdr/RuntimeFeatureImpl;->b:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v5, Lio/dcloud/common/DHInterface/IMgr$MgrType;->AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v6, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$a;->b:Ljava/lang/String;

    iget-object v7, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$a;->c:Lio/dcloud/common/DHInterface/IWebview;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    aput-object v0, v8, v1

    aput-object v7, v8, v2

    const/4 v0, 0x4

    invoke-interface {v4, v5, v0, v8}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 9
    aget-object v2, v0, v9

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 10
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_53

    .line 12
    iget-object v2, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$a;->c:Lio/dcloud/common/DHInterface/IWebview;

    sget v5, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void

    .line 14
    :cond_53
    iget-object v2, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$a;->c:Lio/dcloud/common/DHInterface/IWebview;

    sget v5, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

###### Class io.dcloud.feature.pdr.RuntimeFeatureImpl.b (io.dcloud.feature.pdr.RuntimeFeatureImpl$b)
.class Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/ui/PrivacyManager$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/pdr/RuntimeFeatureImpl;->execute(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lio/dcloud/WebAppActivity;

.field final synthetic d:Lio/dcloud/feature/pdr/RuntimeFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/feature/pdr/RuntimeFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lio/dcloud/WebAppActivity;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b;->d:Lio/dcloud/feature/pdr/RuntimeFeatureImpl;

    iput-object p2, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b;->a:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p3, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b;->b:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b;->c:Lio/dcloud/WebAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b;->c:Lio/dcloud/WebAppActivity;

    invoke-virtual {v0}, Lio/dcloud/WebAppActivity;->onPrivacySureAction()V

    .line 5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 7
    :try_start_a
    const-string v1, "code"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_10} :catch_11

    goto :goto_15

    :catch_11
    move-exception v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    :goto_15
    iget-object v1, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b;->b:Ljava/lang/String;

    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    return-void
.end method

.method public a(Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;)V
    .registers 6

    .line 12
    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->message:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 14
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 16
    :try_start_f
    const-string v0, "code"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_15} :catch_16

    goto :goto_1a

    :catch_16
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    :goto_1a
    iget-object v0, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b;->b:Ljava/lang/String;

    sget v2, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    return-void

    .line 25
    :cond_25
    invoke-static {}, Lio/dcloud/common/ui/PrivacyManager;->getInstance()Lio/dcloud/common/ui/PrivacyManager;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b;->c:Lio/dcloud/WebAppActivity;

    new-instance v1, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b$a;

    invoke-direct {v1, p0}, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b$a;-><init>(Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2, v2}, Lio/dcloud/common/ui/PrivacyManager;->showPrivacyDialog(Landroid/app/Activity;Lio/dcloud/common/ui/PrivacyManager$b;ZZ)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    .line 1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b;->b:Ljava/lang/String;

    sget v2, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    return-void
.end method

.method public b(Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;)V
    .registers 6

    .line 1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_5
    const-string v0, "code"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    :goto_10
    iget-object v0, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b;->b:Ljava/lang/String;

    sget v2, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    return-void
.end method

###### Class io.dcloud.feature.pdr.RuntimeFeatureImpl.b.a (io.dcloud.feature.pdr.RuntimeFeatureImpl$b$a)
.class Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/ui/PrivacyManager$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b;->a(Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b;


# direct methods
.method constructor <init>(Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b$a;->a:Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b$a;->a:Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b;

    iget-object v0, v0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b;->c:Lio/dcloud/WebAppActivity;

    invoke-virtual {v0}, Lio/dcloud/WebAppActivity;->onPrivacySureAction()V

    .line 4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    :try_start_c
    const-string v1, "code"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_12} :catch_13

    goto :goto_17

    :catch_13
    move-exception v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    :goto_17
    iget-object v1, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b$a;->a:Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b;

    iget-object v2, v1, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, v1, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b;->b:Ljava/lang/String;

    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v4, 0x0

    invoke-static {v2, v1, v0, v3, v4}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    return-void
.end method

.method public a(Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;)V
    .registers 6

    .line 11
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 13
    :try_start_5
    const-string v0, "code"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    :goto_10
    iget-object v0, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b$a;->a:Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b;

    iget-object v1, v0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v0, v0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b;->b:Ljava/lang/String;

    sget v2, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v3, 0x0

    invoke-static {v1, v0, p1, v2, v3}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    .line 1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b$a;->a:Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b;

    iget-object v1, v0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v0, v0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b;->b:Ljava/lang/String;

    sget v2, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v3, 0x0

    invoke-static {v1, v0, p1, v2, v3}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    return-void
.end method

.method public b(Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;)V
    .registers 6

    .line 1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_5
    const-string v0, "code"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    :goto_10
    iget-object v0, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b$a;->a:Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b;

    iget-object v1, v0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v0, v0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$b;->b:Ljava/lang/String;

    sget v2, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v3, 0x0

    invoke-static {v1, v0, p1, v2, v3}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    return-void
.end method

###### Class io.dcloud.feature.pdr.RuntimeFeatureImpl.c (io.dcloud.feature.pdr.RuntimeFeatureImpl$c)
.class Lio/dcloud/feature/pdr/RuntimeFeatureImpl$c;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/pdr/RuntimeFeatureImpl;->execute(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lio/dcloud/feature/pdr/RuntimeFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/feature/pdr/RuntimeFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$c;->c:Lio/dcloud/feature/pdr/RuntimeFeatureImpl;

    iput-object p2, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$c;->a:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p3, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_e

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$c;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$c;->b:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, p2, v0}, Lio/dcloud/common/util/JSUtil;->excCallbackError(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_e
    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.feature.pdr.RuntimeFeatureImpl.d (io.dcloud.feature.pdr.RuntimeFeatureImpl$d)
.class Lio/dcloud/feature/pdr/RuntimeFeatureImpl$d;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/pdr/RuntimeFeatureImpl;->execute(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lio/dcloud/feature/pdr/RuntimeFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/feature/pdr/RuntimeFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$d;->c:Lio/dcloud/feature/pdr/RuntimeFeatureImpl;

    iput-object p2, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$d;->a:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p3, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$d;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 10

    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    .line 1
    iget-object v1, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$d;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$d;->b:Ljava/lang/String;

    sget v4, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v3, "{}"

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_1c

    .line 3
    :cond_11
    iget-object p1, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$d;->a:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/feature/pdr/RuntimeFeatureImpl$d;->b:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, p2, v0}, Lio/dcloud/common/util/JSUtil;->excCallbackError(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1c
    const/4 p1, 0x0

    return-object p1
.end method
