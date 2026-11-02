###### Class com.taobao.weex.bridge.WXModuleManager (com.taobao.weex.bridge.WXModuleManager)
.class public Lcom/taobao/weex/bridge/WXModuleManager;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# static fields
.field private static mBlackModuleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDomModuleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/module/WXDomModule;",
            ">;"
        }
    .end annotation
.end field

.field private static sGlobalModuleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXModule;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstanceModuleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXModule;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/bridge/ModuleFactoryImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sGlobalModuleMap:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sDomModuleMap:Ljava/util/Map;

    .line 10
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sInstanceModuleMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ConcurrentMap;
    .registers 1

    .line 1
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .registers 1

    .line 1
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sGlobalModuleMap:Ljava/util/Map;

    return-object v0
.end method

.method static callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;
    .registers 15

    const-string v1, "callModuleMethod >>> invoke module:"

    .line 1
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/bridge/ModuleFactoryImpl;

    iget-object v0, v0, Lcom/taobao/weex/bridge/ModuleFactoryImpl;->mFactory:Lcom/taobao/weex/bridge/ModuleFactory;

    const/4 v2, 0x0

    if-nez v0, :cond_15

    .line 3
    const-string p0, "[WXModuleManager] module factory not found."

    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    return-object v2

    .line 6
    :cond_15
    invoke-static {p0, p1, v0}, Lcom/taobao/weex/bridge/WXModuleManager;->findModule(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;)Lcom/taobao/weex/common/WXModule;

    move-result-object v3

    if-nez v3, :cond_1c

    return-object v2

    .line 10
    :cond_1c
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object p0

    .line 11
    iput-object p0, v3, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 12
    iput-object p0, v3, Lcom/taobao/weex/common/WXModule;->mUniSDKInstance:Lio/dcloud/feature/uniapp/AbsSDKInstance;

    .line 14
    invoke-interface {v0, p2}, Lcom/taobao/weex/bridge/JavascriptInvokable;->getMethodInvoker(Ljava/lang/String;)Lcom/taobao/weex/bridge/Invoker;

    move-result-object v0

    if-eqz p0, :cond_84

    .line 17
    :try_start_2e
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKManager;->getIWXUserTrackAdapter()Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    move-result-object v5

    if-eqz v5, :cond_71

    .line 19
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 20
    const-string v4, "errCode"

    const-string v6, "101"

    invoke-virtual {v10, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string v4, "arg"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string v4, "errMsg"

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v8, "invokeModule"

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v5 .. v10}, Lcom/taobao/weex/adapter/IWXUserTrackAdapter;->commit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/common/WXPerformance;Ljava/util/Map;)V

    .line 25
    :cond_71
    invoke-static {p0, v3, p3, v0}, Lcom/taobao/weex/bridge/WXModuleManager;->dispatchCallModuleMethod(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/common/WXModule;Lcom/alibaba/fastjson/JSONArray;Lcom/taobao/weex/bridge/Invoker;)Ljava/lang/Object;

    move-result-object p0
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_75} :catch_9b
    .catchall {:try_start_2e .. :try_end_75} :catchall_98

    .line 34
    instance-of p1, v3, Lcom/taobao/weex/ui/module/WXDomModule;

    if-nez p1, :cond_7f

    instance-of p1, v3, Lcom/taobao/weex/ui/module/WXTimerModule;

    if-eqz p1, :cond_7e

    goto :goto_7f

    :cond_7e
    return-object p0

    .line 35
    :cond_7f
    :goto_7f
    iput-object v2, v3, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 36
    iput-object v2, v3, Lcom/taobao/weex/common/WXModule;->mUniSDKInstance:Lio/dcloud/feature/uniapp/AbsSDKInstance;

    return-object p0

    .line 37
    :cond_84
    :try_start_84
    const-string p0, "callModuleMethod >>> instance is null"

    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_89} :catch_9b
    .catchall {:try_start_84 .. :try_end_89} :catchall_98

    .line 44
    instance-of p0, v3, Lcom/taobao/weex/ui/module/WXDomModule;

    if-nez p0, :cond_93

    instance-of p0, v3, Lcom/taobao/weex/ui/module/WXTimerModule;

    if-eqz p0, :cond_92

    goto :goto_93

    :cond_92
    return-object v2

    .line 45
    :cond_93
    :goto_93
    iput-object v2, v3, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 46
    iput-object v2, v3, Lcom/taobao/weex/common/WXModule;->mUniSDKInstance:Lio/dcloud/feature/uniapp/AbsSDKInstance;

    return-object v2

    :catchall_98
    move-exception v0

    move-object p0, v0

    goto :goto_c6

    :catch_9b
    move-exception v0

    move-object p0, v0

    .line 47
    :try_start_9d
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", method:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed. "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b9
    .catchall {:try_start_9d .. :try_end_b9} :catchall_98

    .line 50
    instance-of p0, v3, Lcom/taobao/weex/ui/module/WXDomModule;

    if-nez p0, :cond_c1

    instance-of p0, v3, Lcom/taobao/weex/ui/module/WXTimerModule;

    if-eqz p0, :cond_c5

    .line 51
    :cond_c1
    iput-object v2, v3, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 52
    iput-object v2, v3, Lcom/taobao/weex/common/WXModule;->mUniSDKInstance:Lio/dcloud/feature/uniapp/AbsSDKInstance;

    :cond_c5
    return-object v2

    .line 53
    :goto_c6
    instance-of p1, v3, Lcom/taobao/weex/ui/module/WXDomModule;

    if-nez p1, :cond_ce

    instance-of p1, v3, Lcom/taobao/weex/ui/module/WXTimerModule;

    if-eqz p1, :cond_d2

    .line 54
    :cond_ce
    iput-object v2, v3, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 55
    iput-object v2, v3, Lcom/taobao/weex/common/WXModule;->mUniSDKInstance:Lio/dcloud/feature/uniapp/AbsSDKInstance;

    .line 57
    :cond_d2
    throw p0
.end method

.method public static createDomModule(Lcom/taobao/weex/WXSDKInstance;)V
    .registers 4

    if-eqz p0, :cond_10

    .line 1
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sDomModuleMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/taobao/weex/ui/module/WXDomModule;

    invoke-direct {v2, p0}, Lcom/taobao/weex/ui/module/WXDomModule;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-void
.end method

.method public static destoryDomModule(Ljava/lang/String;)V
    .registers 2

    .line 1
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sDomModuleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static destroyInstanceModules(Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sDomModuleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_3b

    .line 3
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_17

    goto :goto_3b

    .line 6
    :cond_17
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 8
    :cond_1f
    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 9
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/common/WXModule;

    .line 11
    instance-of v1, v0, Lcom/taobao/weex/common/Destroyable;

    if-eqz v1, :cond_1f

    .line 12
    check-cast v0, Lcom/taobao/weex/common/Destroyable;

    invoke-interface {v0}, Lcom/taobao/weex/common/Destroyable;->destroy()V

    goto :goto_1f

    :cond_3b
    :goto_3b
    return-void
.end method

.method private static dispatchCallModuleMethod(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/common/WXModule;Lcom/alibaba/fastjson/JSONArray;Lcom/taobao/weex/bridge/Invoker;)Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->isPreRenderMode()Z

    move-result v0

    if-nez v0, :cond_f

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getNativeInvokeHelper()Lcom/taobao/weex/bridge/NativeInvokeHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p3, p2}, Lcom/taobao/weex/bridge/NativeInvokeHelper;->invoke(Ljava/lang/Object;Lcom/taobao/weex/bridge/Invoker;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 5
    :cond_f
    invoke-interface {p3}, Lcom/taobao/weex/bridge/Invoker;->isRunOnUIThread()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 p0, 0x0

    return-object p0

    .line 10
    :cond_17
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getNativeInvokeHelper()Lcom/taobao/weex/bridge/NativeInvokeHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p3, p2}, Lcom/taobao/weex/bridge/NativeInvokeHelper;->invoke(Ljava/lang/Object;Lcom/taobao/weex/bridge/Invoker;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static findModule(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;)Lcom/taobao/weex/common/WXModule;
    .registers 5

    .line 1
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sGlobalModuleMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/common/WXModule;

    if-nez v0, :cond_5c

    .line 5
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1e

    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 8
    sget-object v1, Lcom/taobao/weex/bridge/WXModuleManager;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_1e
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/common/WXModule;

    if-nez v1, :cond_5b

    .line 14
    :try_start_26
    instance-of v1, p2, Lcom/taobao/weex/ui/config/ConfigModuleFactory;

    if-eqz v1, :cond_39

    .line 15
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object p0

    .line 16
    check-cast p2, Lcom/taobao/weex/ui/config/ConfigModuleFactory;

    invoke-virtual {p2, p0}, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->buildInstance(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/common/WXModule;

    move-result-object p0

    goto :goto_3d

    .line 18
    :cond_39
    invoke-interface {p2}, Lcom/taobao/weex/bridge/ModuleFactory;->buildInstance()Lcom/taobao/weex/common/WXModule;

    move-result-object p0

    .line 20
    :goto_3d
    invoke-virtual {p0, p1}, Lcom/taobao/weex/common/WXModule;->setModuleName(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_40} :catch_44

    .line 25
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :catch_44
    move-exception p0

    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " module build instace failed."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0

    :cond_5b
    return-object v1

    :cond_5c
    return-object v0
.end method

.method private static getBlackList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->mBlackModuleList:Ljava/util/ArrayList;

    if-nez v0, :cond_42

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->mBlackModuleList:Ljava/util/ArrayList;

    .line 3
    const-string/jumbo v1, "webview"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->mBlackModuleList:Ljava/util/ArrayList;

    const-string v1, "animation"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->mBlackModuleList:Ljava/util/ArrayList;

    const-string v1, "binding"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->mBlackModuleList:Ljava/util/ArrayList;

    const-string v1, "bindingx"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->mBlackModuleList:Ljava/util/ArrayList;

    const-string v1, "instanceWrap"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->mBlackModuleList:Ljava/util/ArrayList;

    const-string v1, "meta"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->mBlackModuleList:Ljava/util/ArrayList;

    const-string v1, "navigator"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->mBlackModuleList:Ljava/util/ArrayList;

    const-string v1, "expressionBinding"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_42
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->mBlackModuleList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getDomModule(Ljava/lang/String;)Lcom/taobao/weex/ui/module/WXDomModule;
    .registers 2

    .line 1
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sDomModuleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/ui/module/WXDomModule;

    return-object p0
.end method

.method public static getRegisterJsModules()Lcom/alibaba/fastjson/JSONObject;
    .registers 5

    .line 1
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_65

    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_65

    .line 2
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 3
    sget-object v1, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    :try_start_27
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->getBlackList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_1b

    .line 8
    :cond_36
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/bridge/ModuleFactoryImpl;

    iget-object v3, v3, Lcom/taobao/weex/bridge/ModuleFactoryImpl;->mFactory:Lcom/taobao/weex/bridge/ModuleFactory;

    if-eqz v3, :cond_1b

    .line 9
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/bridge/ModuleFactoryImpl;

    iget-object v3, v3, Lcom/taobao/weex/bridge/ModuleFactoryImpl;->mFactory:Lcom/taobao/weex/bridge/ModuleFactory;

    invoke-interface {v3}, Lcom/taobao/weex/bridge/JavascriptInvokable;->getMethods()[Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/weex/bridge/ModuleFactoryImpl;

    iget-object v4, v4, Lcom/taobao/weex/bridge/ModuleFactoryImpl;->mFactory:Lcom/taobao/weex/bridge/ModuleFactory;

    invoke-static {v3, v4}, Lcom/taobao/weex/bridge/WXModuleManager;->modulesToJSONArray([Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 11
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_61
    .catchall {:try_start_27 .. :try_end_61} :catchall_62

    goto :goto_1b

    :catchall_62
    nop

    goto :goto_1b

    :cond_64
    return-object v0

    :cond_65
    const/4 v0, 0x0

    return-object v0
.end method

.method public static hasModule(Ljava/lang/String;)Z
    .registers 2

    .line 1
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sGlobalModuleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public static modulesToJSONArray([Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;)Lcom/alibaba/fastjson/JSONArray;
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_4d

    .line 1
    array-length v1, p0

    if-lez v1, :cond_4d

    const/4 v1, 0x0

    .line 2
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_4d

    if-nez v0, :cond_11

    .line 4
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 8
    :cond_11
    aget-object v2, p0, v1

    const-string v3, "addEventListener"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    aget-object v2, p0, v1

    const-string v3, "removeAllEventListeners"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 9
    aget-object v2, p0, v1

    .line 10
    invoke-interface {p1, v2}, Lcom/taobao/weex/bridge/JavascriptInvokable;->getMethodInvoker(Ljava/lang/String;)Lcom/taobao/weex/bridge/Invoker;

    move-result-object v2

    invoke-interface {v2}, Lcom/taobao/weex/bridge/Invoker;->isRunOnUIThread()Z

    move-result v2

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_3e

    const-string v2, ":sync"

    goto :goto_40

    :cond_3e
    const-string v2, ":async"

    :goto_40
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_4d
    return-object v0
.end method

.method public static onActivityBack(Ljava/lang/String;)Z
    .registers 5

    .line 1
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_42

    .line 3
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/common/WXModule;

    if-eqz v2, :cond_2b

    .line 6
    invoke-virtual {v2}, Lcom/taobao/weex/common/WXModule;->onActivityBack()Z

    move-result p0

    return p0

    .line 8
    :cond_2b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityCreate can not find the "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " module"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    goto :goto_12

    :cond_42
    const/4 p0, 0x0

    return p0
.end method

.method public static onActivityCreate(Ljava/lang/String;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_41

    .line 3
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/common/WXModule;

    if-eqz v2, :cond_2a

    .line 6
    invoke-virtual {v2}, Lcom/taobao/weex/common/WXModule;->onActivityCreate()V

    goto :goto_12

    .line 8
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityCreate can not find the "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " module"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    goto :goto_12

    :cond_41
    return-void
.end method

.method public static onActivityDestroy(Ljava/lang/String;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_41

    .line 3
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/common/WXModule;

    if-eqz v2, :cond_2a

    .line 6
    invoke-virtual {v2}, Lcom/taobao/weex/common/WXModule;->onActivityDestroy()V

    goto :goto_12

    .line 8
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityDestroy can not find the "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " module"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    goto :goto_12

    :cond_41
    return-void
.end method

.method public static onActivityPause(Ljava/lang/String;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_41

    .line 3
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/common/WXModule;

    if-eqz v2, :cond_2a

    .line 6
    invoke-virtual {v2}, Lcom/taobao/weex/common/WXModule;->onActivityPause()V

    goto :goto_12

    .line 8
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityPause can not find the "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " module"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    goto :goto_12

    :cond_41
    return-void
.end method

.method public static onActivityResult(Ljava/lang/String;IILandroid/content/Intent;)V
    .registers 8

    .line 1
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_41

    .line 3
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/common/WXModule;

    if-eqz v2, :cond_2a

    .line 6
    invoke-virtual {v2, p1, p2, p3}, Lcom/taobao/weex/common/WXModule;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_12

    .line 8
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityResult can not find the "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " module"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    goto :goto_12

    :cond_41
    return-void
.end method

.method public static onActivityResume(Ljava/lang/String;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_41

    .line 3
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/common/WXModule;

    if-eqz v2, :cond_2a

    .line 6
    invoke-virtual {v2}, Lcom/taobao/weex/common/WXModule;->onActivityResume()V

    goto :goto_12

    .line 8
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityResume can not find the "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " module"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    goto :goto_12

    :cond_41
    return-void
.end method

.method public static onActivityStart(Ljava/lang/String;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_41

    .line 3
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/common/WXModule;

    if-eqz v2, :cond_2a

    .line 6
    invoke-virtual {v2}, Lcom/taobao/weex/common/WXModule;->onActivityStart()V

    goto :goto_12

    .line 8
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityStart can not find the "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " module"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    goto :goto_12

    :cond_41
    return-void
.end method

.method public static onActivityStop(Ljava/lang/String;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_41

    .line 3
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/common/WXModule;

    if-eqz v2, :cond_2a

    .line 6
    invoke-virtual {v2}, Lcom/taobao/weex/common/WXModule;->onActivityStop()V

    goto :goto_12

    .line 8
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityStop can not find the "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " module"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    goto :goto_12

    :cond_41
    return-void
.end method

.method public static onCreateOptionsMenu(Ljava/lang/String;Landroid/view/Menu;)Z
    .registers 6

    .line 1
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_41

    .line 3
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/common/WXModule;

    if-eqz v2, :cond_2a

    .line 6
    invoke-virtual {v2, p1}, Lcom/taobao/weex/common/WXModule;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    goto :goto_12

    .line 8
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityResult can not find the "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " module"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    goto :goto_12

    :cond_41
    const/4 p0, 0x0

    return p0
.end method

.method public static onRequestPermissionsResult(Ljava/lang/String;I[Ljava/lang/String;[I)V
    .registers 8

    .line 1
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sInstanceModuleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_41

    .line 3
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/common/WXModule;

    if-eqz v2, :cond_2a

    .line 6
    invoke-virtual {v2, p1, p2, p3}, Lcom/taobao/weex/common/WXModule;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_12

    .line 8
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityResult can not find the "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " module"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    goto :goto_12

    :cond_41
    return-void
.end method

.method static registerJSModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;)Z
    .registers 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-interface {p1}, Lcom/taobao/weex/bridge/JavascriptInvokable;->getMethods()[Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/WXSDKManager;->registerModules(Ljava/util/Map;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static registerModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;Z)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_2d

    if-nez p1, :cond_6

    goto :goto_2d

    .line 7
    :cond_6
    const-string v1, "dom"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 8
    const-string p0, "Cannot registered module with name \'dom\'."

    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    return v0

    .line 12
    :cond_14
    invoke-static {}, Lcom/taobao/weex/utils/cache/RegisterCache;->getInstance()Lcom/taobao/weex/utils/cache/RegisterCache;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/taobao/weex/utils/cache/RegisterCache;->cacheModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_20

    return v1

    .line 17
    :cond_20
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    new-instance v2, Lcom/taobao/weex/bridge/WXModuleManager$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/taobao/weex/bridge/WXModuleManager$2;-><init>(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;Z)V

    .line 18
    invoke-virtual {v0, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return v1

    :cond_2d
    :goto_2d
    return v0
.end method

.method public static registerModule(Ljava/util/Map;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/utils/cache/RegisterCache$ModuleCache;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 4
    :cond_8
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 5
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    new-instance v2, Lcom/taobao/weex/bridge/WXModuleManager$1;

    invoke-direct {v2, p0}, Lcom/taobao/weex/bridge/WXModuleManager$1;-><init>(Ljava/util/Iterator;)V

    .line 6
    invoke-virtual {v0, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return v1
.end method

.method static registerNativeModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;)Z
    .registers 4

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_4
    :try_start_4
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 2
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Lcom/taobao/weex/bridge/ModuleFactoryImpl;

    invoke-direct {v1, p1}, Lcom/taobao/weex/bridge/ModuleFactoryImpl;-><init>(Lcom/taobao/weex/bridge/ModuleFactory;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/ArrayStoreException; {:try_start_4 .. :try_end_16} :catch_17

    goto :goto_38

    :catch_17
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[WXModuleManager] registerNativeModule Error moduleName:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Error:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :cond_38
    :goto_38
    const/4 p0, 0x1

    return p0
.end method

.method public static registerWhenCreateInstance()V
    .registers 3

    .line 1
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_40

    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_40

    .line 2
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    :try_start_22
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/bridge/ModuleFactoryImpl;

    iget-boolean v2, v2, Lcom/taobao/weex/bridge/ModuleFactoryImpl;->hasRigster:Z

    if-nez v2, :cond_16

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/bridge/ModuleFactoryImpl;

    iget-object v1, v1, Lcom/taobao/weex/bridge/ModuleFactoryImpl;->mFactory:Lcom/taobao/weex/bridge/ModuleFactory;

    invoke-static {v2, v1}, Lcom/taobao/weex/bridge/WXModuleManager;->registerJSModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;)Z
    :try_end_3d
    .catchall {:try_start_22 .. :try_end_3d} :catchall_3e

    goto :goto_16

    :catchall_3e
    nop

    goto :goto_16

    :cond_40
    return-void
.end method

.method public static reload()V
    .registers 3

    .line 1
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_36

    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_36

    .line 2
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    :try_start_22
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/bridge/ModuleFactoryImpl;

    iget-object v1, v1, Lcom/taobao/weex/bridge/ModuleFactoryImpl;->mFactory:Lcom/taobao/weex/bridge/ModuleFactory;

    invoke-static {v2, v1}, Lcom/taobao/weex/bridge/WXModuleManager;->registerJSModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;)Z
    :try_end_33
    .catchall {:try_start_22 .. :try_end_33} :catchall_34

    goto :goto_16

    :catchall_34
    nop

    goto :goto_16

    :cond_36
    return-void
.end method

.method public static resetAllModuleState()V
    .registers 3

    .line 1
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_2c

    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2c

    .line 2
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/bridge/ModuleFactoryImpl;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/taobao/weex/bridge/ModuleFactoryImpl;->hasRigster:Z

    goto :goto_16

    :cond_2c
    return-void
.end method

.method public static resetModuleState(Ljava/lang/String;Z)V
    .registers 5

    .line 1
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_3f

    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3f

    .line 2
    sget-object v0, Lcom/taobao/weex/bridge/WXModuleManager;->sModuleFactoryMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    :try_start_22
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/bridge/ModuleFactoryImpl;

    iput-boolean p1, v1, Lcom/taobao/weex/bridge/ModuleFactoryImpl;->hasRigster:Z
    :try_end_3c
    .catchall {:try_start_22 .. :try_end_3c} :catchall_3d

    goto :goto_16

    :catchall_3d
    nop

    goto :goto_16

    :cond_3f
    return-void
.end method

###### Class com.taobao.weex.bridge.WXModuleManager.AnonymousClass1 (com.taobao.weex.bridge.WXModuleManager$1)
.class Lcom/taobao/weex/bridge/WXModuleManager$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXModuleManager;->registerModule(Ljava/util/Map;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXModuleManager$1;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    :goto_5
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXModuleManager$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 4
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXModuleManager$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/utils/cache/RegisterCache$ModuleCache;

    .line 6
    iget-object v2, v1, Lcom/taobao/weex/utils/cache/RegisterCache$ModuleCache;->name:Ljava/lang/String;

    .line 7
    const-string v3, "dom"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 8
    const-string v1, "Cannot registered module with name \'dom\'."

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_5

    .line 12
    :cond_2b
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->access$000()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    if-eqz v3, :cond_4c

    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->access$000()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "WXComponentRegistry Duplicate the Module name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    .line 15
    :cond_4c
    iget-object v3, v1, Lcom/taobao/weex/utils/cache/RegisterCache$ModuleCache;->factory:Lcom/taobao/weex/bridge/ModuleFactory;

    .line 17
    :try_start_4e
    invoke-static {v2, v3}, Lcom/taobao/weex/bridge/WXModuleManager;->registerNativeModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;)Z
    :try_end_51
    .catch Lcom/taobao/weex/common/WXException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_64

    :catch_52
    move-exception v4

    .line 19
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "registerNativeModule"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 22
    :goto_64
    iget-boolean v1, v1, Lcom/taobao/weex/utils/cache/RegisterCache$ModuleCache;->global:Z

    if-eqz v1, :cond_8c

    .line 24
    :try_start_68
    invoke-interface {v3}, Lcom/taobao/weex/bridge/ModuleFactory;->buildInstance()Lcom/taobao/weex/common/WXModule;

    move-result-object v1

    .line 25
    invoke-virtual {v1, v2}, Lcom/taobao/weex/common/WXModule;->setModuleName(Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->access$100()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_76} :catch_77

    goto :goto_8c

    :catch_77
    move-exception v1

    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " class must have a default constructor without params. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    :cond_8c
    :goto_8c
    :try_start_8c
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->access$000()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    new-instance v4, Lcom/taobao/weex/bridge/ModuleFactoryImpl;

    invoke-direct {v4, v3}, Lcom/taobao/weex/bridge/ModuleFactoryImpl;-><init>(Lcom/taobao/weex/bridge/ModuleFactory;)V

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_98
    .catchall {:try_start_8c .. :try_end_98} :catchall_98

    .line 37
    :catchall_98
    invoke-interface {v3}, Lcom/taobao/weex/bridge/JavascriptInvokable;->getMethods()[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 39
    :cond_a1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taobao/weex/WXSDKManager;->registerModules(Ljava/util/Map;)V

    return-void
.end method

###### Class com.taobao.weex.bridge.WXModuleManager.AnonymousClass2 (com.taobao.weex.bridge.WXModuleManager$2)
.class Lcom/taobao/weex/bridge/WXModuleManager$2;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXModuleManager;->registerModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$factory:Lcom/taobao/weex/bridge/ModuleFactory;

.field final synthetic val$global:Z

.field final synthetic val$moduleName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXModuleManager$2;->val$moduleName:Ljava/lang/String;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXModuleManager$2;->val$factory:Lcom/taobao/weex/bridge/ModuleFactory;

    iput-boolean p3, p0, Lcom/taobao/weex/bridge/WXModuleManager$2;->val$global:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->access$000()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->access$000()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXModuleManager$2;->val$moduleName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WXComponentRegistry Duplicate the Module name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXModuleManager$2;->val$moduleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    .line 5
    :cond_25
    :try_start_25
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXModuleManager$2;->val$moduleName:Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXModuleManager$2;->val$factory:Lcom/taobao/weex/bridge/ModuleFactory;

    invoke-static {v0, v1}, Lcom/taobao/weex/bridge/WXModuleManager;->registerNativeModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;)Z
    :try_end_2c
    .catch Lcom/taobao/weex/common/WXException; {:try_start_25 .. :try_end_2c} :catch_2d

    goto :goto_3f

    :catch_2d
    move-exception v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerNativeModule"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 10
    :goto_3f
    iget-boolean v0, p0, Lcom/taobao/weex/bridge/WXModuleManager$2;->val$global:Z

    if-eqz v0, :cond_6f

    .line 12
    :try_start_43
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXModuleManager$2;->val$factory:Lcom/taobao/weex/bridge/ModuleFactory;

    invoke-interface {v0}, Lcom/taobao/weex/bridge/ModuleFactory;->buildInstance()Lcom/taobao/weex/common/WXModule;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXModuleManager$2;->val$moduleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/common/WXModule;->setModuleName(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->access$100()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/bridge/WXModuleManager$2;->val$moduleName:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_57} :catch_58

    goto :goto_6f

    :catch_58
    move-exception v0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/taobao/weex/bridge/WXModuleManager$2;->val$moduleName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " class must have a default constructor without params. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    :cond_6f
    :goto_6f
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXModuleManager$2;->val$moduleName:Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXModuleManager$2;->val$factory:Lcom/taobao/weex/bridge/ModuleFactory;

    invoke-static {v0, v1}, Lcom/taobao/weex/bridge/WXModuleManager;->registerJSModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;)Z

    .line 23
    :try_start_76
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->access$000()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXModuleManager$2;->val$moduleName:Ljava/lang/String;

    new-instance v2, Lcom/taobao/weex/bridge/ModuleFactoryImpl;

    iget-object v3, p0, Lcom/taobao/weex/bridge/WXModuleManager$2;->val$factory:Lcom/taobao/weex/bridge/ModuleFactory;

    invoke-direct {v2, v3}, Lcom/taobao/weex/bridge/ModuleFactoryImpl;-><init>(Lcom/taobao/weex/bridge/ModuleFactory;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_86
    .catchall {:try_start_76 .. :try_end_86} :catchall_86

    :catchall_86
    return-void
.end method
