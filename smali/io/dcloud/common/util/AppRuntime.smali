###### Class io.dcloud.common.util.AppRuntime (io.dcloud.common.util.AppRuntime)
.class public Lio/dcloud/common/util/AppRuntime;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# static fields
.field private static sBatteryLevel:I = 0x64

.field private static sTemperature:I = 0x14

.field private static sUniStatistics:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyWebViewDarkMode(Landroid/content/Context;Landroid/webkit/WebView;)V
    .registers 3

    .line 1
    new-instance v0, Lio/dcloud/common/util/AppRuntime$1;

    invoke-direct {v0, p0, p1}, Lio/dcloud/common/util/AppRuntime$1;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    .line 32
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    if-eq p0, p1, :cond_20

    .line 33
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 35
    :cond_20
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static checkPrivacyComplianceAndPrompt(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    .line 1
    sget-object p0, Lio/dcloud/common/util/BaseInfo;->sGlobalUserAgent:Ljava/lang/String;

    return-void
.end method

.method private static findAllWebView(Landroid/view/View;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    instance-of v1, p0, Lio/dcloud/common/adapter/ui/webview/DCWebView;

    if-eqz v1, :cond_d

    .line 3
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 5
    :cond_d
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_28

    .line 6
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 7
    :goto_14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 8
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 9
    invoke-static {v2}, Lio/dcloud/common/util/AppRuntime;->findAllWebView(Landroid/view/View;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_28
    return-object v0
.end method

.method public static getAppDarkMode(Landroid/content/Context;)Z
    .registers 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-lt v0, v1, :cond_4a

    .line 3
    sget-boolean v0, Lio/dcloud/feature/internal/sdk/SDK;->isUniMP:Z

    if-eqz v0, :cond_e

    .line 4
    sget-object v0, Lio/dcloud/feature/internal/sdk/SDK;->hostAppThemeDark:Ljava/lang/String;

    goto :goto_2b

    .line 6
    :cond_e
    const-string v0, "dc_dark_mode_"

    const-string v1, "dark_mode"

    invoke-static {p0, v0, v1}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    const-string v1, "DCLOUD_DARK_MODE"

    invoke-static {v1}, Lio/dcloud/common/adapter/util/AndroidResources;->getMetaValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 9
    const-string v1, "light"

    .line 11
    :cond_24
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    move-object v0, v1

    .line 15
    :cond_2b
    :goto_2b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    const-string p0, "dark"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3f

    return v2

    :cond_3f
    const/4 p0, 0x1

    return p0

    .line 19
    :cond_41
    invoke-static {p0}, Lio/dcloud/common/adapter/util/DeviceInfo;->isSystemNightMode(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_4a
    return v2
.end method

.method public static getAppTheme(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "dc_dark_mode_"

    const-string v1, "dark_mode"

    invoke-static {p0, v0, v1}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5
    const-string p0, "light"

    :cond_10
    return-object p0
.end method

.method public static getBatteryLevel()I
    .registers 1

    .line 1
    sget v0, Lio/dcloud/common/util/AppRuntime;->sBatteryLevel:I

    return v0
.end method

.method public static getDCloudDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lio/dcloud/common/util/TelephonyUtil;->getDCloudDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstanceMgr()Lio/dcloud/common/DHInterface/IUniInstanceMgr;
    .registers 2

    .line 1
    const-string v0, "io.dcloud.feature.weex.WeexInstanceMgr"

    const-string v1, "self"

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/DHInterface/IUniInstanceMgr;

    return-object v0
.end method

.method public static getTemperature()I
    .registers 1

    .line 1
    sget v0, Lio/dcloud/common/util/AppRuntime;->sTemperature:I

    return v0
.end method

.method public static getUniStatistics()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/common/util/AppRuntime;->sUniStatistics:Ljava/lang/String;

    return-object v0
.end method

.method public static hasPrivacyForNotShown(Landroid/content/Context;)Z
    .registers 2

    .line 1
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3
    sget-boolean p0, Lio/dcloud/feature/internal/sdk/SDK;->uniMPSilentMode:Z

    return p0

    .line 5
    :cond_9
    invoke-static {}, Lio/dcloud/common/ui/PrivacyManager;->getInstance()Lio/dcloud/common/ui/PrivacyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/dcloud/common/ui/PrivacyManager;->isNotPrivacyAllRight(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static initAppDarkMode(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1f

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_1f

    .line 3
    invoke-static {p0}, Lio/dcloud/common/util/AppRuntime;->getAppDarkMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x2

    .line 4
    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    return-void

    :cond_1b
    const/4 p0, 0x1

    .line 6
    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    :cond_1f
    return-void
.end method

.method public static initUTS()V
    .registers 5

    const/4 v0, 0x0

    .line 1
    :try_start_1
    const-string v1, "io.dcloud.uts.android.AndroidUTSContext"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_9

    :catch_8
    move-object v1, v0

    .line 8
    :goto_9
    :try_start_9
    const-string v2, "INSTANCE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_13} :catch_14

    goto :goto_2d

    :catch_14
    move-exception v2

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initUTS error "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppRuntime"

    invoke-static {v3, v2}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    :goto_2d
    if-eqz v1, :cond_49

    if-eqz v2, :cond_49

    .line 16
    :try_start_31
    const-string v3, "initApp"

    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_37
    .catch Ljava/lang/NoSuchMethodException; {:try_start_31 .. :try_end_37} :catch_38

    goto :goto_3a

    :catch_38
    nop

    move-object v1, v0

    :goto_3a
    if-eqz v1, :cond_49

    .line 23
    :try_start_3c
    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catch Ljava/lang/IllegalAccessException; {:try_start_3c .. :try_end_3f} :catch_45
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_49

    :catch_40
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_49

    :catch_45
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_49
    :goto_49
    return-void
.end method

.method public static initUTSHooksClassArray(Landroid/app/Application;)V
    .registers 9

    .line 1
    :try_start_0
    const-string v0, "io.dcloud.uts.UTSAndroid"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2
    const-string v1, "INSTANCE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_3c

    if-eqz v1, :cond_3c

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 6
    :try_start_15
    const-string v5, "initUTSHooksClassArray"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Landroid/app/Application;

    aput-object v7, v6, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_24
    .catch Ljava/lang/NoSuchMethodException; {:try_start_15 .. :try_end_24} :catch_26
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_24} :catch_3c

    move-object v2, v0

    goto :goto_27

    :catch_26
    nop

    :goto_27
    if-eqz v2, :cond_3c

    .line 14
    :try_start_29
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v3

    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catch Ljava/lang/IllegalAccessException; {:try_start_29 .. :try_end_30} :catch_33
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_29 .. :try_end_30} :catch_31
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_30} :catch_3c

    goto :goto_3c

    :catch_31
    move-exception p0

    goto :goto_35

    :catch_33
    move-exception p0

    goto :goto_39

    .line 18
    :goto_35
    :try_start_35
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_3c

    .line 19
    :goto_39
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3c} :catch_3c

    :catch_3c
    :cond_3c
    :goto_3c
    return-void
.end method

.method public static initUniappPlugin(Landroid/app/Application;)V
    .registers 2

    .line 1
    invoke-static {}, Lio/dcloud/common/util/AppRuntime;->getInstanceMgr()Lio/dcloud/common/DHInterface/IUniInstanceMgr;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 3
    invoke-interface {v0, p0}, Lio/dcloud/common/DHInterface/IUniInstanceMgr;->initUniappPlugin(Landroid/app/Application;)V

    :cond_9
    return-void
.end method

.method public static initWeex(Landroid/app/Application;)V
    .registers 3

    .line 4
    const-string v0, "io.dcloud.feature.weex.WeexInstanceMgr"

    const-string v1, "self"

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/DHInterface/IUniInstanceMgr;

    if-eqz v0, :cond_17

    .line 6
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object v1

    invoke-virtual {v1, p0}, Lio/dcloud/application/DCLoudApplicationImpl;->getNativeInfo(Landroid/app/Application;)Lio/dcloud/common/DHInterface/INativeAppInfo;

    move-result-object p0

    invoke-interface {v0, p0}, Lio/dcloud/common/DHInterface/IUniInstanceMgr;->initWeexEnv(Lio/dcloud/common/DHInterface/INativeAppInfo;)V

    :cond_17
    return-void
.end method

.method public static initWeex(Lio/dcloud/common/DHInterface/INativeAppInfo;)V
    .registers 3

    .line 1
    const-string v0, "io.dcloud.feature.weex.WeexInstanceMgr"

    const-string v1, "self"

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/DHInterface/IUniInstanceMgr;

    if-eqz v0, :cond_f

    .line 3
    invoke-interface {v0, p0}, Lio/dcloud/common/DHInterface/IUniInstanceMgr;->initWeexEnv(Lio/dcloud/common/DHInterface/INativeAppInfo;)V

    :cond_f
    return-void
.end method

.method public static initX5(Landroid/app/Application;ZLio/dcloud/common/DHInterface/ICallBack;)V
    .registers 9

    const/4 v0, 0x3

    .line 1
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/app/Application;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Boolean;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-class v2, Lio/dcloud/common/DHInterface/ICallBack;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    aput-object p1, v0, v4

    aput-object p2, v0, v5

    .line 3
    const-string p0, "init"

    const/4 p1, 0x0

    const-string p2, "io.dcloud.feature.x5.X5InitImpl"

    invoke-static {p2, p0, p1, v1, v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static isAppResourcesInAssetsPath(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8

    .line 1
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 2
    sget-object p1, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 3
    invoke-static {}, Lio/dcloud/common/util/BaseInfo;->parseControl()V

    .line 5
    :cond_12
    sget-object p1, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_21

    .line 10
    :cond_1b
    invoke-static {p0}, Lio/dcloud/common/util/BaseInfo;->isBase(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_22

    :goto_21
    return v1

    .line 14
    :cond_22
    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->ISDEBUG:Z

    const/4 v2, 0x1

    if-nez v0, :cond_30

    invoke-static {}, Lio/dcloud/common/adapter/io/DHFile;->hasFile()Z

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_30

    :cond_2e
    const/4 v0, 0x0

    goto :goto_31

    :cond_30
    :goto_30
    const/4 v0, 0x1

    .line 15
    :goto_31
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "apps/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/www/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lio/dcloud/common/util/BaseInfo;->sConfigXML:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_6c

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/Android/data/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_74

    .line 21
    :cond_6c
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 23
    :goto_74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    :try_start_88
    invoke-static {p0, p1, v3, v2}, Lio/dcloud/common/util/PdrUtil;->getConfigData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8c} :catch_bc

    const-string v3, "name"

    const-string/jumbo v4, "version"

    const-string v5, ""

    if-eqz v2, :cond_a4

    .line 29
    :try_start_95
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-static {v2}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_a4

    .line 32
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_a5

    :cond_a4
    move-object v2, v5

    .line 36
    :goto_a5
    invoke-static {p0, p1, v0, v1}, Lio/dcloud/common/util/PdrUtil;->getConfigData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_b7

    .line 38
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 39
    invoke-static {p0}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 40
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 42
    :cond_b7
    invoke-static {v2, v5}, Lio/dcloud/common/util/BaseInfo$BaseAppInfo;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_bb} :catch_bc

    return p0

    :catch_bc
    move-exception p0

    .line 45
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public static isUniApp(Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "__UNI__"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$switchAllWebViewDarkMode$0(Landroid/view/View;)V
    .registers 2

    .line 1
    instance-of v0, p0, Lio/dcloud/common/adapter/ui/webview/DCWebView;

    if-eqz v0, :cond_9

    .line 2
    check-cast p0, Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {p0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->applyWebViewDarkMode()V

    :cond_9
    return-void
.end method

.method static synthetic lambda$switchAllWebViewDarkMode$1(Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 3

    .line 1
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 2
    instance-of p0, p0, Lio/dcloud/common/core/ui/TabBarWebview;

    if-eqz p0, :cond_14

    .line 3
    invoke-static {v0}, Lio/dcloud/common/util/AppRuntime;->findAllWebView(Landroid/view/View;)Ljava/util/List;

    move-result-object p0

    .line 4
    new-instance v1, Lio/dcloud/common/util/AppRuntime$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lio/dcloud/common/util/AppRuntime$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0, v1}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 10
    :cond_14
    instance-of p0, v0, Lio/dcloud/common/adapter/ui/webview/DCWebView;

    if-eqz p0, :cond_1d

    .line 11
    check-cast v0, Lio/dcloud/common/adapter/ui/webview/DCWebView;

    invoke-interface {v0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->applyWebViewDarkMode()V

    :cond_1d
    return-void
.end method

.method public static loadDex(Landroid/app/Application;)V
    .registers 5

    const/4 v0, 0x1

    .line 1
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/app/Application;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    const-string p0, "loadDex"

    const/4 v2, 0x0

    const-string v3, "io.dcloud.debug.DexSwap"

    invoke-static {v3, p0, v2, v1, v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static loadWeexAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/io/InputStream;
    .registers 5

    .line 1
    const-string/jumbo v0, "weex-main-jsfm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    const-string/jumbo v0, "uni-jsframework"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    :cond_13
    const-string v0, ".js"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "io.dcloud.HBuilder"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_5e

    .line 9
    :try_start_54
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_59
    .catch Ljava/io/FileNotFoundException; {:try_start_54 .. :try_end_59} :catch_5a

    return-object p0

    :catch_5a
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5e
    return-object v1
.end method

.method public static onCreateProcess(Landroid/app/Application;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .registers 5

    .line 1
    invoke-static {}, Lio/dcloud/common/util/AppRuntime;->getInstanceMgr()Lio/dcloud/common/DHInterface/IUniInstanceMgr;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_13

    goto :goto_16

    .line 7
    :cond_13
    invoke-interface {v0, p0, p1}, Lio/dcloud/common/DHInterface/IUniInstanceMgr;->onCreateProcess(Landroid/app/Application;Ljava/lang/Boolean;)V

    :cond_16
    :goto_16
    return-void
.end method

.method public static preInitX5(Landroid/app/Application;)V
    .registers 5

    const/4 v0, 0x1

    .line 1
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/app/Application;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    const-string p0, "preInit"

    const/4 v2, 0x0

    const-string v3, "io.dcloud.feature.x5.X5InitImpl"

    invoke-static {v3, p0, v2, v1, v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static restartWeex(Landroid/app/Application;Lio/dcloud/common/DHInterface/ICallBack;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-static {}, Lio/dcloud/common/util/AppRuntime;->getInstanceMgr()Lio/dcloud/common/DHInterface/IUniInstanceMgr;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 3
    invoke-interface {v0, p0, p1, p2}, Lio/dcloud/common/DHInterface/IUniInstanceMgr;->restartWeex(Landroid/app/Application;Lio/dcloud/common/DHInterface/ICallBack;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public static setAppDarkMode(Landroid/app/Activity;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_57

    sget-boolean v0, Lio/dcloud/feature/internal/sdk/SDK;->isUniMP:Z

    if-nez v0, :cond_57

    if-eqz p0, :cond_57

    .line 2
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_57

    .line 5
    :cond_13
    const-string v0, "dc_dark_mode_"

    const-string v1, "dark_mode"

    invoke-static {p0, v0, v1}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {v2, p2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_50

    .line 7
    instance-of v2, p1, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    const-string/jumbo v3, "uistylechange"

    if-eqz v2, :cond_3e

    .line 8
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 9
    const-string/jumbo v4, "uistyle"

    invoke-interface {v2, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v4, Lio/dcloud/common/adapter/util/EventActionInfo;

    invoke-direct {v4, v3, v2}, Lio/dcloud/common/adapter/util/EventActionInfo;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 11
    check-cast p1, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    invoke-virtual {p1, v4}, Lio/dcloud/common/adapter/ui/AdaUniWebView;->fireEvent(Lio/dcloud/common/adapter/util/EventActionInfo;)V

    goto :goto_50

    :cond_3e
    const/4 v2, 0x2

    .line 13
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v3, "javascript:!function(){(window.__html5plus__&&__html5plus__.isReady?__html5plus__:navigator.plus&&navigator.plus.isReady?navigator.plus:window.plus)||window.__load__plus__&&window.__load__plus__();var _=document.createEvent(\"HTMLEvents\");_.initEvent(\"%s\",!1,!0),_.uistyle=\"%s\",document.dispatchEvent(_)}();"

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-interface {p1, v2}, Lio/dcloud/common/DHInterface/IWebview;->loadUrl(Ljava/lang/String;)V

    .line 19
    :cond_50
    :goto_50
    invoke-static {p0, v0, v1, p2}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 21
    invoke-static {p0}, Lio/dcloud/common/util/AppRuntime;->switchAllWebViewDarkMode(Ljava/util/ArrayList;)V

    :cond_57
    :goto_57
    return-void
.end method

.method public static setBatteryLevel(I)V
    .registers 1

    .line 1
    sput p0, Lio/dcloud/common/util/AppRuntime;->sBatteryLevel:I

    return-void
.end method

.method public static setTemperature(I)V
    .registers 1

    .line 1
    sput p0, Lio/dcloud/common/util/AppRuntime;->sTemperature:I

    return-void
.end method

.method public static setUniStatistics(Ljava/lang/String;)V
    .registers 1

    .line 1
    sput-object p0, Lio/dcloud/common/util/AppRuntime;->sUniStatistics:Ljava/lang/String;

    return-void
.end method

.method public static switchAllWebViewDarkMode(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "+",
            "Lio/dcloud/common/DHInterface/IFrameView;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_25

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_25

    .line 5
    :cond_e
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_29

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lio/dcloud/common/DHInterface/IFrameView;

    .line 6
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 7
    :cond_25
    :goto_25
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->obtainAllIWebview()Ljava/util/ArrayList;

    move-result-object v0

    :cond_29
    if-eqz v0, :cond_3a

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_32

    goto :goto_3a

    .line 16
    :cond_32
    new-instance p0, Lio/dcloud/common/util/AppRuntime$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lio/dcloud/common/util/AppRuntime$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, p0}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/ArrayList;Ljava/util/function/Consumer;)V

    :cond_3a
    :goto_3a
    return-void
.end method

###### Class io.dcloud.common.util.AppRuntime.AnonymousClass1 (io.dcloud.common.util.AppRuntime$1)
.class Lio/dcloud/common/util/AppRuntime$1;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/AppRuntime;->applyWebViewDarkMode(Landroid/content/Context;Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/AppRuntime$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lio/dcloud/common/util/AppRuntime$1;->val$webView:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_78

    .line 3
    :try_start_6
    iget-object v1, p0, Lio/dcloud/common/util/AppRuntime$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lio/dcloud/common/util/AppRuntime;->getAppDarkMode(Landroid/content/Context;)Z

    move-result v1

    .line 4
    iget-object v2, p0, Lio/dcloud/common/util/AppRuntime$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/16 v5, 0x21

    const/4 v6, 0x0

    if-lt v2, v5, :cond_3f

    .line 5
    const-string v7, "ALGORITHMIC_DARKENING"

    invoke-static {v7}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3f

    if-eqz v1, :cond_32

    .line 7
    invoke-static {v3}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    .line 8
    iget-object v1, p0, Lio/dcloud/common/util/AppRuntime$1;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-static {v1, v6}, Landroidx/webkit/WebSettingsCompat;->setAlgorithmicDarkeningAllowed(Landroid/webkit/WebSettings;Z)V

    goto :goto_5c

    .line 10
    :cond_32
    invoke-static {v4}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    .line 11
    iget-object v1, p0, Lio/dcloud/common/util/AppRuntime$1;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-static {v1, v6}, Landroidx/webkit/WebSettingsCompat;->setAlgorithmicDarkeningAllowed(Landroid/webkit/WebSettings;Z)V

    goto :goto_5c

    .line 13
    :cond_3f
    const-string v7, "FORCE_DARK"

    invoke-static {v7}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5c

    if-eqz v1, :cond_53

    .line 15
    iget-object v1, p0, Lio/dcloud/common/util/AppRuntime$1;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-static {v1, v3}, Landroidx/webkit/WebSettingsCompat;->setForceDark(Landroid/webkit/WebSettings;I)V

    goto :goto_5c

    .line 17
    :cond_53
    iget-object v1, p0, Lio/dcloud/common/util/AppRuntime$1;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-static {v1, v6}, Landroidx/webkit/WebSettingsCompat;->setForceDark(Landroid/webkit/WebSettings;I)V

    :cond_5c
    :goto_5c
    if-ge v2, v5, :cond_78

    const/16 v1, 0x20

    if-ge v0, v1, :cond_78

    .line 20
    const-string v0, "FORCE_DARK_STRATEGY"

    invoke-static {v0}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 21
    iget-object v0, p0, Lio/dcloud/common/util/AppRuntime$1;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {v0, v4}, Landroidx/webkit/WebSettingsCompat;->setForceDarkStrategy(Landroid/webkit/WebSettings;I)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_73} :catch_74

    return-void

    :catch_74
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_78
    return-void
.end method

###### Class io.dcloud.common.util.AppRuntime$$ExternalSyntheticLambda1 (io.dcloud.common.util.AppRuntime$$ExternalSyntheticLambda1)
.class public final synthetic Lio/dcloud/common/util/AppRuntime$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    check-cast p1, Lio/dcloud/common/DHInterface/IWebview;

    invoke-static {p1}, Lio/dcloud/common/util/AppRuntime;->lambda$switchAllWebViewDarkMode$1(Lio/dcloud/common/DHInterface/IWebview;)V

    return-void
.end method

###### Class io.dcloud.common.util.AppRuntime$$ExternalSyntheticLambda2 (io.dcloud.common.util.AppRuntime$$ExternalSyntheticLambda2)
.class public final synthetic Lio/dcloud/common/util/AppRuntime$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lio/dcloud/common/util/AppRuntime;->lambda$switchAllWebViewDarkMode$0(Landroid/view/View;)V

    return-void
.end method
