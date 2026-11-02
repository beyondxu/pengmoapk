###### Class com.taobao.weex.WXSDKEngine (com.taobao.weex.WXSDKEngine)
.class public Lcom/taobao/weex/WXSDKEngine;
.super Lio/dcloud/feature/uniapp/AbsSDKEngine;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/WXSDKEngine$DestroyableModuleFactory;,
        Lcom/taobao/weex/WXSDKEngine$DestroyableModule;
    }
.end annotation


# static fields
.field public static final JS_FRAMEWORK_RELOAD:Ljava/lang/String; = "js_framework_reload"

.field private static final TAG:Ljava/lang/String; = "WXSDKEngine"

.field private static final V8_SO_NAME:Ljava/lang/String; = "weexcore"

.field private static volatile mIsInit:Z = false

.field private static volatile mIsSoInit:Z = false

.field private static final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/taobao/weex/WXSDKEngine;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/uniapp/AbsSDKEngine;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/taobao/weex/WXSDKEngine;->mIsSoInit:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .registers 1

    .line 1
    sput-boolean p0, Lcom/taobao/weex/WXSDKEngine;->mIsSoInit:Z

    return p0
.end method

.method public static addCustomOptions(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/taobao/weex/WXEnvironment;->addCustomOptions(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static callback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/taobao/weex/WXSDKManager;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static doInitInternal(Landroid/app/Application;Lcom/taobao/weex/InitConfig;)V
    .registers 6

    .line 1
    sput-object p0, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    const/4 v0, 0x0

    if-nez p0, :cond_28

    .line 3
    const-string v1, "WXSDKEngine"

    const-string v2, " doInitInternal application is null"

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_SDK_INIT:Lcom/taobao/weex/common/WXErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    invoke-virtual {v1}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "WXEnvironment sApplication is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8
    const-string v3, "doInitInternal"

    invoke-static {v0, v1, v3, v2, v0}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_28
    const/4 v1, 0x0

    .line 14
    sput-boolean v1, Lcom/taobao/weex/WXEnvironment;->JsFrameworkInit:Z

    .line 16
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    new-instance v2, Lcom/taobao/weex/WXSDKEngine$1;

    invoke-direct {v2, p1, p0}, Lcom/taobao/weex/WXSDKEngine$1;-><init>(Lcom/taobao/weex/InitConfig;Landroid/app/Application;)V

    const-string p0, "doInitWeexSdkInternal"

    invoke-virtual {v1, v2, v0, p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->postWithName(Ljava/lang/Runnable;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->register()V

    return-void
.end method

.method public static getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;
    .registers 1

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    move-result-object v0

    return-object v0
.end method

.method public static getDrawableLoader()Lcom/taobao/weex/adapter/IDrawableLoader;
    .registers 1

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getDrawableLoader()Lcom/taobao/weex/adapter/IDrawableLoader;

    move-result-object v0

    return-object v0
.end method

.method public static getIWXHttpAdapter()Lcom/taobao/weex/adapter/IWXHttpAdapter;
    .registers 1

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getIWXHttpAdapter()Lcom/taobao/weex/adapter/IWXHttpAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static getIWXImgLoaderAdapter()Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;
    .registers 1

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getIWXImgLoaderAdapter()Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static getIWXJsFileLoaderAdapter()Lcom/taobao/weex/adapter/IWXJsFileLoaderAdapter;
    .registers 1

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getIWXJsFileLoaderAdapter()Lcom/taobao/weex/adapter/IWXJsFileLoaderAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static getIWXStorageAdapter()Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;
    .registers 1

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getIWXStorageAdapter()Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static getIWXUserTrackAdapter()Lcom/taobao/weex/adapter/IWXUserTrackAdapter;
    .registers 1

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getIWXUserTrackAdapter()Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static getNavigator()Lcom/taobao/weex/appfram/navigator/INavigator;
    .registers 1

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getNavigator()Lcom/taobao/weex/appfram/navigator/INavigator;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/app/Application;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/taobao/weex/WXSDKEngine;->init(Landroid/app/Application;Lcom/taobao/weex/adapter/IWXUserTrackAdapter;)V

    return-void
.end method

.method public static init(Landroid/app/Application;Lcom/taobao/weex/adapter/IWXUserTrackAdapter;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/taobao/weex/WXSDKEngine;->init(Landroid/app/Application;Lcom/taobao/weex/adapter/IWXUserTrackAdapter;Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/app/Application;Lcom/taobao/weex/adapter/IWXUserTrackAdapter;Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    new-instance p2, Lcom/taobao/weex/InitConfig$Builder;

    invoke-direct {p2}, Lcom/taobao/weex/InitConfig$Builder;-><init>()V

    .line 5
    invoke-virtual {p2, p1}, Lcom/taobao/weex/InitConfig$Builder;->setUtAdapter(Lcom/taobao/weex/adapter/IWXUserTrackAdapter;)Lcom/taobao/weex/InitConfig$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/taobao/weex/InitConfig$Builder;->build()Lcom/taobao/weex/InitConfig;

    move-result-object p1

    .line 7
    invoke-static {p0, p1}, Lcom/taobao/weex/WXSDKEngine;->initialize(Landroid/app/Application;Lcom/taobao/weex/InitConfig;)V

    return-void
.end method

.method public static init(Landroid/app/Application;Ljava/lang/String;Lcom/taobao/weex/adapter/IWXUserTrackAdapter;Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;Lcom/taobao/weex/adapter/IWXHttpAdapter;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8
    new-instance p1, Lcom/taobao/weex/InitConfig$Builder;

    invoke-direct {p1}, Lcom/taobao/weex/InitConfig$Builder;-><init>()V

    .line 10
    invoke-virtual {p1, p2}, Lcom/taobao/weex/InitConfig$Builder;->setUtAdapter(Lcom/taobao/weex/adapter/IWXUserTrackAdapter;)Lcom/taobao/weex/InitConfig$Builder;

    move-result-object p1

    .line 11
    invoke-virtual {p1, p4}, Lcom/taobao/weex/InitConfig$Builder;->setHttpAdapter(Lcom/taobao/weex/adapter/IWXHttpAdapter;)Lcom/taobao/weex/InitConfig$Builder;

    move-result-object p1

    .line 12
    invoke-virtual {p1, p3}, Lcom/taobao/weex/InitConfig$Builder;->setImgAdapter(Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;)Lcom/taobao/weex/InitConfig$Builder;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/taobao/weex/InitConfig$Builder;->build()Lcom/taobao/weex/InitConfig;

    move-result-object p1

    .line 14
    invoke-static {p0, p1}, Lcom/taobao/weex/WXSDKEngine;->initialize(Landroid/app/Application;Lcom/taobao/weex/InitConfig;)V

    return-void
.end method

.method public static initialize(Landroid/app/Application;Lcom/taobao/weex/InitConfig;)V
    .registers 7

    .line 1
    sget-object v0, Lcom/taobao/weex/WXSDKEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    sget-boolean v1, Lcom/taobao/weex/WXSDKEngine;->mIsInit:Z

    if-eqz v1, :cond_9

    .line 3
    monitor-exit v0

    return-void

    .line 5
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 6
    sput-wide v1, Lcom/taobao/weex/WXEnvironment;->sSDKInitStart:J

    .line 7
    invoke-static {p0}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable(Landroid/app/Application;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 8
    sget-object v3, Lcom/taobao/weex/utils/LogLevel;->INFO:Lcom/taobao/weex/utils/LogLevel;

    sput-object v3, Lcom/taobao/weex/WXEnvironment;->sLogLevel:Lio/dcloud/feature/uniapp/utils/AbsLogLevel;

    goto :goto_1e

    .line 10
    :cond_1a
    sget-object v3, Lcom/taobao/weex/utils/LogLevel;->WARN:Lcom/taobao/weex/utils/LogLevel;

    sput-object v3, Lcom/taobao/weex/WXEnvironment;->sLogLevel:Lio/dcloud/feature/uniapp/utils/AbsLogLevel;

    .line 12
    :goto_1e
    invoke-static {p0, p1}, Lcom/taobao/weex/WXSDKEngine;->doInitInternal(Landroid/app/Application;Lcom/taobao/weex/InitConfig;)V

    .line 13
    invoke-static {p0}, Lcom/taobao/weex/WXSDKEngine;->registerApplicationOptions(Landroid/app/Application;)V

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    sput-wide v3, Lcom/taobao/weex/WXEnvironment;->sSDKInitInvokeTime:J

    .line 15
    const-string p1, "SDKInitInvokeTime"

    invoke-static {p1, v3, v4}, Lcom/taobao/weex/utils/WXLogUtils;->renderPerformanceLog(Ljava/lang/String;J)V

    const/4 p1, 0x1

    .line 16
    sput-boolean p1, Lcom/taobao/weex/WXSDKEngine;->mIsInit:Z

    .line 17
    invoke-static {p0}, Lio/dcloud/common/util/AppRuntime;->hasPrivacyForNotShown(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_40

    .line 18
    invoke-static {}, Lio/dcloud/weex/MoudlesLoader;->getInstance()Lio/dcloud/weex/MoudlesLoader;

    move-result-object p1

    invoke-virtual {p1, p0}, Lio/dcloud/weex/MoudlesLoader;->onCreate(Landroid/app/Application;)V

    .line 20
    :cond_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public static isInitialized()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/taobao/weex/WXSDKEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_3
    sget-boolean v1, Lcom/taobao/weex/WXSDKEngine;->mIsInit:Z

    if-eqz v1, :cond_d

    sget-boolean v1, Lcom/taobao/weex/WXEnvironment;->JsFrameworkInit:Z

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 4
    :goto_e
    monitor-exit v0

    return v1

    :catchall_10
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public static isSoInitialized()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/taobao/weex/WXSDKEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    sget-boolean v1, Lcom/taobao/weex/WXSDKEngine;->mIsSoInit:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private static register()V
    .registers 9

    .line 1
    const-string v0, "header"

    new-instance v1, Lcom/taobao/weex/utils/batch/BatchOperationHelper;

    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/taobao/weex/utils/batch/BatchOperationHelper;-><init>(Lcom/taobao/weex/utils/batch/BactchExecutor;)V

    .line 3
    :try_start_b
    new-instance v2, Lcom/taobao/weex/ui/SimpleComponentHolder;

    const-class v3, Lcom/taobao/weex/ui/component/WXText;

    new-instance v4, Lcom/taobao/weex/ui/component/WXText$Creator;

    invoke-direct {v4}, Lcom/taobao/weex/ui/component/WXText$Creator;-><init>()V

    invoke-direct {v2, v3, v4}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;Lcom/taobao/weex/ui/ComponentCreator;)V

    const-string/jumbo v3, "text"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z

    .line 11
    new-instance v2, Lcom/taobao/weex/ui/SimpleComponentHolder;

    const-class v3, Lcom/taobao/weex/ui/component/WXDiv;

    new-instance v5, Lcom/taobao/weex/ui/component/WXDiv$Ceator;

    invoke-direct {v5}, Lcom/taobao/weex/ui/component/WXDiv$Ceator;-><init>()V

    invoke-direct {v2, v3, v5}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;Lcom/taobao/weex/ui/ComponentCreator;)V

    const-string v3, "container"

    const-string v5, "div"

    const-string v6, "footer"

    filled-new-array {v3, v5, v0, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z

    .line 22
    new-instance v2, Lcom/taobao/weex/ui/SimpleComponentHolder;

    const-class v3, Lcom/taobao/weex/ui/component/WXImage;

    new-instance v5, Lcom/taobao/weex/ui/component/WXImage$Creator;

    invoke-direct {v5}, Lcom/taobao/weex/ui/component/WXImage$Creator;-><init>()V

    invoke-direct {v2, v3, v5}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;Lcom/taobao/weex/ui/ComponentCreator;)V

    const-string v3, "image"

    const-string v5, "img"

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z

    .line 31
    new-instance v2, Lcom/taobao/weex/ui/SimpleComponentHolder;

    const-class v3, Lcom/taobao/weex/ui/component/WXScroller;

    new-instance v5, Lcom/taobao/weex/ui/component/WXScroller$Creator;

    invoke-direct {v5}, Lcom/taobao/weex/ui/component/WXScroller$Creator;-><init>()V

    invoke-direct {v2, v3, v5}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;Lcom/taobao/weex/ui/ComponentCreator;)V

    const-string v3, "scroller"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z

    .line 39
    new-instance v2, Lcom/taobao/weex/ui/SimpleComponentHolder;

    const-class v3, Lcom/taobao/weex/ui/component/WXSlider;

    new-instance v5, Lcom/taobao/weex/ui/component/WXSlider$Creator;

    invoke-direct {v5}, Lcom/taobao/weex/ui/component/WXSlider$Creator;-><init>()V

    invoke-direct {v2, v3, v5}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;Lcom/taobao/weex/ui/ComponentCreator;)V

    const-string v3, "cycleslider"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v2, v5, v3}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z

    .line 47
    new-instance v2, Lcom/taobao/weex/ui/SimpleComponentHolder;

    const-class v3, Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    new-instance v6, Lcom/taobao/weex/ui/component/WXSliderNeighbor$Creator;

    invoke-direct {v6}, Lcom/taobao/weex/ui/component/WXSliderNeighbor$Creator;-><init>()V

    invoke-direct {v2, v3, v6}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;Lcom/taobao/weex/ui/ComponentCreator;)V

    const-string v3, "slider-neighbor"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v5, v3}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z

    .line 55
    new-instance v2, Lcom/taobao/weex/ui/SimpleComponentHolder;

    const-class v3, Lcom/taobao/weex/ui/component/list/WXCell;

    new-instance v6, Lcom/taobao/weex/ui/component/list/WXCell$Creator;

    invoke-direct {v6}, Lcom/taobao/weex/ui/component/list/WXCell$Creator;-><init>()V

    invoke-direct {v2, v3, v6}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;Lcom/taobao/weex/ui/ComponentCreator;)V

    const-string v3, "cell"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v5, v3}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z

    .line 62
    new-instance v2, Lcom/taobao/weex/ui/SimpleComponentHolder;

    const-class v3, Lcom/taobao/weex/ui/component/list/WXListComponent;

    new-instance v6, Lcom/taobao/weex/ui/component/list/WXListComponent$Creator;

    invoke-direct {v6}, Lcom/taobao/weex/ui/component/list/WXListComponent$Creator;-><init>()V

    invoke-direct {v2, v3, v6}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;Lcom/taobao/weex/ui/ComponentCreator;)V

    const-string v3, "list"

    const-string/jumbo v6, "vlist"

    const-string v7, "recycler"

    const-string/jumbo v8, "waterfall"

    filled-new-array {v3, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v5, v3}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z

    .line 73
    new-instance v2, Lcom/taobao/weex/ui/SimpleComponentHolder;

    const-class v3, Lcom/taobao/weex/ui/component/richtext/WXRichText;

    new-instance v6, Lcom/taobao/weex/ui/component/richtext/WXRichText$Creator;

    invoke-direct {v6}, Lcom/taobao/weex/ui/component/richtext/WXRichText$Creator;-><init>()V

    invoke-direct {v2, v3, v6}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;Lcom/taobao/weex/ui/ComponentCreator;)V

    const-string v3, "richtext"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z

    .line 83
    const-class v2, Lcom/taobao/weex/ui/component/list/SimpleListComponent;

    const-string v3, "simplelist"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/Class;Z[Ljava/lang/String;)Z

    .line 84
    const-class v2, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    const-string v3, "recycle-list"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/Class;Z[Ljava/lang/String;)Z

    .line 85
    const-class v2, Lcom/taobao/weex/ui/component/list/HorizontalListComponent;

    const-string v3, "hlist"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/Class;Z[Ljava/lang/String;)Z

    .line 86
    const-string v2, "cell-slot"

    const-class v3, Lcom/taobao/weex/ui/component/list/WXCell;

    invoke-static {v2, v3, v5}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 87
    const-string v2, "indicator"

    const-class v3, Lcom/taobao/weex/ui/component/WXIndicator;

    invoke-static {v2, v3, v5}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 88
    const-string/jumbo v2, "video"

    const-class v3, Lcom/taobao/weex/ui/component/WXVideo;

    invoke-static {v2, v3, v4}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 89
    const-string v2, "input"

    const-class v3, Lcom/taobao/weex/ui/component/WXInput;

    invoke-static {v2, v3, v4}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 90
    const-string/jumbo v2, "textarea"

    const-class v3, Lcom/taobao/weex/ui/component/Textarea;

    invoke-static {v2, v3, v4}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 92
    const-string v2, "a"

    const-class v3, Lcom/taobao/weex/ui/component/WXA;

    invoke-static {v2, v3, v4}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 93
    const-string v2, "embed"

    const-class v3, Lcom/taobao/weex/ui/component/WXEmbed;

    invoke-static {v2, v3, v5}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;Z)Z

    .line 94
    const-string/jumbo v2, "web"

    const-class v3, Lcom/taobao/weex/ui/component/WXWeb;

    invoke-static {v2, v3}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 95
    const-string v2, "refresh"

    const-class v3, Lcom/taobao/weex/ui/component/WXRefresh;

    invoke-static {v2, v3}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 96
    const-string v2, "loading"

    const-class v3, Lcom/taobao/weex/ui/component/WXLoading;

    invoke-static {v2, v3}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 97
    const-string v2, "loading-indicator"

    const-class v3, Lcom/taobao/weex/ui/component/WXLoadingIndicator;

    invoke-static {v2, v3}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 98
    const-class v2, Lcom/taobao/weex/ui/component/WXHeader;

    invoke-static {v0, v2}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 100
    const-string v0, "modal"

    const-class v2, Lcom/taobao/weex/ui/module/WXModalUIModule;

    invoke-static {v0, v2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 101
    const-string v0, "instanceWrap"

    const-class v2, Lcom/taobao/weex/common/WXInstanceWrap;

    invoke-static {v0, v2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 102
    const-string v0, "animation"

    const-class v2, Lcom/taobao/weex/ui/animation/WXAnimationModule;

    invoke-static {v0, v2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 103
    const-string/jumbo v0, "webview"

    const-class v2, Lcom/taobao/weex/ui/module/WXWebViewModule;

    invoke-static {v0, v2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 104
    const-string v0, "navigator"

    const-class v2, Lcom/taobao/weex/appfram/navigator/WXNavigatorModule;

    invoke-static {v0, v2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 105
    const-string/jumbo v0, "stream"

    const-class v2, Lcom/taobao/weex/http/WXStreamModule;

    invoke-static {v0, v2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 106
    const-string/jumbo v0, "timer"

    const-class v2, Lcom/taobao/weex/ui/module/WXTimerModule;

    invoke-static {v0, v2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 107
    const-string/jumbo v0, "storage"

    const-class v2, Lcom/taobao/weex/appfram/storage/WXStorageModule;

    invoke-static {v0, v2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 108
    const-string v0, "clipboard"

    const-class v2, Lcom/taobao/weex/appfram/clipboard/WXClipboardModule;

    invoke-static {v0, v2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 109
    const-string v0, "globalEvent"

    const-class v2, Lcom/taobao/weex/WXGlobalEventModule;

    invoke-static {v0, v2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 110
    const-string v0, "picker"

    const-class v2, Lcom/taobao/weex/appfram/pickers/WXPickersModule;

    invoke-static {v0, v2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 111
    const-string v0, "meta"

    const-class v2, Lcom/taobao/weex/ui/module/WXMetaModule;

    invoke-static {v0, v2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 112
    const-string/jumbo v0, "webSocket"

    const-class v2, Lcom/taobao/weex/appfram/websocket/WebSocketModule;

    invoke-static {v0, v2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 113
    const-string v0, "locale"

    const-class v2, Lcom/taobao/weex/ui/module/WXLocaleModule;

    invoke-static {v0, v2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 114
    const-string v0, "deviceInfo"

    const-class v2, Lcom/taobao/weex/ui/module/WXDeviceInfoModule;

    invoke-static {v0, v2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 115
    const-string v0, "sdk-console-log"

    const-class v2, Lcom/taobao/weex/ui/module/ConsoleLogModule;

    invoke-static {v0, v2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z
    :try_end_1c4
    .catch Lcom/taobao/weex/common/WXException; {:try_start_b .. :try_end_1c4} :catch_1c5

    goto :goto_1cb

    :catch_1c5
    move-exception v0

    .line 117
    const-string v2, "[WXSDKEngine] register:"

    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    :goto_1cb
    invoke-static {}, Lcom/taobao/weex/utils/cache/RegisterCache;->getInstance()Lcom/taobao/weex/utils/cache/RegisterCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/utils/cache/RegisterCache;->enableAutoScan()Z

    move-result v0

    if-eqz v0, :cond_1d8

    .line 121
    invoke-static {}, Lcom/taobao/weex/ui/config/AutoScanConfigRegister;->doScanConfig()V

    .line 124
    :cond_1d8
    invoke-virtual {v1}, Lcom/taobao/weex/utils/batch/BatchOperationHelper;->flush()V

    return-void
.end method

.method private static registerApplicationOptions(Landroid/app/Application;)V
    .registers 4

    if-nez p0, :cond_a

    .line 1
    const-string p0, "WXSDKEngine"

    const-string v0, "RegisterApplicationOptions application is null"

    invoke-static {p0, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen_width_pixels"

    invoke-static {v1, v0}, Lcom/taobao/weex/WXSDKEngine;->registerCoreEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen_height_pixels"

    invoke-static {v1, v0}, Lcom/taobao/weex/WXSDKEngine;->registerCoreEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const-string v0, "dimen"

    const-string v1, "android"

    const-string/jumbo v2, "status_bar_height"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_44

    .line 11
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 12
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/taobao/weex/WXSDKEngine;->registerCoreEnv(Ljava/lang/String;Ljava/lang/String;)V

    :cond_44
    return-void
.end method

.method public static varargs registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z
    .registers 12

    const/4 v0, 0x1

    .line 5
    :try_start_1
    array-length v1, p2
    :try_end_2
    .catchall {:try_start_1 .. :try_end_2} :catchall_2a

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_5
    if-ge v3, v1, :cond_29

    :try_start_7
    aget-object v5, p2, v3

    .line 6
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_18

    .line 8
    const-string v7, "append"

    const-string/jumbo v8, "tree"

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    if-eqz v4, :cond_22

    .line 10
    invoke-static {v5, p0, v6}, Lcom/taobao/weex/ui/WXComponentRegistry;->registerComponent(Ljava/lang/String;Lcom/taobao/weex/ui/IFComponentHolder;Ljava/util/Map;)Z

    move-result v4
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_26

    if-eqz v4, :cond_22

    const/4 v4, 0x1

    goto :goto_23

    :cond_22
    const/4 v4, 0x0

    :goto_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :catchall_26
    move-exception p0

    move v0, v4

    goto :goto_2b

    :cond_29
    return v4

    :catchall_2a
    move-exception p0

    .line 14
    :goto_2b
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public static varargs registerComponent(Ljava/lang/Class;Z[Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;Z[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_4
    new-instance v0, Lcom/taobao/weex/ui/SimpleComponentHolder;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;)V

    .line 4
    invoke-static {v0, p1, p2}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static registerComponent(Ljava/lang/String;Lcom/taobao/weex/ui/IExternalComponentGetter;Z)Z
    .registers 4

    .line 2
    new-instance v0, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;-><init>(Ljava/lang/String;Lcom/taobao/weex/ui/IExternalComponentGetter;)V

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p2, p0}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;)Z"
        }
    .end annotation

    .line 15
    new-instance v0, Lcom/taobao/weex/ui/SimpleComponentHolder;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/taobao/weex/ui/WXComponentRegistry;->registerComponent(Ljava/lang/String;Lcom/taobao/weex/ui/IFComponentHolder;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public static registerComponent(Ljava/lang/String;Ljava/lang/Class;Z)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/Class;Z[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static registerComponent(Ljava/util/Map;Ljava/lang/Class;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 16
    :cond_4
    const-string/jumbo v1, "type"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 17
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    return v0

    .line 20
    :cond_14
    new-instance v0, Lcom/taobao/weex/ui/SimpleComponentHolder;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;)V

    invoke-static {v1, v0, p0}, Lcom/taobao/weex/ui/WXComponentRegistry;->registerComponent(Ljava/lang/String;Lcom/taobao/weex/ui/IFComponentHolder;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public static registerCoreEnv(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->registerCoreEnv(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static registerModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;Z)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/taobao/weex/common/WXModule;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/bridge/ModuleFactory;",
            "Z)Z"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1, p2}, Lcom/taobao/weex/bridge/WXModuleManager;->registerModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;Z)Z

    move-result p0

    return p0
.end method

.method public static registerModule(Ljava/lang/String;Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/taobao/weex/common/WXModule;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, p1, v0}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;Z)Z

    move-result p0

    return p0
.end method

.method public static registerModule(Ljava/lang/String;Ljava/lang/Class;Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/taobao/weex/common/WXModule;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;Z)Z"
        }
    .end annotation

    if-eqz p1, :cond_f

    .line 1
    new-instance v0, Lcom/taobao/weex/common/TypeModuleFactory;

    invoke-direct {v0, p1}, Lcom/taobao/weex/common/TypeModuleFactory;-><init>(Ljava/lang/Class;)V

    invoke-static {p0, v0, p2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;Z)Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public static registerModuleWithFactory(Ljava/lang/String;Lcom/taobao/weex/WXSDKEngine$DestroyableModuleFactory;Z)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/taobao/weex/common/WXModule;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/WXSDKEngine$DestroyableModuleFactory;",
            "Z)Z"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;Z)Z

    move-result p0

    return p0
.end method

.method public static registerModuleWithFactory(Ljava/lang/String;Lcom/taobao/weex/ui/IExternalModuleGetter;Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/taobao/weex/common/WXModule;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/IExternalModuleGetter;",
            "Z)Z"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/taobao/weex/ui/IExternalModuleGetter;->getExternalModuleClass(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;Z)Z

    move-result p0

    return p0
.end method

.method public static registerService(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/taobao/weex/bridge/WXServiceManager;->registerService(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public static reload()V
    .registers 2

    .line 10
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    sget-boolean v1, Lcom/taobao/weex/WXEnvironment;->sRemoteDebugMode:Z

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->reload(Landroid/content/Context;Z)V

    return-void
.end method

.method public static reload(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 5

    .line 1
    sput-boolean p2, Lcom/taobao/weex/WXEnvironment;->sRemoteDebugMode:Z

    .line 2
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->restart()V

    .line 3
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->initScriptsFramework(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/taobao/weex/bridge/WXServiceManager;->reload()V

    .line 6
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->reload()V

    .line 7
    invoke-static {}, Lcom/taobao/weex/ui/WXComponentRegistry;->reload()V

    .line 8
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    new-instance p2, Lcom/taobao/weex/WXSDKEngine$2;

    invoke-direct {p2, p0}, Lcom/taobao/weex/WXSDKEngine$2;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/taobao/weex/WXSDKManager;->postOnUiThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static reload(Landroid/content/Context;Z)V
    .registers 3

    const/4 v0, 0x0

    .line 9
    invoke-static {p0, v0, p1}, Lcom/taobao/weex/WXSDKEngine;->reload(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static restartBridge(Z)V
    .registers 1

    .line 1
    sput-boolean p0, Lcom/taobao/weex/WXEnvironment;->sDebugMode:Z

    .line 2
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKManager;->restartBridge()V

    return-void
.end method

.method public static restartWeex()V
    .registers 2

    .line 1
    sget-boolean v0, Lcom/taobao/weex/WXEnvironment;->sRemoteDebugMode:Z

    sput-boolean v0, Lcom/taobao/weex/WXEnvironment;->sRemoteDebugMode:Z

    .line 2
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->restart()V

    .line 3
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->initScriptsFramework(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/taobao/weex/bridge/WXServiceManager;->reload()V

    .line 6
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->reload()V

    .line 7
    invoke-static {}, Lcom/taobao/weex/ui/WXComponentRegistry;->reload()V

    return-void
.end method

.method public static setActivityNavBarSetter(Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/weex/WXSDKManager;->setActivityNavBarSetter(Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;)V

    return-void
.end method

.method public static setJSExcetptionAdapter(Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/weex/WXSDKManager;->setIWXJSExceptionAdapter(Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;)V

    return-void
.end method

.method public static setNavigator(Lcom/taobao/weex/appfram/navigator/INavigator;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/weex/WXSDKManager;->setNavigator(Lcom/taobao/weex/appfram/navigator/INavigator;)V

    return-void
.end method

.method public static unRegisterService(Ljava/lang/String;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/taobao/weex/bridge/WXServiceManager;->unRegisterService(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

###### Class com.taobao.weex.WXSDKEngine.AnonymousClass1 (com.taobao.weex.WXSDKEngine$1)
.class Lcom/taobao/weex/WXSDKEngine$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/WXSDKEngine;->doInitInternal(Landroid/app/Application;Lcom/taobao/weex/InitConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$application:Landroid/app/Application;

.field final synthetic val$config:Lcom/taobao/weex/InitConfig;


# direct methods
.method constructor <init>(Lcom/taobao/weex/InitConfig;Landroid/app/Application;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/WXSDKEngine$1;->val$config:Lcom/taobao/weex/InitConfig;

    iput-object p2, p0, Lcom/taobao/weex/WXSDKEngine$1;->val$application:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKManager;->onSDKEngineInitialize()V

    .line 4
    iget-object v3, p0, Lcom/taobao/weex/WXSDKEngine$1;->val$config:Lcom/taobao/weex/InitConfig;

    if-eqz v3, :cond_12

    .line 5
    invoke-virtual {v2, v3}, Lcom/taobao/weex/WXSDKManager;->setInitConfig(Lcom/taobao/weex/InitConfig;)V

    .line 7
    :cond_12
    iget-object v3, p0, Lcom/taobao/weex/WXSDKEngine$1;->val$application:Landroid/app/Application;

    .line 8
    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKManager;->getIWXSoLoaderAdapter()Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

    move-result-object v4

    .line 9
    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKManager;->getWXStatisticsListener()Lcom/taobao/weex/IWXStatisticsListener;

    move-result-object v5

    .line 10
    invoke-static {v3, v4, v5}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->init(Landroid/app/Application;Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;Lcom/taobao/weex/IWXStatisticsListener;)V

    .line 13
    iget-object v3, p0, Lcom/taobao/weex/WXSDKEngine$1;->val$config:Lcom/taobao/weex/InitConfig;

    const/4 v4, 0x0

    if-eqz v3, :cond_29

    invoke-virtual {v3}, Lcom/taobao/weex/InitConfig;->getUtAdapter()Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    move-result-object v3

    goto :goto_2a

    :cond_29
    move-object v3, v4

    .line 15
    :goto_2a
    const-string/jumbo v5, "weexcore"

    const/4 v6, 0x1

    invoke-static {v5, v6, v3}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->initSo(Ljava/lang/String;ILcom/taobao/weex/adapter/IWXUserTrackAdapter;)Z

    move-result v5

    invoke-static {v5}, Lcom/taobao/weex/WXSDKEngine;->access$002(Z)Z

    .line 16
    invoke-static {}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->copyJssRuntimeSo()V

    .line 17
    iget-object v5, p0, Lcom/taobao/weex/WXSDKEngine$1;->val$config:Lcom/taobao/weex/InitConfig;

    if-eqz v5, :cond_54

    .line 18
    invoke-virtual {v5}, Lcom/taobao/weex/InitConfig;->getNativeLibraryList()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_44
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_54

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 19
    invoke-static {v7, v6, v3}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->initSo(Ljava/lang/String;ILcom/taobao/weex/adapter/IWXUserTrackAdapter;)Z

    goto :goto_44

    .line 22
    :cond_54
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->access$000()Z

    move-result v3

    if-nez v3, :cond_77

    .line 23
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_SDK_INIT:Lcom/taobao/weex/common/WXErrorCode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    invoke-virtual {v0}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isSoInit false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    const-string v2, "doInitInternal"

    invoke-static {v4, v0, v2, v1, v4}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 34
    :cond_77
    iget-object v3, p0, Lcom/taobao/weex/WXSDKEngine$1;->val$config:Lcom/taobao/weex/InitConfig;

    if-eqz v3, :cond_7f

    invoke-virtual {v3}, Lcom/taobao/weex/InitConfig;->getFramework()Ljava/lang/String;

    move-result-object v4

    :cond_7f
    invoke-virtual {v2, v4}, Lcom/taobao/weex/WXSDKManager;->initScriptsFramework(Ljava/lang/String;)V

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sput-wide v2, Lcom/taobao/weex/WXEnvironment;->sSDKInitExecuteTime:J

    .line 37
    const-string v0, "SDKInitExecuteTime"

    invoke-static {v0, v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->renderPerformanceLog(Ljava/lang/String;J)V

    return-void
.end method

###### Class com.taobao.weex.WXSDKEngine.AnonymousClass2 (com.taobao.weex.WXSDKEngine$2)
.class Lcom/taobao/weex/WXSDKEngine$2;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/WXSDKEngine;->reload(Landroid/content/Context;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/WXSDKEngine$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKEngine$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "js_framework_reload"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

###### Class com.taobao.weex.WXSDKEngine.DestroyableModule (com.taobao.weex.WXSDKEngine$DestroyableModule)
.class public abstract Lcom/taobao/weex/WXSDKEngine$DestroyableModule;
.super Lcom/taobao/weex/common/WXModule;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/common/Destroyable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/WXSDKEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DestroyableModule"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    return-void
.end method

###### Class com.taobao.weex.WXSDKEngine.DestroyableModuleFactory (com.taobao.weex.WXSDKEngine$DestroyableModuleFactory)
.class public abstract Lcom/taobao/weex/WXSDKEngine$DestroyableModuleFactory;
.super Lcom/taobao/weex/common/TypeModuleFactory;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/WXSDKEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DestroyableModuleFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/taobao/weex/WXSDKEngine$DestroyableModule;",
        ">",
        "Lcom/taobao/weex/common/TypeModuleFactory<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/common/TypeModuleFactory;-><init>(Ljava/lang/Class;)V

    return-void
.end method
