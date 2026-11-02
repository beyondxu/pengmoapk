###### Class com.taobao.weex.common.WXWorkThreadManager (com.taobao.weex.common.WXWorkThreadManager)
.class public final Lcom/taobao/weex/common/WXWorkThreadManager;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# instance fields
.field private singleThreadExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/common/WXWorkThreadManager;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/common/WXWorkThreadManager;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_7
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/taobao/weex/common/WXWorkThreadManager;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/common/WXWorkThreadManager;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method
