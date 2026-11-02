###### Class com.facebook.imagepipeline.producers.LocalVideoThumbnailProducer (com.facebook.imagepipeline.producers.LocalVideoThumbnailProducer)
.class public Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;
.super Ljava/lang/Object;
.source "LocalVideoThumbnailProducer.java"

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

.field public static final PRODUCER_NAME:Ljava/lang/String; = "VideoThumbnailProducer"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContentResolver(Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;)Landroid/content/ContentResolver;
    .registers 1

    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetLocalFilePath(Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;Lcom/facebook/imagepipeline/request/ImageRequest;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;->getLocalFilePath(Lcom/facebook/imagepipeline/request/ImageRequest;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smcalculateKind(Lcom/facebook/imagepipeline/request/ImageRequest;)I
    .registers 1

    invoke-static {p0}, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;->calculateKind(Lcom/facebook/imagepipeline/request/ImageRequest;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smcreateThumbnailFromContentProvider(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;->createThumbnailFromContentProvider(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/content/ContentResolver;)V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;->mExecutor:Ljava/util/concurrent/Executor;

    .line 53
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private static calculateKind(Lcom/facebook/imagepipeline/request/ImageRequest;)I
    .registers 3

    .line 138
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getPreferredWidth()I

    move-result v0

    const/16 v1, 0x60

    if-gt v0, v1, :cond_11

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getPreferredHeight()I

    move-result p0

    if-le p0, v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x3

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method private static createThumbnailFromContentProvider(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 155
    :try_start_0
    const-string v0, "r"

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    .line 156
    invoke-static {p0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    new-instance p1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {p1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 158
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    const-wide/16 v0, -0x1

    .line 159
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_1b} :catch_1c

    return-object p0

    :catch_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method private getLocalFilePath(Lcom/facebook/imagepipeline/request/ImageRequest;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 146
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object p1

    .line 147
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/facebook/common/util/UriUtil;->getRealPathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .registers 12
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

    .line 61
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getProducerListener()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v3

    .line 62
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v8

    .line 63
    const-string v0, "local"

    const-string/jumbo v1, "video"

    invoke-interface {p2, v0, v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->putOriginExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$1;

    const-string v5, "VideoThumbnailProducer"

    move-object v6, v3

    move-object v7, p2

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v8}, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$1;-><init>(Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerListener2;Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/ProducerListener2;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/request/ImageRequest;)V

    .line 127
    new-instance p1, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$2;

    invoke-direct {p1, p0, v0}, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$2;-><init>(Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;)V

    invoke-interface {v4, p1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->addCallbacks(Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;)V

    .line 134
    iget-object p1, v1, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.facebook.imagepipeline.producers.LocalVideoThumbnailProducer.AnonymousClass1 (com.facebook.imagepipeline.producers.LocalVideoThumbnailProducer$1)
.class Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$1;
.super Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;
.source "LocalVideoThumbnailProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
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
.field final synthetic this$0:Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;

.field final synthetic val$imageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

.field final synthetic val$listener:Lcom/facebook/imagepipeline/producers/ProducerListener2;

.field final synthetic val$producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerListener2;Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/ProducerListener2;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/request/ImageRequest;)V
    .registers 9

    .line 66
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$1;->this$0:Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;

    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$1;->val$listener:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iput-object p7, p0, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$1;->val$producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    iput-object p8, p0, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$1;->val$imageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

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

    .line 124
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    return-void
.end method

.method protected bridge synthetic disposeResult(Ljava/lang/Object;)V
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 66
    check-cast p1, Lcom/facebook/common/references/CloseableReference;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$1;->disposeResult(Lcom/facebook/common/references/CloseableReference;)V

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

    .line 119
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

    .line 66
    check-cast p1, Lcom/facebook/common/references/CloseableReference;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$1;->getExtraMapOnSuccess(Lcom/facebook/common/references/CloseableReference;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected getResult()Lcom/facebook/common/references/CloseableReference;
    .registers 5
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
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 86
    :try_start_1
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$1;->this$0:Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$1;->val$imageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-static {v1, v2}, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;->-$$Nest$mgetLocalFilePath(Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;Lcom/facebook/imagepipeline/request/ImageRequest;)Ljava/lang/String;

    move-result-object v1
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_9} :catch_a

    goto :goto_c

    :catch_a
    nop

    move-object v1, v0

    :goto_c
    if-eqz v1, :cond_19

    .line 92
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$1;->val$imageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 93
    invoke-static {v2}, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;->-$$Nest$smcalculateKind(Lcom/facebook/imagepipeline/request/ImageRequest;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1a

    :cond_19
    move-object v1, v0

    :goto_1a
    if-nez v1, :cond_2c

    .line 97
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$1;->this$0:Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;

    invoke-static {v1}, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;->-$$Nest$fgetmContentResolver(Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$1;->val$imageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 98
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;->-$$Nest$smcreateThumbnailFromContentProvider(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_2c
    if-nez v1, :cond_2f

    return-object v0

    .line 108
    :cond_2f
    invoke-static {}, Lcom/facebook/imagepipeline/bitmaps/SimpleBitmapReleaser;->getInstance()Lcom/facebook/imagepipeline/bitmaps/SimpleBitmapReleaser;

    move-result-object v0

    sget-object v2, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;->FULL_QUALITY:Lcom/facebook/imagepipeline/image/QualityInfo;

    const/4 v3, 0x0

    .line 106
    invoke-static {v1, v0, v2, v3}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap$-CC;->of(Landroid/graphics/Bitmap;Lcom/facebook/common/references/ResourceReleaser;Lcom/facebook/imagepipeline/image/QualityInfo;I)Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$1;->val$producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v2, "image_format"

    const-string/jumbo v3, "thumbnail"

    invoke-interface {v1, v2, v3}, Lcom/facebook/imagepipeline/producers/ProducerContext;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$1;->val$producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getExtras()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->putExtras(Ljava/util/Map;)V

    .line 113
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

    .line 66
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$1;->getResult()Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method protected onFailure(Ljava/lang/Exception;)V
    .registers 5

    .line 76
    invoke-super {p0, p1}, Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;->onFailure(Ljava/lang/Exception;)V

    .line 77
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$1;->val$listener:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$1;->val$producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v1, "VideoThumbnailProducer"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onUltimateProducerReached(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Z)V

    .line 78
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$1;->val$producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v0, "local"

    const-string/jumbo v1, "video"

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

    .line 69
    invoke-super {p0, p1}, Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;->onSuccess(Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$1;->val$listener:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$1;->val$producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    const-string v2, "VideoThumbnailProducer"

    invoke-interface {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onUltimateProducerReached(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Z)V

    .line 71
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$1;->val$producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v0, "local"

    const-string/jumbo v1, "video"

    invoke-interface {p1, v0, v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->putOriginExtra(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 66
    check-cast p1, Lcom/facebook/common/references/CloseableReference;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$1;->onSuccess(Lcom/facebook/common/references/CloseableReference;)V

    return-void
.end method

###### Class com.facebook.imagepipeline.producers.LocalVideoThumbnailProducer.AnonymousClass2 (com.facebook.imagepipeline.producers.LocalVideoThumbnailProducer$2)
.class Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$2;
.super Lcom/facebook/imagepipeline/producers/BaseProducerContextCallbacks;
.source "LocalVideoThumbnailProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;

.field final synthetic val$cancellableProducerRunnable:Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;)V
    .registers 3

    .line 128
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$2;->this$0:Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$2;->val$cancellableProducerRunnable:Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/BaseProducerContextCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancellationRequested()V
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/LocalVideoThumbnailProducer$2;->val$cancellableProducerRunnable:Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;->cancel()V

    return-void
.end method
