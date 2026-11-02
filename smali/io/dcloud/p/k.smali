###### Class io.dcloud.p.k (io.dcloud.p.k)
.class public abstract Lio/dcloud/p/k;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# static fields
.field private static a:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static a(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ICallBack;Ljava/lang/String;)Landroid/view/View;
    .registers 6

    .line 20
    invoke-static {}, Lio/dcloud/p/k;->b()Lio/dcloud/common/DHInterface/IWaiter;

    move-result-object v0

    if-eqz v0, :cond_1b

    const/4 v1, 0x3

    .line 21
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const-string p0, "onCreateAdSplash"

    invoke-interface {v0, p0, v1}, Lio/dcloud/common/DHInterface/IWaiter;->doForFeature(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 8
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 12
    :cond_8
    invoke-static {}, Lio/dcloud/common/util/PdrUtil;->checkIntl()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 13
    invoke-static {}, Lio/dcloud/common/util/PdrUtil;->checkIntl()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {}, Lio/dcloud/common/util/language/LanguageUtil;->getDeviceDefCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lio/dcloud/p/i0;->c()Lio/dcloud/common/DHInterface/IConfusionMgr;

    move-result-object v2

    const-string v3, "GJ"

    const/4 v4, 0x4

    invoke-interface {v2, v3, v4}, Lio/dcloud/common/DHInterface/IConfusionMgr;->decryptStr(Ljava/lang/String;B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 14
    :cond_29
    invoke-static {}, Lio/dcloud/common/util/PdrUtil;->checkIntl()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-static {}, Lio/dcloud/p/k;->a()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 15
    :cond_35
    invoke-static {}, Lio/dcloud/p/k;->b()Lio/dcloud/common/DHInterface/IWaiter;

    move-result-object v0

    if-eqz v0, :cond_4c

    const/4 v1, 0x3

    .line 16
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p3, v1, p0

    invoke-interface {v0, p2, v1}, Lio/dcloud/common/DHInterface/IWaiter;->doForFeature(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4c
    return-object v1
.end method

.method public static a(Landroid/app/Application;)V
    .registers 3

    .line 1
    invoke-static {}, Lio/dcloud/p/k;->b()Lio/dcloud/common/DHInterface/IWaiter;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 3
    const-string v1, "onAppCreate"

    invoke-interface {v0, v1, p0}, Lio/dcloud/common/DHInterface/IWaiter;->doForFeature(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    .line 4
    invoke-static {}, Lio/dcloud/p/k;->b()Lio/dcloud/common/DHInterface/IWaiter;

    move-result-object v0

    .line 6
    sput-object p0, Lio/dcloud/common/adapter/util/DeviceInfo;->sApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_d

    .line 7
    const-string v1, "onAppAttachBaseContext"

    invoke-interface {v0, v1, p0}, Lio/dcloud/common/DHInterface/IWaiter;->doForFeature(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-void
.end method

.method private static a()Z
    .registers 3

    .line 17
    invoke-static {}, Lio/dcloud/p/k;->b()Lio/dcloud/common/DHInterface/IWaiter;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 19
    const-string v1, "adc"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lio/dcloud/common/DHInterface/IWaiter;->doForFeature(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method private static b()Lio/dcloud/common/DHInterface/IWaiter;
    .registers 3

    .line 1
    invoke-static {}, Lio/dcloud/p/k;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 3
    :try_start_7
    sget-object v0, Lio/dcloud/p/k;->a:Ljava/lang/Class;

    const-string v2, "self"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    instance-of v2, v0, Lio/dcloud/common/DHInterface/IWaiter;

    if-eqz v2, :cond_1e

    .line 6
    check-cast v0, Lio/dcloud/common/DHInterface/IWaiter;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_19} :catch_1a

    return-object v0

    :catch_1a
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1e
    return-object v1
.end method

.method public static c()Z
    .registers 3

    .line 1
    sget-object v0, Lio/dcloud/p/k;->a:Ljava/lang/Class;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 5
    :cond_6
    :try_start_6
    const-class v0, Lio/dcloud/feature/gg/AolFeatureImplMgr;

    sget v2, Lio/dcloud/feature/gg/AolFeatureImplMgr;->a:I

    sput-object v0, Lio/dcloud/p/k;->a:Ljava/lang/Class;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_d

    goto :goto_e

    :catch_d
    nop

    .line 8
    :goto_e
    sget-object v0, Lio/dcloud/p/k;->a:Ljava/lang/Class;

    if-eqz v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method
