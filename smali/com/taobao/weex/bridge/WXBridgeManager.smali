###### Class com.taobao.weex.bridge.WXBridgeManager (com.taobao.weex.bridge.WXBridgeManager)
.class public Lcom/taobao/weex/bridge/WXBridgeManager;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/taobao/weex/utils/batch/BactchExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/bridge/WXBridgeManager$TimerInfo;,
        Lcom/taobao/weex/bridge/WXBridgeManager$BundType;
    }
.end annotation


# static fields
.field public static final ARGS:Ljava/lang/String; = "args"

.field private static final BRIDGE_LOG_SWITCH:Z = false

.field private static final BUNDLE_TYPE:Ljava/lang/String; = "bundleType"

.field public static final COMPONENT:Ljava/lang/String; = "component"

.field private static final CRASHREINIT:I = 0x32

.field private static GLOBAL_CONFIG_KEY:Ljava/lang/String; = "global_switch_config"

.field public static final INITLOGFILE:Ljava/lang/String; = "/jsserver_start.log"

.field private static final INIT_FRAMEWORK_OK:I = 0x1

.field public static final KEY_ARGS:Ljava/lang/String; = "args"

.field public static final KEY_METHOD:Ljava/lang/String; = "method"

.field public static final KEY_PARAMS:Ljava/lang/String; = "params"

.field private static LOW_MEM_VALUE:J = 0x78L

.field public static final METHD_COMPONENT_HOOK_SYNC:Ljava/lang/String; = "componentHook"

.field public static final METHD_FIRE_EVENT_SYNC:Ljava/lang/String; = "fireEventSync"

.field public static final METHOD:Ljava/lang/String; = "method"

.field public static final METHOD_CALLBACK:Ljava/lang/String; = "callback"

.field public static final METHOD_CALL_JS:Ljava/lang/String; = "callJS"

.field public static final METHOD_CHECK_APPKEY:Ljava/lang/String; = "dc_checkappkey"

.field public static final METHOD_CREATE_INSTANCE:Ljava/lang/String; = "createInstance"

.field public static final METHOD_CREATE_INSTANCE_CONTEXT:Ljava/lang/String; = "createInstanceContext"

.field public static final METHOD_CREATE_PAGE_WITH_CONTENT:Ljava/lang/String; = "CreatePageWithContent"

.field public static final METHOD_DESTROY_INSTANCE:Ljava/lang/String; = "destroyInstance"

.field public static final METHOD_FIRE_EVENT:Ljava/lang/String; = "fireEvent"

.field public static final METHOD_FIRE_EVENT_ON_DATA_RENDER_NODE:Ljava/lang/String; = "fireEventOnDataRenderNode"

.field private static final METHOD_JSFM_NOT_INIT_IN_EAGLE_MODE:Ljava/lang/String; = "JsfmNotInitInEagleMode"

.field public static final METHOD_NOTIFY_SERIALIZE_CODE_CACHE:Ljava/lang/String; = "notifySerializeCodeCache"

.field public static final METHOD_NOTIFY_TRIM_MEMORY:Ljava/lang/String; = "notifyTrimMemory"

.field private static final METHOD_POST_TASK_TO_MSG_LOOP:Ljava/lang/String; = "PostTaskToMsgLoop"

.field public static final METHOD_REFRESH_INSTANCE:Ljava/lang/String; = "refreshInstance"

.field public static final METHOD_REGISTER_COMPONENTS:Ljava/lang/String; = "registerComponents"

.field public static final METHOD_REGISTER_MODULES:Ljava/lang/String; = "registerModules"

.field public static final METHOD_SET_TIMEOUT:Ljava/lang/String; = "setTimeoutCallback"

.field public static final METHOD_UPDATE_COMPONENT_WITH_DATA:Ljava/lang/String; = "UpdateComponentData"

.field public static final MODULE:Ljava/lang/String; = "module"

.field private static final NON_CALLBACK:Ljava/lang/String; = "-1"

.field public static final OPTIONS:Ljava/lang/String; = "options"

.field public static final REF:Ljava/lang/String; = "ref"

.field private static final RENDER_STRATEGY:Ljava/lang/String; = "renderStrategy"

.field private static final UNDEFINED:Ljava/lang/String; = "undefined"

.field private static clazz_debugProxy:Ljava/lang/Class; = null

.field private static crashUrl:Ljava/lang/String; = null

.field private static globalConfig:Ljava/lang/String; = "none"

.field private static volatile isJsEngineMultiThreadEnable:Z = false

.field private static volatile isSandBoxContext:Z = true

.field private static isUseSingleProcess:Z = false

.field private static lastCrashTime:J = 0x0L

.field static volatile mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager; = null

.field private static volatile mInit:Z = false

.field private static mRaxApi:Ljava/lang/String; = null

.field private static mWeexCoreEnvOptions:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile reInitCount:I = 0x1

.field public static sInitFrameWorkMsg:Ljava/lang/StringBuilder;

.field public static sInitFrameWorkTimeOrigin:J


# instance fields
.field private mDestroyedInstanceId:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInitParams:Lcom/taobao/weex/bridge/WXParams;

.field private mInterceptor:Lcom/taobao/weex/utils/batch/Interceptor;

.field mJSHandler:Landroid/os/Handler;

.field private mJSThread:Lcom/taobao/weex/common/WXThread;

.field private mLodBuilder:Ljava/lang/StringBuilder;

.field private mMock:Z

.field private mNextTickTasks:Lcom/taobao/weex/bridge/WXHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/bridge/WXHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/taobao/weex/bridge/WXHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mRegisterComponentFailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRegisterModuleFailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRegisterServiceFailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWXBridge:Lcom/taobao/weex/common/IWXBridge;

.field private mWxDebugProxy:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWeexCoreEnvOptions:Ljava/util/Map;

    .line 1851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->sInitFrameWorkMsg:Ljava/lang/StringBuilder;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/taobao/weex/bridge/WXHashMap;

    invoke-direct {v0}, Lcom/taobao/weex/bridge/WXHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mNextTickTasks:Lcom/taobao/weex/bridge/WXHashMap;

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mMock:Z

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterComponentFailList:Ljava/util/List;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterModuleFailList:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterServiceFailList:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    .line 21
    sget-boolean v0, Lcom/taobao/weex/WXEnvironment;->sRemoteDebugMode:Z

    invoke-direct {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->initWXBridge(Z)V

    .line 22
    new-instance v0, Lcom/taobao/weex/common/WXThread;

    const-string v1, "WeexJSBridgeThread"

    invoke-direct {v0, v1, p0}, Lcom/taobao/weex/common/WXThread;-><init>(Ljava/lang/String;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    .line 23
    invoke-virtual {v0}, Lcom/taobao/weex/common/WXThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    return-object p0
.end method

.method static synthetic access$100(Lcom/taobao/weex/bridge/WXBridgeManager;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->setJSFrameworkInit(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeDestroyInstance(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/taobao/weex/bridge/WXBridgeManager;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterModuleFailList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/util/Map;Ljava/util/List;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeRegisterModules(Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/taobao/weex/bridge/WXBridgeManager;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterComponentFailList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/util/List;Ljava/util/List;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeRegisterComponents(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/taobao/weex/bridge/WXBridgeManager;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterServiceFailList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/util/List;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJSService(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1700()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->globalConfig:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)V

    return-void
.end method

.method static synthetic access$200()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/taobao/weex/bridge/WXBridgeManager;->isSandBoxContext:Z

    return v0
.end method

.method static synthetic access$300(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->initFramework(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/bridge/WXHashMap;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mNextTickTasks:Lcom/taobao/weex/bridge/WXHashMap;

    return-object p0
.end method

.method static synthetic access$500(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJSOnInstance(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Lcom/taobao/weex/bridge/ResultCallback;Z)V
    .registers 7

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJSWithCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Lcom/taobao/weex/bridge/ResultCallback;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Lcom/taobao/weex/common/WXRefreshData;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeRefreshInstance(Ljava/lang/String;Lcom/taobao/weex/common/WXRefreshData;)V

    return-void
.end method

.method static synthetic access$800(Lcom/taobao/weex/bridge/WXBridgeManager;Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeCreateInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->removeTaskByInstance(Ljava/lang/String;)V

    return-void
.end method

.method private varargs addJSEventTask(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$13;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v3, p3

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXBridgeManager$13;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;[Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private varargs addJSTask(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/taobao/weex/bridge/WXBridgeManager;->addJSEventTask(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V

    return-void
.end method

.method public static argsToJSON([Lcom/taobao/weex/bridge/WXJSObject;)Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    array-length v1, p0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_1c

    aget-object v3, p0, v2

    .line 4
    invoke-static {v3}, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->fromObjectToJSONString(Lcom/taobao/weex/bridge/WXJSObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 7
    :cond_1c
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private assembleDefaultOptions()Lcom/taobao/weex/bridge/WXParams;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->checkJsEngineMultiThread()V

    .line 3
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getConfig()Ljava/util/Map;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/taobao/weex/bridge/WXParams;

    invoke-direct {v1}, Lcom/taobao/weex/bridge/WXParams;-><init>()V

    .line 5
    const-string v2, "os"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setPlatform(Ljava/lang/String;)V

    .line 6
    const-string v2, "cacheDir"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setCacheDir(Ljava/lang/String;)V

    .line 7
    const-string/jumbo v2, "sysVersion"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setOsVersion(Ljava/lang/String;)V

    .line 8
    const-string v2, "appVersion"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setAppVersion(Ljava/lang/String;)V

    .line 9
    const-string/jumbo v2, "weexVersion"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setWeexVersion(Ljava/lang/String;)V

    .line 10
    const-string/jumbo v2, "sysModel"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setDeviceModel(Ljava/lang/String;)V

    .line 11
    const-string v2, "infoCollect"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setShouldInfoCollect(Ljava/lang/String;)V

    .line 12
    const-string v2, "logLevel"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setLogLevel(Ljava/lang/String;)V

    .line 13
    const-string v2, "layoutDirection"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setLayoutDirection(Ljava/lang/String;)V

    .line 14
    sget-boolean v2, Lcom/taobao/weex/bridge/WXBridgeManager;->isUseSingleProcess:Z

    const-string/jumbo v3, "true"

    if-eqz v2, :cond_7b

    move-object v2, v3

    goto :goto_7d

    :cond_7b
    const-string v2, "false"

    :goto_7d
    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setUseSingleProcess(Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/weex/WXEnvironment;->getCrashFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setCrashFilePath(Ljava/lang/String;)V

    .line 16
    sget-object v2, Lcom/taobao/weex/WXEnvironment;->CORE_JSB_SO_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setLibJsbPath(Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getLibJssRealPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setLibJssPath(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getLibJssIcuPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setLibIcuPath(Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getLibLdPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setLibLdPath(Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getLibJScRealPath()Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b6

    const-string v2, ""

    goto :goto_bf

    :cond_b6
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    :goto_bf
    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setLibJscPath(Ljava/lang/String;)V

    .line 22
    const-string v2, "appName"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 23
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d3

    .line 24
    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setAppName(Ljava/lang/String;)V

    .line 26
    :cond_d3
    const-string v2, "deviceWidth"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_ec

    sget-object v2, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-static {v2}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_f2

    :cond_ec
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_f2
    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setDeviceWidth(Ljava/lang/String;)V

    .line 27
    const-string v2, "deviceHeight"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10e

    sget-object v0, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_114

    :cond_10e
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_114
    invoke-virtual {v1, v0}, Lcom/taobao/weex/bridge/WXParams;->setDeviceHeight(Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getCustomOptions()Ljava/util/Map;

    move-result-object v0

    .line 29
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->jsEngineMultiThreadEnable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "enableBackupThread"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKManager;->getWXJscProcessManager()Lcom/taobao/weex/adapter/IWXJscProcessManager;

    move-result-object v2

    if-eqz v2, :cond_13f

    .line 32
    invoke-interface {v2}, Lcom/taobao/weex/adapter/IWXJscProcessManager;->enableBackUpThreadCache()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "enableBackupThreadCache"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_13f
    sget-boolean v2, Lcom/taobao/weex/WXEnvironment;->sUseRunTimeApi:Z

    if-nez v2, :cond_148

    .line 36
    const-string v2, "__enable_native_promise__"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_148
    invoke-virtual {v1, v0}, Lcom/taobao/weex/bridge/WXParams;->setOptions(Ljava/util/Map;)V

    .line 41
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->needInitV8()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/taobao/weex/bridge/WXParams;->setNeedInitV8(Z)V

    .line 42
    iput-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mInitParams:Lcom/taobao/weex/bridge/WXParams;

    return-object v1
.end method

.method private varargs asyncCallJSEventWithResult(Lcom/taobao/weex/bridge/EventResult;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/bridge/EventResult;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$12;

    move-object v1, p0

    move-object v6, p1

    move-object v4, p2

    move-object v5, p3

    move-object v3, p4

    move-object v2, p5

    invoke-direct/range {v0 .. v6}, Lcom/taobao/weex/bridge/WXBridgeManager$12;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;[Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/EventResult;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkMainThread()Z
    .registers 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private doReportJSException(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V
    .registers 14

    .line 1
    const-string v0, "\n"

    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getAllInstanceMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/WXSDKInstance;

    .line 2
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKManager;->getIWXJSExceptionAdapter()Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;

    move-result-object v2

    if-eqz v2, :cond_10c

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 7
    const-string p1, "instanceIdisNull"

    :cond_22
    const/4 v2, 0x0

    if-nez v1, :cond_f6

    .line 11
    const-string v1, "initFramework"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f6

    .line 14
    :try_start_2d
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_c7

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/jsserver_start.log"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_54
    .catchall {:try_start_2d .. :try_end_54} :catchall_c9

    .line 17
    :try_start_54
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_c7

    .line 19
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_b2

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6e
    .catchall {:try_start_54 .. :try_end_6e} :catchall_bb

    .line 22
    :try_start_6e
    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 23
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 25
    :goto_7f
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_98

    .line 26
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7f

    .line 28
    :cond_98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_9c} :catch_a5
    .catchall {:try_start_6e .. :try_end_9c} :catchall_bb

    .line 29
    :try_start_9c
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_9f} :catch_a0
    .catchall {:try_start_9c .. :try_end_9f} :catchall_b7

    goto :goto_b3

    :catch_a0
    move-exception v4

    move-object v8, v4

    move-object v4, v1

    move-object v1, v8

    goto :goto_a7

    :catch_a5
    move-exception v1

    move-object v4, v2

    .line 31
    :goto_a7
    :try_start_a7
    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V
    :try_end_ae
    .catchall {:try_start_a7 .. :try_end_ae} :catchall_b0

    move-object v1, v4

    goto :goto_b3

    :catchall_b0
    move-exception v1

    goto :goto_bd

    :cond_b2
    move-object v1, v2

    .line 34
    :goto_b3
    :try_start_b3
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_b7

    goto :goto_d3

    :catchall_b7
    move-exception v3

    move-object v4, v1

    move-object v1, v3

    goto :goto_bd

    :catchall_bb
    move-exception v1

    move-object v4, v2

    .line 37
    :goto_bd
    :try_start_bd
    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V
    :try_end_c4
    .catchall {:try_start_bd .. :try_end_c4} :catchall_c5

    goto :goto_d2

    :catchall_c5
    move-exception v1

    goto :goto_cb

    :cond_c7
    move-object v1, v2

    goto :goto_d3

    :catchall_c9
    move-exception v1

    move-object v4, v2

    .line 41
    :goto_cb
    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :goto_d2
    move-object v1, v4

    .line 43
    :goto_d3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reportJSException:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 50
    :cond_f6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    invoke-virtual {p3}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 53
    invoke-static {p1, p3, p2, p4, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_10c
    return-void
.end method

.method private execJSOnInstance(Lcom/taobao/weex/bridge/EventResult;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11

    .line 1
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$21;

    move-object v1, p0

    move-object v5, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXBridgeManager$21;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;ILcom/taobao/weex/bridge/EventResult;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private execRegisterFailTask()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterModuleFailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_34

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterModuleFailList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_24

    .line 4
    iget-object v3, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterModuleFailList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-direct {p0, v3, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeRegisterModules(Ljava/util/Map;Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 6
    :cond_24
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterModuleFailList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_34

    .line 8
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterModuleFailList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    :cond_34
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterComponentFailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_56

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterComponentFailList:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeRegisterComponents(Ljava/util/List;Ljava/util/List;)V

    .line 15
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterComponentFailList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_56

    .line 17
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterComponentFailList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 21
    :cond_56
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterServiceFailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_89

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterServiceFailList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_69
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_79

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 24
    invoke-direct {p0, v2, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJSService(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_69

    .line 26
    :cond_79
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterServiceFailList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 27
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_89

    .line 28
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterServiceFailList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_89
    return-void
.end method

.method private extractCallbackArgs(Ljava/lang/String;)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 3
    const-string v2, "args"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_18

    return-object v0

    .line 7
    :cond_18
    const-string v3, "method"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    const-string v3, "callback"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    return-object v0

    .line 12
    :cond_27
    new-instance p1, Landroid/util/Pair;

    new-instance v3, Landroid/util/Pair;

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONArray;->getBooleanValue(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_43} :catch_44

    return-object p1

    :catch_44
    return-object v0
.end method

.method private fireEventOnDataRenderNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    new-instance v1, Lcom/taobao/weex/bridge/WXBridgeManager$14;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v4, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/bridge/WXBridgeManager$14;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 p2, 0x0

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;
    .registers 2

    .line 1
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    if-nez v0, :cond_17

    .line 2
    const-class v0, Lcom/taobao/weex/bridge/WXBridgeManager;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    if-nez v1, :cond_12

    .line 4
    new-instance v1, Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-direct {v1}, Lcom/taobao/weex/bridge/WXBridgeManager;-><init>()V

    sput-object v1, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    .line 6
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 8
    :cond_17
    :goto_17
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    return-object v0
.end method

.method private getNextTick(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, ""

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "{}"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "callback"

    invoke-direct {p0, v1, p1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->addJSTask(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x6

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->sendMessage(Ljava/lang/String;I)V

    return-void
.end method

.method private getNextTick(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x2

    .line 1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string/jumbo p2, "{}"

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string p2, "callback"

    invoke-direct {p0, p2, p1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->addJSTask(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x6

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->sendMessage(Ljava/lang/String;I)V

    return-void
.end method

.method private initFramework(Ljava/lang/String;)V
    .registers 12

    const-string v1, "[WXBridgeManager] initFrameworkEnv crashFile:"

    .line 1
    new-instance v2, Lcom/taobao/weex/utils/tools/LogDetail;

    invoke-direct {v2}, Lcom/taobao/weex/utils/tools/LogDetail;-><init>()V

    .line 2
    const-string v0, "initFramework"

    invoke-virtual {v2, v0}, Lcom/taobao/weex/utils/tools/LogDetail;->name(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v2}, Lcom/taobao/weex/utils/tools/LogDetail;->taskStart()V

    .line 4
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->isSoInitialized()Z

    move-result v3

    if-eqz v3, :cond_1ed

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v3

    if-nez v3, :cond_1ed

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/taobao/weex/bridge/WXBridgeManager;->sInitFrameWorkTimeOrigin:J

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 8
    const-string/jumbo v3, "weex JS framework from assets"

    invoke-static {v3}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 10
    new-instance v3, Lcom/taobao/weex/utils/tools/LogDetail;

    invoke-direct {v3}, Lcom/taobao/weex/utils/tools/LogDetail;-><init>()V

    .line 11
    const-string v4, "loadJSFramework"

    invoke-virtual {v3, v4}, Lcom/taobao/weex/utils/tools/LogDetail;->name(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v3}, Lcom/taobao/weex/utils/tools/LogDetail;->taskStart()V

    .line 14
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getIWXJsFileLoaderAdapter()Lcom/taobao/weex/adapter/IWXJsFileLoaderAdapter;

    move-result-object v4

    .line 16
    sget-boolean v5, Lcom/taobao/weex/bridge/WXBridgeManager;->isSandBoxContext:Z

    if-nez v5, :cond_59

    if-eqz v4, :cond_48

    .line 18
    invoke-interface {v4}, Lcom/taobao/weex/adapter/IWXJsFileLoaderAdapter;->loadJsFramework()Ljava/lang/String;

    move-result-object p1

    .line 21
    :cond_48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 22
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object p1

    const-string v4, "main.js"

    invoke-static {v4, p1}, Lcom/taobao/weex/utils/WXFileUtils;->loadAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_70

    :cond_59
    if-eqz v4, :cond_5f

    .line 26
    invoke-interface {v4}, Lcom/taobao/weex/adapter/IWXJsFileLoaderAdapter;->loadJsFrameworkForSandBox()Ljava/lang/String;

    move-result-object p1

    .line 29
    :cond_5f
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 30
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object p1

    const-string/jumbo v4, "weex-main-jsfm.js"

    invoke-static {v4, p1}, Lcom/taobao/weex/utils/WXFileUtils;->loadAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 33
    :cond_70
    :goto_70
    sget-object v4, Lcom/taobao/weex/bridge/WXBridgeManager;->sInitFrameWorkMsg:Ljava/lang/StringBuilder;

    const-string/jumbo v5, "| weex JS framework from assets, isSandBoxContext: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/taobao/weex/bridge/WXBridgeManager;->isSandBoxContext:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v3}, Lcom/taobao/weex/utils/tools/LogDetail;->taskEnd()V

    .line 35
    iget-object v4, v3, Lcom/taobao/weex/utils/tools/LogDetail;->info:Lcom/taobao/weex/utils/tools/Info;

    iget-object v4, v4, Lcom/taobao/weex/utils/tools/Info;->taskName:Ljava/lang/String;

    iget-object v3, v3, Lcom/taobao/weex/utils/tools/LogDetail;->time:Lcom/taobao/weex/utils/tools/Time;

    iget-wide v5, v3, Lcom/taobao/weex/utils/tools/Time;->execTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v4, v3}, Lio/dcloud/weex/WXDotDataUtil;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    :cond_8f
    const-string v3, "jsEngine"

    const-string/jumbo v4, "v8"

    invoke-static {v3, v4}, Lio/dcloud/weex/WXDotDataUtil;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b2

    const/4 p1, 0x0

    .line 39
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->setJSFrameworkInit(Z)V

    .line 40
    sget-object p1, Lcom/taobao/weex/bridge/WXBridgeManager;->sInitFrameWorkMsg:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "| framework isEmpty "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    sget-object p1, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JS_FRAMEWORK:Lcom/taobao/weex/common/WXErrorCode;

    const-string v1, "framework is empty!! "

    const/4 v2, 0x0

    invoke-static {v2, p1, v0, v1, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_b2
    const/4 v3, 0x1

    .line 46
    :try_start_b3
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXStatisticsListener()Lcom/taobao/weex/IWXStatisticsListener;

    move-result-object v0

    if-eqz v0, :cond_103

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 48
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXStatisticsListener()Lcom/taobao/weex/IWXStatisticsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/weex/IWXStatisticsListener;->onJsFrameworkStart()V

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    sput-wide v6, Lcom/taobao/weex/WXEnvironment;->sJSFMStartListenerTime:J
    :try_end_d3
    .catchall {:try_start_b3 .. :try_end_d3} :catchall_1d0

    .line 51
    :try_start_d3
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getIWXUserTrackAdapter()Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    move-result-object v4

    if-eqz v4, :cond_103

    .line 53
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 54
    const-string/jumbo v0, "time"

    sget-wide v5, Lcom/taobao/weex/WXEnvironment;->sJSFMStartListenerTime:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v5

    const-string v6, "sJSFMStartListener"

    const-string v7, "counter"

    const/4 v8, 0x0

    invoke-interface/range {v4 .. v9}, Lcom/taobao/weex/adapter/IWXUserTrackAdapter;->commit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/common/WXPerformance;Ljava/util/Map;)V
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_fa} :catch_fb
    .catchall {:try_start_d3 .. :try_end_fa} :catchall_1d0

    goto :goto_103

    :catch_fb
    move-exception v0

    .line 58
    :try_start_fc
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 62
    :cond_103
    :goto_103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 63
    const-string v6, ""
    :try_end_109
    .catchall {:try_start_fc .. :try_end_109} :catchall_1d0

    .line 65
    :try_start_109
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_119} :catch_11a
    .catchall {:try_start_109 .. :try_end_119} :catchall_1d0

    goto :goto_122

    :catch_11a
    move-exception v0

    .line 67
    :try_start_11b
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 77
    :goto_122
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->sInitFrameWorkMsg:Ljava/lang/StringBuilder;

    const-string v7, " | pieSupport:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pieSupport:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 80
    new-instance v0, Lcom/taobao/weex/utils/tools/LogDetail;

    invoke-direct {v0}, Lcom/taobao/weex/utils/tools/LogDetail;-><init>()V

    .line 81
    const-string v1, "native initFrameworkEnv"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/utils/tools/LogDetail;->name(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Lcom/taobao/weex/utils/tools/LogDetail;->taskStart()V

    .line 83
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->assembleDefaultOptions()Lcom/taobao/weex/bridge/WXParams;

    move-result-object v7

    invoke-interface {v1, p1, v7, v6, v3}, Lcom/taobao/weex/common/IWXBridge;->initFrameworkEnv(Ljava/lang/String;Lcom/taobao/weex/bridge/WXParams;Ljava/lang/String;Z)I

    move-result p1

    if-ne p1, v3, :cond_1b4

    .line 84
    invoke-virtual {v0}, Lcom/taobao/weex/utils/tools/LogDetail;->taskEnd()V

    .line 85
    iget-object p1, v0, Lcom/taobao/weex/utils/tools/LogDetail;->info:Lcom/taobao/weex/utils/tools/Info;

    iget-object p1, p1, Lcom/taobao/weex/utils/tools/Info;->taskName:Ljava/lang/String;

    iget-object v0, v0, Lcom/taobao/weex/utils/tools/LogDetail;->time:Lcom/taobao/weex/utils/tools/Time;

    iget-wide v0, v0, Lcom/taobao/weex/utils/tools/Time;->execTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lio/dcloud/weex/WXDotDataUtil;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    sput-wide v0, Lcom/taobao/weex/WXEnvironment;->sJSLibInitTime:J

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v4, Lcom/taobao/weex/WXEnvironment;->sSDKInitStart:J

    sub-long/2addr v0, v4

    sput-wide v0, Lcom/taobao/weex/WXEnvironment;->sSDKInitTime:J

    .line 88
    invoke-direct {p0, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->setJSFrameworkInit(Z)V

    .line 89
    invoke-virtual {v2}, Lcom/taobao/weex/utils/tools/LogDetail;->taskEnd()V

    .line 90
    iget-object p1, v2, Lcom/taobao/weex/utils/tools/LogDetail;->info:Lcom/taobao/weex/utils/tools/Info;

    iget-object p1, p1, Lcom/taobao/weex/utils/tools/Info;->taskName:Ljava/lang/String;

    iget-object v0, v2, Lcom/taobao/weex/utils/tools/LogDetail;->time:Lcom/taobao/weex/utils/tools/Time;

    iget-wide v0, v0, Lcom/taobao/weex/utils/tools/Time;->execTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lio/dcloud/weex/WXDotDataUtil;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getWXStatisticsListener()Lcom/taobao/weex/IWXStatisticsListener;

    move-result-object p1

    if-eqz p1, :cond_1a8

    .line 92
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getWXStatisticsListener()Lcom/taobao/weex/IWXStatisticsListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/taobao/weex/IWXStatisticsListener;->onJsFrameworkReady()V

    .line 95
    :cond_1a8
    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->execRegisterFailTask()V

    .line 96
    sput-boolean v3, Lcom/taobao/weex/WXEnvironment;->JsFrameworkInit:Z

    .line 97
    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->registerDomModule()V

    .line 98
    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->trackComponentAndModulesTime()V

    goto :goto_1ed

    .line 100
    :cond_1b4
    sget-object p1, Lcom/taobao/weex/bridge/WXBridgeManager;->sInitFrameWorkMsg:Ljava/lang/StringBuilder;

    const-string v0, " | ExecuteJavaScript fail, reInitCount"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/taobao/weex/bridge/WXBridgeManager;->reInitCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    sget p1, Lcom/taobao/weex/bridge/WXBridgeManager;->reInitCount:I

    if-le p1, v3, :cond_1ca

    .line 102
    const-string p1, "[WXBridgeManager] invokeReInitFramework  ExecuteJavaScript fail"

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_1ed

    .line 104
    :cond_1ca
    const-string p1, "[WXBridgeManager] invokeInitFramework  ExecuteJavaScript fail"

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V
    :try_end_1cf
    .catchall {:try_start_11b .. :try_end_1cf} :catchall_1d0

    goto :goto_1ed

    :catchall_1d0
    move-exception v0

    move-object p1, v0

    .line 108
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->sInitFrameWorkMsg:Ljava/lang/StringBuilder;

    const-string v1, " | invokeInitFramework exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    sget v0, Lcom/taobao/weex/bridge/WXBridgeManager;->reInitCount:I

    const-string v1, "[WXBridgeManager] invokeInitFramework "

    if-le v0, v3, :cond_1ea

    .line 110
    invoke-static {v1, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1ed

    .line 112
    :cond_1ea
    invoke-static {v1, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1ed
    :goto_1ed
    return-void
.end method

.method private initWXBridge(Z)V
    .registers 10

    const/4 v0, 0x1

    if-eqz p1, :cond_b

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2
    sput-boolean v0, Lcom/taobao/weex/WXEnvironment;->sDebugServerConnectable:Z

    .line 5
    :cond_b
    sget-boolean v1, Lcom/taobao/weex/WXEnvironment;->sDebugServerConnectable:Z

    const-string v2, "com.taobao.weex.devtools.debug.DebugServerProxy"

    const/4 v3, 0x0

    if-eqz v1, :cond_8b

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 6
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_84

    .line 8
    :try_start_1b
    sget-object v1, Lcom/taobao/weex/bridge/WXBridgeManager;->clazz_debugProxy:Ljava/lang/Class;

    if-nez v1, :cond_25

    .line 9
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/taobao/weex/bridge/WXBridgeManager;->clazz_debugProxy:Ljava/lang/Class;

    .line 11
    :cond_25
    sget-object v1, Lcom/taobao/weex/bridge/WXBridgeManager;->clazz_debugProxy:Ljava/lang/Class;

    if-eqz v1, :cond_80

    .line 13
    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWxDebugProxy:Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz v4, :cond_47

    .line 15
    const-string v4, "isActive"

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 17
    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWxDebugProxy:Ljava/lang/Object;

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_44

    :cond_43
    const/4 v1, 0x0

    :goto_44
    if-eqz v1, :cond_47

    goto :goto_80

    .line 24
    :cond_47
    sget-object v1, Lcom/taobao/weex/bridge/WXBridgeManager;->clazz_debugProxy:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v5

    const-class v7, Lcom/taobao/weex/common/IWXDebugConfig;

    aput-object v7, v6, v0

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    if-eqz v1, :cond_80

    .line 26
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v6

    new-instance v7, Lcom/taobao/weex/bridge/WXBridgeManager$4;

    invoke-direct {v7, p0}, Lcom/taobao/weex/bridge/WXBridgeManager$4;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;)V

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v5

    aput-object v7, v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWxDebugProxy:Ljava/lang/Object;

    if-eqz v0, :cond_80

    .line 39
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->clazz_debugProxy:Ljava/lang/Class;

    const-string v1, "start"

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_80

    .line 41
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWxDebugProxy:Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_80
    .catchall {:try_start_1b .. :try_end_80} :catchall_80

    .line 50
    :catchall_80
    :cond_80
    :goto_80
    invoke-static {}, Lcom/taobao/weex/bridge/WXServiceManager;->execAllCacheJsService()V

    goto :goto_8b

    .line 52
    :cond_84
    const-string v0, "WXBridgeManager"

    const-string v1, "WXEnvironment.sApplication is null, skip init Inspector"

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8b
    :goto_8b
    if-eqz p1, :cond_b2

    .line 55
    iget-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWxDebugProxy:Ljava/lang/Object;

    if-eqz p1, :cond_b2

    .line 57
    :try_start_91
    sget-object p1, Lcom/taobao/weex/bridge/WXBridgeManager;->clazz_debugProxy:Ljava/lang/Class;

    if-nez p1, :cond_9b

    .line 58
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    sput-object p1, Lcom/taobao/weex/bridge/WXBridgeManager;->clazz_debugProxy:Ljava/lang/Class;

    .line 60
    :cond_9b
    sget-object p1, Lcom/taobao/weex/bridge/WXBridgeManager;->clazz_debugProxy:Ljava/lang/Class;

    if-eqz p1, :cond_b9

    .line 61
    const-string v0, "getWXBridge"

    invoke-virtual {p1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_b9

    .line 63
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWxDebugProxy:Ljava/lang/Object;

    invoke-virtual {p1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/common/IWXBridge;

    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;
    :try_end_b1
    .catchall {:try_start_91 .. :try_end_b1} :catchall_b9

    goto :goto_b9

    .line 70
    :cond_b2
    new-instance p1, Lcom/taobao/weex/bridge/WXBridge;

    invoke-direct {p1}, Lcom/taobao/weex/bridge/WXBridge;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    :catchall_b9
    :cond_b9
    :goto_b9
    return-void
.end method

.method private invokeCallJSBatch(Landroid/os/Message;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mNextTickTasks:Lcom/taobao/weex/bridge/WXHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8c

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_8c

    :cond_10
    const/4 v0, 0x0

    .line 9
    :try_start_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mNextTickTasks:Lcom/taobao/weex/bridge/WXHashMap;

    invoke-virtual {v1}, Lcom/taobao/weex/bridge/WXHashMap;->getInstanceStack()Ljava/util/Stack;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move-object v4, v0

    :goto_20
    if-ltz v2, :cond_3b

    .line 15
    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 16
    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mNextTickTasks:Lcom/taobao/weex/bridge/WXHashMap;

    invoke-virtual {v4, p1}, Lcom/taobao/weex/bridge/WXHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_38

    .line 17
    move-object v5, v4

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_38

    goto :goto_3b

    :cond_38
    add-int/lit8 v2, v2, -0x1

    goto :goto_20

    :cond_3b
    :goto_3b
    if-eqz v4, :cond_7d

    .line 22
    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 24
    new-instance v2, Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v4, 0x2

    invoke-direct {v2, v4, p1}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    .line 26
    invoke-static {v1}, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->toWsonOrJsonWXJSObject(Ljava/lang/Object;)Lcom/taobao/weex/bridge/WXJSObject;

    move-result-object v1

    new-array v4, v4, [Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    aput-object v1, v4, v3

    .line 28
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "callJS"

    invoke-direct {p0, p1, v0, v1, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)V
    :try_end_5d
    .catchall {:try_start_11 .. :try_end_5d} :catchall_5e

    goto :goto_7d

    :catchall_5e
    move-exception p1

    .line 31
    const-string v1, "WXBridgeManager"

    invoke-static {v1, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invokeCallJSBatch#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 33
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JS_FRAMEWORK:Lcom/taobao/weex/common/WXErrorCode;

    const-string v2, "invokeCallJSBatch"

    invoke-static {v0, v1, v2, p1, v0}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 38
    :cond_7d
    :goto_7d
    iget-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mNextTickTasks:Lcom/taobao/weex/bridge/WXHashMap;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a7

    .line 39
    iget-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_a7

    .line 40
    :cond_8c
    :goto_8c
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-nez v0, :cond_a7

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[WXBridgeManager] invokeCallJSBatch: framework.js uninitialized!!  message:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :cond_a7
    :goto_a7
    return-void
.end method

.method private invokeCreateInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/WXSDKInstance;",
            "Lcom/taobao/weex/Script;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    const-string v2, "env"

    const-string/jumbo v8, "wxEndLoadBundle"

    const-string v3, "extraOption"

    const-string v4, "bundleType"

    const-string v9, "[WXBridgeManager] invokeCreateInstance : "

    const-string v0, "end getBundleType type:"

    .line 1
    invoke-direct/range {p0 .. p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Lcom/taobao/weex/WXSDKInstance;)Z

    move-result v5

    const-string v6, ""

    if-nez v5, :cond_1c

    .line 2
    invoke-direct {v1, v6}, Lcom/taobao/weex/bridge/WXBridgeManager;->initFramework(Ljava/lang/String;)V

    .line 5
    :cond_1c
    iget-boolean v5, v1, Lcom/taobao/weex/bridge/WXBridgeManager;->mMock:Z

    if-eqz v5, :cond_28

    .line 6
    invoke-virtual {v7}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->mock(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_28
    invoke-direct/range {p0 .. p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Lcom/taobao/weex/WXSDKInstance;)Z

    move-result v5

    if-nez v5, :cond_47

    invoke-virtual {v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v5

    if-nez v5, :cond_47

    .line 10
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 11
    invoke-virtual {v0}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-virtual {v0}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual {v7, v2, v0}, Lcom/taobao/weex/WXSDKInstance;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const-string v0, "[WXBridgeManager] invokeCreateInstance: framework.js uninitialized."

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    return-void

    .line 21
    :cond_47
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->registerWhenCreateInstance()V

    .line 24
    :try_start_4a
    sget-object v5, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Others:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;
    :try_end_4c
    .catchall {:try_start_4a .. :try_end_4c} :catchall_2b8

    .line 26
    :try_start_4c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 27
    invoke-virtual {v7}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/taobao/weex/Script;->getContent()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Lcom/taobao/weex/bridge/WXBridgeManager;->getBundleType(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    move-result-object v5

    .line 29
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isOpenDebugLog()Z

    move-result v12

    if-eqz v12, :cond_8b

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 31
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " time:"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v12, v10

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V
    :try_end_82
    .catchall {:try_start_4c .. :try_end_82} :catchall_83

    goto :goto_8b

    :catchall_83
    move-exception v0

    .line 34
    :try_start_84
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V
    :try_end_8b
    .catchall {:try_start_84 .. :try_end_8b} :catchall_2b8

    :cond_8b
    :goto_8b
    if-nez p3, :cond_98

    .line 39
    :try_start_8d
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_92
    .catchall {:try_start_8d .. :try_end_92} :catchall_94

    move-object v10, v0

    goto :goto_9a

    :catchall_94
    move-exception v0

    move-object/from16 v10, p3

    goto :goto_e9

    :cond_98
    move-object/from16 v10, p3

    .line 42
    :goto_9a
    :try_start_9a
    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d8

    .line 44
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Vue:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;
    :try_end_a2
    .catchall {:try_start_9a .. :try_end_a2} :catchall_e8

    const-string v11, "Others"

    if-ne v5, v0, :cond_ac

    .line 45
    :try_start_a6
    const-string v0, "Vue"

    invoke-interface {v10, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b9

    .line 46
    :cond_ac
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Rax:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    if-ne v5, v0, :cond_b6

    .line 47
    const-string v0, "Rax"

    invoke-interface {v10, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b9

    .line 49
    :cond_b6
    invoke-interface {v10, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :goto_b9
    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_cc

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_cc

    .line 54
    const-string v0, "other"

    :cond_cc
    if-eqz v0, :cond_d8

    .line 57
    invoke-virtual {v7}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v4

    const-string/jumbo v11, "wxBundleType"

    invoke-virtual {v4, v11, v0}, Lcom/taobao/weex/performance/WXInstanceApm;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    :cond_d8
    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f0

    .line 61
    iget-object v0, v1, Lcom/taobao/weex/bridge/WXBridgeManager;->mInitParams:Lcom/taobao/weex/bridge/WXParams;

    invoke-virtual {v0}, Lcom/taobao/weex/bridge/WXParams;->toMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v10, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e7
    .catchall {:try_start_a6 .. :try_end_e7} :catchall_e8

    goto :goto_f0

    :catchall_e8
    move-exception v0

    .line 64
    :goto_e9
    :try_start_e9
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 66
    :cond_f0
    :goto_f0
    iput-object v5, v7, Lcom/taobao/weex/WXSDKInstance;->bundleType:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    .line 67
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 73
    new-instance v0, Lcom/taobao/weex/bridge/WXJSObject;

    .line 74
    invoke-virtual {v7}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-direct {v0, v4, v2}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    .line 75
    new-instance v2, Lcom/taobao/weex/bridge/WXJSObject;

    .line 76
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/weex/Script;->getContent()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v4, v11}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    if-eqz v10, :cond_118

    .line 79
    invoke-interface {v10, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_118

    .line 80
    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 81
    invoke-interface {v10, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_119

    :cond_118
    const/4 v12, 0x0

    .line 84
    :goto_119
    new-instance v3, Lcom/taobao/weex/bridge/WXJSObject;
    :try_end_11b
    .catchall {:try_start_e9 .. :try_end_11b} :catchall_2b8

    const-string/jumbo v13, "{}"

    if-nez v12, :cond_122

    move-object v12, v13

    goto :goto_126

    .line 86
    :cond_122
    :try_start_122
    invoke-static {v12}, Lcom/taobao/weex/utils/WXJsonUtils;->fromObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    :goto_126
    const/4 v14, 0x3

    invoke-direct {v3, v14, v12}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    .line 89
    new-instance v12, Lcom/taobao/weex/bridge/WXJSObject;

    if-nez v10, :cond_130

    move-object v10, v13

    goto :goto_134

    .line 91
    :cond_130
    invoke-static {v10}, Lcom/taobao/weex/utils/WXJsonUtils;->fromObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    :goto_134
    invoke-direct {v12, v14, v10}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    .line 92
    sget-boolean v10, Lcom/taobao/weex/bridge/WXBridgeManager;->isSandBoxContext:Z

    invoke-virtual {v1, v10, v5, v12}, Lcom/taobao/weex/bridge/WXBridgeManager;->optionObjConvert(ZLcom/taobao/weex/bridge/WXBridgeManager$BundType;Lcom/taobao/weex/bridge/WXJSObject;)Lcom/taobao/weex/bridge/WXJSObject;

    move-result-object v10

    .line 93
    new-instance v12, Lcom/taobao/weex/bridge/WXJSObject;

    if-nez p4, :cond_142

    goto :goto_144

    :cond_142
    move-object/from16 v13, p4

    .line 95
    :goto_144
    invoke-direct {v12, v14, v13}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    .line 98
    sget-object v13, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Rax:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    if-eq v5, v13, :cond_15a

    invoke-virtual {v7}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v15

    sget-object v11, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER:Lcom/taobao/weex/common/WXRenderStrategy;

    if-ne v15, v11, :cond_154

    goto :goto_15a

    .line 112
    :cond_154
    new-instance v11, Lcom/taobao/weex/bridge/WXJSObject;

    invoke-direct {v11, v4, v6}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    goto :goto_186

    .line 113
    :cond_15a
    :goto_15a
    sget-object v6, Lcom/taobao/weex/bridge/WXBridgeManager;->mRaxApi:Ljava/lang/String;

    if-nez v6, :cond_17f

    .line 114
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getIWXJsFileLoaderAdapter()Lcom/taobao/weex/adapter/IWXJsFileLoaderAdapter;

    move-result-object v6

    if-eqz v6, :cond_16a

    .line 116
    invoke-interface {v6}, Lcom/taobao/weex/adapter/IWXJsFileLoaderAdapter;->loadRaxApi()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/taobao/weex/bridge/WXBridgeManager;->mRaxApi:Ljava/lang/String;

    .line 119
    :cond_16a
    sget-object v6, Lcom/taobao/weex/bridge/WXBridgeManager;->mRaxApi:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_17f

    .line 120
    const-string/jumbo v6, "weex-rax-api.js"

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v11

    invoke-static {v6, v11}, Lcom/taobao/weex/utils/WXFileUtils;->loadAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/taobao/weex/bridge/WXBridgeManager;->mRaxApi:Ljava/lang/String;

    .line 123
    :cond_17f
    new-instance v11, Lcom/taobao/weex/bridge/WXJSObject;

    sget-object v6, Lcom/taobao/weex/bridge/WXBridgeManager;->mRaxApi:Ljava/lang/String;

    invoke-direct {v11, v4, v6}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    .line 132
    :goto_186
    invoke-virtual {v7}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v6

    sget-object v15, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER:Lcom/taobao/weex/common/WXRenderStrategy;

    if-ne v6, v15, :cond_19a

    .line 133
    new-instance v6, Lcom/taobao/weex/bridge/WXJSObject;

    const/16 v16, 0x3

    invoke-virtual {v15}, Lcom/taobao/weex/common/WXRenderStrategy;->getFlag()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v6, v4, v14}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    goto :goto_1c7

    :cond_19a
    const/16 v16, 0x3

    .line 134
    invoke-virtual {v7}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v6

    sget-object v14, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER_BINARY:Lcom/taobao/weex/common/WXRenderStrategy;

    if-ne v6, v14, :cond_1b4

    .line 135
    new-instance v6, Lcom/taobao/weex/bridge/WXJSObject;

    invoke-virtual {v14}, Lcom/taobao/weex/common/WXRenderStrategy;->getFlag()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v6, v4, v14}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    .line 137
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/weex/Script;->getBinary()[B

    move-result-object v14

    iput-object v14, v2, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    goto :goto_1c7

    .line 138
    :cond_1b4
    invoke-virtual {v7}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v6

    sget-object v14, Lcom/taobao/weex/common/WXRenderStrategy;->JSON_RENDER:Lcom/taobao/weex/common/WXRenderStrategy;

    if-ne v6, v14, :cond_1c6

    .line 139
    new-instance v6, Lcom/taobao/weex/bridge/WXJSObject;

    invoke-virtual {v14}, Lcom/taobao/weex/common/WXRenderStrategy;->getFlag()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v6, v4, v14}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    goto :goto_1c7

    :cond_1c6
    const/4 v6, 0x0

    :goto_1c7
    const/4 v14, 0x7

    .line 142
    new-array v14, v14, [Lcom/taobao/weex/bridge/WXJSObject;

    const/16 v17, 0x0

    aput-object v0, v14, v17

    const/4 v0, 0x1

    aput-object v2, v14, v0

    aput-object v10, v14, v4

    aput-object v12, v14, v16

    const/4 v0, 0x4

    aput-object v11, v14, v0

    const/4 v0, 0x5

    aput-object v6, v14, v0

    const/4 v0, 0x6

    aput-object v3, v14, v0

    .line 145
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/weex/Script;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/taobao/weex/WXSDKInstance;->setTemplate(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v7}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/taobao/weex/performance/WXInstanceApm;->onStage(Ljava/lang/String;)V

    .line 151
    sget-boolean v0, Lcom/taobao/weex/bridge/WXBridgeManager;->isSandBoxContext:Z
    :try_end_1ee
    .catchall {:try_start_122 .. :try_end_1ee} :catchall_2b8

    const-string v10, "Instance "

    if-nez v0, :cond_221

    .line 152
    :try_start_1f2
    invoke-virtual {v7}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v0

    const-string v2, "!isSandBoxContext,and excute"

    invoke-virtual {v0, v2}, Lcom/taobao/weex/performance/WXInstanceApm;->onStage(Ljava/lang/String;)V

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Did Not Render in SandBox Mode"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v7}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    const-string v4, "createInstance"

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v5, v14

    invoke-virtual/range {v1 .. v6}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)V

    goto/16 :goto_2b7

    :cond_221
    move-object v0, v14

    .line 157
    sget-object v1, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Vue:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    if-eq v5, v1, :cond_255

    if-eq v5, v13, :cond_255

    .line 158
    invoke-virtual {v7}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v1

    if-eq v1, v15, :cond_255

    .line 159
    invoke-virtual {v7}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v1

    sget-object v2, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER_BINARY:Lcom/taobao/weex/common/WXRenderStrategy;

    if-eq v1, v2, :cond_255

    .line 160
    invoke-virtual {v7}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v1

    sget-object v2, Lcom/taobao/weex/common/WXRenderStrategy;->JSON_RENDER:Lcom/taobao/weex/common/WXRenderStrategy;

    if-ne v1, v2, :cond_23f

    goto :goto_255

    .line 181
    :cond_23f
    invoke-virtual {v7}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    const-string v4, "createInstance"

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)V

    .line 182
    invoke-virtual {v7}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/taobao/weex/performance/WXInstanceApm;->onStage(Ljava/lang/String;)V

    goto :goto_2b7

    :cond_255
    :goto_255
    move-object v5, v0

    .line 183
    invoke-virtual {v7}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/taobao/weex/WXSDKInstance;->getUniPagePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "createInstanceContext"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeCreateInstanceContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)I

    move-result v0

    .line 184
    invoke-virtual {v7}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/taobao/weex/performance/WXInstanceApm;->onStage(Ljava/lang/String;)V

    if-nez v0, :cond_2b7

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/taobao/weex/WXSDKInstance;->getTemplateInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Render error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 188
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 189
    invoke-virtual {v1}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    invoke-virtual {v1}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-virtual {v7, v2, v0}, Lcom/taobao/weex/WXSDKInstance;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b7
    .catchall {:try_start_1f2 .. :try_end_2b7} :catchall_2b8

    :cond_2b7
    :goto_2b7
    return-void

    :catchall_2b8
    move-exception v0

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[WXBridgeManager] invokeCreateInstance "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v7}, Lcom/taobao/weex/WXSDKInstance;->getTemplateInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 215
    invoke-virtual {v1}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    invoke-virtual {v1}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-virtual {v7, v2, v1}, Lcom/taobao/weex/WXSDKInstance;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method private invokeDestroyInstance(Ljava/lang/String;)V
    .registers 10

    .line 1
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 4
    new-instance v0, Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    const/4 v1, 0x1

    .line 6
    new-array v6, v1, [Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v1, 0x0

    aput-object v0, v6, v1

    .line 7
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1d

    :cond_1c
    return-void

    .line 8
    :cond_1d
    :goto_1d
    const-string v5, "destroyInstance"
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_29

    const/4 v7, 0x1

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    :try_start_23
    invoke-virtual/range {v2 .. v7}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeDestoryInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    return-void

    :catchall_27
    move-exception v0

    goto :goto_2b

    :catchall_29
    move-exception v0

    move-object v3, p1

    .line 12
    :goto_2b
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "[WXBridgeManager] invokeDestroyInstance "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    const-string v1, "invokeDestroyInstance"

    const/4 v2, 0x0

    invoke-static {v3, v0, v1, p1, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 15
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method private invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)V
    .registers 11

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)V

    return-void
.end method

.method private invokeExecJSOnInstance(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    const-string v1, "execJSOnInstance >>>> instanceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_28

    :cond_26
    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/common/IWXBridge;->execJSOnInstance(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private invokeExecJSService(Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-nez v0, :cond_f

    .line 2
    const-string v0, "[WXBridgeManager] invoke execJSService: framework.js uninitialized."

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 6
    :cond_f
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1}, Lcom/taobao/weex/common/IWXBridge;->execJSService(Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    .line 8
    const-string v1, "[WXBridgeManager] invokeRegisterService:"

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "||"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "inputParams"

    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object p1, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_JSSERVICE_EXECUTE:Lcom/taobao/weex/common/WXErrorCode;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    invoke-virtual {p1}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 19
    const-string v0, "invokeExecJSService"

    invoke-static {v0, p1, v0, p2, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private invokeExecJSWithCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Lcom/taobao/weex/bridge/ResultCallback;Z)V
    .registers 13

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isOpenDebugLog()Z

    .line 10
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result p6

    if-nez p6, :cond_11

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result p6

    if-eqz p6, :cond_10

    goto :goto_11

    :cond_10
    return-void

    .line 11
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/taobao/weex/common/IWXBridge;->execJSWithCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Lcom/taobao/weex/bridge/ResultCallback;)V

    return-void
.end method

.method private invokeInitFramework(Landroid/os/Message;)V
    .registers 7

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_7

    .line 3
    check-cast p1, Ljava/lang/String;

    goto :goto_9

    .line 2
    :cond_7
    const-string p1, ""

    .line 6
    :goto_9
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->getAvailMemory(Landroid/content/Context;)J

    move-result-wide v0

    sget-wide v2, Lcom/taobao/weex/bridge/WXBridgeManager;->LOW_MEM_VALUE:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1a

    .line 7
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->initFramework(Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

.method private invokeRefreshInstance(Ljava/lang/String;Lcom/taobao/weex/common/WXRefreshData;)V
    .registers 8

    const-string v0, "refreshInstance >>>> instanceId:"

    const/4 v1, 0x0

    .line 1
    :try_start_3
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    .line 2
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v3

    if-nez v3, :cond_3d

    if-eqz v2, :cond_37

    .line 4
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 5
    invoke-virtual {p2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "invokeRefreshInstance FAILED for JSFrameworkInit FAILED, intance will invoke instance.onRenderError"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-virtual {v2, v0, p2}, Lcom/taobao/weex/WXSDKInstance;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_37
    const-string p2, "[WXBridgeManager] invokeRefreshInstance: framework.js uninitialized."

    .line 14
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    return-void

    .line 17
    :cond_3d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_69

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", data:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcom/taobao/weex/common/WXRefreshData;->data:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isDirty:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p2, Lcom/taobao/weex/common/WXRefreshData;->isDirty:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 23
    :cond_69
    iget-boolean v0, p2, Lcom/taobao/weex/common/WXRefreshData;->isDirty:Z

    if-eqz v0, :cond_6e

    return-void

    .line 26
    :cond_6e
    new-instance v0, Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v2, 0x2

    invoke-direct {v0, v2, p1}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    .line 28
    new-instance v3, Lcom/taobao/weex/bridge/WXJSObject;

    .line 29
    iget-object p2, p2, Lcom/taobao/weex/common/WXRefreshData;->data:Ljava/lang/String;

    if-nez p2, :cond_7d

    const-string/jumbo p2, "{}"

    :cond_7d
    const/4 v4, 0x3

    .line 30
    invoke-direct {v3, v4, p2}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    .line 31
    new-array p2, v2, [Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v2, 0x0

    aput-object v0, p2, v2

    const/4 v0, 0x1

    aput-object v3, p2, v0

    .line 32
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    const-string v2, "refreshInstance"

    invoke-interface {v0, p1, v1, v2, p2}, Lcom/taobao/weex/common/IWXBridge;->refreshInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)V
    :try_end_90
    .catchall {:try_start_3 .. :try_end_90} :catchall_91

    return-void

    :catchall_91
    move-exception p2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[WXBridgeManager] invokeRefreshInstance "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 35
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    const-string v2, "invokeRefreshInstance"

    invoke-static {p1, v0, v2, p2, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 38
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method private invokeRegisterComponents(Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "registerComponents"

    if-eq p1, p2, :cond_7f

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 5
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_1e
    if-nez p1, :cond_21

    goto :goto_7e

    .line 15
    :cond_21
    :try_start_21
    iget-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    instance-of v1, p2, Lcom/taobao/weex/bridge/WXBridge;

    if-eqz v1, :cond_37

    .line 16
    check-cast p2, Lcom/taobao/weex/bridge/WXBridge;

    invoke-static {p1}, Lcom/taobao/weex/utils/WXJsonUtils;->fromObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/taobao/weex/bridge/WXBridge;->registerComponentOnDataRenderNode(Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_21 .. :try_end_30} :catchall_31

    goto :goto_37

    :catchall_31
    move-exception p2

    .line 19
    const-string v1, "Weex [data_render register err]"

    invoke-static {v1, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    :cond_37
    :goto_37
    invoke-static {p1}, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->toWsonOrJsonWXJSObject(Ljava/lang/Object;)Lcom/taobao/weex/bridge/WXJSObject;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    const/4 p1, 0x0

    .line 25
    :try_start_42
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    const-string v2, ""

    invoke-interface {v1, v2, p1, v0, p2}, Lcom/taobao/weex/common/IWXBridge;->execJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)I

    move-result v1

    if-nez v1, :cond_4f

    .line 26
    const-string p2, "execJS error"
    :try_end_4e
    .catchall {:try_start_42 .. :try_end_4e} :catchall_51

    goto :goto_6e

    :cond_4f
    move-object p2, p1

    goto :goto_6e

    :catchall_51
    move-exception v1

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_REGISTER_COMPONENT:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 34
    :goto_6e
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7e

    .line 35
    const-string v1, "[WXBridgeManager] invokeRegisterComponents "

    invoke-static {v1, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_REGISTER_COMPONENT:Lcom/taobao/weex/common/WXErrorCode;

    invoke-static {p1, v1, v0, p2, p1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_7e
    :goto_7e
    return-void

    .line 37
    :cond_7f
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Fail receiver should not use source."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private invokeRegisterModules(Ljava/util/Map;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_99

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_99

    .line 9
    :cond_a
    invoke-static {p1}, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->toWsonOrJsonWXJSObject(Ljava/lang/Object;)Lcom/taobao/weex/bridge/WXJSObject;

    move-result-object p2

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 13
    :try_start_14
    iget-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    instance-of v2, p2, Lcom/taobao/weex/bridge/WXBridge;

    if-eqz v2, :cond_2a

    .line 14
    check-cast p2, Lcom/taobao/weex/bridge/WXBridge;

    invoke-static {p1}, Lcom/taobao/weex/utils/WXJsonUtils;->fromObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/taobao/weex/bridge/WXBridge;->registerModuleOnDataRenderNode(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_24

    goto :goto_2a

    :catchall_24
    move-exception p2

    .line 17
    const-string v2, "Weex [data_render register err]"

    invoke-static {v2, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2a
    :goto_2a
    const/4 p2, 0x0

    .line 20
    :try_start_2b
    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    const-string v3, ""

    const-string v4, "registerModules"

    invoke-interface {v2, v3, p2, v4, v1}, Lcom/taobao/weex/common/IWXBridge;->execJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)I

    move-result v1

    if-nez v1, :cond_3a

    .line 21
    const-string v1, "execJS error"
    :try_end_39
    .catchall {:try_start_2b .. :try_end_39} :catchall_5c

    goto :goto_3b

    :cond_3a
    move-object v1, p2

    .line 24
    :goto_3b
    :try_start_3b
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 25
    :cond_43
    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_86

    .line 26
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_43

    .line 28
    invoke-static {v3, v0}, Lcom/taobao/weex/bridge/WXModuleManager;->resetModuleState(Ljava/lang/String;Z)V
    :try_end_54
    .catchall {:try_start_3b .. :try_end_54} :catchall_55

    goto :goto_43

    :catchall_55
    move-exception v0

    .line 33
    :try_start_56
    const-string v2, "Weex [invokeRegisterModules]"

    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5b
    .catchall {:try_start_56 .. :try_end_5b} :catchall_5c

    goto :goto_86

    :catchall_5c
    move-exception v0

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_REGISTER_MODULES:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \n "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    :cond_86
    :goto_86
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_98

    .line 41
    const-string p1, "[WXBridgeManager] invokeRegisterModules:"

    invoke-static {p1, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    sget-object p1, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_REGISTER_MODULES:Lcom/taobao/weex/common/WXErrorCode;

    const-string v0, "invokeRegisterModules"

    invoke-static {p2, p1, v0, v1, p2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_98
    return-void

    .line 43
    :cond_99
    :goto_99
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-nez v0, :cond_a4

    .line 44
    const-string v0, "[WXinvokeRegisterModulesBridgeManager] invokeRegisterModules: framework.js uninitialized."

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 46
    :cond_a4
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private isSkipFrameworkInit(Lcom/taobao/weex/WXSDKInstance;)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_4
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->skipFrameworkInit()Z

    move-result p1

    return p1
.end method

.method private isSkipFrameworkInit(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Lcom/taobao/weex/WXSDKInstance;)Z

    move-result p1

    return p1
.end method

.method private mock(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method private onJsFrameWorkInitSuccees()V
    .registers 5

    .line 1
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWeexCoreEnvOptions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/taobao/weex/common/IWXBridge;->registerCoreEnv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 4
    :cond_28
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWeexCoreEnvOptions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private registerDomModule()V
    .registers 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v1, Lcom/taobao/weex/ui/module/WXDomModule;->METHODS:[Ljava/lang/String;

    const-string v2, "dom"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->registerModules(Ljava/util/Map;)V

    return-void
.end method

.method private removeTaskByInstance(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mNextTickTasks:Lcom/taobao/weex/bridge/WXHashMap;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/bridge/WXHashMap;->removeFromMapAndStack(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private sendMessage(Ljava/lang/String;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 2
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3
    iput p2, v0, Landroid/os/Message;->what:I

    .line 4
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private setExceedGPULimitComponentsInfo(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/ui/action/GraphicSize;)V
    .registers 7

    .line 1
    invoke-static {}, Lcom/taobao/weex/ui/WXRenderManager;->getOpenGLRenderLimitValue()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_102

    .line 2
    invoke-virtual {p3}, Lcom/taobao/weex/ui/action/GraphicSize;->getHeight()F

    move-result v1

    cmpl-float v1, v1, v0

    if-gtz v1, :cond_1a

    invoke-virtual {p3}, Lcom/taobao/weex/ui/action/GraphicSize;->getWidth()F

    move-result v1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_102

    .line 3
    :cond_1a
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 4
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p2

    .line 5
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v2, "GPU limit"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p3}, Lcom/taobao/weex/ui/action/GraphicSize;->getWidth()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v2, "component.width"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p3}, Lcom/taobao/weex/ui/action/GraphicSize;->getHeight()F

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p3

    const-string v0, "component.height"

    invoke-virtual {v1, v0, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p2}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getComponentType()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_67

    invoke-virtual {p2}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getComponentType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_67

    .line 9
    invoke-virtual {p2}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getComponentType()Ljava/lang/String;

    move-result-object p3

    const-string v0, "component.type"

    invoke-virtual {v1, v0, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_67
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p3

    if-eqz p3, :cond_84

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p3

    invoke-virtual {p3}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_84

    .line 12
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p3

    invoke-virtual {p3}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "component.style"

    invoke-virtual {v1, v0, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_84
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p3

    if-eqz p3, :cond_a1

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p3

    invoke-virtual {p3}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_a1

    .line 15
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p3

    invoke-virtual {p3}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "component.attr"

    invoke-virtual {v1, v0, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_a1
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object p3

    if-eqz p3, :cond_be

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_be

    .line 18
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "component.event"

    invoke-virtual {v1, v0, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_be
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object p3

    if-eqz p3, :cond_d1

    .line 21
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object p3

    invoke-virtual {p3}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "component.margin"

    invoke-virtual {v1, v0, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_d1
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object p3

    if-eqz p3, :cond_e4

    .line 24
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object p3

    invoke-virtual {p3}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "component.padding"

    invoke-virtual {v1, v0, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_e4
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object p3

    if-eqz p3, :cond_f7

    .line 27
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object p2

    invoke-virtual {p2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "component.border"

    invoke-virtual {v1, p3, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_f7
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/taobao/weex/WXSDKInstance;->setComponentsInfoExceedGPULimit(Lcom/alibaba/fastjson/JSONObject;)V

    :cond_102
    return-void
.end method

.method private setJSFrameworkInit(Z)V
    .registers 3

    .line 1
    sput-boolean p1, Lcom/taobao/weex/bridge/WXBridgeManager;->mInit:Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 3
    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->onJsFrameWorkInitSuccees()V

    :cond_8
    return-void
.end method

.method private trackComponentAndModulesTime()V
    .registers 2

    .line 1
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$22;

    invoke-direct {v0, p0}, Lcom/taobao/weex/bridge/WXBridgeManager$22;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static updateGlobalConfig(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2
    const-string p0, "none"

    .line 4
    :cond_8
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->globalConfig:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 5
    sput-object p0, Lcom/taobao/weex/bridge/WXBridgeManager;->globalConfig:Ljava/lang/String;

    .line 6
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->GLOBAL_CONFIG_KEY:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/taobao/weex/WXEnvironment;->addCustomOptions(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance p0, Lcom/taobao/weex/bridge/WXBridgeManager$26;

    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager$26;-><init>()V

    .line 25
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-virtual {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 26
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-virtual {v0, p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void

    .line 28
    :cond_2e
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_31
    return-void
.end method


# virtual methods
.method public varargs asyncCallJSEventVoidResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$11;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v3, p3

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXBridgeManager$11;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;[Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bindMeasurementToRenderObject(J)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2}, Lcom/taobao/weex/common/IWXBridge;->bindMeasurementToRenderObject(J)V

    :cond_b
    return-void
.end method

.method public callAddChildToRichtext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)I
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callAddChildToRichtext"

    if-nez v0, :cond_5d

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_5d

    .line 12
    :cond_10
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 21
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_1f

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 p1, -0x1

    return p1

    .line 25
    :cond_1f
    :try_start_1f
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v4

    if-eqz v4, :cond_5b

    .line 27
    new-instance v3, Lcom/taobao/weex/ui/action/GraphicActionAddChildToRichtext;

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v3 .. v10}, Lcom/taobao/weex/ui/action/GraphicActionAddChildToRichtext;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 29
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p2

    invoke-virtual {v3}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->getPageId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, v3}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_46} :catch_47

    goto :goto_5b

    :catch_47
    move-exception v0

    move-object p2, v0

    .line 32
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "[WXBridgeManager] callAddChildToRichtext exception: "

    invoke-static {p4, p3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    sget-object p3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 35
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 36
    invoke-static {p1, p3, v2, p2, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_5b
    :goto_5b
    const/4 p1, 0x1

    return p1

    .line 37
    :cond_5d
    :goto_5d
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p2

    if-eqz p2, :cond_68

    .line 38
    const-string p2, "[WXBridgeManager] call callAddChildToRichtext arguments is null"

    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 41
    :cond_68
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string p3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v2, p3, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    return p1
.end method

.method public callAddElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashSet;[F[F[FZ)I
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;[F[F[FZ)I"
        }
    .end annotation

    move-object/from16 v1, p1

    .line 1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "callAddElement"

    if-nez v0, :cond_71

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_71

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_71

    .line 11
    :cond_18
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-object/from16 v4, p0

    .line 22
    iget-object v0, v4, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_29

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, -0x1

    return v0

    .line 27
    :cond_29
    :try_start_29
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v6

    if-eqz v6, :cond_6f

    .line 29
    new-instance v5, Lcom/taobao/weex/ui/action/GraphicActionAddElement;

    move-object/from16 v8, p2

    move-object/from16 v7, p3

    move/from16 v10, p4

    move-object/from16 v9, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    move-object/from16 v16, p11

    invoke-direct/range {v5 .. v16}, Lcom/taobao/weex/ui/action/GraphicActionAddElement;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/util/Map;Ljava/util/Set;[F[F[F)V

    if-eqz p12, :cond_54

    move-object/from16 v7, p3

    .line 32
    invoke-virtual {v6, v7, v5}, Lcom/taobao/weex/WXSDKInstance;->addInActiveAddElementAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/GraphicActionAddElement;)V

    goto :goto_6f

    .line 34
    :cond_54
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    invoke-virtual {v0, v1, v5}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_5f} :catch_60

    goto :goto_6f

    :catch_60
    move-exception v0

    .line 38
    const-string v5, "[WXBridgeManager] callAddElement exception: "

    invoke-static {v5, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    sget-object v5, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 41
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {v1, v5, v3, v0, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_6f
    :goto_6f
    const/4 v0, 0x1

    return v0

    :cond_71
    :goto_71
    move-object/from16 v4, p0

    .line 43
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 44
    const-string v0, "[WXBridgeManager] call callAddElement arguments is null"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 46
    :cond_7e
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string v5, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {v1, v0, v3, v5, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x0

    return v0
.end method

.method public callAddEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 8

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callAddEvent"

    if-nez v0, :cond_4c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_4c

    .line 11
    :cond_16
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 19
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_25

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 p1, -0x1

    return p1

    .line 24
    :cond_25
    :try_start_25
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 26
    new-instance v3, Lcom/taobao/weex/ui/action/GraphicActionAddEvent;

    invoke-direct {v3, v0, p2, p3}, Lcom/taobao/weex/ui/action/GraphicActionAddEvent;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->executeActionOnRender()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_37} :catch_38

    goto :goto_47

    :catch_38
    move-exception p2

    .line 29
    const-string p3, "[WXBridgeManager] callAddEvent exception: "

    invoke-static {p3, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    sget-object p3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 32
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 33
    invoke-static {p1, p3, v2, p2, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 39
    :cond_47
    :goto_47
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->getNextTick(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 40
    :cond_4c
    :goto_4c
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p2

    if-eqz p2, :cond_57

    .line 41
    const-string p2, "[WXBridgeManager] call callAddEvent arguments is null"

    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 43
    :cond_57
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string p3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v2, p3, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    return p1
.end method

.method public callAppendTreeCreateFinish(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callAppendTreeCreateFinish"

    if-nez v0, :cond_49

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_49

    .line 9
    :cond_10
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 16
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_1f

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 p1, -0x1

    return p1

    .line 21
    :cond_1f
    :try_start_1f
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    .line 22
    new-instance v3, Lcom/taobao/weex/ui/action/GraphicActionAppendTreeCreateFinish;

    invoke-direct {v3, v0, p2}, Lcom/taobao/weex/ui/action/GraphicActionAppendTreeCreateFinish;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p2

    invoke-virtual {p2, p1, v3}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_37} :catch_38

    goto :goto_47

    :catch_38
    move-exception p2

    .line 25
    const-string v0, "[WXBridgeManager] callAppendTreeCreateFinish exception: "

    invoke-static {v0, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 28
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 29
    invoke-static {p1, v0, v2, p2, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_47
    const/4 p1, 0x1

    return p1

    .line 30
    :cond_49
    :goto_49
    const-string p2, "[WXBridgeManager] call callAppendTreeCreateFinish arguments is null"

    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 31
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string v0, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v2, v0, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    return p1
.end method

.method public callBacthEnd(Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callRemoveChildFromRichtext"

    if-eqz v0, :cond_1c

    .line 2
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3
    const-string v0, "[WXBridgeManager] call callRemoveChildFromRichtext arguments is null"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 6
    :cond_14
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string v3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, v0, v2, v3, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 12
    :cond_1c
    :try_start_1c
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 14
    new-instance v3, Lcom/taobao/weex/ui/action/GraphicActionBatchEnd;

    const-string v4, ""

    invoke-direct {v3, v0, v4}, Lcom/taobao/weex/ui/action/GraphicActionBatchEnd;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    invoke-virtual {v3}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->getPageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_3c} :catch_3d

    :cond_3c
    return-void

    :catch_3d
    move-exception v0

    .line 18
    const-string v3, "[WXBridgeManager] callRemoveChildFromRichtext exception: "

    invoke-static {v3, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 21
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {p1, v3, v2, v0, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public callBacthStart(Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callRemoveChildFromRichtext"

    if-eqz v0, :cond_1c

    .line 2
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3
    const-string v0, "[WXBridgeManager] call callRemoveChildFromRichtext arguments is null"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 6
    :cond_14
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string v3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, v0, v2, v3, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 12
    :cond_1c
    :try_start_1c
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 14
    new-instance v3, Lcom/taobao/weex/ui/action/GraphicActionBatchBegin;

    const-string v4, ""

    invoke-direct {v3, v0, v4}, Lcom/taobao/weex/ui/action/GraphicActionBatchBegin;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    invoke-virtual {v3}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->getPageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_3c} :catch_3d

    :cond_3c
    return-void

    :catch_3d
    move-exception v0

    .line 18
    const-string v3, "[WXBridgeManager] callRemoveChildFromRichtext exception: "

    invoke-static {v3, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 21
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {p1, v3, v2, v0, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public callCreateBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashSet;[F[F[F)I
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;[F[F[F)I"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callCreateBody"

    if-nez v0, :cond_64

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_64

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_64

    .line 9
    :cond_16
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 19
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_25

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 p1, -0x1

    return p1

    .line 24
    :cond_25
    :try_start_25
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v4

    if-eqz v4, :cond_62

    .line 26
    new-instance v3, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;

    move-object v6, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-direct/range {v3 .. v12}, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;[F[F[F)V

    .line 28
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    invoke-virtual {v3}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->getPageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_52} :catch_53

    goto :goto_62

    :catch_53
    move-exception v0

    .line 31
    const-string v3, "[WXBridgeManager] callCreateBody exception: "

    invoke-static {v3, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 34
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {p1, v3, v2, v0, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_62
    :goto_62
    const/4 p1, 0x1

    return p1

    .line 36
    :cond_64
    :goto_64
    const-string v0, "[WXBridgeManager] call callCreateBody arguments is null"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string v3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, v0, v2, v3, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    return p1
.end method

.method public callCreateFinish(Ljava/lang/String;)I
    .registers 7

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callCreateFinish"

    if-eqz v0, :cond_17

    .line 2
    const-string v0, "[WXBridgeManager] call callCreateFinish arguments is null"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string v3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, v0, v2, v3, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    return p1

    .line 9
    :cond_17
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 15
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_26

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 p1, -0x1

    return p1

    .line 20
    :cond_26
    :try_start_26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 21
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 23
    invoke-virtual {v0, v3, v4}, Lcom/taobao/weex/WXSDKInstance;->firstScreenCreateInstanceTime(J)V

    .line 24
    new-instance v3, Lcom/taobao/weex/ui/action/GraphicActionCreateFinish;

    invoke-direct {v3, v0}, Lcom/taobao/weex/ui/action/GraphicActionCreateFinish;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    .line 25
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_47} :catch_48

    goto :goto_57

    :catch_48
    move-exception v0

    .line 28
    const-string v3, "[WXBridgeManager] callCreateFinish exception: "

    invoke-static {v3, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 31
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {p1, v3, v2, v0, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_57
    :goto_57
    const/4 p1, 0x1

    return p1
.end method

.method public callHasTransitionPros(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    if-eqz p1, :cond_41

    .line 2
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getTransition()Lcom/taobao/weex/dom/transition/WXTransition;

    move-result-object p2

    if-eqz p2, :cond_41

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getTransition()Lcom/taobao/weex/dom/transition/WXTransition;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/dom/transition/WXTransition;->getProperties()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_1f

    goto :goto_41

    .line 6
    :cond_1f
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getTransition()Lcom/taobao/weex/dom/transition/WXTransition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/dom/transition/WXTransition;->getProperties()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 7
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2b

    const/4 p1, 0x1

    return p1

    :cond_3f
    const/4 p1, 0x0

    return p1

    :cond_41
    :goto_41
    const/4 p1, -0x1

    return p1
.end method

.method public callLayout(Ljava/lang/String;Ljava/lang/String;IIIIIIZI)I
    .registers 15

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callLayout"

    if-nez v0, :cond_92

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_92

    .line 12
    :cond_11
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 23
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_20

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 p1, -0x1

    return p1

    .line 28
    :cond_20
    :try_start_20
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_90

    move v3, p6

    .line 30
    new-instance p6, Lcom/taobao/weex/ui/action/GraphicSize;

    int-to-float p8, p8

    int-to-float p7, p7

    invoke-direct {p6, p8, p7}, Lcom/taobao/weex/ui/action/GraphicSize;-><init>(FF)V

    move p7, p5

    .line 31
    new-instance p5, Lcom/taobao/weex/ui/action/GraphicPosition;

    int-to-float p7, p7

    int-to-float p3, p3

    int-to-float p8, v3

    int-to-float p4, p4

    invoke-direct {p5, p7, p3, p8, p4}, Lcom/taobao/weex/ui/action/GraphicPosition;-><init>(FFFF)V

    .line 32
    invoke-direct {p0, p1, p2, p6}, Lcom/taobao/weex/bridge/WXBridgeManager;->setExceedGPULimitComponentsInfo(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/ui/action/GraphicSize;)V

    .line 33
    invoke-virtual {v0, p2}, Lcom/taobao/weex/WXSDKInstance;->getInActiveAddElementAction(Ljava/lang/String;)Lcom/taobao/weex/ui/action/GraphicActionAddElement;

    move-result-object p3

    if-eqz p3, :cond_68

    .line 35
    invoke-virtual {p3, p9}, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->setRTL(Z)V

    .line 36
    invoke-virtual {p3, p6}, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->setSize(Lcom/taobao/weex/ui/action/GraphicSize;)V

    .line 37
    invoke-virtual {p3, p5}, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->setPosition(Lcom/taobao/weex/ui/action/GraphicPosition;)V

    .line 38
    const-string p4, "_root"

    invoke-static {p2, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_59

    .line 39
    invoke-virtual {p3, p10}, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->setIndex(I)V

    .line 41
    :cond_59
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p4

    invoke-virtual {p4, p1, p3}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V

    .line 42
    invoke-virtual {v0, p2}, Lcom/taobao/weex/WXSDKInstance;->removeInActiveAddElmentAction(Ljava/lang/String;)V

    goto :goto_90

    :cond_68
    move-object p4, p2

    .line 45
    new-instance p2, Lcom/taobao/weex/ui/action/GraphicActionLayout;

    move p7, p9

    move-object p3, v0

    invoke-direct/range {p2 .. p7}, Lcom/taobao/weex/ui/action/GraphicActionLayout;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Lcom/taobao/weex/ui/action/GraphicPosition;Lcom/taobao/weex/ui/action/GraphicSize;Z)V

    .line 46
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p3

    invoke-virtual {p2}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->getPageId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4, p2}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_7f} :catch_80

    goto :goto_90

    :catch_80
    move-exception v0

    move-object p2, v0

    .line 50
    const-string p3, "[WXBridgeManager] callLayout exception: "

    invoke-static {p3, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    sget-object p3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 53
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 54
    invoke-static {p1, p3, v2, p2, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_90
    :goto_90
    const/4 p1, 0x1

    return p1

    .line 55
    :cond_92
    :goto_92
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p2

    if-eqz p2, :cond_9d

    .line 56
    const-string p2, "[WXBridgeManager] call callLayout arguments is null"

    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 59
    :cond_9d
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string p3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v2, p3, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    return p1
.end method

.method public callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXBridgeManager;->callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/Object;
    .registers 13

    .line 2
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    const/4 v0, 0x0

    if-nez v2, :cond_c

    return-object v0

    .line 7
    :cond_c
    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->isNeedValidate()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 8
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getValidateProcessor()Lcom/taobao/weex/bridge/WXValidateProcessor;

    move-result-object v1

    if-eqz v1, :cond_52

    .line 10
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getValidateProcessor()Lcom/taobao/weex/bridge/WXValidateProcessor;

    move-result-object v1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 11
    invoke-interface/range {v1 .. v6}, Lcom/taobao/weex/bridge/WXValidateProcessor;->onModuleValidate(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;)Lcom/taobao/weex/bridge/WXValidateProcessor$WXModuleValidateResult;

    move-result-object p2

    if-nez p2, :cond_2f

    return-object v0

    .line 15
    :cond_2f
    iget-boolean p3, p2, Lcom/taobao/weex/bridge/WXValidateProcessor$WXModuleValidateResult;->isSuccess:Z

    if-eqz p3, :cond_38

    .line 16
    invoke-static {p1, v3, v4, v5}, Lcom/taobao/weex/bridge/WXModuleManager;->callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 19
    :cond_38
    iget-object p1, p2, Lcom/taobao/weex/bridge/WXValidateProcessor$WXModuleValidateResult;->validateInfo:Lcom/alibaba/fastjson/JSONObject;

    if-eqz p1, :cond_51

    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "[WXBridgeManager] module validate fail. >>> "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :cond_51
    return-object p1

    :cond_52
    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 27
    :try_start_55
    invoke-static {p1, v3, v4, v5}, Lcom/taobao/weex/bridge/WXModuleManager;->callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;

    move-result-object p1
    :try_end_59
    .catch Ljava/lang/NumberFormatException; {:try_start_55 .. :try_end_59} :catch_5a

    return-object p1

    .line 29
    :catch_5a
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 30
    const-string p2, "moduleName"

    invoke-virtual {p1, p2, v3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string p2, "methodName"

    invoke-virtual {p1, p2, v4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "args"

    invoke-virtual {p1, p3, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "[WXBridgeManager] callNative : numberFormatException when parsing string to numbers in args"

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public callMoveElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 9

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callMoveElement"

    if-nez v0, :cond_55

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_55

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_55

    .line 11
    :cond_16
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 20
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_25

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 p1, -0x1

    return p1

    .line 25
    :cond_25
    :try_start_25
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 27
    new-instance v3, Lcom/taobao/weex/ui/action/GraphicActionMoveElement;

    invoke-direct {v3, v0, p2, p3, p4}, Lcom/taobao/weex/ui/action/GraphicActionMoveElement;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;I)V

    .line 28
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p2

    invoke-virtual {v3}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->getPageId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, v3}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_43} :catch_44

    goto :goto_53

    :catch_44
    move-exception p2

    .line 31
    const-string p3, "[WXBridgeManager] callMoveElement exception: "

    invoke-static {p3, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    sget-object p3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 34
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 35
    invoke-static {p1, p3, v2, p2, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_53
    :goto_53
    const/4 p1, 0x1

    return p1

    .line 36
    :cond_55
    :goto_55
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p2

    if-eqz p2, :cond_60

    .line 37
    const-string p2, "[WXBridgeManager] call callMoveElement arguments is null"

    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 39
    :cond_60
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string p3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v2, p3, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    return p1
.end method

.method public callNative(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Ljava/lang/String;)I
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move-object/from16 v7, p3

    .line 1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v8, 0x0

    const-string v9, "callNative"

    if-nez v3, :cond_ee

    if-nez v0, :cond_15

    goto/16 :goto_ee

    .line 9
    :cond_15
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 16
    iget-object v3, v1, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v3, :cond_24

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    const/4 v0, -0x1

    return v0

    .line 21
    :cond_24
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 23
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long v11, v5, v3

    .line 25
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    const/4 v13, 0x1

    if-lez v3, :cond_d5

    .line 26
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_3a
    if-ge v15, v14, :cond_d5

    .line 30
    :try_start_3c
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v3, :cond_bd

    .line 31
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v4

    if-eqz v4, :cond_bd

    .line 32
    const-string v4, "module"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_54} :catch_c3

    const-string v5, "args"

    const-string v6, "method"

    if-eqz v4, :cond_8c

    const/16 v16, 0x0

    .line 34
    :try_start_5c
    const-string v10, "dom"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_70

    .line 35
    invoke-static {v2}, Lcom/taobao/weex/bridge/WXModuleManager;->getDomModule(Ljava/lang/String;)Lcom/taobao/weex/ui/module/WXDomModule;

    move-result-object v4

    .line 36
    new-array v5, v13, [J

    aput-wide v11, v5, v16

    invoke-virtual {v4, v3, v5}, Lcom/taobao/weex/ui/module/WXDomModule;->callDomMethod(Lcom/alibaba/fastjson/JSONObject;[J)V

    goto :goto_bf

    .line 38
    :cond_70
    const-string v10, "options"

    invoke-virtual {v3, v10}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    .line 39
    check-cast v4, Ljava/lang/String;

    .line 40
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/alibaba/fastjson/JSONArray;

    move-object v3, v4

    move-object v4, v6

    move-object v6, v10

    .line 41
    invoke-virtual/range {v1 .. v6}, Lcom/taobao/weex/bridge/WXBridgeManager;->callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/Object;

    goto :goto_bf

    :cond_8c
    const/16 v16, 0x0

    .line 44
    const-string v4, "component"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_b2

    .line 45
    invoke-static {v2}, Lcom/taobao/weex/bridge/WXModuleManager;->getDomModule(Ljava/lang/String;)Lcom/taobao/weex/ui/module/WXDomModule;

    move-result-object v4

    .line 46
    const-string v10, "ref"

    invoke-virtual {v3, v10}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v4, v10, v6, v3}, Lcom/taobao/weex/ui/module/WXDomModule;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V

    goto :goto_bf

    .line 48
    :cond_b2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "unknown callNative"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_bb} :catch_bb

    :catch_bb
    move-exception v0

    goto :goto_c6

    :cond_bd
    const/16 v16, 0x0

    :goto_bf
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3a

    :catch_c3
    move-exception v0

    const/16 v16, 0x0

    .line 53
    :goto_c6
    const-string v3, "[WXBridgeManager] callNative exception: "

    invoke-static {v3, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 56
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v2, v3, v9, v0, v8}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_d7

    :cond_d5
    const/16 v16, 0x0

    .line 63
    :goto_d7
    const-string/jumbo v0, "undefined"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ed

    const-string v0, "-1"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    goto :goto_ed

    .line 67
    :cond_e9
    invoke-direct {v1, v2, v7}, Lcom/taobao/weex/bridge/WXBridgeManager;->getNextTick(Ljava/lang/String;Ljava/lang/String;)V

    return v13

    :cond_ed
    :goto_ed
    return v16

    :cond_ee
    :goto_ee
    const/16 v16, 0x0

    .line 68
    const-string v0, "[WXBridgeManager] call callNative arguments is null"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 69
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string v3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {v2, v0, v9, v3, v8}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return v16
.end method

.method public callNativeComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    const-string p5, "callNativeComponent exception :null == dom ,method:"

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "callNativeComponent"

    const/4 v2, 0x0

    if-nez v0, :cond_57

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_57

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_57

    .line 9
    :cond_18
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 17
    :try_start_1b
    invoke-static {p1}, Lcom/taobao/weex/bridge/WXModuleManager;->getDomModule(Ljava/lang/String;)Lcom/taobao/weex/ui/module/WXDomModule;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 19
    invoke-virtual {v0, p2, p3, p4}, Lcom/taobao/weex/ui/module/WXDomModule;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V

    goto :goto_56

    .line 21
    :cond_25
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object p2

    if-eqz p2, :cond_35

    .line 22
    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result p2

    if-nez p2, :cond_56

    .line 23
    :cond_35
    const-string p2, "WXBridgeManager"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_46} :catch_47

    goto :goto_56

    :catch_47
    move-exception p2

    .line 28
    const-string p3, "[WXBridgeManager] callNativeComponent exception: "

    invoke-static {p3, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    sget-object p3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 31
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 32
    invoke-static {p1, p3, v1, p2, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_56
    :goto_56
    return-object v2

    .line 33
    :cond_57
    :goto_57
    const-string p2, "[WXBridgeManager] call callNativeComponent arguments is null"

    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 34
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string p3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v1, p3, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public callNativeModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/Object;
    .registers 15

    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_79

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_79

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_79

    .line 41
    :cond_15
    invoke-static {}, Lcom/taobao/weex/performance/WXStateRecord;->getInstance()Lcom/taobao/weex/performance/WXStateRecord;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "callNativeModule:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lcom/taobao/weex/performance/WXStateRecord;->recordAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 51
    :try_start_35
    const-string v0, "dom"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 52
    invoke-static {p1}, Lcom/taobao/weex/bridge/WXModuleManager;->getDomModule(Ljava/lang/String;)Lcom/taobao/weex/ui/module/WXDomModule;

    move-result-object p2

    if-eqz p2, :cond_4a

    .line 54
    new-array p1, v1, [J

    invoke-virtual {p2, p3, p4, p1}, Lcom/taobao/weex/ui/module/WXDomModule;->callDomMethod(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;[J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 56
    :cond_4a
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/bridge/WXModuleManager;->createDomModule(Lcom/taobao/weex/WXSDKInstance;)V

    goto :goto_78

    :cond_56
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    .line 59
    invoke-virtual/range {v3 .. v8}, Lcom/taobao/weex/bridge/WXBridgeManager;->callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/Object;

    move-result-object p1
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_60} :catch_61

    return-object p1

    :catch_61
    move-exception v0

    move-object p1, v0

    .line 63
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "[WXBridgeManager] callNativeModule exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :goto_78
    return-object v2

    :cond_79
    :goto_79
    move-object v4, p1

    .line 65
    const-string p1, "[WXBridgeManager] call callNativeModule arguments is null"

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 66
    sget-object p1, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string p2, "callNativeModule"

    const-string p3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {v4, p1, p2, p3, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public callNativeModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    const/4 v0, 0x0

    const-string v1, "callNativeModule"

    const/4 v2, 0x0

    if-nez p5, :cond_4e

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_4e

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_17

    goto :goto_4e

    .line 9
    :cond_17
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 17
    :try_start_1a
    const-string p5, "dom"

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_2d

    .line 18
    invoke-static {p1}, Lcom/taobao/weex/bridge/WXModuleManager;->getDomModule(Ljava/lang/String;)Lcom/taobao/weex/ui/module/WXDomModule;

    move-result-object p2

    .line 19
    new-array p5, v0, [J

    invoke-virtual {p2, p3, p4, p5}, Lcom/taobao/weex/ui/module/WXDomModule;->callDomMethod(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;[J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 21
    :cond_2d
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/taobao/weex/bridge/WXBridgeManager;->callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;

    move-result-object p1
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_31} :catch_32

    return-object p1

    :catch_32
    move-exception p2

    .line 25
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "[WXBridgeManager] callNative exception: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 26
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 27
    sget-object p3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    invoke-static {p1, p3, v1, p2, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v2

    .line 28
    :cond_4e
    :goto_4e
    const-string p2, "[WXBridgeManager] call callNativeModule arguments is null"

    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 29
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string p3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v1, p3, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public callRefreshFinish(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "callRefreshFinish"

    if-eqz v0, :cond_17

    .line 2
    const-string p2, "[WXBridgeManager] call callRefreshFinish arguments is null"

    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 3
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string v0, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v3, v0, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return v1

    .line 9
    :cond_17
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 16
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_26

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 p1, -0x1

    return p1

    .line 21
    :cond_26
    :try_start_26
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 23
    new-instance v4, Lcom/taobao/weex/ui/action/GraphicActionRefreshFinish;

    invoke-direct {v4, v0}, Lcom/taobao/weex/ui/action/GraphicActionRefreshFinish;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    .line 24
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    invoke-virtual {v0, p1, v4}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_40} :catch_41

    goto :goto_50

    :catch_41
    move-exception v0

    .line 27
    const-string v4, "[WXBridgeManager] callRefreshFinish exception: "

    invoke-static {v4, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    sget-object v4, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 30
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {p1, v4, v3, v0, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 36
    :cond_50
    :goto_50
    const-string/jumbo v0, "undefined"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    const-string v0, "-1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    goto :goto_67

    .line 40
    :cond_62
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->getNextTick(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_67
    :goto_67
    return v1
.end method

.method public callRemoveChildFromRichtext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callRemoveChildFromRichtext"

    if-nez v0, :cond_4f

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_4f

    .line 12
    :cond_10
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 19
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_1f

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 p1, -0x1

    return p1

    .line 23
    :cond_1f
    :try_start_1f
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 25
    new-instance v3, Lcom/taobao/weex/ui/action/GraphicActionRemoveChildFromRichtext;

    invoke-direct {v3, v0, p2, p3, p4}, Lcom/taobao/weex/ui/action/GraphicActionRemoveChildFromRichtext;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p2

    invoke-virtual {v3}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->getPageId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, v3}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_3d} :catch_3e

    goto :goto_4d

    :catch_3e
    move-exception p2

    .line 29
    const-string p3, "[WXBridgeManager] callRemoveChildFromRichtext exception: "

    invoke-static {p3, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    sget-object p3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 32
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 33
    invoke-static {p1, p3, v2, p2, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_4d
    :goto_4d
    const/4 p1, 0x1

    return p1

    .line 34
    :cond_4f
    :goto_4f
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p2

    if-eqz p2, :cond_5a

    .line 35
    const-string p2, "[WXBridgeManager] call callRemoveChildFromRichtext arguments is null"

    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 38
    :cond_5a
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string p3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v2, p3, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    return p1
.end method

.method public callRemoveElement(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callRemoveElement"

    if-nez v0, :cond_59

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_59

    .line 11
    :cond_10
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 18
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_1f

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 p1, -0x1

    return p1

    .line 23
    :cond_1f
    :try_start_1f
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 25
    new-instance v3, Lcom/taobao/weex/ui/action/GraphicActionRemoveElement;

    invoke-direct {v3, v0, p2}, Lcom/taobao/weex/ui/action/GraphicActionRemoveElement;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0, p2}, Lcom/taobao/weex/WXSDKInstance;->getInActiveAddElementAction(Ljava/lang/String;)Lcom/taobao/weex/ui/action/GraphicActionAddElement;

    move-result-object v4

    if-eqz v4, :cond_38

    .line 27
    invoke-virtual {v0, p2}, Lcom/taobao/weex/WXSDKInstance;->removeInActiveAddElmentAction(Ljava/lang/String;)V

    goto :goto_57

    .line 30
    :cond_38
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p2

    .line 31
    invoke-virtual {v3}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->getPageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v3}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_47} :catch_48

    goto :goto_57

    :catch_48
    move-exception p2

    .line 35
    const-string v0, "[WXBridgeManager] callRemoveElement exception: "

    invoke-static {v0, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 38
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 39
    invoke-static {p1, v0, v2, p2, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_57
    :goto_57
    const/4 p1, 0x1

    return p1

    .line 40
    :cond_59
    :goto_59
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p2

    if-eqz p2, :cond_64

    .line 41
    const-string p2, "[WXBridgeManager] call callRemoveElement arguments is null"

    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 43
    :cond_64
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string v0, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v2, v0, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    return p1
.end method

.method public callRemoveEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 8

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callRemoveEvent"

    if-nez v0, :cond_4c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_4c

    .line 11
    :cond_16
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 19
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_25

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 p1, -0x1

    return p1

    .line 24
    :cond_25
    :try_start_25
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 26
    new-instance v3, Lcom/taobao/weex/ui/action/GraphicActionRemoveEvent;

    invoke-direct {v3, v0, p2, p3}, Lcom/taobao/weex/ui/action/GraphicActionRemoveEvent;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->executeActionOnRender()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_37} :catch_38

    goto :goto_47

    :catch_38
    move-exception p2

    .line 29
    const-string p3, "[WXBridgeManager] callRemoveEvent exception: "

    invoke-static {p3, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    sget-object p3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 32
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 33
    invoke-static {p1, p3, v2, p2, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 39
    :cond_47
    :goto_47
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->getNextTick(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 40
    :cond_4c
    :goto_4c
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p2

    if-eqz p2, :cond_57

    .line 41
    const-string p2, "[WXBridgeManager] call callRemoveEvent arguments is null"

    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 43
    :cond_57
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string p3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v2, p3, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    return p1
.end method

.method public callRenderSuccess(Ljava/lang/String;)I
    .registers 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callRenderSuccess"

    if-eqz v0, :cond_17

    .line 2
    const-string v0, "[WXBridgeManager] call callRenderSuccess arguments is null"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string v3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, v0, v2, v3, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    return p1

    .line 9
    :cond_17
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 15
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_26

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 p1, -0x1

    return p1

    .line 20
    :cond_26
    :try_start_26
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 22
    new-instance v3, Lcom/taobao/weex/ui/action/GraphicActionRenderSuccess;

    invoke-direct {v3, v0}, Lcom/taobao/weex/ui/action/GraphicActionRenderSuccess;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    .line 23
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_40} :catch_41

    goto :goto_50

    :catch_41
    move-exception v0

    .line 26
    const-string v3, "[WXBridgeManager] callRenderSuccess exception: "

    invoke-static {v3, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 29
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {p1, v3, v2, v0, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_50
    :goto_50
    const/4 p1, 0x1

    return p1
.end method

.method public callReportCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 2
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "yyyyMMddHHmmss"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 8
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 10
    :cond_3a
    new-instance p1, Ljava/lang/Thread;

    new-instance v3, Lcom/taobao/weex/bridge/WXBridgeManager$7;

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/taobao/weex/bridge/WXBridgeManager$7;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {p1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 46
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public callReportCrashReloadPage(Ljava/lang/String;Ljava/lang/String;)I
    .registers 17

    const-string v8, "callReportCrashReloadPage"

    const-string v9, "reInitCount:"

    const-string v0, "callReportCrashReloadPage crashFile:"

    .line 1
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 4
    :try_start_c
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    const/4 v12, 0x1

    if-eqz v3, :cond_20

    .line 6
    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {v3, v12}, Lcom/taobao/weex/WXSDKInstance;->setHasException(Z)V

    move-object v6, v4

    goto :goto_21

    :cond_20
    move-object v6, v11

    .line 9
    :goto_21
    new-instance v7, Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-direct {v7, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 10
    const-string/jumbo v3, "weexCoreThreadStackTrace:"

    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->getWeexCoreThreadStackTrace()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string/jumbo v3, "wxStateInfo"

    invoke-static {}, Lcom/taobao/weex/performance/WXStateRecord;->getInstance()Lcom/taobao/weex/performance/WXStateRecord;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/performance/WXStateRecord;->getStateInfo()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_47} :catch_f2

    const-string v3, "null"

    if-nez v2, :cond_a0

    .line 15
    :try_start_4b
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v2

    if-eqz v2, :cond_80

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mInitParams:Lcom/taobao/weex/bridge/WXParams;

    invoke-virtual {v4}, Lcom/taobao/weex/bridge/WXParams;->getCrashFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5f
    .catchall {:try_start_4b .. :try_end_5f} :catchall_83

    move-object/from16 v4, p2

    :try_start_61
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_7e

    .line 17
    :try_start_68
    const-string v4, "jsengine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_68 .. :try_end_79} :catchall_7b

    move-object v4, v2

    goto :goto_8d

    :catchall_7b
    move-exception v0

    move-object v4, v2

    goto :goto_86

    :catchall_7e
    move-exception v0

    goto :goto_86

    :cond_80
    move-object/from16 v4, p2

    goto :goto_8d

    :catchall_83
    move-exception v0

    move-object/from16 v4, p2

    .line 20
    :goto_86
    :try_start_86
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 22
    :goto_8d
    invoke-static {}, Lcom/taobao/weex/performance/WXStateRecord;->getInstance()Lcom/taobao/weex/performance/WXStateRecord;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_98

    goto :goto_99

    :cond_98
    move-object v3, p1

    .line 23
    :goto_99
    invoke-virtual {v0, v3}, Lcom/taobao/weex/performance/WXStateRecord;->onJSCCrash(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, v4, p1, v6, v7}, Lcom/taobao/weex/bridge/WXBridgeManager;->callReportCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_ba

    .line 26
    :cond_a0
    invoke-static {}, Lcom/taobao/weex/performance/WXStateRecord;->getInstance()Lcom/taobao/weex/performance/WXStateRecord;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_ab

    goto :goto_ac

    :cond_ab
    move-object v3, p1

    .line 27
    :goto_ac
    invoke-virtual {v0, v3}, Lcom/taobao/weex/performance/WXStateRecord;->onJSEngineReload(Ljava/lang/String;)V

    .line 28
    const-string v2, "jsBridge"

    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_RELOAD_PAGE:Lcom/taobao/weex/common/WXErrorCode;

    const-string v4, "reboot jsc Engine"

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v1 .. v7}, Lcom/taobao/weex/bridge/WXBridgeManager;->commitJscCrashAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 31
    :goto_ba
    sget v0, Lcom/taobao/weex/bridge/WXBridgeManager;->reInitCount:I

    const/16 v2, 0x32

    if-le v0, v2, :cond_d6

    .line 32
    const-string v0, "jsEngine"

    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_RELOAD_PAGE_EXCEED_LIMIT:Lcom/taobao/weex/common/WXErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/taobao/weex/bridge/WXBridgeManager;->reInitCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v8, v3, v7}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return v10

    .line 36
    :cond_d6
    sget v0, Lcom/taobao/weex/bridge/WXBridgeManager;->reInitCount:I

    add-int/2addr v0, v12

    sput v0, Lcom/taobao/weex/bridge/WXBridgeManager;->reInitCount:I

    .line 38
    invoke-direct {p0, v10}, Lcom/taobao/weex/bridge/WXBridgeManager;->setJSFrameworkInit(Z)V

    .line 39
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->resetAllModuleState()V

    .line 40
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->initScriptsFramework(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_f8

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_ee} :catch_f2

    if-eqz v0, :cond_f8

    const/4 v0, -0x1

    return v0

    :catch_f2
    move-exception v0

    .line 46
    const-string v2, "[WXBridgeManager] callReportCrashReloadPage exception: "

    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    :cond_f8
    :try_start_f8
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_12a

    .line 52
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->shouldReloadCurrentInstance(Ljava/lang/String;)Z

    move-result v0

    .line 55
    new-instance v2, Lcom/taobao/weex/ui/action/ActionReloadPage;

    invoke-direct {v2, p1, v0}, Lcom/taobao/weex/ui/action/ActionReloadPage;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Lcom/taobao/weex/ui/action/ActionReloadPage;->executeAction()V
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_11a} :catch_11b

    goto :goto_12a

    :catch_11b
    move-exception v0

    .line 59
    const-string v2, "[WXBridgeManager] callReloadPage exception: "

    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 62
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {p1, v2, v8, v0, v11}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_12a
    :goto_12a
    return v10
.end method

.method public callUpdateAttrs(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callUpdateAttrs"

    if-nez v0, :cond_4f

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_4f

    .line 12
    :cond_10
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 19
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_1f

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 p1, -0x1

    return p1

    .line 24
    :cond_1f
    :try_start_1f
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 26
    new-instance v3, Lcom/taobao/weex/ui/action/GraphicActionUpdateAttr;

    invoke-direct {v3, v0, p2, p3}, Lcom/taobao/weex/ui/action/GraphicActionUpdateAttr;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/util/Map;)V

    .line 27
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p2

    invoke-virtual {v3}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->getPageId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, v3}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_3d} :catch_3e

    goto :goto_4d

    :catch_3e
    move-exception p2

    .line 30
    const-string p3, "[WXBridgeManager] callUpdateAttrs exception: "

    invoke-static {p3, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    sget-object p3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 33
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 34
    invoke-static {p1, p3, v2, p2, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_4d
    :goto_4d
    const/4 p1, 0x1

    return p1

    .line 35
    :cond_4f
    :goto_4f
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p2

    if-eqz p2, :cond_5a

    .line 36
    const-string p2, "[WXBridgeManager] call callUpdateAttrs arguments is null"

    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 39
    :cond_5a
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string p3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v2, p3, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    return p1
.end method

.method public callUpdateFinish(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "callUpdateFinish"

    if-eqz v0, :cond_17

    .line 2
    const-string p2, "[WXBridgeManager] call callUpdateFinish arguments is null"

    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 3
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string v0, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v3, v0, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return v1

    .line 9
    :cond_17
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 16
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_26

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 p1, -0x1

    return p1

    .line 21
    :cond_26
    :try_start_26
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2d} :catch_2e

    goto :goto_3d

    :catch_2e
    move-exception v0

    .line 24
    const-string v4, "[WXBridgeManager] callUpdateFinish exception: "

    invoke-static {v4, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    sget-object v4, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 27
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {p1, v4, v3, v0, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_3d
    if-eqz p2, :cond_5c

    .line 33
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5c

    const-string/jumbo v0, "undefined"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    const-string v0, "-1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    goto :goto_5c

    .line 37
    :cond_57
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->getNextTick(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_5c
    :goto_5c
    return v1
.end method

.method public callUpdateRichtextChildAttr(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)I
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callUpdateRichtextChildAttr"

    if-nez v0, :cond_54

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_54

    .line 12
    :cond_10
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 20
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_1f

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 p1, -0x1

    return p1

    .line 24
    :cond_1f
    :try_start_1f
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v4

    if-eqz v4, :cond_52

    .line 26
    new-instance v3, Lcom/taobao/weex/ui/action/GraphicActionUpdateRichtextAttr;

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/taobao/weex/ui/action/GraphicActionUpdateRichtextAttr;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p2

    invoke-virtual {v3}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->getPageId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, v3}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_41} :catch_42

    goto :goto_52

    :catch_42
    move-exception v0

    move-object p2, v0

    .line 30
    const-string p3, "[WXBridgeManager] callUpdateRichtextChildAttr exception: "

    invoke-static {p3, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    sget-object p3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 33
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 34
    invoke-static {p1, p3, v2, p2, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_52
    :goto_52
    const/4 p1, 0x1

    return p1

    .line 35
    :cond_54
    :goto_54
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p2

    if-eqz p2, :cond_5f

    .line 36
    const-string p2, "[WXBridgeManager] call callUpdateRichtextChildAttr arguments is null"

    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 39
    :cond_5f
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string p3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v2, p3, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    return p1
.end method

.method public callUpdateRichtextStyle(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)I
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callUpdateRichtextStyle"

    if-nez v0, :cond_54

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_54

    .line 12
    :cond_10
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 20
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_1f

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 p1, -0x1

    return p1

    .line 24
    :cond_1f
    :try_start_1f
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v4

    if-eqz v4, :cond_52

    .line 26
    new-instance v3, Lcom/taobao/weex/ui/action/GraphicActionUpdateRichtextStyle;

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/taobao/weex/ui/action/GraphicActionUpdateRichtextStyle;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p2

    invoke-virtual {v3}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->getPageId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, v3}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_41} :catch_42

    goto :goto_52

    :catch_42
    move-exception v0

    move-object p2, v0

    .line 30
    const-string p3, "[WXBridgeManager] callUpdateRichtextStyle exception: "

    invoke-static {p3, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    sget-object p3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 33
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 34
    invoke-static {p1, p3, v2, p2, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_52
    :goto_52
    const/4 p1, 0x1

    return p1

    .line 35
    :cond_54
    :goto_54
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p2

    if-eqz p2, :cond_5f

    .line 36
    const-string p2, "[WXBridgeManager] call callUpdateRichtextStyle arguments is null"

    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 39
    :cond_5f
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string p3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v2, p3, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    return p1
.end method

.method public callUpdateStyle(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)I
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callUpdateStyle"

    if-nez v0, :cond_56

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_56

    .line 12
    :cond_10
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 22
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_1f

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 p1, -0x1

    return p1

    .line 27
    :cond_1f
    :try_start_1f
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v4

    if-eqz v4, :cond_54

    .line 29
    new-instance v3, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v9}, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 30
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p2

    invoke-virtual {v3}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->getPageId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, v3}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_43} :catch_44

    goto :goto_54

    :catch_44
    move-exception v0

    move-object p2, v0

    .line 33
    const-string p3, "[WXBridgeManager] callUpdateStyle exception: "

    invoke-static {p3, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    sget-object p3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 36
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 37
    invoke-static {p1, p3, v2, p2, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_54
    :goto_54
    const/4 p1, 0x1

    return p1

    .line 38
    :cond_56
    :goto_56
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p2

    if-eqz p2, :cond_61

    .line 39
    const-string p2, "[WXBridgeManager] call callUpdateStyle arguments is null"

    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 42
    :cond_61
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string p3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v2, p3, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    return p1
.end method

.method public callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/taobao/weex/bridge/WXBridgeManager;->callbackJavascript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public callback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method callbackJavascript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 7

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4a

    sget-boolean v0, Lio/dcloud/common/util/RuningAcitvityUtil;->isRuningActivity:Z

    if-nez v0, :cond_15

    goto :goto_4a

    .line 6
    :cond_15
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getAllInstanceMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_31

    .line 7
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER_BINARY:Lcom/taobao/weex/common/WXRenderStrategy;

    if-ne v0, v1, :cond_31

    .line 8
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/taobao/weex/bridge/WXBridgeManager;->callbackJavascriptOnDataRender(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void

    .line 10
    :cond_31
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p4, v0, p2

    const-string p2, "callback"

    invoke-direct {p0, p2, p1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->addJSTask(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x6

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->sendMessage(Ljava/lang/String;I)V

    :cond_4a
    :goto_4a
    return-void
.end method

.method callbackJavascriptOnDataRender(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    new-instance v1, Lcom/taobao/weex/bridge/WXBridgeManager$15;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v3, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/taobao/weex/bridge/WXBridgeManager$15;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 p2, 0x0

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public checkJsEngineMultiThread()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXJscProcessManager()Lcom/taobao/weex/adapter/IWXJscProcessManager;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 3
    invoke-interface {v0}, Lcom/taobao/weex/adapter/IWXJscProcessManager;->enableBackupThread()Z

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 6
    :goto_10
    sget-boolean v1, Lcom/taobao/weex/bridge/WXBridgeManager;->isJsEngineMultiThreadEnable:Z

    if-ne v0, v1, :cond_15

    goto :goto_2f

    .line 10
    :cond_15
    sput-boolean v0, Lcom/taobao/weex/bridge/WXBridgeManager;->isJsEngineMultiThreadEnable:Z

    .line 12
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 13
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSThread()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 14
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->reload()V

    return-void

    .line 16
    :cond_27
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$2;

    invoke-direct {v0, p0}, Lcom/taobao/weex/bridge/WXBridgeManager$2;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    :cond_2f
    :goto_2f
    return-void
.end method

.method public commitJscCrashAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXErrorCode;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4c

    if-nez p2, :cond_9

    goto :goto_4c

    .line 5
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, " commitJscCrashAlarmMonitor errMsg "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ReportCrash"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 9
    const-string p1, "jscCrashStack"

    invoke-interface {v7, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p6, :cond_2b

    .line 11
    invoke-interface {v7, p6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 13
    :cond_2b
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getIWXJSExceptionAdapter()Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;

    move-result-object p1

    if-eqz p1, :cond_4c

    .line 15
    new-instance v1, Lcom/taobao/weex/common/WXJSExceptionInfo;

    const-string v5, "callReportCrash"

    const-string/jumbo v6, "weex core process crash and restart exception"

    move-object v4, p2

    move-object v2, p4

    move-object v3, p5

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/common/WXJSExceptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 16
    invoke-interface {p1, v1}, Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;->onJSException(Lcom/taobao/weex/common/WXJSExceptionInfo;)V

    .line 18
    invoke-virtual {v1}, Lcom/taobao/weex/common/WXJSExceptionInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method public createInstance(Ljava/lang/String;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/Script;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v4

    if-nez v4, :cond_12

    .line 4
    const-string p1, "WXBridgeManager"

    const-string p2, "createInstance failed, SDKInstance does not exist"

    invoke-static {p1, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8c

    if-eqz p2, :cond_8c

    invoke-virtual {p2}, Lcom/taobao/weex/Script;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8c

    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    if-nez v0, :cond_25

    goto :goto_8c

    .line 16
    :cond_25
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6f

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-nez v0, :cond_6f

    sget v0, Lcom/taobao/weex/bridge/WXBridgeManager;->reInitCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6f

    sget-boolean v0, Lcom/taobao/weex/WXEnvironment;->sDebugServerConnectable:Z

    if-nez v0, :cond_6f

    .line 17
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 18
    invoke-virtual {p2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    invoke-virtual {p2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " isJSFrameworkInit=="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " reInitCount == 1"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 21
    invoke-virtual {v4, p3, p2}, Lcom/taobao/weex/WXSDKInstance;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance p2, Lcom/taobao/weex/bridge/WXBridgeManager$17;

    invoke-direct {p2, p0}, Lcom/taobao/weex/bridge/WXBridgeManager$17;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;)V

    const-string p3, "initFrameworkInCreateInstance"

    invoke-virtual {p0, p2, p1, v4, p3}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;Ljava/lang/Object;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    return-void

    .line 34
    :cond_6f
    invoke-static {v4}, Lcom/taobao/weex/bridge/WXModuleManager;->createDomModule(Lcom/taobao/weex/WXSDKInstance;)V

    .line 35
    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v0

    const-string/jumbo v1, "wxStartLoadBundle"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->onStage(Ljava/lang/String;)V

    .line 36
    new-instance v1, Lcom/taobao/weex/bridge/WXBridgeManager$18;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/bridge/WXBridgeManager$18;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;)V

    const-string p1, "createInstance"

    invoke-virtual {p0, v1, v3, v4, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;Ljava/lang/Object;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    return-void

    :cond_8c
    :goto_8c
    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    .line 37
    sget-object p1, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 38
    invoke-virtual {p1}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    invoke-virtual {p1}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " instanceId=="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " template =="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " mJSHandler== "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v2, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    .line 40
    invoke-virtual {p1}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-virtual {v4, p2, p1}, Lcom/taobao/weex/WXSDKInstance;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public createInstance(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/taobao/weex/Script;

    invoke-direct {v0, p2}, Lcom/taobao/weex/Script;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/taobao/weex/bridge/WXBridgeManager;->createInstance(Ljava/lang/String;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    instance-of v1, v0, Lcom/taobao/weex/bridge/WXBridge;

    if-eqz v1, :cond_d

    .line 2
    check-cast v0, Lcom/taobao/weex/bridge/WXBridge;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/taobao/weex/bridge/WXBridge;->decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_d
    const-string p1, ""

    return-object p1
.end method

.method public destroy()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Lcom/taobao/weex/common/WXThread;->quit()Z

    :cond_7
    const/4 v0, 0x0

    .line 4
    sput-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    .line 5
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_11

    .line 6
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :cond_11
    return-void
.end method

.method public destroyInstance(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    if-eqz v0, :cond_22

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_22

    .line 5
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_12

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_12
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$19;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager$19;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "destroyInstance"

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;Ljava/lang/Object;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    :cond_22
    :goto_22
    return-void
.end method

.method public dumpIpcPageInfo()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    instance-of v1, v0, Lcom/taobao/weex/bridge/WXBridge;

    if-eqz v1, :cond_d

    .line 2
    check-cast v0, Lcom/taobao/weex/bridge/WXBridge;

    invoke-virtual {v0}, Lcom/taobao/weex/bridge/WXBridge;->nativeDumpIpcPageQueueInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_d
    const-string v0, ""

    return-object v0
.end method

.method public encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    instance-of v1, v0, Lcom/taobao/weex/bridge/WXBridge;

    if-eqz v1, :cond_d

    .line 2
    check-cast v0, Lcom/taobao/weex/bridge/WXBridge;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/taobao/weex/bridge/WXBridge;->encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_d
    const-string p1, ""

    return-object p1
.end method

.method public encryptGetClientKeyPayload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    instance-of v1, v0, Lcom/taobao/weex/bridge/WXBridge;

    if-eqz v1, :cond_d

    .line 2
    check-cast v0, Lcom/taobao/weex/bridge/WXBridge;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/weex/bridge/WXBridge;->encryptGetClientKeyPayload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_d
    const-string p1, ""

    return-object p1
.end method

.method public execJSService(Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$25;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager$25;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string v1, "execJSService"

    invoke-virtual {p0, v0, p1, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->postWithName(Ljava/lang/Runnable;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXBridgeManager;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual/range {p0 .. p5}, Lcom/taobao/weex/bridge/WXBridgeManager;->fireEventOnNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public fireEventOnNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/taobao/weex/bridge/WXBridgeManager;->fireEventOnNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Lcom/taobao/weex/bridge/EventResult;)V

    return-void
.end method

.method public fireEventOnNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 2
    invoke-virtual/range {v0 .. v7}, Lcom/taobao/weex/bridge/WXBridgeManager;->fireEventOnNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Lcom/taobao/weex/bridge/EventResult;)V

    return-void
.end method

.method public fireEventOnNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Lcom/taobao/weex/bridge/EventResult;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taobao/weex/bridge/EventResult;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7c

    .line 4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7c

    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    if-nez v0, :cond_17

    goto :goto_7c

    .line 7
    :cond_17
    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->checkMainThread()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 11
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getAllInstanceMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_42

    .line 12
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v1

    sget-object v2, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER:Lcom/taobao/weex/common/WXRenderStrategy;

    if-eq v1, v2, :cond_3d

    .line 13
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER_BINARY:Lcom/taobao/weex/common/WXRenderStrategy;

    if-ne v0, v1, :cond_42

    .line 14
    :cond_3d
    invoke-direct/range {p0 .. p5}, Lcom/taobao/weex/bridge/WXBridgeManager;->fireEventOnDataRenderNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    move-object p1, p0

    return-void

    :cond_42
    move-object v0, p5

    move-object p5, p4

    move-object p4, p1

    move-object p1, p0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-nez p7, :cond_61

    .line 17
    new-array p7, v5, [Ljava/lang/Object;

    aput-object p2, p7, v4

    aput-object p3, p7, v3

    aput-object p5, p7, v2

    aput-object v0, p7, v1

    const-string p2, "fireEvent"

    invoke-direct {p0, p2, p4, p6, p7}, Lcom/taobao/weex/bridge/WXBridgeManager;->addJSEventTask(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V

    const/4 p2, 0x6

    .line 18
    invoke-direct {p0, p4, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->sendMessage(Ljava/lang/String;I)V

    return-void

    .line 20
    :cond_61
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v4

    aput-object p3, v5, v3

    aput-object p5, v5, v2

    aput-object v0, v5, v1

    const-string p3, "fireEventSync"

    move-object p5, p6

    move-object p2, p7

    move-object p6, v5

    invoke-direct/range {p1 .. p6}, Lcom/taobao/weex/bridge/WXBridgeManager;->asyncCallJSEventWithResult(Lcom/taobao/weex/bridge/EventResult;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V

    return-void

    .line 21
    :cond_74
    new-instance p1, Lcom/taobao/weex/common/WXRuntimeException;

    const-string p2, "fireEvent must be called by main thread"

    invoke-direct {p1, p2}, Lcom/taobao/weex/common/WXRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7c
    :goto_7c
    return-void
.end method

.method public forceLayout(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    return-void

    .line 2
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1}, Lcom/taobao/weex/common/IWXBridge;->forceLayout(Ljava/lang/String;)V

    return-void
.end method

.method public getBundleType(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/bridge/WXBridgeManager$BundType;
    .registers 4

    if-eqz p1, :cond_36

    .line 1
    :try_start_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2
    const-string v0, "bundleType"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    const-string v0, "Vue"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string/jumbo v0, "vue"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_31

    .line 5
    :cond_1e
    const-string v0, "Rax"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "rax"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 6
    :cond_2e
    sget-object p1, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Rax:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    return-object p1

    .line 7
    :cond_31
    :goto_31
    sget-object p1, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Vue:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    return-object p1

    :catchall_34
    move-exception p1

    goto :goto_3e

    :cond_36
    if-eqz p2, :cond_3b

    .line 13
    sget-object p1, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Vue:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    return-object p1

    .line 42
    :cond_3b
    sget-object p1, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Others:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;
    :try_end_3d
    .catchall {:try_start_2 .. :try_end_3d} :catchall_34

    return-object p1

    .line 44
    :goto_3e
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 45
    sget-object p1, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Others:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    return-object p1
.end method

.method public getFirstScreenRenderTime(Ljava/lang/String;)[J
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1}, Lcom/taobao/weex/common/IWXBridge;->getFirstScreenRenderTime(Ljava/lang/String;)[J

    move-result-object p1

    return-object p1

    :cond_d
    const/4 p1, 0x3

    .line 4
    new-array p1, p1, [J

    fill-array-data p1, :array_14

    return-object p1

    :array_14
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public getInitParams()Lcom/taobao/weex/bridge/WXParams;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mInitParams:Lcom/taobao/weex/bridge/WXParams;

    return-object v0
.end method

.method public getJSLooper()Landroid/os/Looper;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMeasurementFunc(Ljava/lang/String;J)Lcom/taobao/weex/layout/ContentBoxMeasurement;
    .registers 5

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 3
    invoke-virtual {p1, p2, p3}, Lcom/taobao/weex/WXSDKInstance;->getContentBoxMeasurement(J)Lcom/taobao/weex/layout/ContentBoxMeasurement;

    move-result-object p1

    return-object p1

    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRenderFinishTime(Ljava/lang/String;)[J
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1}, Lcom/taobao/weex/common/IWXBridge;->getRenderFinishTime(Ljava/lang/String;)[J

    move-result-object p1

    return-object p1

    :cond_d
    const/4 p1, 0x3

    .line 4
    new-array p1, p1, [J

    fill-array-data p1, :array_14

    return-object p1

    :array_14
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public getWeexCoreThreadStackTrace()Ljava/lang/String;
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    if-nez v0, :cond_7

    .line 2
    const-string v0, "null == mJSThread"

    return-object v0

    .line 4
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    :try_start_c
    const-string v1, "Thread Name: \'%s\'\n"

    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v1, v4}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "\"%s\" prio=%d tid=%d %s\n"

    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    invoke-virtual {v6}, Ljava/lang/Thread;->getPriority()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v8, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    invoke-virtual {v8}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v8

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v5

    aput-object v6, v9, v3

    const/4 v4, 0x2

    aput-object v7, v9, v4

    const/4 v4, 0x3

    aput-object v8, v9, v4

    invoke-static {v1, v2, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v2, v1

    const/4 v4, 0x0

    :goto_61
    if-ge v4, v2, :cond_82

    aget-object v6, v1, v4

    .line 11
    const-string v7, "\tat %s\n"

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v6, v8, v5

    invoke-static {v7, v8}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_76} :catch_79

    add-int/lit8 v4, v4, 0x1

    goto :goto_61

    :catch_79
    move-exception v1

    .line 14
    const-string/jumbo v2, "weex"

    const-string v3, "getJSThreadStackTrace error:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    :cond_82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1
    :cond_4
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_28

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1c

    const/4 v2, 0x6

    if-eq v1, v2, :cond_18

    const/4 v2, 0x7

    if-eq v1, v2, :cond_14

    goto :goto_43

    .line 4
    :cond_14
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeInitFramework(Landroid/os/Message;)V

    goto :goto_43

    .line 7
    :cond_18
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeCallJSBatch(Landroid/os/Message;)V

    goto :goto_43

    .line 19
    :cond_1c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_43

    .line 20
    check-cast p1, Ljava/lang/String;

    .line 21
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v1, p1}, Lcom/taobao/weex/common/IWXBridge;->takeHeapSnapshot(Ljava/lang/String;)V

    goto :goto_43

    .line 22
    :cond_28
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/taobao/weex/bridge/WXBridgeManager$TimerInfo;

    if-nez p1, :cond_2f

    goto :goto_43

    .line 26
    :cond_2f
    new-instance v1, Lcom/taobao/weex/bridge/WXJSObject;

    iget-object p1, p1, Lcom/taobao/weex/bridge/WXBridgeManager$TimerInfo;->callbackId:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-direct {v1, v3, p1}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    .line 27
    new-array p1, v2, [Lcom/taobao/weex/bridge/WXJSObject;

    aput-object v1, p1, v0

    const/4 v1, 0x0

    .line 28
    const-string v2, "setTimeoutCallback"

    const-string v3, ""

    invoke-direct {p0, v3, v1, v2, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)V

    :cond_43
    :goto_43
    return v0
.end method

.method public declared-synchronized initScriptsFramework(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x7

    .line 3
    iput p1, v0, Landroid/os/Message;->what:I

    .line 4
    iget-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 5
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public invokeCreateInstanceContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)I
    .registers 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invokeCreateInstanceContext instanceId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " function:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, " isJSFrameworkInit\uff1a%b"

    invoke-static {v1, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    const-string v1, "createInstanceContext >>>> instanceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    const-string v1, "function:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_52

    .line 8
    iget-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    const-string v0, " tasks:"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/taobao/weex/utils/WXJsonUtils;->fromObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_52
    iget-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 10
    iget-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 12
    iget-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {p5, p1, p2, p3, p4}, Lcom/taobao/weex/common/IWXBridge;->createInstanceContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)I

    move-result p1

    return p1
.end method

.method public invokeDestoryInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    const-string v1, "callJS >>>> instanceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "function:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_22

    .line 4
    iget-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    const-string v0, " tasks:"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/taobao/weex/utils/WXJsonUtils;->fromObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_22
    iget-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 6
    iget-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 8
    iget-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {p5, p1}, Lcom/taobao/weex/common/IWXBridge;->removeInstanceRenderType(Ljava/lang/String;)V

    .line 9
    iget-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {p5, p1, p2, p3, p4}, Lcom/taobao/weex/common/IWXBridge;->destoryInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)I

    return-void
.end method

.method public invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)V
    .registers 14

    .line 2
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isOpenDebugLog()Z

    .line 11
    sget-boolean p5, Lio/dcloud/common/util/RuningAcitvityUtil;->isRuningActivity:Z

    if-nez p5, :cond_9

    goto/16 :goto_8e

    .line 14
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 15
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p5

    invoke-virtual {p5, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object p5

    if-eqz p5, :cond_5a

    .line 16
    invoke-virtual {p5}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v2

    sget-object v3, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER_BINARY:Lcom/taobao/weex/common/WXRenderStrategy;

    if-ne v2, v3, :cond_5a

    .line 18
    array-length p2, p4

    const/4 p3, 0x2

    if-ne p2, p3, :cond_54

    const/4 p2, 0x0

    aget-object p2, p4, p2

    iget-object p2, p2, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    instance-of p2, p2, Ljava/lang/String;

    if-eqz p2, :cond_54

    const/4 p2, 0x1

    aget-object p2, p4, p2

    iget-object p2, p2, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    instance-of p3, p2, Ljava/lang/String;

    if-eqz p3, :cond_54

    check-cast p2, Ljava/lang/String;

    .line 20
    invoke-direct {p0, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->extractCallbackArgs(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p2

    if-nez p2, :cond_3e

    goto :goto_54

    .line 24
    :cond_3e
    iget-object p3, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Landroid/util/Pair;

    iget-object p4, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p4, Ljava/lang/String;

    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p4, p3, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->callbackJavascriptOnDataRender(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_6d

    .line 25
    :cond_54
    :goto_54
    const-string p1, "invokeExecJS on data render that is not a callback call"

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    return-void

    .line 30
    :cond_5a
    new-instance v2, Lcom/taobao/weex/bridge/WXBridgeManager$20;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/taobao/weex/bridge/WXBridgeManager$20;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)V

    const-string p1, "ExecJs"

    invoke-static {v2, p5, p1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p1

    .line 35
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_6d
    if-eqz p5, :cond_8e

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    .line 39
    invoke-virtual {p5}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object p3

    const-string/jumbo p4, "wxFSCallJsTotalNum"

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p3, p4, v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->updateFSDiffStats(Ljava/lang/String;D)V

    .line 40
    invoke-virtual {p5}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object p3

    long-to-double v0, p1

    const-string/jumbo p4, "wxFSCallJsTotalTime"

    invoke-virtual {p3, p4, v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->updateFSDiffStats(Ljava/lang/String;D)V

    .line 41
    invoke-virtual {p5, p1, p2}, Lcom/taobao/weex/WXSDKInstance;->callJsTime(J)V

    :cond_8e
    :goto_8e
    return-void
.end method

.method public isJSFrameworkInit()Z
    .registers 2

    .line 1
    sget-boolean v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mInit:Z

    return v0
.end method

.method public isJSThread()Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public jsEngineMultiThreadEnable()Z
    .registers 2

    .line 1
    sget-boolean v0, Lcom/taobao/weex/bridge/WXBridgeManager;->isJsEngineMultiThreadEnable:Z

    return v0
.end method

.method public loadJsBundleInPreInitMode(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager$9;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public markDirty(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    return-void

    .line 2
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/common/IWXBridge;->markDirty(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public notifyLayout(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    return p1

    .line 2
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1}, Lcom/taobao/weex/common/IWXBridge;->notifyLayout(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public notifySerializeCodeCache()V
    .registers 2

    .line 1
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$27;

    invoke-direct {v0, p0}, Lcom/taobao/weex/bridge/WXBridgeManager$27;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyTrimMemory()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onInstanceClose(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    return-void

    .line 2
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1}, Lcom/taobao/weex/common/IWXBridge;->onInstanceClose(Ljava/lang/String;)V

    return-void
.end method

.method public onInteractionTimeUpdate(Ljava/lang/String;)V
    .registers 3

    .line 1
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$1;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager$1;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public optionObjConvert(ZLcom/taobao/weex/bridge/WXBridgeManager$BundType;Lcom/taobao/weex/bridge/WXJSObject;)Lcom/taobao/weex/bridge/WXJSObject;
    .registers 8

    if-nez p1, :cond_3

    return-object p3

    .line 1
    :cond_3
    :try_start_3
    iget-object p1, p3, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 4
    const-string p2, "env"

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_39

    .line 5
    const-string v0, "options"

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 7
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    .line 12
    :cond_39
    new-instance p2, Lcom/taobao/weex/bridge/WXJSObject;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    invoke-direct {p2, v0, p1}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_44

    return-object p2

    :catchall_44
    move-exception p1

    .line 14
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    return-object p3
.end method

.method public post(Ljava/lang/Runnable;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->postWithName(Ljava/lang/Runnable;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    return-void
.end method

.method public post(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;Ljava/lang/Object;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    return-void
.end method

.method public post(Ljava/lang/Runnable;Ljava/lang/Object;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V
    .registers 6

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    return-void

    .line 6
    :cond_5
    invoke-static {p1, p3, p4}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    .line 7
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public postDelay(Ljava/lang/Runnable;J)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    return-void

    .line 4
    :cond_5
    invoke-static {p1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public postWithName(Ljava/lang/Runnable;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-static {p1, p2, p3}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mInterceptor:Lcom/taobao/weex/utils/batch/Interceptor;

    if-eqz p2, :cond_f

    invoke-interface {p2, p1}, Lcom/taobao/weex/utils/batch/Interceptor;->take(Ljava/lang/Runnable;)Z

    move-result p2

    if-eqz p2, :cond_f

    goto :goto_13

    .line 6
    :cond_f
    iget-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    if-nez p2, :cond_14

    :goto_13
    return-void

    .line 9
    :cond_14
    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public refreshInstance(Ljava/lang/String;Lcom/taobao/weex/common/WXRefreshData;)V
    .registers 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    if-nez p2, :cond_9

    goto :goto_19

    .line 4
    :cond_9
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    new-instance v1, Lcom/taobao/weex/bridge/WXBridgeManager$16;

    invoke-direct {v1, p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager$16;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Lcom/taobao/weex/common/WXRefreshData;)V

    invoke-static {v1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_19
    :goto_19
    return-void
.end method

.method public registerComponents(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    if-eqz v0, :cond_25

    if-eqz p1, :cond_25

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_25

    .line 5
    :cond_d
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$24;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager$24;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/util/List;)V

    .line 12
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSThread()Z

    move-result p1

    if-eqz p1, :cond_22

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 13
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 15
    :cond_22
    invoke-virtual {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    :cond_25
    :goto_25
    return-void
.end method

.method public registerCoreEnv(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2}, Lcom/taobao/weex/common/IWXBridge;->registerCoreEnv(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_c
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWeexCoreEnvOptions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerModules(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1d

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_1d

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSThread()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterModuleFailList:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeRegisterModules(Ljava/util/Map;Ljava/util/List;)V

    return-void

    .line 5
    :cond_14
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$23;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager$23;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/util/Map;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_1d
    return-void
.end method

.method public reloadPageLayout(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    return-void

    .line 2
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1}, Lcom/taobao/weex/common/IWXBridge;->reloadPageLayout(Ljava/lang/String;)V

    return-void
.end method

.method public removeMessage(ILjava/lang/Object;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    if-eqz v0, :cond_1c

    .line 2
    invoke-virtual {v0}, Lcom/taobao/weex/common/WXThread;->isWXThreadAlive()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_17

    goto :goto_1c

    .line 5
    :cond_17
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public reportJSException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    const-string v0, "ms, extInitErrorMsg:"

    .line 1
    const-string v1, "jsscope::"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_a8

    .line 2
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_a2

    .line 3
    invoke-static {v1}, Lio/dcloud/common/util/BaseInfo;->isBase(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_a2

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x4

    const-string v5, "app-service.js"

    const-string/jumbo v6, "uni-jsframework.js"

    const/4 v7, -0x1

    sparse-switch v3, :sswitch_data_1d2

    goto :goto_62

    :sswitch_30
    const-string v3, "service"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    goto :goto_62

    :cond_39
    const/4 v7, 0x4

    goto :goto_62

    :sswitch_3b
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    goto :goto_62

    :cond_42
    const/4 v7, 0x3

    goto :goto_62

    :sswitch_44
    const-string v3, "jsfm"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d

    goto :goto_62

    :cond_4d
    const/4 v7, 0x2

    goto :goto_62

    :sswitch_4f
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    goto :goto_62

    :cond_56
    const/4 v7, 0x1

    goto :goto_62

    :sswitch_58
    const-string v3, "jsframework"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_61

    goto :goto_62

    :cond_61
    const/4 v7, 0x0

    :goto_62
    const/4 v3, 0x5

    packed-switch v7, :pswitch_data_1e8

    .line 19
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v4

    const/4 v6, 0x6

    if-eqz v4, :cond_79

    .line 21
    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKInstance;->getUniPagePath()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    if-ne v4, v5, :cond_7a

    goto :goto_7d

    :cond_79
    move-object v6, p1

    :cond_7a
    const/4 v4, 0x6

    goto :goto_7e

    :pswitch_7c
    move-object v6, p1

    :goto_7d
    const/4 v4, 0x5

    .line 42
    :goto_7e
    :pswitch_7e
    invoke-static {}, Lio/dcloud/common/util/AppRuntime;->getUniStatistics()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_a2

    .line 44
    const-string/jumbo v5, "version"

    invoke-static {v3, v5}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 45
    const-string v7, "enable"

    invoke-static {v3, v7}, Lio/dcloud/common/util/JSONUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    .line 46
    const-string v7, "2"

    invoke-static {v7, v5}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a2

    if-eqz v3, :cond_a2

    .line 49
    invoke-static {v1, v6, p3, v4}, Lio/dcloud/common/adapter/util/UEH;->commitUncatchException(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_a2
    const/16 v1, 0x9

    .line 52
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 54
    :cond_a8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "reportJSException >>>> instanceId:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", exception function:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", exception:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 58
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JS_EXECUTE:Lcom/taobao/weex/common/WXErrorCode;

    if-eqz p1, :cond_1cd

    .line 59
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v5

    if-eqz v5, :cond_1cd

    .line 60
    invoke-virtual {v5, v2}, Lcom/taobao/weex/WXSDKInstance;->setHasException(Z)V

    .line 62
    const-string v6, "createInstance"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e8

    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKInstance;->isContentMd5Match()Z

    move-result v7

    if-nez v7, :cond_16b

    .line 66
    :cond_e8
    :try_start_e8
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_110

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v7

    if-eqz v7, :cond_110

    sget v7, Lcom/taobao/weex/bridge/WXBridgeManager;->reInitCount:I

    if-le v7, v2, :cond_110

    sget v7, Lcom/taobao/weex/bridge/WXBridgeManager;->reInitCount:I

    const/16 v8, 0xa

    if-ge v7, v8, :cond_110

    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKInstance;->isNeedReLoad()Z

    move-result v7

    if-nez v7, :cond_110

    .line 67
    new-instance v0, Lcom/taobao/weex/ui/action/ActionReloadPage;

    invoke-direct {v0, p1, v2}, Lcom/taobao/weex/ui/action/ActionReloadPage;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/ActionReloadPage;->executeAction()V

    .line 68
    invoke-virtual {v5, v2}, Lcom/taobao/weex/WXSDKInstance;->setNeedLoad(Z)V

    return-void

    .line 71
    :cond_110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 72
    invoke-virtual {v7}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", reportJSException >>>> instanceId:"

    .line 73
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", extInitTime:"

    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v8, Lcom/taobao/weex/bridge/WXBridgeManager;->sInitFrameWorkTimeOrigin:J

    sub-long/2addr v3, v8

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->sInitFrameWorkMsg:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {v7}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-virtual {v5, v2, v0}, Lcom/taobao/weex/WXSDKInstance;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget-boolean v0, Lcom/taobao/weex/WXEnvironment;->sInAliWeex:Z

    if-nez v0, :cond_162

    .line 86
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_JS_CREATE_INSTANCE:Lcom/taobao/weex/common/WXErrorCode;

    const/4 v2, 0x0

    invoke-static {p1, v0, p2, p3, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_162
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_162} :catch_163

    :cond_162
    return-void

    :catch_163
    move-exception v0

    .line 91
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 94
    :cond_16b
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17d

    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v0

    iget-boolean v0, v0, Lcom/taobao/weex/performance/WXInstanceApm;->hasAddView:Z

    if-nez v0, :cond_17d

    .line 95
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_JS_CREATE_INSTANCE:Lcom/taobao/weex/common/WXErrorCode;

    :goto_17b
    move-object v1, v0

    goto :goto_1c6

    .line 96
    :cond_17d
    const-string v0, "createInstanceContext"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v0

    iget-boolean v0, v0, Lcom/taobao/weex/performance/WXInstanceApm;->hasAddView:Z

    if-nez v0, :cond_190

    .line 97
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_JS_CREATE_INSTANCE_CONTEXT:Lcom/taobao/weex/common/WXErrorCode;

    goto :goto_17b

    .line 99
    :cond_190
    const-string v0, "UpdateComponentData"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b0

    .line 100
    const-string v0, "CreatePageWithContent"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b0

    .line 101
    const-string v0, "PostTaskToMsgLoop"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b0

    .line 102
    const-string v0, "JsfmNotInitInEagleMode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bb

    .line 103
    :cond_1b0
    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v0

    iget-boolean v0, v0, Lcom/taobao/weex/performance/WXInstanceApm;->hasAddView:Z

    if-nez v0, :cond_1bb

    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_EAGLE_RENDER_ERROR:Lcom/taobao/weex/common/WXErrorCode;

    goto :goto_17b

    .line 104
    :cond_1bb
    const-string v0, "dc_checkappkey"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c6

    .line 105
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_VALIDAPPKEY:Lcom/taobao/weex/common/WXErrorCode;

    goto :goto_17b

    .line 107
    :cond_1c6
    :goto_1c6
    invoke-virtual {v1}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, p2, p3}, Lcom/taobao/weex/WXSDKInstance;->onJSException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_1cd
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/taobao/weex/bridge/WXBridgeManager;->doReportJSException(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_1d2
    .sparse-switch
        -0x7bc2392b -> :sswitch_58
        -0x1eea8e81 -> :sswitch_4f
        0x31ebd0 -> :sswitch_44
        0x11797e4e -> :sswitch_3b
        0x7643c6b5 -> :sswitch_30
    .end sparse-switch

    :pswitch_data_1e8
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_7e
        :pswitch_7e
        :pswitch_7c
        :pswitch_7e
    .end packed-switch
.end method

.method public restart()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->setJSFrameworkInit(Z)V

    .line 2
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->resetAllModuleState()V

    .line 3
    sget-boolean v0, Lcom/taobao/weex/WXEnvironment;->sRemoteDebugMode:Z

    invoke-direct {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->initWXBridge(Z)V

    .line 4
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    sget-boolean v1, Lcom/taobao/weex/WXEnvironment;->sRemoteDebugMode:Z

    invoke-interface {v0, v1}, Lcom/taobao/weex/common/IWXBridge;->resetWXBridge(Z)V

    return-void
.end method

.method public sendMessageDelayed(Landroid/os/Message;J)V
    .registers 5

    if-eqz p1, :cond_1e

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    if-eqz v0, :cond_1e

    .line 2
    invoke-virtual {v0}, Lcom/taobao/weex/common/WXThread;->isWXThreadAlive()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_1e

    .line 5
    :cond_19
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1e
    :goto_1e
    return-void
.end method

.method public setDefaultRootSize(Ljava/lang/String;FFZZ)V
    .registers 13

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    return-void

    .line 2
    :cond_e
    :goto_e
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/taobao/weex/common/IWXBridge;->setDefaultHeightAndWidthIntoRootDom(Ljava/lang/String;FFZZ)V

    return-void
.end method

.method public setDeviceDisplay(Ljava/lang/String;FFF)V
    .registers 11

    .line 1
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$28;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXBridgeManager$28;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;FFF)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDeviceDisplayOfPage(Ljava/lang/String;FF)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    return-void

    .line 2
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/common/IWXBridge;->setDeviceDisplayOfPage(Ljava/lang/String;FF)V

    return-void
.end method

.method public setFlexDirectionDef(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1}, Lcom/taobao/weex/common/IWXBridge;->setFlexDirectionDef(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public setInterceptor(Lcom/taobao/weex/utils/batch/Interceptor;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mInterceptor:Lcom/taobao/weex/utils/batch/Interceptor;

    return-void
.end method

.method public setLogLevel(IZ)V
    .registers 4

    .line 1
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager$6;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;IZ)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setMargin(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V
    .registers 6

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    return-void

    .line 2
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/taobao/weex/common/IWXBridge;->setMargin(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    return-void
.end method

.method public setPadding(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V
    .registers 6

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    return-void

    .line 2
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/taobao/weex/common/IWXBridge;->setPadding(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    return-void
.end method

.method public setPageArgument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    return-void

    .line 2
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/common/IWXBridge;->setPageArgument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPosition(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V
    .registers 6

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    return-void

    .line 2
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/taobao/weex/common/IWXBridge;->setPosition(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    return-void
.end method

.method public setRenderContentWrapContentToCore(ZLjava/lang/String;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2}, Lcom/taobao/weex/common/IWXBridge;->setRenderContainerWrapContent(ZLjava/lang/String;)V

    :cond_b
    return-void
.end method

.method public setSandBoxContext(Z)V
    .registers 3

    .line 1
    sget-boolean v0, Lcom/taobao/weex/bridge/WXBridgeManager;->isSandBoxContext:Z

    if-eq p1, v0, :cond_42

    .line 2
    sput-boolean p1, Lcom/taobao/weex/bridge/WXBridgeManager;->isSandBoxContext:Z

    .line 4
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSThread()Z

    move-result p1

    if-eqz p1, :cond_3a

    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->setJSFrameworkInit(Z)V

    .line 7
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->resetAllModuleState()V

    .line 9
    sget-boolean p1, Lcom/taobao/weex/bridge/WXBridgeManager;->isSandBoxContext:Z

    if-nez p1, :cond_22

    .line 10
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object p1

    const-string v0, "main.js"

    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXFileUtils;->loadAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2d

    .line 12
    :cond_22
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object p1

    const-string/jumbo v0, "weex-main-jsfm.js"

    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXFileUtils;->loadAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 14
    :goto_2d
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->initFramework(Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcom/taobao/weex/bridge/WXServiceManager;->reload()V

    .line 16
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->reload()V

    .line 17
    invoke-static {}, Lcom/taobao/weex/ui/WXComponentRegistry;->reload()V

    return-void

    .line 19
    :cond_3a
    new-instance p1, Lcom/taobao/weex/bridge/WXBridgeManager$3;

    invoke-direct {p1, p0}, Lcom/taobao/weex/bridge/WXBridgeManager$3;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;)V

    invoke-virtual {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    :cond_42
    return-void
.end method

.method public declared-synchronized setStackTopInstance(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$5;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager$5;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;Ljava/lang/Object;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public setStyleHeight(Ljava/lang/String;Ljava/lang/String;F)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleHeight(Ljava/lang/String;Ljava/lang/String;FZ)V

    return-void
.end method

.method public setStyleHeight(Ljava/lang/String;Ljava/lang/String;FZ)V
    .registers 6

    .line 2
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    return-void

    .line 3
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/taobao/weex/common/IWXBridge;->setStyleHeight(Ljava/lang/String;Ljava/lang/String;FZ)V

    return-void
.end method

.method public setStyleWidth(Ljava/lang/String;Ljava/lang/String;F)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleWidth(Ljava/lang/String;Ljava/lang/String;FZ)V

    return-void
.end method

.method public setStyleWidth(Ljava/lang/String;Ljava/lang/String;FZ)V
    .registers 6

    .line 2
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    return-void

    .line 3
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/taobao/weex/common/IWXBridge;->setStyleWidth(Ljava/lang/String;Ljava/lang/String;FZ)V

    return-void
.end method

.method setTimeout(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    new-instance v1, Lcom/taobao/weex/bridge/WXBridgeManager$TimerInfo;

    invoke-direct {v1}, Lcom/taobao/weex/bridge/WXBridgeManager$TimerInfo;-><init>()V

    .line 4
    iput-object p1, v1, Lcom/taobao/weex/bridge/WXBridgeManager$TimerInfo;->callbackId:Ljava/lang/String;

    .line 5
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    float-to-long p1, p1

    iput-wide p1, v1, Lcom/taobao/weex/bridge/WXBridgeManager$TimerInfo;->time:J

    .line 6
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public setUseSingleProcess(Z)V
    .registers 3

    .line 1
    sget-boolean v0, Lcom/taobao/weex/bridge/WXBridgeManager;->isUseSingleProcess:Z

    if-eq p1, v0, :cond_6

    .line 2
    sput-boolean p1, Lcom/taobao/weex/bridge/WXBridgeManager;->isUseSingleProcess:Z

    :cond_6
    return-void
.end method

.method public setViewPortWidth(Ljava/lang/String;F)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2}, Lcom/taobao/weex/common/IWXBridge;->setViewPortWidth(Ljava/lang/String;F)V

    :cond_b
    return-void
.end method

.method public shouldReloadCurrentInstance(Ljava/lang/String;)Z
    .registers 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKManager;->getWxConfigAdapter()Lcom/taobao/weex/adapter/IWXConfigAdapter;

    move-result-object v2

    if-eqz v2, :cond_4c

    .line 6
    const-string v3, "check_biz_url"

    const-string/jumbo v4, "true"

    const-string v5, "android_weex_ext_config"

    invoke-interface {v2, v5, v3, v4}, Lcom/taobao/weex/adapter/IWXConfigAdapter;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "check_biz_url : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    if-eqz v2, :cond_4c

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4c

    .line 13
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_4c

    .line 15
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 20
    :cond_4c
    sget-object v2, Lcom/taobao/weex/bridge/WXBridgeManager;->crashUrl:Ljava/lang/String;

    if-eqz v2, :cond_67

    if-eqz v2, :cond_58

    .line 21
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 22
    :cond_58
    sget-wide v2, Lcom/taobao/weex/bridge/WXBridgeManager;->lastCrashTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3a98

    cmp-long v6, v2, v4

    if-lez v6, :cond_63

    goto :goto_67

    .line 28
    :cond_63
    sput-wide v0, Lcom/taobao/weex/bridge/WXBridgeManager;->lastCrashTime:J

    const/4 p1, 0x0

    return p1

    .line 29
    :cond_67
    :goto_67
    sput-object p1, Lcom/taobao/weex/bridge/WXBridgeManager;->crashUrl:Ljava/lang/String;

    .line 30
    sput-wide v0, Lcom/taobao/weex/bridge/WXBridgeManager;->lastCrashTime:J

    const/4 p1, 0x1

    return p1
.end method

.method public stopRemoteDebug()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWxDebugProxy:Ljava/lang/Object;

    if-eqz v0, :cond_33

    .line 3
    :try_start_4
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->clazz_debugProxy:Ljava/lang/Class;

    if-nez v0, :cond_10

    .line 4
    const-string v0, "com.taobao.weex.devtools.debug.DebugServerProxy"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->clazz_debugProxy:Ljava/lang/Class;

    .line 6
    :cond_10
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->clazz_debugProxy:Ljava/lang/Class;

    if-eqz v0, :cond_33

    .line 7
    const-string/jumbo v1, "stop"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 9
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWxDebugProxy:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWxDebugProxy:Ljava/lang/Object;
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_33

    :catchall_33
    :cond_33
    return-void
.end method

.method public varargs syncCallJSEventWithResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)Lcom/taobao/weex/bridge/EventResult;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/taobao/weex/bridge/EventResult;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2
    new-instance v3, Lcom/taobao/weex/bridge/WXBridgeManager$10;

    invoke-direct {v3, p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager$10;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/util/concurrent/CountDownLatch;)V

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 10
    :try_start_10
    invoke-direct/range {v2 .. v7}, Lcom/taobao/weex/bridge/WXBridgeManager;->asyncCallJSEventWithResult(Lcom/taobao/weex/bridge/EventResult;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V

    .line 11
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p2, 0x64

    invoke-virtual {v0, p2, p3, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1a} :catch_1b

    return-object v3

    :catch_1b
    move-exception v0

    move-object p1, v0

    .line 14
    const-string/jumbo p2, "syncCallJSEventWithResult"

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3
.end method

.method public syncExecJsOnInstanceWithResult(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 7

    .line 1
    const-string v0, ""

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2
    new-instance v2, Lcom/taobao/weex/bridge/WXBridgeManager$8;

    invoke-direct {v2, p0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager$8;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/util/concurrent/CountDownLatch;)V

    .line 10
    :try_start_d
    invoke-direct {p0, v2, p1, p2, p3}, Lcom/taobao/weex/bridge/WXBridgeManager;->execJSOnInstance(Lcom/taobao/weex/bridge/EventResult;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p2, 0x64

    invoke-virtual {v1, p2, p3, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 12
    invoke-virtual {v2}, Lcom/taobao/weex/bridge/EventResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_26

    .line 13
    invoke-virtual {v2}, Lcom/taobao/weex/bridge/EventResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_27

    return-object p1

    :cond_26
    return-object v0

    :catchall_27
    move-exception p1

    .line 17
    const-string/jumbo p2, "syncCallExecJsOnInstance"

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public takeJSHeapSnapshot(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 p1, 0xd

    .line 3
    iput p1, v0, Landroid/os/Message;->what:I

    .line 4
    iget-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 5
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public updateInitDeviceParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_29

    .line 4
    :cond_7
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$29;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager$29;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    .line 10
    new-instance p1, Lcom/taobao/weex/bridge/WXBridgeManager$30;

    invoke-direct {p1, p0, p2}, Lcom/taobao/weex/bridge/WXBridgeManager$30;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    .line 17
    new-instance p1, Lcom/taobao/weex/bridge/WXBridgeManager$31;

    invoke-direct {p1, p0, p3}, Lcom/taobao/weex/bridge/WXBridgeManager$31;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    if-eqz p4, :cond_29

    .line 25
    new-instance p1, Lcom/taobao/weex/bridge/WXBridgeManager$32;

    invoke-direct {p1, p0, p4}, Lcom/taobao/weex/bridge/WXBridgeManager$32;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    :cond_29
    :goto_29
    return-void
.end method

.method public verifyClientKeyPayload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    instance-of v1, v0, Lcom/taobao/weex/bridge/WXBridge;

    if-eqz v1, :cond_d

    .line 2
    check-cast v0, Lcom/taobao/weex/bridge/WXBridge;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/weex/bridge/WXBridge;->verifyClientKeyPayload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass1 (com.taobao.weex.bridge.WXBridgeManager$1)
.class Lcom/taobao/weex/bridge/WXBridgeManager$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->onInteractionTimeUpdate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$instanceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$1;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$1;->val$instanceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$1;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$000(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/weex/bridge/WXBridge;

    if-eqz v0, :cond_17

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$1;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$000(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/bridge/WXBridge;

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$1;->val$instanceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXBridge;->nativeOnInteractionTimeUpdate(Ljava/lang/String;)V

    :cond_17
    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass10 (com.taobao.weex.bridge.WXBridgeManager$10)
.class Lcom/taobao/weex/bridge/WXBridgeManager$10;
.super Lcom/taobao/weex/bridge/EventResult;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->syncCallJSEventWithResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)Lcom/taobao/weex/bridge/EventResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$waitLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$10;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$10;->val$waitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/taobao/weex/bridge/EventResult;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/taobao/weex/bridge/EventResult;->onCallback(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$10;->val$waitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass11 (com.taobao.weex.bridge.WXBridgeManager$11)
.class Lcom/taobao/weex/bridge/WXBridgeManager$11;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->asyncCallJSEventVoidResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$instanceId:Ljava/lang/String;

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$params:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;[Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$11;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$11;->val$args:[Ljava/lang/Object;

    iput-object p3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$11;->val$params:Ljava/util/List;

    iput-object p4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$11;->val$method:Ljava/lang/String;

    iput-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager$11;->val$instanceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$11;->val$args:[Ljava/lang/Object;

    if-eqz v0, :cond_6a

    array-length v0, v0

    if-nez v0, :cond_8

    goto :goto_6a

    .line 5
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$11;->val$args:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v2, :cond_1c

    aget-object v5, v1, v4

    .line 7
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 9
    :cond_1c
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$11;->val$params:Ljava/util/List;

    if-eqz v1, :cond_30

    .line 10
    new-instance v1, Landroidx/collection/ArrayMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroidx/collection/ArrayMap;-><init>(I)V

    .line 11
    const-string v2, "params"

    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$11;->val$params:Ljava/util/List;

    invoke-virtual {v1, v2, v4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_30
    new-instance v1, Lcom/taobao/weex/bridge/WXHashMap;

    invoke-direct {v1}, Lcom/taobao/weex/bridge/WXHashMap;-><init>()V

    .line 16
    const-string v2, "method"

    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$11;->val$method:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/taobao/weex/bridge/WXHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string v2, "args"

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/bridge/WXHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 18
    new-array v2, v0, [Ljava/lang/Object;

    aput-object v1, v2, v3

    const/4 v1, 0x2

    .line 19
    new-array v8, v1, [Lcom/taobao/weex/bridge/WXJSObject;

    new-instance v4, Lcom/taobao/weex/bridge/WXJSObject;

    iget-object v5, p0, Lcom/taobao/weex/bridge/WXBridgeManager$11;->val$instanceId:Ljava/lang/String;

    invoke-direct {v4, v1, v5}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    aput-object v4, v8, v3

    .line 21
    invoke-static {v2}, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->toWsonOrJsonWXJSObject(Ljava/lang/Object;)Lcom/taobao/weex/bridge/WXJSObject;

    move-result-object v1

    aput-object v1, v8, v0

    .line 22
    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$11;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$11;->val$instanceId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "callJS"

    const/4 v9, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)V

    const/4 v0, 0x0

    .line 23
    aput-object v0, v8, v3
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6a} :catch_6b

    :cond_6a
    :goto_6a
    return-void

    :catch_6b
    move-exception v0

    .line 26
    const-string v1, "asyncCallJSEventVoidResult"

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass12 (com.taobao.weex.bridge.WXBridgeManager$12)
.class Lcom/taobao/weex/bridge/WXBridgeManager$12;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->asyncCallJSEventWithResult(Lcom/taobao/weex/bridge/EventResult;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$eventCallback:Lcom/taobao/weex/bridge/EventResult;

.field final synthetic val$instanceId:Ljava/lang/String;

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$params:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;[Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/EventResult;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$12;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$12;->val$args:[Ljava/lang/Object;

    iput-object p3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$12;->val$params:Ljava/util/List;

    iput-object p4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$12;->val$method:Ljava/lang/String;

    iput-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager$12;->val$instanceId:Ljava/lang/String;

    iput-object p6, p0, Lcom/taobao/weex/bridge/WXBridgeManager$12;->val$eventCallback:Lcom/taobao/weex/bridge/EventResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$12;->val$args:[Ljava/lang/Object;

    if-eqz v0, :cond_76

    array-length v0, v0

    if-nez v0, :cond_8

    goto :goto_76

    .line 5
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$12;->val$args:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v2, :cond_1c

    aget-object v5, v1, v4

    .line 7
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 9
    :cond_1c
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$12;->val$params:Ljava/util/List;

    if-eqz v1, :cond_30

    .line 10
    new-instance v1, Landroidx/collection/ArrayMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroidx/collection/ArrayMap;-><init>(I)V

    .line 11
    const-string v2, "params"

    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$12;->val$params:Ljava/util/List;

    invoke-virtual {v1, v2, v4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_30
    new-instance v1, Lcom/taobao/weex/bridge/WXHashMap;

    invoke-direct {v1}, Lcom/taobao/weex/bridge/WXHashMap;-><init>()V

    .line 16
    const-string v2, "method"

    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$12;->val$method:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/taobao/weex/bridge/WXHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string v2, "args"

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/bridge/WXHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 18
    new-array v2, v0, [Ljava/lang/Object;

    aput-object v1, v2, v3

    const/4 v1, 0x2

    .line 19
    new-array v8, v1, [Lcom/taobao/weex/bridge/WXJSObject;

    new-instance v4, Lcom/taobao/weex/bridge/WXJSObject;

    iget-object v5, p0, Lcom/taobao/weex/bridge/WXBridgeManager$12;->val$instanceId:Ljava/lang/String;

    invoke-direct {v4, v1, v5}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    aput-object v4, v8, v3

    .line 21
    invoke-static {v2}, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->toWsonOrJsonWXJSObject(Ljava/lang/Object;)Lcom/taobao/weex/bridge/WXJSObject;

    move-result-object v1

    aput-object v1, v8, v0

    .line 23
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$12;->val$eventCallback:Lcom/taobao/weex/bridge/EventResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_64

    .line 24
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$12$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/bridge/WXBridgeManager$12$1;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager$12;)V

    move-object v9, v0

    goto :goto_65

    :cond_64
    move-object v9, v1

    .line 34
    :goto_65
    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$12;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$12;->val$instanceId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "callJS"

    const/4 v10, 0x1

    const/4 v6, 0x0

    invoke-static/range {v4 .. v10}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$600(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Lcom/taobao/weex/bridge/ResultCallback;Z)V

    .line 36
    aput-object v1, v8, v3
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_76} :catch_77

    :cond_76
    :goto_76
    return-void

    :catch_77
    move-exception v0

    .line 38
    const-string v1, "asyncCallJSEventWithResult"

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass12.AnonymousClass1 (com.taobao.weex.bridge.WXBridgeManager$12$1)
.class Lcom/taobao/weex/bridge/WXBridgeManager$12$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/bridge/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taobao/weex/bridge/ResultCallback<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taobao/weex/bridge/WXBridgeManager$12;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager$12;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$12$1;->this$1:Lcom/taobao/weex/bridge/WXBridgeManager$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveResult(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager$12$1;->onReceiveResult([B)V

    return-void
.end method

.method public onReceiveResult([B)V
    .registers 4

    .line 2
    invoke-static {p1}, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->parseWsonOrJSON([B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/JSONArray;

    if-eqz p1, :cond_1a

    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-lez v0, :cond_1a

    .line 4
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$12$1;->this$1:Lcom/taobao/weex/bridge/WXBridgeManager$12;

    iget-object v0, v0, Lcom/taobao/weex/bridge/WXBridgeManager$12;->val$eventCallback:Lcom/taobao/weex/bridge/EventResult;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/taobao/weex/bridge/EventResult;->onCallback(Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass13 (com.taobao.weex.bridge.WXBridgeManager$13)
.class Lcom/taobao/weex/bridge/WXBridgeManager$13;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->addJSEventTask(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$instanceId:Ljava/lang/String;

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$params:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;[Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$13;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$13;->val$args:[Ljava/lang/Object;

    iput-object p3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$13;->val$params:Ljava/util/List;

    iput-object p4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$13;->val$method:Ljava/lang/String;

    iput-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager$13;->val$instanceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$13;->val$args:[Ljava/lang/Object;

    if-eqz v0, :cond_73

    array-length v0, v0

    if-nez v0, :cond_8

    goto :goto_73

    .line 5
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$13;->val$args:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_1b

    aget-object v4, v1, v3

    .line 7
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 9
    :cond_1b
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$13;->val$params:Ljava/util/List;

    if-eqz v1, :cond_2f

    .line 10
    new-instance v1, Landroidx/collection/ArrayMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroidx/collection/ArrayMap;-><init>(I)V

    .line 11
    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$13;->val$params:Ljava/util/List;

    const-string v3, "params"

    invoke-virtual {v1, v3, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_2f
    new-instance v1, Lcom/taobao/weex/bridge/WXHashMap;

    invoke-direct {v1}, Lcom/taobao/weex/bridge/WXHashMap;-><init>()V

    .line 16
    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$13;->val$method:Ljava/lang/String;

    const-string v3, "method"

    invoke-virtual {v1, v3, v2}, Lcom/taobao/weex/bridge/WXHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string v2, "args"

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/bridge/WXHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$13;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$400(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/bridge/WXHashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$13;->val$instanceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_62

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$13;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$400(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/bridge/WXHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$13;->val$instanceId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/bridge/WXHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 25
    :cond_62
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$13;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$400(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/bridge/WXHashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$13;->val$instanceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_73
    :goto_73
    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass14 (com.taobao.weex.bridge.WXBridgeManager$14)
.class Lcom/taobao/weex/bridge/WXBridgeManager$14;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->fireEventOnDataRenderNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$data:Ljava/util/Map;

.field final synthetic val$domChanges:Ljava/util/Map;

.field final synthetic val$instanceId:Ljava/lang/String;

.field final synthetic val$ref:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$14;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$14;->val$instanceId:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$14;->val$data:Ljava/util/Map;

    iput-object p4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$14;->val$ref:Ljava/lang/String;

    iput-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager$14;->val$type:Ljava/lang/String;

    iput-object p6, p0, Lcom/taobao/weex/bridge/WXBridgeManager$14;->val$domChanges:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 1
    const-string v1, "fireEventOnDataRenderNode"

    .line 0
    const-string v0, "fireEventOnDataRenderNode >>>> instanceId:"

    .line 1
    :try_start_4
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$14;->val$instanceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$14;->val$instanceId:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", data:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$14;->val$data:Ljava/util/Map;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 7
    :cond_32
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$14;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$000(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/weex/bridge/WXBridge;

    if-eqz v0, :cond_77

    .line 8
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$14;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$000(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/taobao/weex/bridge/WXBridge;

    iget-object v5, p0, Lcom/taobao/weex/bridge/WXBridgeManager$14;->val$instanceId:Ljava/lang/String;

    iget-object v6, p0, Lcom/taobao/weex/bridge/WXBridgeManager$14;->val$ref:Ljava/lang/String;

    iget-object v7, p0, Lcom/taobao/weex/bridge/WXBridgeManager$14;->val$type:Ljava/lang/String;

    .line 9
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$14;->val$data:Ljava/util/Map;
    :try_end_4d
    .catchall {:try_start_4 .. :try_end_4d} :catchall_80

    const-string/jumbo v8, "{}"

    if-eqz v0, :cond_60

    :try_start_52
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_59

    goto :goto_60

    :cond_59
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$14;->val$data:Ljava/util/Map;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_61

    :cond_60
    :goto_60
    move-object v0, v8

    .line 11
    :goto_61
    iget-object v9, p0, Lcom/taobao/weex/bridge/WXBridgeManager$14;->val$domChanges:Ljava/util/Map;

    if-eqz v9, :cond_72

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6c

    goto :goto_72

    :cond_6c
    iget-object v8, p0, Lcom/taobao/weex/bridge/WXBridgeManager$14;->val$domChanges:Ljava/util/Map;

    invoke-static {v8}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :cond_72
    :goto_72
    move-object v9, v8

    move-object v8, v0

    .line 13
    invoke-virtual/range {v4 .. v9}, Lcom/taobao/weex/bridge/WXBridge;->fireEventOnDataRenderNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {v1, v4, v5}, Lcom/taobao/weex/utils/WXLogUtils;->renderPerformanceLog(Ljava/lang/String;J)V
    :try_end_7f
    .catchall {:try_start_52 .. :try_end_7f} :catchall_80

    return-void

    :catchall_80
    move-exception v0

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[WXBridgeManager] fireEventOnDataRenderNode "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$14;->val$instanceId:Ljava/lang/String;

    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v0, v4}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 23
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass15 (com.taobao.weex.bridge.WXBridgeManager$15)
.class Lcom/taobao/weex/bridge/WXBridgeManager$15;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->callbackJavascriptOnDataRender(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$callback:Ljava/lang/String;

.field final synthetic val$data:Ljava/lang/Object;

.field final synthetic val$instanceId:Ljava/lang/String;

.field final synthetic val$keepAlive:Z


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->val$data:Ljava/lang/Object;

    iput-object p3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->val$instanceId:Ljava/lang/String;

    iput-object p4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->val$callback:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->val$keepAlive:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const-string v0, "callbackJavascriptOnDataRender"

    const-string v1, "callbackJavascriptOnDataRender >>>> instanceId:"

    .line 1
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2
    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->val$data:Ljava/lang/Object;

    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->val$instanceId:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 7
    :cond_2d
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$000(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;

    move-result-object v1

    instance-of v1, v1, Lcom/taobao/weex/bridge/WXBridge;

    if-eqz v1, :cond_48

    .line 8
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$000(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/bridge/WXBridge;

    iget-object v5, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->val$instanceId:Ljava/lang/String;

    iget-object v6, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->val$callback:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->val$keepAlive:Z

    invoke-virtual {v1, v5, v6, v4, v7}, Lcom/taobao/weex/bridge/WXBridge;->invokeCallbackOnDataRender(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 10
    :cond_48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {v0, v4, v5}, Lcom/taobao/weex/utils/WXLogUtils;->renderPerformanceLog(Ljava/lang/String;J)V
    :try_end_50
    .catchall {:try_start_4 .. :try_end_50} :catchall_51

    return-void

    :catchall_51
    move-exception v1

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[WXBridgeManager] callbackJavascriptOnDataRender "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->val$instanceId:Ljava/lang/String;

    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v1, v4}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 16
    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass16 (com.taobao.weex.bridge.WXBridgeManager$16)
.class Lcom/taobao/weex/bridge/WXBridgeManager$16;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->refreshInstance(Ljava/lang/String;Lcom/taobao/weex/common/WXRefreshData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$instanceId:Ljava/lang/String;

.field final synthetic val$jsonData:Lcom/taobao/weex/common/WXRefreshData;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Lcom/taobao/weex/common/WXRefreshData;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$16;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$16;->val$instanceId:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$16;->val$jsonData:Lcom/taobao/weex/common/WXRefreshData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$16;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$16;->val$instanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$16;->val$jsonData:Lcom/taobao/weex/common/WXRefreshData;

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$700(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Lcom/taobao/weex/common/WXRefreshData;)V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass17 (com.taobao.weex.bridge.WXBridgeManager$17)
.class Lcom/taobao/weex/bridge/WXBridgeManager$17;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->createInstance(Ljava/lang/String;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$17;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$17;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$300(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass18 (com.taobao.weex.bridge.WXBridgeManager$18)
.class Lcom/taobao/weex/bridge/WXBridgeManager$18;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->createInstance(Ljava/lang/String;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$instance:Lcom/taobao/weex/WXSDKInstance;

.field final synthetic val$instanceId:Ljava/lang/String;

.field final synthetic val$options:Ljava/util/Map;

.field final synthetic val$template:Lcom/taobao/weex/Script;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$18;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$18;->val$instanceId:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$18;->val$instance:Lcom/taobao/weex/WXSDKInstance;

    iput-object p4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$18;->val$template:Lcom/taobao/weex/Script;

    iput-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager$18;->val$options:Ljava/util/Map;

    iput-object p6, p0, Lcom/taobao/weex/bridge/WXBridgeManager$18;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$18;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$000(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$18;->val$instanceId:Ljava/lang/String;

    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$18;->val$instance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object v4

    iget-wide v4, v4, Lcom/taobao/weex/common/WXPerformance;->renderTimeOrigin:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "renderTimeOrigin"

    invoke-interface {v2, v3, v5, v4}, Lcom/taobao/weex/common/IWXBridge;->setPageArgument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$18;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$000(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$18;->val$instance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$18;->val$instance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKInstance;->getRenderType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/taobao/weex/common/IWXBridge;->setInstanceRenderType(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$18;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iget-object v3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$18;->val$instance:Lcom/taobao/weex/WXSDKInstance;

    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$18;->val$template:Lcom/taobao/weex/Script;

    iget-object v5, p0, Lcom/taobao/weex/bridge/WXBridgeManager$18;->val$options:Ljava/util/Map;

    iget-object v6, p0, Lcom/taobao/weex/bridge/WXBridgeManager$18;->val$data:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$800(Lcom/taobao/weex/bridge/WXBridgeManager;Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 6
    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$18;->val$instance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object v4

    sub-long/2addr v2, v0

    iput-wide v2, v4, Lcom/taobao/weex/common/WXPerformance;->callCreateInstanceTime:J

    .line 7
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$18;->val$instance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$18;->val$instance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object v1

    iget-wide v1, v1, Lcom/taobao/weex/common/WXPerformance;->callCreateInstanceTime:J

    iput-wide v1, v0, Lcom/taobao/weex/common/WXPerformance;->communicateTime:J

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass19 (com.taobao.weex.bridge.WXBridgeManager$19)
.class Lcom/taobao/weex/bridge/WXBridgeManager$19;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->destroyInstance(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$instanceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$19;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$19;->val$instanceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$19;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$19;->val$instanceId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$900(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$19;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$19;->val$instanceId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$1000(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass2 (com.taobao.weex.bridge.WXBridgeManager$2)
.class Lcom/taobao/weex/bridge/WXBridgeManager$2;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->checkJsEngineMultiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$2;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->reload()V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass20 (com.taobao.weex.bridge.WXBridgeManager$20)
.class Lcom/taobao/weex/bridge/WXBridgeManager$20;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$args:[Lcom/taobao/weex/bridge/WXJSObject;

.field final synthetic val$function:Ljava/lang/String;

.field final synthetic val$instanceId:Ljava/lang/String;

.field final synthetic val$namespace:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$20;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$20;->val$instanceId:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$20;->val$namespace:Ljava/lang/String;

    iput-object p4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$20;->val$function:Ljava/lang/String;

    iput-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager$20;->val$args:[Lcom/taobao/weex/bridge/WXJSObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$20;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$000(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$20;->val$instanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$20;->val$namespace:Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$20;->val$function:Ljava/lang/String;

    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$20;->val$args:[Lcom/taobao/weex/bridge/WXJSObject;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/taobao/weex/common/IWXBridge;->execJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)I

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass21 (com.taobao.weex.bridge.WXBridgeManager$21)
.class Lcom/taobao/weex/bridge/WXBridgeManager$21;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->execJSOnInstance(Lcom/taobao/weex/bridge/EventResult;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$eventCallback:Lcom/taobao/weex/bridge/EventResult;

.field final synthetic val$instanceId:Ljava/lang/String;

.field final synthetic val$js:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;ILcom/taobao/weex/bridge/EventResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$21;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$21;->val$instanceId:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$21;->val$js:Ljava/lang/String;

    iput p4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$21;->val$type:I

    iput-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager$21;->val$eventCallback:Lcom/taobao/weex/bridge/EventResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$21;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$21;->val$instanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$21;->val$js:Ljava/lang/String;

    iget v3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$21;->val$type:I

    invoke-static {v0, v1, v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$500(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$21;->val$eventCallback:Lcom/taobao/weex/bridge/EventResult;

    invoke-virtual {v1, v0}, Lcom/taobao/weex/bridge/EventResult;->onCallback(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass22 (com.taobao.weex.bridge.WXBridgeManager$22)
.class Lcom/taobao/weex/bridge/WXBridgeManager$22;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->trackComponentAndModulesTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$22;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/taobao/weex/WXEnvironment;->sSDKInitStart:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/taobao/weex/WXEnvironment;->sComponentsAndModulesReadyTime:J

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass23 (com.taobao.weex.bridge.WXBridgeManager$23)
.class Lcom/taobao/weex/bridge/WXBridgeManager$23;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->registerModules(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$modules:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$23;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$23;->val$modules:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$23;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$23;->val$modules:Ljava/util/Map;

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$1100(Lcom/taobao/weex/bridge/WXBridgeManager;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$1200(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass24 (com.taobao.weex.bridge.WXBridgeManager$24)
.class Lcom/taobao/weex/bridge/WXBridgeManager$24;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->registerComponents(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$components:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$24;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$24;->val$components:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$24;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$24;->val$components:Ljava/util/List;

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$1300(Lcom/taobao/weex/bridge/WXBridgeManager;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$1400(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass25 (com.taobao.weex.bridge.WXBridgeManager$25)
.class Lcom/taobao/weex/bridge/WXBridgeManager$25;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->execJSService(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$service:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$25;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$25;->val$service:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$25;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$25;->val$service:Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$1500(Lcom/taobao/weex/bridge/WXBridgeManager;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$1600(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass26 (com.taobao.weex.bridge.WXBridgeManager$26)
.class Lcom/taobao/weex/bridge/WXBridgeManager$26;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->updateGlobalConfig(Ljava/lang/String;)V
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
.method public run()V
    .registers 3

    .line 1
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    if-eqz v0, :cond_25

    .line 2
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-virtual {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 3
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$000(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/weex/bridge/WXBridge;

    if-eqz v0, :cond_25

    .line 4
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$000(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/bridge/WXBridge;

    .line 5
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$1700()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXBridge;->nativeUpdateGlobalConfig(Ljava/lang/String;)V

    .line 9
    :cond_25
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$1700()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wson_off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x0

    .line 10
    sput-boolean v0, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->USE_WSON:Z

    return-void

    :cond_36
    const/4 v0, 0x1

    .line 12
    sput-boolean v0, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->USE_WSON:Z

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass27 (com.taobao.weex.bridge.WXBridgeManager$27)
.class Lcom/taobao/weex/bridge/WXBridgeManager$27;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->notifySerializeCodeCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$27;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$27;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-virtual {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 4
    :cond_9
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$27;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v2, 0x0

    const-string v3, "notifySerializeCodeCache"

    const-string v4, ""

    invoke-static {v0, v4, v2, v3, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$1800(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass28 (com.taobao.weex.bridge.WXBridgeManager$28)
.class Lcom/taobao/weex/bridge/WXBridgeManager$28;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->setDeviceDisplay(Ljava/lang/String;FFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$deviceHeight:F

.field final synthetic val$deviceWidth:F

.field final synthetic val$instanceId:Ljava/lang/String;

.field final synthetic val$scale:F


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;FFF)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$28;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$28;->val$instanceId:Ljava/lang/String;

    iput p3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$28;->val$deviceWidth:F

    iput p4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$28;->val$deviceHeight:F

    iput p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager$28;->val$scale:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$28;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$000(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$28;->val$instanceId:Ljava/lang/String;

    iget v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$28;->val$deviceWidth:F

    iget v3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$28;->val$deviceHeight:F

    iget v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$28;->val$scale:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/taobao/weex/common/IWXBridge;->setDeviceDisplay(Ljava/lang/String;FFF)V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass29 (com.taobao.weex.bridge.WXBridgeManager$29)
.class Lcom/taobao/weex/bridge/WXBridgeManager$29;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->updateInitDeviceParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$width:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$29;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$29;->val$width:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$29;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$000(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$29;->val$width:Ljava/lang/String;

    const-string v2, "deviceWidth"

    invoke-interface {v0, v2, v1, v2}, Lcom/taobao/weex/common/IWXBridge;->updateInitFrameworkParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass3 (com.taobao.weex.bridge.WXBridgeManager$3)
.class Lcom/taobao/weex/bridge/WXBridgeManager$3;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->setSandBoxContext(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$3;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$3;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$100(Lcom/taobao/weex/bridge/WXBridgeManager;Z)V

    .line 2
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->resetAllModuleState()V

    .line 4
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$200()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 5
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "main.js"

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXFileUtils;->loadAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    .line 7
    :cond_1a
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "weex-main-jsfm.js"

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXFileUtils;->loadAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 9
    :goto_25
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$3;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$300(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/taobao/weex/bridge/WXServiceManager;->reload()V

    .line 11
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->reload()V

    .line 12
    invoke-static {}, Lcom/taobao/weex/ui/WXComponentRegistry;->reload()V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass30 (com.taobao.weex.bridge.WXBridgeManager$30)
.class Lcom/taobao/weex/bridge/WXBridgeManager$30;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->updateInitDeviceParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$height:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$30;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$30;->val$height:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$30;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$000(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$30;->val$height:Ljava/lang/String;

    const-string v2, "deviceHeight"

    invoke-interface {v0, v2, v1, v2}, Lcom/taobao/weex/common/IWXBridge;->updateInitFrameworkParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass31 (com.taobao.weex.bridge.WXBridgeManager$31)
.class Lcom/taobao/weex/bridge/WXBridgeManager$31;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->updateInitDeviceParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$density:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$31;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$31;->val$density:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$31;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$000(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$31;->val$density:Ljava/lang/String;

    const-string v2, "scale"

    invoke-interface {v0, v2, v1, v2}, Lcom/taobao/weex/common/IWXBridge;->updateInitFrameworkParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass32 (com.taobao.weex.bridge.WXBridgeManager$32)
.class Lcom/taobao/weex/bridge/WXBridgeManager$32;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->updateInitDeviceParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$statusHeight:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$32;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$32;->val$statusHeight:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$32;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$000(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$32;->val$statusHeight:Ljava/lang/String;

    const-string v2, "androidStatusBarHeight"

    invoke-interface {v0, v2, v1, v2}, Lcom/taobao/weex/common/IWXBridge;->updateInitFrameworkParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass4 (com.taobao.weex.bridge.WXBridgeManager$4)
.class Lcom/taobao/weex/bridge/WXBridgeManager$4;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/common/IWXDebugConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->initWXBridge(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$4;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWXDebugJsBridge()Lcom/taobao/weex/bridge/WXDebugJsBridge;
    .registers 2

    .line 1
    new-instance v0, Lcom/taobao/weex/bridge/WXDebugJsBridge;

    invoke-direct {v0}, Lcom/taobao/weex/bridge/WXDebugJsBridge;-><init>()V

    return-object v0
.end method

.method public getWXJSManager()Lcom/taobao/weex/bridge/WXBridgeManager;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$4;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    return-object v0
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass5 (com.taobao.weex.bridge.WXBridgeManager$5)
.class Lcom/taobao/weex/bridge/WXBridgeManager$5;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->setStackTopInstance(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$instanceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$5;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$5;->val$instanceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$5;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$400(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/bridge/WXHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$5;->val$instanceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXHashMap;->setStackTopInstance(Ljava/lang/String;)V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass6 (com.taobao.weex.bridge.WXBridgeManager$6)
.class Lcom/taobao/weex/bridge/WXBridgeManager$6;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->setLogLevel(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$isPerf:Z

.field final synthetic val$level:I


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$6;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$6;->val$level:I

    iput-boolean p3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$6;->val$isPerf:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$6;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$000(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$6;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$000(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;

    move-result-object v0

    iget v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$6;->val$level:I

    int-to-float v1, v1

    iget-boolean v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$6;->val$isPerf:Z

    invoke-interface {v0, v1, v2}, Lcom/taobao/weex/common/IWXBridge;->setLogType(FZ)V

    :cond_16
    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass7 (com.taobao.weex.bridge.WXBridgeManager$7)
.class Lcom/taobao/weex/bridge/WXBridgeManager$7;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->callReportCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$extInfo:Ljava/util/Map;

.field final synthetic val$instanceId:Ljava/lang/String;

.field final synthetic val$origin_filename:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$7;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$7;->val$origin_filename:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$7;->val$instanceId:Ljava/lang/String;

    iput-object p4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$7;->val$url:Ljava/lang/String;

    iput-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager$7;->val$extInfo:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$7;->val$origin_filename:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_6c

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_7b

    .line 6
    :try_start_1c
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$7;->val$origin_filename:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 9
    :goto_28
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4c

    .line 10
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    goto :goto_28

    .line 16
    :cond_37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_28

    .line 18
    :cond_4c
    iget-object v3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$7;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    const-string v4, "jsBridge"

    sget-object v5, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JSC_CRASH:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/taobao/weex/bridge/WXBridgeManager$7;->val$instanceId:Ljava/lang/String;

    iget-object v8, p0, Lcom/taobao/weex/bridge/WXBridgeManager$7;->val$url:Ljava/lang/String;

    iget-object v9, p0, Lcom/taobao/weex/bridge/WXBridgeManager$7;->val$extInfo:Ljava/util/Map;

    invoke-virtual/range {v3 .. v9}, Lcom/taobao/weex/bridge/WXBridgeManager;->commitJscCrashAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 19
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_62} :catch_63
    .catchall {:try_start_1c .. :try_end_62} :catchall_7b

    goto :goto_71

    :catch_63
    move-exception v0

    .line 21
    :try_start_64
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_71

    .line 24
    :cond_6c
    const-string v0, "[WXBridgeManager] callReportCrash crash file is empty"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 26
    :goto_71
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-nez v0, :cond_81

    .line 27
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_7a
    .catchall {:try_start_64 .. :try_end_7a} :catchall_7b

    goto :goto_81

    :catchall_7b
    move-exception v0

    .line 30
    const-string v1, "[WXBridgeManager] callReportCrash exception: "

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_81
    :goto_81
    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass8 (com.taobao.weex.bridge.WXBridgeManager$8)
.class Lcom/taobao/weex/bridge/WXBridgeManager$8;
.super Lcom/taobao/weex/bridge/EventResult;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->syncExecJsOnInstanceWithResult(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$waitLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$8;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$8;->val$waitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/taobao/weex/bridge/EventResult;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/taobao/weex/bridge/EventResult;->onCallback(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$8;->val$waitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.AnonymousClass9 (com.taobao.weex.bridge.WXBridgeManager$9)
.class Lcom/taobao/weex/bridge/WXBridgeManager$9;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->loadJsBundleInPreInitMode(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$instanceId:Ljava/lang/String;

.field final synthetic val$js:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$9;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$9;->val$instanceId:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$9;->val$js:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$9;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$9;->val$instanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$9;->val$js:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$500(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getAllInstanceMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$9;->val$instanceId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_3d

    .line 3
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isPreInitMode()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 4
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v1

    const-string/jumbo v2, "wxEndLoadBundle"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/performance/WXInstanceApm;->onStage(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v0

    invoke-static {}, Lcom/taobao/weex/utils/WXUtils;->getFixUnixTime()J

    move-result-wide v1

    const-wide/16 v3, 0x258

    add-long/2addr v1, v3

    const-string/jumbo v3, "wxEndExecuteBundle"

    invoke-virtual {v0, v3, v1, v2}, Lcom/taobao/weex/performance/WXInstanceApm;->onStageWithTime(Ljava/lang/String;J)V

    :cond_3d
    return-void
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.BundType (com.taobao.weex.bridge.WXBridgeManager$BundType)
.class public final enum Lcom/taobao/weex/bridge/WXBridgeManager$BundType;
.super Ljava/lang/Enum;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BundType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/weex/bridge/WXBridgeManager$BundType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

.field public static final enum Others:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

.field public static final enum Rax:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

.field public static final enum Vue:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;


# direct methods
.method private static synthetic $values()[Lcom/taobao/weex/bridge/WXBridgeManager$BundType;
    .registers 3

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    sget-object v1, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Vue:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Rax:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Others:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    const-string v1, "Vue"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Vue:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    .line 2
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    const-string v1, "Rax"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Rax:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    .line 3
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    const-string v1, "Others"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Others:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    .line 4
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->$values()[Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->$VALUES:[Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/bridge/WXBridgeManager$BundType;
    .registers 2

    .line 1
    const-class v0, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    return-object p0
.end method

.method public static values()[Lcom/taobao/weex/bridge/WXBridgeManager$BundType;
    .registers 1

    .line 1
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->$VALUES:[Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    invoke-virtual {v0}, [Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    return-object v0
.end method

###### Class com.taobao.weex.bridge.WXBridgeManager.TimerInfo (com.taobao.weex.bridge.WXBridgeManager$TimerInfo)
.class public Lcom/taobao/weex/bridge/WXBridgeManager$TimerInfo;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimerInfo"
.end annotation


# instance fields
.field public callbackId:Ljava/lang/String;

.field public instanceId:Ljava/lang/String;

.field public time:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
