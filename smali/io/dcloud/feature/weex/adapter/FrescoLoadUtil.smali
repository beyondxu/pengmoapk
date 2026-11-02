###### Class io.dcloud.feature.weex.adapter.FrescoLoadUtil (io.dcloud.feature.weex.adapter.FrescoLoadUtil)
.class public Lio/dcloud/feature/weex/adapter/FrescoLoadUtil;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lio/dcloud/feature/uniapp/adapter/UniImageLoadAdapter;


# static fields
.field private static inst:Lio/dcloud/feature/weex/adapter/FrescoLoadUtil;


# instance fields
.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private fetch(Landroid/content/Context;Landroid/net/Uri;IILio/dcloud/feature/uniapp/utils/bitmap/BitmapLoadCallback;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "II",
            "Lio/dcloud/feature/uniapp/utils/bitmap/BitmapLoadCallback<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;

    move-object v2, p0

    move-object v6, p1

    move-object v3, p2

    move v5, p3

    move v4, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;-><init>(Lio/dcloud/feature/weex/adapter/FrescoLoadUtil;Landroid/net/Uri;IILandroid/content/Context;Lio/dcloud/feature/uniapp/utils/bitmap/BitmapLoadCallback;)V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public static getInstance()Lio/dcloud/feature/uniapp/adapter/UniImageLoadAdapter;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil;->inst:Lio/dcloud/feature/weex/adapter/FrescoLoadUtil;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil;

    invoke-direct {v0}, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil;-><init>()V

    sput-object v0, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil;->inst:Lio/dcloud/feature/weex/adapter/FrescoLoadUtil;

    .line 4
    :cond_b
    sget-object v0, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil;->inst:Lio/dcloud/feature/weex/adapter/FrescoLoadUtil;

    return-object v0
.end method


# virtual methods
.method public final loadImageBitmap(Landroid/content/Context;Ljava/lang/String;IILio/dcloud/feature/uniapp/utils/bitmap/BitmapLoadCallback;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "II",
            "Lio/dcloud/feature/uniapp/utils/bitmap/BitmapLoadCallback<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 6
    :cond_7
    const-string v0, "//"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    :cond_1e
    move-object v0, p2

    .line 10
    :goto_1f
    :try_start_1f
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_23} :catch_2e

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move-object v6, p5

    :try_start_28
    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil;->fetch(Landroid/content/Context;Landroid/net/Uri;IILio/dcloud/feature/uniapp/utils/bitmap/BitmapLoadCallback;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_2c

    return-void

    :catch_2c
    move-exception v0

    goto :goto_30

    :catch_2e
    move-exception v0

    move-object v6, p5

    :goto_30
    move-object p1, v0

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    invoke-interface {v6, p2, p1}, Lio/dcloud/feature/uniapp/utils/bitmap/BitmapLoadCallback;->onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final loadImageBitmap(Landroid/content/Context;Ljava/lang/String;Lio/dcloud/feature/uniapp/utils/bitmap/BitmapLoadCallback;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lio/dcloud/feature/uniapp/utils/bitmap/BitmapLoadCallback<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil;->loadImageBitmap(Landroid/content/Context;Ljava/lang/String;IILio/dcloud/feature/uniapp/utils/bitmap/BitmapLoadCallback;)V

    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.FrescoLoadUtil.AnonymousClass1 (io.dcloud.feature.weex.adapter.FrescoLoadUtil$1)
.class Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/FrescoLoadUtil;->fetch(Landroid/content/Context;Landroid/net/Uri;IILio/dcloud/feature/uniapp/utils/bitmap/BitmapLoadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/FrescoLoadUtil;

.field final synthetic val$callback:Lio/dcloud/feature/uniapp/utils/bitmap/BitmapLoadCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$newHeight:I

.field final synthetic val$newWidth:I

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/FrescoLoadUtil;Landroid/net/Uri;IILandroid/content/Context;Lio/dcloud/feature/uniapp/utils/bitmap/BitmapLoadCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;->this$0:Lio/dcloud/feature/weex/adapter/FrescoLoadUtil;

    iput-object p2, p0, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;->val$uri:Landroid/net/Uri;

    iput p3, p0, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;->val$newHeight:I

    iput p4, p0, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;->val$newWidth:I

    iput-object p5, p0, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;->val$context:Landroid/content/Context;

    iput-object p6, p0, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;->val$callback:Lio/dcloud/feature/uniapp/utils/bitmap/BitmapLoadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;->val$uri:Landroid/net/Uri;

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->newBuilderWithSource(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setProgressiveRenderingEnabled(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    .line 5
    new-instance v1, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1$1;

    invoke-direct {v1, p0}, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1$1;-><init>(Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;)V

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setPostprocessor(Lcom/facebook/imagepipeline/request/Postprocessor;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    .line 34
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->build()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 35
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object v1

    .line 36
    iget-object v2, p0, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/imagepipeline/core/ImagePipeline;->fetchDecodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    .line 37
    new-instance v1, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1$2;

    invoke-direct {v1, p0}, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1$2;-><init>(Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;)V

    .line 73
    invoke-static {}, Lcom/facebook/common/executors/UiThreadImmediateExecutorService;->getInstance()Lcom/facebook/common/executors/UiThreadImmediateExecutorService;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/datasource/DataSource;->subscribe(Lcom/facebook/datasource/DataSubscriber;Ljava/util/concurrent/Executor;)V

    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.FrescoLoadUtil.AnonymousClass1.C00561 (io.dcloud.feature.weex.adapter.FrescoLoadUtil$1$1)
.class Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/facebook/imagepipeline/request/Postprocessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1$1;->this$1:Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPostprocessorCacheKey()Lcom/facebook/cache/common/CacheKey;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public process(Landroid/graphics/Bitmap;Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;)Lcom/facebook/common/references/CloseableReference;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;",
            ")",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1$1;->this$1:Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;

    iget v0, v0, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;->val$newHeight:I

    if-lez v0, :cond_2e

    if-lez v0, :cond_2e

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 5
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 7
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1$1;->this$1:Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;

    iget v1, v0, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;->val$newWidth:I

    int-to-float v1, v1

    int-to-float v2, v5

    div-float/2addr v1, v2

    .line 8
    iget v0, v0, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;->val$newHeight:I

    int-to-float v0, v0

    int-to-float v2, v6

    div-float/2addr v0, v2

    .line 10
    invoke-virtual {v7, v1, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    move-object v2, p1

    move-object v1, p2

    .line 11
    invoke-virtual/range {v1 .. v8}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    return-object p1

    :cond_2e
    move-object v2, p1

    move-object v1, p2

    .line 13
    invoke-virtual {v1, v2}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->createBitmap(Landroid/graphics/Bitmap;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    return-object p1
.end method

###### Class io.dcloud.feature.weex.adapter.FrescoLoadUtil.AnonymousClass1.AnonymousClass2 (io.dcloud.feature.weex.adapter.FrescoLoadUtil$1$2)
.class Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1$2;
.super Lcom/facebook/datasource/BaseDataSubscriber;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/datasource/BaseDataSubscriber<",
        "Lcom/facebook/common/references/CloseableReference<",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1$2;->this$1:Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;

    invoke-direct {p0}, Lcom/facebook/datasource/BaseDataSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailureImpl(Lcom/facebook/datasource/DataSource;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1$2;->this$1:Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;

    iget-object v0, p1, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;->val$callback:Lio/dcloud/feature/uniapp/utils/bitmap/BitmapLoadCallback;

    if-eqz v0, :cond_10

    .line 2
    iget-object p1, p1, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lio/dcloud/feature/uniapp/utils/bitmap/BitmapLoadCallback;->onSuccess(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_10
    return-void
.end method

.method protected onNewResultImpl(Lcom/facebook/datasource/DataSource;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->isFinished()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_f

    .line 4
    :cond_7
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/CloseableReference;

    if-nez v0, :cond_10

    :goto_f
    return-void

    .line 10
    :cond_10
    :try_start_10
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/facebook/imagepipeline/image/CloseableBitmap;

    if-eqz v1, :cond_23

    .line 12
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/image/CloseableBitmap;

    .line 13
    invoke-interface {v1}, Lcom/facebook/imagepipeline/image/CloseableBitmap;->getUnderlyingBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    if-eqz v1, :cond_4a

    .line 15
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_4a

    .line 16
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 17
    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1$2;->this$1:Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;

    iget-object v3, v1, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;->val$callback:Lio/dcloud/feature/uniapp/utils/bitmap/BitmapLoadCallback;

    if-eqz v3, :cond_4a

    .line 18
    iget-object v1, v1, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-interface {v3, v1, v2}, Lio/dcloud/feature/uniapp/utils/bitmap/BitmapLoadCallback;->onSuccess(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4a
    .catchall {:try_start_10 .. :try_end_4a} :catchall_51

    .line 22
    :cond_4a
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 23
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->close()Z

    return-void

    :catchall_51
    move-exception v1

    .line 24
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 25
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->close()Z

    .line 26
    throw v1
.end method
