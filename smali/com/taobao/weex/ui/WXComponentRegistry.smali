###### Class com.taobao.weex.ui.WXComponentRegistry (com.taobao.weex.ui.WXComponentRegistry)
.class public Lcom/taobao/weex/ui/WXComponentRegistry;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# static fields
.field private static sComponentInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sTypeComponentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/IFComponentHolder;",
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

    sput-object v0, Lcom/taobao/weex/ui/WXComponentRegistry;->sTypeComponentMap:Ljava/util/Map;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/taobao/weex/ui/WXComponentRegistry;->sComponentInfos:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Lcom/taobao/weex/ui/IFComponentHolder;)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/taobao/weex/ui/WXComponentRegistry;->registerNativeComponent(Ljava/lang/String;Lcom/taobao/weex/ui/IFComponentHolder;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .registers 1

    .line 1
    sget-object v0, Lcom/taobao/weex/ui/WXComponentRegistry;->sComponentInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Ljava/util/Map;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/taobao/weex/ui/WXComponentRegistry;->registerJSComponent(Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public static getComponent(Ljava/lang/String;)Lcom/taobao/weex/ui/IFComponentHolder;
    .registers 2

    .line 1
    sget-object v0, Lcom/taobao/weex/ui/WXComponentRegistry;->sTypeComponentMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/ui/IFComponentHolder;

    return-object p0
.end method

.method public static declared-synchronized registerComponent(Ljava/lang/String;Lcom/taobao/weex/ui/IFComponentHolder;Ljava/util/Map;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/IFComponentHolder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-class v0, Lcom/taobao/weex/ui/WXComponentRegistry;

    monitor-enter v0

    if-eqz p1, :cond_2a

    .line 5
    :try_start_5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_2a

    .line 9
    :cond_c
    invoke-static {}, Lcom/taobao/weex/utils/cache/RegisterCache;->getInstance()Lcom/taobao/weex/utils/cache/RegisterCache;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2}, Lcom/taobao/weex/utils/cache/RegisterCache;->cacheComponent(Ljava/lang/String;Lcom/taobao/weex/ui/IFComponentHolder;Ljava/util/Map;)Z

    move-result v1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_27

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    monitor-exit v0

    return v2

    .line 14
    :cond_19
    :try_start_19
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    new-instance v3, Lcom/taobao/weex/ui/WXComponentRegistry$2;

    invoke-direct {v3, p2, p0, p1}, Lcom/taobao/weex/ui/WXComponentRegistry$2;-><init>(Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/ui/IFComponentHolder;)V

    .line 15
    invoke-virtual {v1, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_27

    monitor-exit v0

    return v2

    :catchall_27
    move-exception p0

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p0

    :cond_2a
    :goto_2a
    monitor-exit v0

    const/4 p0, 0x0

    return p0
.end method

.method public static declared-synchronized registerComponent(Ljava/util/Map;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/utils/cache/RegisterCache$ComponentCache;",
            ">;)Z"
        }
    .end annotation

    const-class v0, Lcom/taobao/weex/ui/WXComponentRegistry;

    monitor-enter v0

    .line 1
    :try_start_3
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_22

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    monitor-exit v0

    return v2

    .line 3
    :cond_c
    :try_start_c
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 4
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    new-instance v3, Lcom/taobao/weex/ui/WXComponentRegistry$1;

    invoke-direct {v3, p0}, Lcom/taobao/weex/ui/WXComponentRegistry$1;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v1, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_22

    monitor-exit v0

    return v2

    :catchall_22
    move-exception p0

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p0
.end method

.method private static registerJSComponent(Ljava/util/Map;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/WXSDKManager;->registerComponents(Ljava/util/List;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static registerNativeComponent(Ljava/lang/String;Lcom/taobao/weex/ui/IFComponentHolder;)Z
    .registers 3

    .line 1
    :try_start_0
    invoke-interface {p1}, Lio/dcloud/feature/uniapp/ui/AbsIComponentHolder;->loadIfNonLazy()V

    .line 2
    sget-object v0, Lcom/taobao/weex/ui/WXComponentRegistry;->sTypeComponentMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public static reload()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/ui/WXComponentRegistry$3;

    invoke-direct {v1}, Lcom/taobao/weex/ui/WXComponentRegistry$3;-><init>()V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.taobao.weex.ui.WXComponentRegistry.AnonymousClass1 (com.taobao.weex.ui.WXComponentRegistry$1)
.class Lcom/taobao/weex/ui/WXComponentRegistry$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/WXComponentRegistry;->registerComponent(Ljava/util/Map;)Z
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
    iput-object p1, p0, Lcom/taobao/weex/ui/WXComponentRegistry$1;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :goto_5
    iget-object v1, p0, Lcom/taobao/weex/ui/WXComponentRegistry$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 3
    iget-object v1, p0, Lcom/taobao/weex/ui/WXComponentRegistry$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    :try_start_15
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/utils/cache/RegisterCache$ComponentCache;

    .line 6
    iget-object v2, v1, Lcom/taobao/weex/utils/cache/RegisterCache$ComponentCache;->componentInfo:Ljava/util/Map;

    if-nez v2, :cond_24

    .line 8
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 10
    :cond_24
    const-string/jumbo v3, "type"

    iget-object v4, v1, Lcom/taobao/weex/utils/cache/RegisterCache$ComponentCache;->type:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string v3, "methods"

    iget-object v4, v1, Lcom/taobao/weex/utils/cache/RegisterCache$ComponentCache;->holder:Lcom/taobao/weex/ui/IFComponentHolder;

    invoke-interface {v4}, Lcom/taobao/weex/bridge/JavascriptInvokable;->getMethods()[Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v3, v1, Lcom/taobao/weex/utils/cache/RegisterCache$ComponentCache;->type:Ljava/lang/String;

    iget-object v1, v1, Lcom/taobao/weex/utils/cache/RegisterCache$ComponentCache;->holder:Lcom/taobao/weex/ui/IFComponentHolder;

    invoke-static {v3, v1}, Lcom/taobao/weex/ui/WXComponentRegistry;->access$000(Ljava/lang/String;Lcom/taobao/weex/ui/IFComponentHolder;)Z

    .line 13
    invoke-static {}, Lcom/taobao/weex/ui/WXComponentRegistry;->access$100()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_48
    .catch Lcom/taobao/weex/common/WXException; {:try_start_15 .. :try_end_48} :catch_49

    goto :goto_5

    :catch_49
    move-exception v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 19
    :cond_4e
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taobao/weex/WXSDKManager;->registerComponents(Ljava/util/List;)V

    return-void
.end method

###### Class com.taobao.weex.ui.WXComponentRegistry.AnonymousClass2 (com.taobao.weex.ui.WXComponentRegistry$2)
.class Lcom/taobao/weex/ui/WXComponentRegistry$2;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/WXComponentRegistry;->registerComponent(Ljava/lang/String;Lcom/taobao/weex/ui/IFComponentHolder;Ljava/util/Map;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$componentInfo:Ljava/util/Map;

.field final synthetic val$holder:Lcom/taobao/weex/ui/IFComponentHolder;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/ui/IFComponentHolder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/WXComponentRegistry$2;->val$componentInfo:Ljava/util/Map;

    iput-object p2, p0, Lcom/taobao/weex/ui/WXComponentRegistry$2;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/ui/WXComponentRegistry$2;->val$holder:Lcom/taobao/weex/ui/IFComponentHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/WXComponentRegistry$2;->val$componentInfo:Ljava/util/Map;

    if-nez v0, :cond_9

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    :cond_9
    const-string/jumbo v1, "type"

    iget-object v2, p0, Lcom/taobao/weex/ui/WXComponentRegistry$2;->val$type:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-string v1, "methods"

    iget-object v2, p0, Lcom/taobao/weex/ui/WXComponentRegistry$2;->val$holder:Lcom/taobao/weex/ui/IFComponentHolder;

    invoke-interface {v2}, Lcom/taobao/weex/bridge/JavascriptInvokable;->getMethods()[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lcom/taobao/weex/ui/WXComponentRegistry$2;->val$type:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/ui/WXComponentRegistry$2;->val$holder:Lcom/taobao/weex/ui/IFComponentHolder;

    invoke-static {v1, v2}, Lcom/taobao/weex/ui/WXComponentRegistry;->access$000(Ljava/lang/String;Lcom/taobao/weex/ui/IFComponentHolder;)Z

    .line 9
    invoke-static {v0}, Lcom/taobao/weex/ui/WXComponentRegistry;->access$200(Ljava/util/Map;)Z

    .line 10
    invoke-static {}, Lcom/taobao/weex/ui/WXComponentRegistry;->access$100()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catch Lcom/taobao/weex/common/WXException; {:try_start_0 .. :try_end_2d} :catch_2e

    return-void

    :catch_2e
    move-exception v0

    .line 12
    const-string v1, "register component error:"

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

###### Class com.taobao.weex.ui.WXComponentRegistry.AnonymousClass3 (com.taobao.weex.ui.WXComponentRegistry$3)
.class Lcom/taobao/weex/ui/WXComponentRegistry$3;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/WXComponentRegistry;->reload()V
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
    .registers 5

    .line 1
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/ui/WXComponentRegistry;->access$100()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/util/Map;

    .line 2
    invoke-static {v3}, Lcom/taobao/weex/ui/WXComponentRegistry;->access$200(Ljava/util/Map;)Z
    :try_end_16
    .catch Lcom/taobao/weex/common/WXException; {:try_start_0 .. :try_end_16} :catch_18

    goto :goto_9

    :cond_17
    return-void

    :catch_18
    move-exception v0

    .line 5
    const-string v1, ""

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
