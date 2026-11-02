###### Class io.dcloud.p.i1 (io.dcloud.p.i1)
.class public Lio/dcloud/p/i1;
.super Lio/dcloud/common/DHInterface/AbsMgr;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/IMgr$FeatureEvent;


# instance fields
.field private a:Ljava/util/HashMap;

.field private b:Ljava/util/HashMap;

.field private c:Ljava/util/HashMap;

.field private d:Ljava/util/HashMap;

.field private e:Ljava/util/HashMap;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/ArrayList;

.field h:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lio/dcloud/common/DHInterface/ICore;)V
    .registers 4

    .line 1
    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const-string v1, "featuremgr"

    invoke-direct {p0, p1, v1, v0}, Lio/dcloud/common/DHInterface/AbsMgr;-><init>(Lio/dcloud/common/DHInterface/ICore;Ljava/lang/String;Lio/dcloud/common/DHInterface/IMgr$MgrType;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lio/dcloud/p/i1;->a:Ljava/util/HashMap;

    .line 4
    iput-object p1, p0, Lio/dcloud/p/i1;->b:Ljava/util/HashMap;

    .line 6
    iput-object p1, p0, Lio/dcloud/p/i1;->c:Ljava/util/HashMap;

    .line 8
    iput-object p1, p0, Lio/dcloud/p/i1;->d:Ljava/util/HashMap;

    .line 9
    iput-object p1, p0, Lio/dcloud/p/i1;->e:Ljava/util/HashMap;

    .line 10
    iput-object p1, p0, Lio/dcloud/p/i1;->f:Ljava/lang/String;

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/dcloud/p/i1;->g:Ljava/util/ArrayList;

    .line 160
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/dcloud/p/i1;->h:Ljava/util/HashMap;

    .line 161
    invoke-direct {p0}, Lio/dcloud/p/i1;->b()V

    .line 162
    invoke-virtual {p0}, Lio/dcloud/p/i1;->c()Z

    move-result p1

    if-nez p1, :cond_2e

    .line 163
    invoke-virtual {p0}, Lio/dcloud/p/i1;->c()Z

    :cond_2e
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/Object;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method private a()Ljava/lang/String;
    .registers 3

    .line 108
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ";Object.defineProperty(plus.screen,\"resolutionHeight\",{get:function(){var e=window,l=e.__html5plus__&&e.__html5plus__.isReady?e.__html5plus__:n.plus&&n.plus.isReady?n.plus:window.plus;return l.bridge.execSync(\"Device\",\"s.resolutionHeight\",[])}}),Object.defineProperty(plus.screen,\"resolutionWidth\",{get:function(){var e=window,l=e.__html5plus__&&e.__html5plus__.isReady?e.__html5plus__:n.plus&&n.plus.isReady?n.plus:window.plus;return l.bridge.execSync(\"Device\",\"s.resolutionWidth\",[])}}),Object.defineProperty(plus.display,\"resolutionHeight\",{get:function(){var e=window,l=e.__html5plus__&&e.__html5plus__.isReady?e.__html5plus__:n.plus&&n.plus.isReady?n.plus:window.plus;return l.bridge.execSync(\"Device\",\"d.resolutionHeight\",[])}}),Object.defineProperty(plus.display,\"resolutionWidth\",{get:function(){var e=window,l=e.__html5plus__&&e.__html5plus__.isReady?e.__html5plus__:n.plus&&n.plus.isReady?n.plus:window.plus;return l.bridge.execSync(\"Device\",\"d.resolutionWidth\",[])}});;plus.webview.__test__(\'save\');"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 113
    const-string v1, "plus.webview.__test__(\'update\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lio/dcloud/common/DHInterface/IApp;)Ljava/lang/String;
    .registers 5

    .line 103
    invoke-static {}, Lio/dcloud/common/util/BaseInfo;->isUniNViewBackgroud()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 104
    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "weex,io.dcloud.feature.weex.WeexFeature"

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "getUniNViewModules"

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 p1, 0x0

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const/16 p1, 0xa

    invoke-virtual {p0, v0, p1, v1}, Lio/dcloud/p/i1;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 105
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_3f

    .line 107
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.__NATIVE_PLUGINS__ = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";window.__NATIVE_PLUGINS_REGISTERED__ = true;"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3f
    :goto_3f
    const-string p1, ""

    return-object p1
.end method

.method private a(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;
    .registers 7

    .line 1
    iget-object v0, p0, Lio/dcloud/p/i1;->h:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_4e

    .line 3
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lio/dcloud/p/i1;->a(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;)Ljava/lang/String;

    move-result-object p2

    .line 6
    iget-object v0, p0, Lio/dcloud/p/i1;->h:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppVersionName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_4e
    return-object v0
.end method

.method private a(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;)Ljava/lang/String;
    .registers 14

    .line 20
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "javascript:function __load__plus__(){try{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 22
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 25
    iget-object v2, p0, Lio/dcloud/p/i1;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29b

    iget-object v2, p0, Lio/dcloud/p/i1;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x190

    if-ge v2, v3, :cond_1d

    goto/16 :goto_29b

    .line 28
    :cond_1d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "window._____isDebug_____="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lio/dcloud/common/util/BaseInfo;->ISDEBUG:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    const-string v2, "window._____platform_____=1;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "window._____platform_os_version_____="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    iget-object v1, p0, Lio/dcloud/p/i1;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "Device"

    invoke-virtual {v4, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/dcloud/common/core/permission/PermissionControler;->checkPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6b

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->manifestBeParsed()Z

    move-result v1

    if-nez v1, :cond_7b

    .line 33
    :cond_6b
    sget-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->DEVICESTATUS_JS:Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 39
    invoke-static {p1}, Lio/dcloud/common/adapter/util/DeviceInfo;->getDevicestatus_js(Lio/dcloud/common/DHInterface/IApp;)Ljava/lang/String;

    .line 41
    :cond_76
    sget-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->DEVICESTATUS_JS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    :cond_7b
    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sRuntimeMode:Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "window.__NWin_Enable__="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;->WEBVIEW:Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v1, v4, :cond_8f

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_93

    :cond_8f
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    :goto_93
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Runtime"

    invoke-static {v1, v2}, Lio/dcloud/common/core/permission/PermissionControler;->checkPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b2

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->manifestBeParsed()Z

    move-result v1

    if-nez v1, :cond_238

    .line 48
    :cond_b2
    const-string v1, "loadedTime"

    invoke-interface {p1, v1}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    sget-boolean v2, Lio/dcloud/common/util/BaseInfo;->ISAMU:Z

    const-string v3, "p.runtime.version = \'%s\';p.runtime.innerVersion = \'%s\';p.runtime.appid = \'%s\';p.runtime.launchLoadedTime = \'%s\';"

    const/4 v4, 0x3

    const/4 v7, 0x2

    const-string v8, "1.9.9.82650"

    const/4 v9, 0x4

    if-eqz v2, :cond_da

    .line 51
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v10

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v2, v9, v5

    aput-object v8, v9, v6

    aput-object v10, v9, v7

    aput-object v1, v9, v4

    invoke-static {v3, v9}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_f0

    .line 53
    :cond_da
    sget-object v2, Lio/dcloud/common/adapter/util/AndroidResources;->mApplicationInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v10

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v2, v9, v5

    aput-object v8, v9, v6

    aput-object v10, v9, v7

    aput-object v1, v9, v4

    invoke-static {v3, v9}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 55
    :goto_f0
    new-array v2, v6, [Ljava/lang/Object;

    aput-object v1, v2, v5

    const-string v1, "try{if((window.__html5plus__&&__html5plus__.isReady?__html5plus__:navigator.plus&&navigator.plus.isReady?navigator.plus:window.plus).runtime)var p=window.__html5plus__&&__html5plus__.isReady?__html5plus__:navigator.plus&&navigator.plus.isReady?navigator.plus:window.plus; %s }catch(_){}"

    invoke-static {v1, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    invoke-interface {p1, v6}, Lio/dcloud/common/DHInterface/IApp;->obtainRuntimeArgs(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/util/DataUtil;->utf8ToUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v5

    const-string v2, "p.runtime.arguments = %s;"

    invoke-static {v2, v3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 57
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v5

    invoke-static {v1, v3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/util/BaseInfo;->getLauncherData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15a

    .line 60
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "__from_stream_open_flag__"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15a

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15a

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 65
    :cond_15a
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v5

    const-string v2, "p.runtime.launcher = \'%s\';"

    invoke-static {v2, v3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 66
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v5

    invoke-static {v1, v3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    invoke-static {}, Lio/dcloud/common/util/BaseInfo;->getAnalysisChannel()Ljava/lang/String;

    move-result-object v2

    .line 68
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v5

    const-string v2, "p.runtime.channel = \'%s\';"

    invoke-static {v2, v3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 69
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v5

    invoke-static {v1, v3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "LAUNCHTYPE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pdr"

    invoke-static {v2, v4, v3}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1af

    .line 72
    const-string v2, "default"

    .line 74
    :cond_1af
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v5

    const-string v2, "p.runtime.origin = \'%s\';"

    invoke-static {v2, v3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 75
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v5

    invoke-static {v1, v3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/util/BaseInfo;->getStartupTimeData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v5

    const-string v2, "p.runtime.startupTime = \'%s\';"

    invoke-static {v2, v3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 77
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v5

    invoke-static {v1, v3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    sget-wide v2, Lio/dcloud/common/util/BaseInfo;->sProcessId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v5

    const-string v2, "p.runtime.processId = \'%s\';"

    invoke-static {v2, v3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 79
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v5

    invoke-static {v1, v3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    sget v2, Lio/dcloud/common/adapter/util/AndroidResources;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v5

    const-string v2, "p.runtime.versionCode = %d;"

    invoke-static {v2, v3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 81
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v5

    invoke-static {v1, v3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    invoke-static {p1}, Lio/dcloud/common/util/BaseInfo;->isUniAppAppid(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v2

    if-eqz v2, :cond_238

    .line 83
    new-array v2, v6, [Ljava/lang/Object;

    sget-object v3, Lio/dcloud/common/util/BaseInfo;->uniVersionV3:Ljava/lang/String;

    aput-object v3, v2, v5

    const-string v3, "p.runtime.uniVersion = \'%s\';"

    invoke-static {v3, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v5

    invoke-static {v1, v3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    :cond_238
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Navigator"

    invoke-static {v1, v2}, Lio/dcloud/common/core/permission/PermissionControler;->checkPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_266

    .line 87
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/adapter/util/DeviceInfo;->updateStatusBarHeight(Landroid/app/Activity;)V

    .line 88
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    sget v2, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    int-to-float v2, v2

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result p2

    div-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p2, v2, v5

    const-string p2, "if(((window.__html5plus__&&__html5plus__.isReady)?__html5plus__:(navigator.plus&&navigator.plus.isReady)?navigator.plus:window.plus).navigator){((window.__html5plus__&&__html5plus__.isReady)?__html5plus__:(navigator.plus&&navigator.plus.isReady)?navigator.plus:window.plus).navigator.__statusBarHeight__ = %f;}"

    invoke-static {v1, p2, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 89
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    :cond_266
    iget-object p2, p0, Lio/dcloud/p/i1;->g:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_26c
    if-ge v5, p2, :cond_27c

    .line 93
    iget-object v1, p0, Lio/dcloud/p/i1;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_26c

    .line 96
    :cond_27c
    invoke-direct {p0}, Lio/dcloud/p/i1;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    const-string p2, "}catch(e){console.log(\'__load__plus__ function error=\' + e);}}window.__load__plus__&&window.__load__plus__();"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    invoke-direct {p0, p1}, Lio/dcloud/p/i1;->a(Lio/dcloud/common/DHInterface/IApp;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    invoke-direct {p0, p1}, Lio/dcloud/p/i1;->b(Lio/dcloud/common/DHInterface/IApp;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_29b
    :goto_29b
    const/4 p1, 0x0

    return-object p1
.end method

.method private a([Ljava/lang/Object;)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    .line 116
    aget-object v1, p1, v0

    check-cast v1, Lio/dcloud/common/DHInterface/IWebview;

    const/4 v2, 0x1

    .line 117
    aget-object v3, p1, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    .line 118
    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    .line 119
    aget-object p1, p1, v5

    check-cast p1, Lorg/json/JSONArray;

    const/4 v6, 0x0

    if-eqz v1, :cond_b8

    .line 120
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v7

    if-eqz v7, :cond_b8

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v7

    if-eqz v7, :cond_b8

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v7

    invoke-interface {v7}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v7

    if-nez v7, :cond_39

    goto/16 :goto_b8

    .line 123
    :cond_39
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0, v3, v7}, Lio/dcloud/p/i1;->b(Ljava/lang/String;Landroid/app/Activity;)Lio/dcloud/common/DHInterface/IFeature;

    move-result-object v7

    if-eqz v7, :cond_65

    .line 125
    instance-of v0, v7, Lio/dcloud/common/DHInterface/BaseFeature;

    if-eqz v0, :cond_55

    move-object v0, v7

    check-cast v0, Lio/dcloud/common/DHInterface/BaseFeature;

    invoke-virtual {v0}, Lio/dcloud/common/DHInterface/BaseFeature;->isOldMode()Z

    move-result v2

    if-nez v2, :cond_55

    .line 127
    invoke-virtual {v0, v1, v4, p1}, Lio/dcloud/common/DHInterface/BaseFeature;->execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_55
    if-eqz p1, :cond_60

    .line 136
    :try_start_57
    invoke-static {p1}, Lio/dcloud/common/util/JSUtil;->jsonArrayToStringArr(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v6
    :try_end_5b
    .catch Lorg/json/JSONException; {:try_start_57 .. :try_end_5b} :catch_5c

    goto :goto_60

    :catch_5c
    move-exception p1

    .line 138
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 142
    :cond_60
    :goto_60
    invoke-interface {v7, v1, v4, v6}, Lio/dcloud/common/DHInterface/IFeature;->execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 144
    :cond_65
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result p1

    const-string v6, ""

    if-eq p1, v5, :cond_b8

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lio/dcloud/common/core/permission/PermissionControler;->checkSafePermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_80

    goto :goto_b8

    .line 148
    :cond_80
    invoke-virtual {p0}, Lio/dcloud/common/DHInterface/AbsMgr;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v5, Lio/dcloud/base/R$string;->dcloud_feature_error_tips:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v0

    invoke-static {p1, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "not found "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " feature plugin ; action="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "featuremgr"

    invoke-static {v0, p1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0, v1, v3}, Lio/dcloud/p/i1;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    :cond_b8
    :goto_b8
    return-object v6
.end method

.method private a(Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 2

    return-object p1
.end method

.method private a(Ljava/util/Iterator;)V
    .registers 4

    .line 156
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-nez v0, :cond_28

    .line 157
    :cond_6
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 158
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 159
    const-string v1, "getJsContent"

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 161
    iget-object v1, p0, Lio/dcloud/p/i1;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_28
    return-void
.end method

.method private b(Lio/dcloud/common/DHInterface/IApp;)Ljava/lang/String;
    .registers 3

    .line 2
    const-string p1, "DCLOUD_UNIPUSH"

    invoke-static {p1}, Lio/dcloud/common/adapter/util/AndroidResources;->getMetaValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 6
    const-string p1, "window.__isUniPush__ = true;"

    return-object p1

    :cond_19
    const-string p1, ""

    return-object p1
.end method

.method private declared-synchronized b([Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 7
    :try_start_1
    invoke-direct {p0, p1}, Lio/dcloud/p/i1;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object p1

    :catchall_7
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p1
.end method

.method private b()V
    .registers 6

    .line 80
    :try_start_0
    const-string v0, "io.dcloud.feature.d"

    .line 81
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    .line 82
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 83
    invoke-virtual {p0}, Lio/dcloud/common/DHInterface/AbsMgr;->getContext()Landroid/content/Context;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/p/h1;->a(Ljava/lang/Object;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    return-void

    .line 85
    :catch_22
    const-string v0, "fmgr no dp"

    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .registers 3

    .line 86
    iget-object v0, p0, Lio/dcloud/p/i1;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private c(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/p/i1;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/DHInterface/IFeature;

    if-nez v0, :cond_1c

    .line 4
    :try_start_a
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/DHInterface/IFeature;

    .line 5
    iget-object v1, p0, Lio/dcloud/p/i1;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {v0, p0, p1}, Lio/dcloud/common/DHInterface/IFeature;->init(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_1c} :catch_1c
    .catch Ljava/lang/InstantiationException; {:try_start_a .. :try_end_1c} :catch_1c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_1c} :catch_1c

    :catch_1c
    :cond_1c
    return-void
.end method


# virtual methods
.method public a(Lio/dcloud/common/DHInterface/IWebview;)Ljava/lang/String;
    .registers 6

    .line 7
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 8
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getWebviewUUID()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 10
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 12
    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "window.__HtMl_Id__= \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\';"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 14
    const-string p1, "window.__WebVieW_Id__= undefined;"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_59

    .line 16
    :cond_41
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "window.__WebVieW_Id__= \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 18
    :goto_59
    const-string p1, "try{window.plus.__tag__=\'_plus_all_\'}catch(e){}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 7

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lio/dcloud/base/R$string;->dcloud_feature_error_tips2:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "https://ask.dcloud.net.cn/article/283"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {p1, v0, v1, p2}, Lio/dcloud/common/util/ErrorDialogUtil;->getLossDialog(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 187
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_2e
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    .line 162
    iget-object v0, p0, Lio/dcloud/p/i1;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_23

    .line 163
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 165
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/DHInterface/IFeature;

    .line 167
    :try_start_1a
    invoke-interface {v1, p1}, Lio/dcloud/common/DHInterface/IFeature;->dispose(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_e

    :catch_1e
    move-exception v1

    .line 169
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e

    .line 174
    :cond_23
    iget-object v0, p0, Lio/dcloud/p/i1;->h:Ljava/util/HashMap;

    if-eqz v0, :cond_5f

    .line 176
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_54

    :cond_53
    const/4 v1, 0x0

    .line 182
    :goto_54
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5f

    .line 183
    iget-object p1, p0, Lio/dcloud/p/i1;->h:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5f
    return-void
.end method

.method b(Ljava/lang/String;Landroid/app/Activity;)Lio/dcloud/common/DHInterface/IFeature;
    .registers 8

    .line 8
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 10
    aget-object v0, p1, v0

    const/4 v1, 0x1

    .line 11
    aget-object p1, p1, v1

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 13
    :goto_17
    iget-object v1, p0, Lio/dcloud/p/i1;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/DHInterface/IFeature;

    if-nez v1, :cond_e2

    .line 16
    iget-object v2, p0, Lio/dcloud/p/i1;->b:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 17
    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    goto :goto_31

    :cond_30
    move-object v0, v2

    :goto_31
    if-eqz v0, :cond_58

    .line 20
    iget-object v2, p0, Lio/dcloud/p/i1;->e:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 21
    iget-object v2, p0, Lio/dcloud/p/i1;->e:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/DHInterface/IBoot;

    .line 22
    instance-of v3, v2, Lio/dcloud/common/DHInterface/BaseFeature;

    if-eqz v3, :cond_58

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 23
    move-object v1, v2

    check-cast v1, Lio/dcloud/common/DHInterface/BaseFeature;

    :cond_58
    if-nez v1, :cond_dd

    if-eqz v0, :cond_c2

    .line 29
    :try_start_5c
    invoke-static {p0, p1}, Lio/dcloud/p/g1;->a(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)Lio/dcloud/common/DHInterface/IFeature;

    move-result-object v1

    if-nez v1, :cond_7d

    .line 31
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/DHInterface/IFeature;
    :try_end_6c
    .catch Ljava/lang/InstantiationException; {:try_start_5c .. :try_end_6c} :catch_bd
    .catch Ljava/lang/IllegalAccessException; {:try_start_5c .. :try_end_6c} :catch_b8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5c .. :try_end_6c} :catch_83

    .line 32
    :try_start_6c
    iget-object v1, p0, Lio/dcloud/p/i1;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-interface {v0, p0, p1}, Lio/dcloud/common/DHInterface/IFeature;->init(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V
    :try_end_74
    .catch Ljava/lang/InstantiationException; {:try_start_6c .. :try_end_74} :catch_7a
    .catch Ljava/lang/IllegalAccessException; {:try_start_6c .. :try_end_74} :catch_77
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6c .. :try_end_74} :catch_75

    return-object v0

    :catch_75
    move-exception v1

    goto :goto_87

    :catch_77
    move-exception p1

    move-object v1, v0

    goto :goto_b9

    :catch_7a
    move-exception p1

    move-object v1, v0

    goto :goto_be

    .line 35
    :cond_7d
    :try_start_7d
    iget-object v0, p0, Lio/dcloud/p/i1;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_82
    .catch Ljava/lang/InstantiationException; {:try_start_7d .. :try_end_82} :catch_bd
    .catch Ljava/lang/IllegalAccessException; {:try_start_7d .. :try_end_82} :catch_b8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7d .. :try_end_82} :catch_83

    return-object v1

    :catch_83
    move-exception v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 42
    :goto_87
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadFeature error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "featuremgr"

    invoke-static {v2, v1}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :try_start_9e
    invoke-direct {p0, p1, p2}, Lio/dcloud/p/i1;->a(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/dcloud/common/DHInterface/IFeature;
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a4} :catch_b2

    if-eqz p2, :cond_dc

    .line 46
    :try_start_a6
    iget-object v0, p0, Lio/dcloud/p/i1;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-interface {p2, p0, p1}, Lio/dcloud/common/DHInterface/IFeature;->init(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_ae} :catch_af

    goto :goto_dc

    :catch_af
    move-exception p1

    move-object v0, p2

    goto :goto_b3

    :catch_b2
    move-exception p1

    .line 50
    :goto_b3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object p2, v0

    goto :goto_dc

    :catch_b8
    move-exception p1

    .line 51
    :goto_b9
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_db

    :catch_bd
    move-exception p1

    .line 52
    :goto_be
    invoke-virtual {p1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_db

    .line 69
    :cond_c2
    :try_start_c2
    invoke-direct {p0, p1, p2}, Lio/dcloud/p/i1;->a(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/dcloud/common/DHInterface/IFeature;
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_c8} :catch_d7

    if-eqz p2, :cond_d6

    .line 71
    :try_start_ca
    iget-object v0, p0, Lio/dcloud/p/i1;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-interface {p2, p0, p1}, Lio/dcloud/common/DHInterface/IFeature;->init(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_d2} :catch_d3

    return-object p2

    :catch_d3
    move-exception p1

    move-object v1, p2

    goto :goto_d8

    :cond_d6
    return-object p2

    :catch_d7
    move-exception p1

    .line 75
    :goto_d8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_db
    move-object p2, v1

    :cond_dc
    :goto_dc
    return-object p2

    .line 79
    :cond_dd
    iget-object p2, p0, Lio/dcloud/p/i1;->c:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e2
    return-object v1
.end method

.method public c()Z
    .registers 5

    .line 7
    const-string v0, "/sdcard/dcloud/all.js"

    :try_start_2
    sget-boolean v1, Lio/dcloud/common/util/BaseInfo;->ISDEBUG:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1a

    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->isExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 8
    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lio/dcloud/common/adapter/util/PlatformUtil;->getFileContent(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lio/dcloud/p/i1;->f:Ljava/lang/String;

    goto :goto_29

    .line 10
    :cond_1a
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lio/src/dcloud/adapter/DCloudAdapterUtil;->getRuntimeJsPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->getFileContent(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lio/dcloud/p/i1;->f:Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_29} :catch_2a

    :goto_29
    return v2

    :catch_2a
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method d()Ljava/util/HashMap;
    .registers 11

    const-string v0, "Main_Path"

    const-string v1, "FeatureMgr.loadBootOptions "

    .line 1
    iget-object v2, p0, Lio/dcloud/p/i1;->e:Ljava/util/HashMap;

    .line 2
    iget-object v3, p0, Lio/dcloud/p/i1;->d:Ljava/util/HashMap;

    .line 3
    iget-object v4, p0, Lio/dcloud/p/i1;->b:Ljava/util/HashMap;

    iget-object v5, p0, Lio/dcloud/p/i1;->a:Ljava/util/HashMap;

    sget-object v6, Lio/dcloud/common/util/BaseInfo;->s_properties:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lio/dcloud/common/util/PdrUtil;->loadProperties2HashMap(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_c0

    .line 6
    new-instance v2, Ljava/util/HashMap;

    const/4 v5, 0x2

    invoke-direct {v2, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lio/dcloud/p/i1;->e:Ljava/util/HashMap;

    .line 7
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_23
    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 8
    invoke-static {p0, v5}, Lio/dcloud/p/g1;->b(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)Lio/dcloud/common/DHInterface/IBoot;

    move-result-object v6

    if-nez v6, :cond_b9

    .line 10
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 12
    :try_start_3b
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/dcloud/common/DHInterface/IBoot;
    :try_end_45
    .catch Ljava/lang/InstantiationException; {:try_start_3b .. :try_end_45} :catch_a1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3b .. :try_end_45} :catch_89
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3b .. :try_end_45} :catch_71
    .catch Ljava/lang/ClassCastException; {:try_start_3b .. :try_end_45} :catch_59

    .line 13
    :try_start_45
    instance-of v6, v7, Lio/dcloud/common/DHInterface/BaseFeature;

    if-eqz v6, :cond_b8

    move-object v6, v7

    check-cast v6, Lio/dcloud/common/DHInterface/BaseFeature;

    invoke-virtual {v6, p0, v5}, Lio/dcloud/common/DHInterface/BaseFeature;->init(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/InstantiationException; {:try_start_45 .. :try_end_4f} :catch_57
    .catch Ljava/lang/IllegalAccessException; {:try_start_45 .. :try_end_4f} :catch_55
    .catch Ljava/lang/ClassNotFoundException; {:try_start_45 .. :try_end_4f} :catch_53
    .catch Ljava/lang/ClassCastException; {:try_start_45 .. :try_end_4f} :catch_51

    goto/16 :goto_b8

    :catch_51
    move-exception v6

    goto :goto_5d

    :catch_53
    move-exception v6

    goto :goto_75

    :catch_55
    move-exception v6

    goto :goto_8d

    :catch_57
    move-exception v6

    goto :goto_a5

    :catch_59
    move-exception v7

    move-object v9, v7

    move-object v7, v6

    move-object v6, v9

    .line 22
    :goto_5d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b8

    :catch_71
    move-exception v7

    move-object v9, v7

    move-object v7, v6

    move-object v6, v9

    .line 23
    :goto_75
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b8

    :catch_89
    move-exception v7

    move-object v9, v7

    move-object v7, v6

    move-object v6, v9

    .line 24
    :goto_8d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b8

    :catch_a1
    move-exception v7

    move-object v9, v7

    move-object v7, v6

    move-object v6, v9

    .line 25
    :goto_a5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b8
    :goto_b8
    move-object v6, v7

    :cond_b9
    if-eqz v6, :cond_23

    .line 36
    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_23

    .line 40
    :cond_c0
    invoke-direct {p0, v2}, Lio/dcloud/p/i1;->a(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lio/dcloud/p/i1;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/dcloud/p/i1;->a(Ljava/util/Iterator;)V

    .line 42
    iget-object v1, p0, Lio/dcloud/p/i1;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 43
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 44
    :goto_db
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f3

    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {p0, v2}, Lio/dcloud/p/i1;->a(Ljava/util/Iterator;)V

    goto :goto_db

    :cond_f3
    return-object v0
.end method

.method public dispose()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/p/i1;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_26

    .line 2
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 4
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/DHInterface/IFeature;

    .line 5
    invoke-interface {v2, v1}, Lio/dcloud/common/DHInterface/IFeature;->dispose(Ljava/lang/String;)V

    goto :goto_f

    .line 8
    :cond_1f
    iget-object v0, p0, Lio/dcloud/p/i1;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 9
    iput-object v1, p0, Lio/dcloud/p/i1;->c:Ljava/util/HashMap;

    :cond_26
    return-void
.end method

.method public processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-virtual {p0, p1}, Lio/dcloud/common/DHInterface/AbsMgr;->checkMgrId(Lio/dcloud/common/DHInterface/IMgr$MgrType;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2
    iget-object v1, p0, Lio/dcloud/common/DHInterface/AbsMgr;->mCore:Lio/dcloud/common/DHInterface/ICore;

    invoke-interface {v1, p1, p2, p3}, Lio/dcloud/common/DHInterface/ICore;->dispatchEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_e
    const/4 p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_11c

    :pswitch_14
    goto/16 :goto_11a

    .line 89
    :pswitch_16
    check-cast p3, [Ljava/lang/Object;

    .line 90
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/String;

    .line 91
    invoke-direct {p0, p1}, Lio/dcloud/p/i1;->c(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_114

    goto/16 :goto_11a

    .line 92
    :pswitch_21
    :try_start_21
    check-cast p3, [Ljava/lang/Object;

    .line 94
    aget-object p2, p3, v1

    instance-of v1, p2, Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v1, :cond_30

    .line 95
    check-cast p2, Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object p2

    goto :goto_3c

    .line 96
    :cond_30
    instance-of v1, p2, Lio/dcloud/common/DHInterface/IApp;

    if-eqz v1, :cond_3b

    .line 97
    check-cast p2, Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object p2

    goto :goto_3c

    :cond_3b
    move-object p2, v0

    .line 99
    :goto_3c
    aget-object v1, p3, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-virtual {p0, v1, p2}, Lio/dcloud/p/i1;->b(Ljava/lang/String;Landroid/app/Activity;)Lio/dcloud/common/DHInterface/IFeature;

    move-result-object p2

    .line 101
    instance-of v1, p2, Lio/dcloud/common/DHInterface/IWaiter;

    if-eqz v1, :cond_11a

    .line 102
    aget-object p1, p3, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 103
    check-cast p2, Lio/dcloud/common/DHInterface/IWaiter;

    const/4 v1, 0x3

    aget-object p3, p3, v1

    invoke-interface {p2, p1, p3}, Lio/dcloud/common/DHInterface/IWaiter;->doForFeature(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_59} :catch_5a
    .catchall {:try_start_21 .. :try_end_59} :catchall_114

    return-object p1

    :catch_5a
    move-exception p1

    .line 106
    :try_start_5b
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_11a

    .line 107
    :pswitch_60
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/dcloud/p/i1;->b(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 108
    :pswitch_6d
    check-cast p3, [Ljava/lang/String;

    .line 109
    aget-object p1, p3, v1

    aget-object p2, p3, v2

    invoke-static {p1, p2}, Lio/dcloud/common/core/permission/PermissionControler;->checkPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 110
    :pswitch_7c
    check-cast p3, [Ljava/lang/String;

    .line 111
    aget-object p2, p3, v1

    .line 112
    aget-object v1, p3, v2

    .line 113
    aget-object p1, p3, p1

    .line 114
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_9b

    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_9b

    .line 115
    iget-object p3, p0, Lio/dcloud/p/i1;->b:Ljava/util/HashMap;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_9b
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_11a

    .line 118
    iget-object p2, p0, Lio/dcloud/p/i1;->g:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11a

    .line 131
    :pswitch_a7
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 132
    iget-object p2, p0, Lio/dcloud/p/i1;->a:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 161
    :pswitch_b2
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dcloud/p/i1;->a(Ljava/lang/String;)V

    goto :goto_11a

    .line 162
    :pswitch_ba
    check-cast p3, [Ljava/lang/Object;

    .line 163
    aget-object p1, p3, v1

    check-cast p1, Lio/dcloud/common/DHInterface/IApp;

    .line 164
    aget-object p2, p3, v2

    check-cast p2, Lio/dcloud/common/DHInterface/IFrameView;

    .line 165
    invoke-direct {p0, p1, p2}, Lio/dcloud/p/i1;->a(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d1

    .line 167
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    :cond_d1
    return-object v0

    .line 168
    :pswitch_d2
    check-cast p3, [Ljava/lang/Object;

    .line 169
    aget-object p1, p3, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 170
    const-string p2, "syncUniExecMethod"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e7

    .line 172
    invoke-direct {p0, p3}, Lio/dcloud/p/i1;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 174
    :cond_e7
    invoke-direct {p0, p3}, Lio/dcloud/p/i1;->b([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 175
    :pswitch_ec
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lio/dcloud/p/i1;->c:Ljava/util/HashMap;

    .line 176
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lio/dcloud/p/i1;->b:Ljava/util/HashMap;

    .line 177
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lio/dcloud/p/i1;->a:Ljava/util/HashMap;

    .line 178
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/dcloud/p/i1;->e:Ljava/util/HashMap;

    .line 179
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lio/dcloud/p/i1;->d:Ljava/util/HashMap;

    .line 180
    invoke-virtual {p0}, Lio/dcloud/p/i1;->d()Ljava/util/HashMap;

    move-result-object p1
    :try_end_113
    .catchall {:try_start_5b .. :try_end_113} :catchall_114

    return-object p1

    :catchall_114
    move-exception p1

    .line 249
    const-string p2, "FeatureMgr.processEvent"

    invoke-static {p2, p1}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11a
    :goto_11a
    return-object v0

    nop

    :pswitch_data_11c
    .packed-switch 0x0
        :pswitch_ec
        :pswitch_d2
        :pswitch_ba
        :pswitch_b2
        :pswitch_a7
        :pswitch_7c
        :pswitch_14
        :pswitch_14
        :pswitch_6d
        :pswitch_60
        :pswitch_21
        :pswitch_16
    .end packed-switch
.end method
