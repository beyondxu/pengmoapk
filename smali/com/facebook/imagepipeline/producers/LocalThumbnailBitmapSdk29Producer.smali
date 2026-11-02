###### Class com.facebook.imagepipeline.producers.LocalThumbnailBitmapSdk29Producer (com.facebook.imagepipeline.producers.LocalThumbnailBitmapSdk29Producer)
.class public Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer;
.super Ljava/lang/Object;
.source "LocalThumbnailBitmapSdk29Producer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/Producer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/Producer<",
        "Lcom/facebook/common/references/CloseableReference<",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        ">;>;"
    }
.end annotation


# static fields
.field static final CREATED_THUMBNAIL:Ljava/lang/String; = "createdThumbnail"

.field public static final PRODUCER_NAME:Ljava/lang/String; = "LocalThumbnailBitmapSdk29Producer"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContentResolver(Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer;)Landroid/content/ContentResolver;
    .registers 1

    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetLocalFilePath(Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer;Lcom/facebook/imagepipeline/request/ImageRequest;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer;->getLocalFilePath(Lcom/facebook/imagepipeline/request/ImageRequest;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/content/ContentResolver;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer;->mExecutor:Ljava/util/concurrent/Executor;

    .line 50
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private getLocalFilePath(Lcom/facebook/imagepipeline/request/ImageRequest;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 149
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object p1

    .line 150
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/facebook/common/util/UriUtil;->getRealPathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")V"
        }
    .end annotation

    .line 57
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getProducerListener()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v3

    .line 58
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v8

    .line 59
    const-string v0, "local"

    const-string/jumbo v1, "thumbnail_bitmap"

    invoke-interface {p2, v0, v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->putOriginExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v9, Landroid/os/CancellationSignal;

    invoke-direct {v9}, Landroid/os/CancellationSignal;-><init>()V

    .line 61
    new-instance v0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer$1;

    const-string v5, "LocalThumbnailBitmapSdk29Producer"

    move-object v6, v3

    move-object v7, p2

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v9}, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer$1;-><init>(Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerListener2;Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/ProducerListener2;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/request/ImageRequest;Landroid/os/CancellationSignal;)V

    .line 137
    new-instance p1, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer$2;

    invoke-direct {p1, p0, v0}, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer$2;-><init>(Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer;Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;)V

    invoke-interface {v4, p1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->addCallbacks(Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;)V

    .line 144
    iget-object p1, v1, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.facebook.imagepipeline.producers.LocalThumbnailBitmapSdk29Producer.AnonymousClass1 (com.facebook.imagepipeline.producers.LocalThumbnailBitmapSdk29Producer$1)
.class Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer$1;
.super Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;
.source "LocalThumbnailBitmapSdk29Producer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable<",
        "Lcom/facebook/common/references/CloseableReference<",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer;

.field final synthetic val$cancellationSignal:Landroid/os/CancellationSignal;

.field final synthetic val$context:Lcom/facebook/imagepipeline/producers/ProducerContext;

.field final synthetic val$imageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

.field final synthetic val$listener:Lcom/facebook/imagepipeline/producers/ProducerListener2;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerListener2;Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/ProducerListener2;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/request/ImageRequest;Landroid/os/CancellationSignal;)V
    .registers 10

    .line 63
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer$1;->this$0:Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer;

    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer$1;->val$listener:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iput-object p7, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer$1;->val$context:Lcom/facebook/imagepipeline/producers/ProducerContext;

    iput-object p8, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer$1;->val$imageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

    iput-object p9, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerListener2;Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected disposeResult(Lcom/facebook/common/references/CloseableReference;)V
    .registers 2
    .param p1    # Lcom/facebook/common/references/CloseableReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;)V"
        }
    .end annotation

    .line 134
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    return-void
.end method

.method protected bridge synthetic disposeResult(Ljava/lang/Object;)V
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 63
    check-cast p1, Lcom/facebook/common/references/CloseableReference;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer$1;->disposeResult(Lcom/facebook/common/references/CloseableReference;)V

    return-void
.end method

.method protected getExtraMapOnSuccess(Lcom/facebook/common/references/CloseableReference;)Ljava/util/Map;
    .registers 3
    .param p1    # Lcom/facebook/common/references/CloseableReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    .line 129
    :goto_5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "createdThumbnail"

    invoke-static {v0, p1}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic getExtraMapOnSuccess(Ljava/lang/Object;)Ljava/util/Map;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 63
    check-cast p1, Lcom/facebook/common/references/CloseableReference;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer$1;->getExtraMapOnSuccess(Lcom/facebook/common/references/CloseableReference;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected getResult()Lcom/facebook/common/references/CloseableReference;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 82
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer$1;->val$imageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 83
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getPreferredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer$1;->val$imageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getPreferredHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    const/4 v1, 0x0

    .line 85
    :try_start_12
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer$1;->this$0:Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer$1;->val$imageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-static {v2, v3}, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer;->-$$Nest$mgetLocalFilePath(Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer;Lcom/facebook/imagepipeline/request/ImageRequest;)Ljava/lang/String;

    move-result-object v2
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_1a} :catch_1b

    goto :goto_1d

    :catch_1b
    nop

    move-object v2, v1

    :goto_1d
    if-eqz v2, :cond_41

    .line 92
    invoke-static {v2}, Lcom/facebook/common/media/MediaUtils;->extractMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/common/media/MediaUtils;->isVideo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 93
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-static {v3, v0, v2}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Ljava/io/File;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_42

    .line 95
    :cond_35
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-static {v3, v0, v2}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m$1(Ljava/io/File;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_42

    :cond_41
    move-object v2, v1

    :goto_42
    if-nez v2, :cond_56

    .line 100
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer$1;->this$0:Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer;

    invoke-static {v2}, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer;->-$$Nest$fgetmContentResolver(Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer;)Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer$1;->val$imageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 102
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    .line 101
    invoke-static {v2, v3, v0, v4}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_56
    if-nez v2, :cond_59

    return-object v1

    .line 112
    :cond_59
    invoke-static {}, Lcom/facebook/imagepipeline/bitmaps/SimpleBitmapReleaser;->getInstance()Lcom/facebook/imagepipeline/bitmaps/SimpleBitmapReleaser;

    move-result-object v0

    sget-object v1, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;->FULL_QUALITY:Lcom/facebook/imagepipeline/image/QualityInfo;

    const/4 v3, 0x0

    .line 110
    invoke-static {v2, v0, v1, v3}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap$-CC;->of(Landroid/graphics/Bitmap;Lcom/facebook/common/references/ResourceReleaser;Lcom/facebook/imagepipeline/image/QualityInfo;I)Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer$1;->val$context:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v2, "image_format"

    const-string/jumbo v3, "thumbnail"

    invoke-interface {v1, v2, v3}, Lcom/facebook/imagepipeline/producers/ProducerContext;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer$1;->val$context:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getExtras()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->putExtras(Ljava/util/Map;)V

    .line 117
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->of(Ljava/io/Closeable;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer$1;->getResult()Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method protected onCancellation()V
    .registers 2

    .line 122
    invoke-super {p0}, Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;->onCancellation()V

    .line 123
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    return-void
.end method

.method protected onFailure(Ljava/lang/Exception;)V
    .registers 5

    .line 73
    invoke-super {p0, p1}, Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;->onFailure(Ljava/lang/Exception;)V

    .line 74
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer$1;->val$listener:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer$1;->val$context:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v1, "LocalThumbnailBitmapSdk29Producer"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onUltimateProducerReached(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Z)V

    .line 75
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer$1;->val$context:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v0, "local"

    const-string/jumbo v1, "thumbnail_bitmap"

    invoke-interface {p1, v0, v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->putOriginExtra(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Lcom/facebook/common/references/CloseableReference;)V
    .registers 5
    .param p1    # Lcom/facebook/common/references/CloseableReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;)V"
        }
    .end annotation

    .line 66
    invoke-super {p0, p1}, Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;->onSuccess(Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer$1;->val$listener:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer$1;->val$context:Lcom/facebook/imagepipeline/producers/ProducerContext;

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    const-string v2, "LocalThumbnailBitmapSdk29Producer"

    invoke-interface {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onUltimateProducerReached(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Z)V

    .line 68
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer$1;->val$context:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v0, "local"

    const-string/jumbo v1, "thumbnail_bitmap"

    invoke-interface {p1, v0, v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->putOriginExtra(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 63
    check-cast p1, Lcom/facebook/common/references/CloseableReference;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer$1;->onSuccess(Lcom/facebook/common/references/CloseableReference;)V

    return-void
.end method

###### Class com.facebook.imagepipeline.producers.LocalThumbnailBitmapSdk29Producer.AnonymousClass2 (com.facebook.imagepipeline.producers.LocalThumbnailBitmapSdk29Producer$2)
.class Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer$2;
.super Lcom/facebook/imagepipeline/producers/BaseProducerContextCallbacks;
.source "LocalThumbnailBitmapSdk29Producer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer;

.field final synthetic val$cancellableProducerRunnable:Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer;Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;)V
    .registers 3

    .line 138
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer$2;->this$0:Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer$2;->val$cancellableProducerRunnable:Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/BaseProducerContextCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancellationRequested()V
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/LocalThumbnailBitmapSdk29Producer$2;->val$cancellableProducerRunnable:Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;->cancel()V

    return-void
.end method
