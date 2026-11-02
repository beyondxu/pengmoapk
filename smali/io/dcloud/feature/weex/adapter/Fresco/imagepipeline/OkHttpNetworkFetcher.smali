###### Class io.dcloud.feature.weex.adapter.Fresco.imagepipeline.OkHttpNetworkFetcher (io.dcloud.feature.weex.adapter.Fresco.imagepipeline.OkHttpNetworkFetcher)
.class public Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;
.super Lcom/facebook/imagepipeline/producers/BaseNetworkFetcher;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$OkHttpNetworkFetchState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/BaseNetworkFetcher<",
        "Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$OkHttpNetworkFetchState;",
        ">;"
    }
.end annotation


# static fields
.field private static final FETCH_TIME:Ljava/lang/String; = "fetch_time"

.field private static final IMAGE_SIZE:Ljava/lang/String; = "image_size"

.field private static final QUEUE_TIME:Ljava/lang/String; = "queue_time"

.field private static final TOTAL_TIME:Ljava/lang/String; = "total_time"


# instance fields
.field private final mCacheControl:Ldc/squareup/okhttp3/CacheControl;

.field private final mCallFactory:Ldc/squareup/okhttp3/Call$Factory;

.field private mCancellationExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ldc/squareup/okhttp3/Call$Factory;Ljava/util/concurrent/Executor;)V
    .registers 4

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;-><init>(Ldc/squareup/okhttp3/Call$Factory;Ljava/util/concurrent/Executor;Z)V

    return-void
.end method

.method public constructor <init>(Ldc/squareup/okhttp3/Call$Factory;Ljava/util/concurrent/Executor;Z)V
    .registers 4

    .line 3
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/BaseNetworkFetcher;-><init>()V

    .line 4
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;->mCallFactory:Ldc/squareup/okhttp3/Call$Factory;

    .line 5
    iput-object p2, p0, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;->mCancellationExecutor:Ljava/util/concurrent/Executor;

    if-eqz p3, :cond_17

    .line 6
    new-instance p1, Ldc/squareup/okhttp3/CacheControl$Builder;

    invoke-direct {p1}, Ldc/squareup/okhttp3/CacheControl$Builder;-><init>()V

    invoke-virtual {p1}, Ldc/squareup/okhttp3/CacheControl$Builder;->noStore()Ldc/squareup/okhttp3/CacheControl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Ldc/squareup/okhttp3/CacheControl$Builder;->build()Ldc/squareup/okhttp3/CacheControl;

    move-result-object p1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;->mCacheControl:Ldc/squareup/okhttp3/CacheControl;

    return-void
.end method

.method public constructor <init>(Ldc/squareup/okhttp3/OkHttpClient;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Ldc/squareup/okhttp3/OkHttpClient;->dispatcher()Ldc/squareup/okhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;-><init>(Ldc/squareup/okhttp3/Call$Factory;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;)Ljava/util/concurrent/Executor;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;->mCancellationExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$100(Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;Ldc/squareup/okhttp3/Call;Ljava/lang/Exception;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;->handleException(Ldc/squareup/okhttp3/Call;Ljava/lang/Exception;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;)V

    return-void
.end method

.method private handleException(Ldc/squareup/okhttp3/Call;Ljava/lang/Exception;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;)V
    .registers 4

    .line 1
    invoke-interface {p1}, Ldc/squareup/okhttp3/Call;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 2
    invoke-interface {p3}, Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;->onCancellation()V

    return-void

    .line 4
    :cond_a
    invoke-interface {p3, p2}, Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFetchState(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)Lcom/facebook/imagepipeline/producers/FetchState;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;->createFetchState(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$OkHttpNetworkFetchState;

    move-result-object p1

    return-object p1
.end method

.method public createFetchState(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$OkHttpNetworkFetchState;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")",
            "Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$OkHttpNetworkFetchState;"
        }
    .end annotation

    .line 2
    new-instance v0, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$OkHttpNetworkFetchState;

    invoke-direct {v0, p1, p2}, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$OkHttpNetworkFetchState;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    return-object v0
.end method

.method public bridge synthetic fetch(Lcom/facebook/imagepipeline/producers/FetchState;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;)V
    .registers 3

    .line 1
    check-cast p1, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$OkHttpNetworkFetchState;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;->fetch(Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$OkHttpNetworkFetchState;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;)V

    return-void
.end method

.method public fetch(Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$OkHttpNetworkFetchState;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;)V
    .registers 6

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$OkHttpNetworkFetchState;->submitTime:J

    .line 3
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/FetchState;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 6
    :try_start_a
    new-instance v1, Ldc/squareup/okhttp3/Request$Builder;

    invoke-direct {v1}, Ldc/squareup/okhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ldc/squareup/okhttp3/Request$Builder;->url(Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Request$Builder;->get()Ldc/squareup/okhttp3/Request$Builder;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;->mCacheControl:Ldc/squareup/okhttp3/CacheControl;

    if-eqz v1, :cond_22

    .line 9
    invoke-virtual {v0, v1}, Ldc/squareup/okhttp3/Request$Builder;->cacheControl(Ldc/squareup/okhttp3/CacheControl;)Ldc/squareup/okhttp3/Request$Builder;

    .line 12
    :cond_22
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/FetchState;->getContext()Lcom/facebook/imagepipeline/producers/ProducerContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getBytesRange()Lcom/facebook/imagepipeline/common/BytesRange;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 14
    const-string v2, "Range"

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/common/BytesRange;->toHttpRangeHeaderValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ldc/squareup/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    .line 17
    :cond_39
    const-string v1, "user-agent"

    invoke-static {}, Lcom/taobao/weex/http/WXHttpUtil;->assembleUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldc/squareup/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    .line 18
    invoke-virtual {v0}, Ldc/squareup/okhttp3/Request$Builder;->build()Ldc/squareup/okhttp3/Request;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;->fetchWithRequest(Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$OkHttpNetworkFetchState;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;Ldc/squareup/okhttp3/Request;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_49} :catch_4a

    return-void

    :catch_4a
    move-exception p1

    .line 21
    invoke-interface {p2, p1}, Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected fetchWithRequest(Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$OkHttpNetworkFetchState;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;Ldc/squareup/okhttp3/Request;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;->mCallFactory:Ldc/squareup/okhttp3/Call$Factory;

    invoke-interface {v0, p3}, Ldc/squareup/okhttp3/Call$Factory;->newCall(Ldc/squareup/okhttp3/Request;)Ldc/squareup/okhttp3/Call;

    move-result-object p3

    .line 3
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/FetchState;->getContext()Lcom/facebook/imagepipeline/producers/ProducerContext;

    move-result-object v0

    new-instance v1, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$1;

    invoke-direct {v1, p0, p3}, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$1;-><init>(Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;Ldc/squareup/okhttp3/Call;)V

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->addCallbacks(Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;)V

    .line 18
    new-instance v0, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$2;

    invoke-direct {v0, p0, p2, p1}, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$2;-><init>(Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$OkHttpNetworkFetchState;)V

    invoke-interface {p3, v0}, Ldc/squareup/okhttp3/Call;->enqueue(Ldc/squareup/okhttp3/Callback;)V

    return-void
.end method

.method public bridge synthetic getExtraMap(Lcom/facebook/imagepipeline/producers/FetchState;I)Ljava/util/Map;
    .registers 3

    .line 1
    check-cast p1, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$OkHttpNetworkFetchState;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;->getExtraMap(Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$OkHttpNetworkFetchState;I)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getExtraMap(Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$OkHttpNetworkFetchState;I)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$OkHttpNetworkFetchState;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    iget-wide v1, p1, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$OkHttpNetworkFetchState;->responseTime:J

    iget-wide v3, p1, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$OkHttpNetworkFetchState;->submitTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "queue_time"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-wide v1, p1, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$OkHttpNetworkFetchState;->fetchCompleteTime:J

    iget-wide v3, p1, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$OkHttpNetworkFetchState;->responseTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fetch_time"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-wide v1, p1, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$OkHttpNetworkFetchState;->fetchCompleteTime:J

    iget-wide v3, p1, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$OkHttpNetworkFetchState;->submitTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "total_time"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "image_size"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic onFetchCompletion(Lcom/facebook/imagepipeline/producers/FetchState;I)V
    .registers 3

    .line 1
    check-cast p1, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$OkHttpNetworkFetchState;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;->onFetchCompletion(Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$OkHttpNetworkFetchState;I)V

    return-void
.end method

.method public onFetchCompletion(Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$OkHttpNetworkFetchState;I)V
    .registers 5

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$OkHttpNetworkFetchState;->fetchCompleteTime:J

    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.Fresco.imagepipeline.OkHttpNetworkFetcher.AnonymousClass1 (io.dcloud.feature.weex.adapter.Fresco.imagepipeline.OkHttpNetworkFetcher$1)
.class Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$1;
.super Lcom/facebook/imagepipeline/producers/BaseProducerContextCallbacks;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;->fetchWithRequest(Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$OkHttpNetworkFetchState;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;Ldc/squareup/okhttp3/Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;

.field final synthetic val$call:Ldc/squareup/okhttp3/Call;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;Ldc/squareup/okhttp3/Call;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$1;->this$0:Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;

    iput-object p2, p0, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$1;->val$call:Ldc/squareup/okhttp3/Call;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/BaseProducerContextCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancellationRequested()V
    .registers 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_10

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$1;->val$call:Ldc/squareup/okhttp3/Call;

    invoke-interface {v0}, Ldc/squareup/okhttp3/Call;->cancel()V

    return-void

    .line 4
    :cond_10
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$1;->this$0:Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;

    invoke-static {v0}, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;->access$000(Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$1$1;

    invoke-direct {v1, p0}, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$1$1;-><init>(Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.Fresco.imagepipeline.OkHttpNetworkFetcher.AnonymousClass1.RunnableC00541 (io.dcloud.feature.weex.adapter.Fresco.imagepipeline.OkHttpNetworkFetcher$1$1)
.class Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$1;->onCancellationRequested()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$1;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$1;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$1$1;->this$1:Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$1$1;->this$1:Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$1;

    iget-object v0, v0, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$1;->val$call:Ldc/squareup/okhttp3/Call;

    invoke-interface {v0}, Ldc/squareup/okhttp3/Call;->cancel()V

    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.Fresco.imagepipeline.OkHttpNetworkFetcher.AnonymousClass2 (io.dcloud.feature.weex.adapter.Fresco.imagepipeline.OkHttpNetworkFetcher$2)
.class Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$2;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ldc/squareup/okhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;->fetchWithRequest(Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$OkHttpNetworkFetchState;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;Ldc/squareup/okhttp3/Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;

.field final synthetic val$callback:Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;

.field final synthetic val$fetchState:Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$OkHttpNetworkFetchState;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$OkHttpNetworkFetchState;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$2;->this$0:Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;

    iput-object p2, p0, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$2;->val$callback:Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;

    iput-object p3, p0, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$2;->val$fetchState:Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$OkHttpNetworkFetchState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ldc/squareup/okhttp3/Call;Ljava/io/IOException;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$2;->this$0:Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;

    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$2;->val$callback:Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;

    invoke-static {v0, p1, p2, v1}, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;->access$100(Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;Ldc/squareup/okhttp3/Call;Ljava/lang/Exception;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;)V

    return-void
.end method

.method public onResponse(Ldc/squareup/okhttp3/Call;Ldc/squareup/okhttp3/Response;)V
    .registers 8

    const-string v0, "Error parsing content range header"

    const-string v1, "Unexpected HTTP code "

    .line 1
    iget-object v2, p0, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$2;->val$fetchState:Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$OkHttpNetworkFetchState;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v2, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$OkHttpNetworkFetchState;->responseTime:J

    .line 2
    invoke-virtual {p2}, Ldc/squareup/okhttp3/Response;->body()Ldc/squareup/okhttp3/ResponseBody;

    move-result-object v2

    if-nez v2, :cond_2d

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$2;->this$0:Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Response body null: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$2;->val$callback:Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;

    invoke-static {v0, p1, v1, p2}, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;->access$100(Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;Ldc/squareup/okhttp3/Call;Ljava/lang/Exception;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;)V

    return-void

    .line 8
    :cond_2d
    :try_start_2d
    invoke-virtual {p2}, Ldc/squareup/okhttp3/Response;->isSuccessful()Z

    move-result v3

    if-nez v3, :cond_4f

    .line 9
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$2;->this$0:Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$2;->val$callback:Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;

    invoke-static {v0, p1, v3, p2}, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;->access$100(Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;Ldc/squareup/okhttp3/Call;Ljava/lang/Exception;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_4b} :catch_a2
    .catchall {:try_start_2d .. :try_end_4b} :catchall_a0

    .line 33
    invoke-virtual {v2}, Ldc/squareup/okhttp3/ResponseBody;->close()V

    return-void

    .line 34
    :cond_4f
    :try_start_4f
    const-string v1, "Content-Range"

    invoke-virtual {p2, v1}, Ldc/squareup/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/facebook/imagepipeline/common/BytesRange;->fromContentRangeHeader(Ljava/lang/String;)Lcom/facebook/imagepipeline/common/BytesRange;

    move-result-object p2
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_59} :catch_5a
    .catchall {:try_start_4f .. :try_end_59} :catchall_a0

    goto :goto_71

    :catch_5a
    move-exception p2

    .line 36
    :try_start_5b
    const-string v1, "OkHttpNetworkFetcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    :goto_71
    if-eqz p2, :cond_8a

    .line 38
    iget v0, p2, Lcom/facebook/imagepipeline/common/BytesRange;->from:I

    if-nez v0, :cond_7e

    iget v0, p2, Lcom/facebook/imagepipeline/common/BytesRange;->to:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_8a

    .line 40
    :cond_7e
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$2;->val$fetchState:Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$OkHttpNetworkFetchState;

    invoke-virtual {v0, p2}, Lcom/facebook/imagepipeline/producers/FetchState;->setResponseBytesRange(Lcom/facebook/imagepipeline/common/BytesRange;)V

    .line 41
    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$2;->val$fetchState:Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$OkHttpNetworkFetchState;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/facebook/imagepipeline/producers/FetchState;->setOnNewResultStatusFlags(I)V

    .line 44
    :cond_8a
    invoke-virtual {v2}, Ldc/squareup/okhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long p2, v0, v3

    if-gez p2, :cond_95

    move-wide v0, v3

    .line 48
    :cond_95
    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$2;->val$callback:Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;

    invoke-virtual {v2}, Ldc/squareup/okhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v3

    long-to-int v1, v0

    invoke-interface {p2, v3, v1}, Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;->onResponse(Ljava/io/InputStream;I)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_9f} :catch_a2
    .catchall {:try_start_5b .. :try_end_9f} :catchall_a0

    goto :goto_aa

    :catchall_a0
    move-exception p1

    goto :goto_ae

    :catch_a2
    move-exception p2

    .line 53
    :try_start_a3
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$2;->this$0:Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;

    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$2;->val$callback:Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;

    invoke-static {v0, p1, p2, v1}, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;->access$100(Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;Ldc/squareup/okhttp3/Call;Ljava/lang/Exception;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;)V
    :try_end_aa
    .catchall {:try_start_a3 .. :try_end_aa} :catchall_a0

    .line 52
    :goto_aa
    invoke-virtual {v2}, Ldc/squareup/okhttp3/ResponseBody;->close()V

    return-void

    .line 55
    :goto_ae
    invoke-virtual {v2}, Ldc/squareup/okhttp3/ResponseBody;->close()V

    .line 56
    throw p1
.end method

###### Class io.dcloud.feature.weex.adapter.Fresco.imagepipeline.OkHttpNetworkFetcher.OkHttpNetworkFetchState (io.dcloud.feature.weex.adapter.Fresco.imagepipeline.OkHttpNetworkFetcher$OkHttpNetworkFetchState)
.class public Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher$OkHttpNetworkFetchState;
.super Lcom/facebook/imagepipeline/producers/FetchState;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpNetworkFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OkHttpNetworkFetchState"
.end annotation


# instance fields
.field public fetchCompleteTime:J

.field public responseTime:J

.field public submitTime:J


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/FetchState;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    return-void
.end method
