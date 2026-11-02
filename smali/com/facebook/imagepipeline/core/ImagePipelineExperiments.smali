###### Class com.facebook.imagepipeline.core.ImagePipelineExperiments (com.facebook.imagepipeline.core.ImagePipelineExperiments)
.class public final Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;
.super Ljava/lang/Object;
.source "ImagePipelineExperiments.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;,
        Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Companion;,
        Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$DefaultProducerFactoryMethod;,
        Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$ProducerFactoryMethod;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u001f\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 Z2\u00020\u0001:\u0004WXYZB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0008R\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0008R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0008R\u0011\u0010\u0014\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0008R\u0011\u0010\u0016\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0008R\u0011\u0010\u0018\u001a\u00020\u0019\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\u001c\u001a\u00020\u0019\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001bR\u0011\u0010\u001e\u001a\u00020\u0019\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u001bR\u0011\u0010 \u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u0008R\u0011\u0010\"\u001a\u00020\u0019\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u001bR\u0011\u0010$\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u0008R\u0011\u0010%\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u0008R\u0011\u0010&\u001a\u00020\'\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010)R\u0017\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00070+\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010,R\u0011\u0010-\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010\u0008R\u0011\u0010.\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u0010\u0008R\u0017\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u00070+\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u0010,R\u0011\u00102\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u0010\u0008R\u0011\u00103\u001a\u000204\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u00106R\u0011\u00107\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00088\u0010\u0008R\u0011\u00109\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008:\u0010\u0008R\u0011\u0010;\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008;\u0010\u0008R\u0011\u0010<\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008<\u0010\u0008R\u0011\u0010=\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008=\u0010\u0008R\u0011\u0010>\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008>\u0010\u0008R\u0011\u0010?\u001a\u00020\u0019\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008@\u0010\u001bR\u0011\u0010A\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008B\u0010\u0008R\u0011\u0010C\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008D\u0010\u0008R\u0011\u0010E\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008F\u0010\u0008R\u0011\u0010G\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008H\u0010\u0008R\u0011\u0010I\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008J\u0010\u0008R\u0011\u0010K\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008L\u0010\u0008R\u0011\u0010M\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008N\u0010\u0008R\u0011\u0010O\u001a\u00020\u0019\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008P\u0010\u001bR\u0011\u0010Q\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008R\u0010\u0008R\u0011\u0010S\u001a\u00020T\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008U\u0010V\u00a8\u0006["
    }
    d2 = {
        "Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;",
        "",
        "builder",
        "Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;",
        "<init>",
        "(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)V",
        "isWebpSupportEnabled",
        "",
        "()Z",
        "webpErrorLogger",
        "Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;",
        "getWebpErrorLogger",
        "()Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;",
        "isDecodeCancellationEnabled",
        "webpBitmapFactory",
        "Lcom/facebook/common/webp/WebpBitmapFactory;",
        "getWebpBitmapFactory",
        "()Lcom/facebook/common/webp/WebpBitmapFactory;",
        "useDownsamplingRatioForResizing",
        "getUseDownsamplingRatioForResizing",
        "useBitmapPrepareToDraw",
        "getUseBitmapPrepareToDraw",
        "useBalancedAnimationStrategy",
        "getUseBalancedAnimationStrategy",
        "animationStrategyBufferLengthMilliseconds",
        "",
        "getAnimationStrategyBufferLengthMilliseconds",
        "()I",
        "bitmapPrepareToDrawMinSizeBytes",
        "getBitmapPrepareToDrawMinSizeBytes",
        "bitmapPrepareToDrawMaxSizeBytes",
        "getBitmapPrepareToDrawMaxSizeBytes",
        "bitmapPrepareToDrawForPrefetch",
        "getBitmapPrepareToDrawForPrefetch",
        "maxBitmapDimension",
        "getMaxBitmapDimension",
        "isNativeCodeDisabled",
        "isPartialImageCachingEnabled",
        "producerFactoryMethod",
        "Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$ProducerFactoryMethod;",
        "getProducerFactoryMethod",
        "()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$ProducerFactoryMethod;",
        "isLazyDataSource",
        "Lcom/facebook/common/internal/Supplier;",
        "()Lcom/facebook/common/internal/Supplier;",
        "isGingerbreadDecoderEnabled",
        "downscaleFrameToDrawableDimensions",
        "getDownscaleFrameToDrawableDimensions",
        "suppressBitmapPrefetchingSupplier",
        "getSuppressBitmapPrefetchingSupplier",
        "isExperimentalThreadHandoffQueueEnabled",
        "memoryType",
        "",
        "getMemoryType",
        "()J",
        "keepCancelledFetchAsLowPriority",
        "getKeepCancelledFetchAsLowPriority",
        "downsampleIfLargeBitmap",
        "getDownsampleIfLargeBitmap",
        "isEncodedCacheEnabled",
        "isEnsureTranscoderLibraryLoaded",
        "isEncodedMemoryCacheProbingEnabled",
        "isDiskCacheProbingEnabled",
        "trackedKeysSize",
        "getTrackedKeysSize",
        "allowDelay",
        "getAllowDelay",
        "handOffOnUiThreadOnly",
        "getHandOffOnUiThreadOnly",
        "shouldStoreCacheEntrySize",
        "getShouldStoreCacheEntrySize",
        "shouldIgnoreCacheSizeMismatch",
        "getShouldIgnoreCacheSizeMismatch",
        "shouldUseDecodingBufferHelper",
        "getShouldUseDecodingBufferHelper",
        "allowProgressiveOnPrefetch",
        "getAllowProgressiveOnPrefetch",
        "cancelDecodeOnCacheMiss",
        "getCancelDecodeOnCacheMiss",
        "animationRenderFpsLimit",
        "getAnimationRenderFpsLimit",
        "prefetchShortcutEnabled",
        "getPrefetchShortcutEnabled",
        "platformDecoderOptions",
        "Lcom/facebook/imagepipeline/platform/PlatformDecoderOptions;",
        "getPlatformDecoderOptions",
        "()Lcom/facebook/imagepipeline/platform/PlatformDecoderOptions;",
        "Builder",
        "ProducerFactoryMethod",
        "DefaultProducerFactoryMethod",
        "Companion",
        "imagepipeline_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Companion;


# instance fields
.field private final allowDelay:Z

.field private final allowProgressiveOnPrefetch:Z

.field private final animationRenderFpsLimit:I

.field private final animationStrategyBufferLengthMilliseconds:I

.field private final bitmapPrepareToDrawForPrefetch:Z

.field private final bitmapPrepareToDrawMaxSizeBytes:I

.field private final bitmapPrepareToDrawMinSizeBytes:I

.field private final cancelDecodeOnCacheMiss:Z

.field private final downsampleIfLargeBitmap:Z

.field private final downscaleFrameToDrawableDimensions:Z

.field private final handOffOnUiThreadOnly:Z

.field private final isDecodeCancellationEnabled:Z

.field private final isDiskCacheProbingEnabled:Z

.field private final isEncodedCacheEnabled:Z

.field private final isEncodedMemoryCacheProbingEnabled:Z

.field private final isEnsureTranscoderLibraryLoaded:Z

.field private final isExperimentalThreadHandoffQueueEnabled:Z

.field private final isGingerbreadDecoderEnabled:Z

.field private final isLazyDataSource:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isNativeCodeDisabled:Z

.field private final isPartialImageCachingEnabled:Z

.field private final isWebpSupportEnabled:Z

.field private final keepCancelledFetchAsLowPriority:Z

.field private final maxBitmapDimension:I

.field private final memoryType:J

.field private final platformDecoderOptions:Lcom/facebook/imagepipeline/platform/PlatformDecoderOptions;

.field private final prefetchShortcutEnabled:Z

.field private final producerFactoryMethod:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$ProducerFactoryMethod;

.field private final shouldIgnoreCacheSizeMismatch:Z

.field private final shouldStoreCacheEntrySize:Z

.field private final shouldUseDecodingBufferHelper:Z

.field private final suppressBitmapPrefetchingSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final trackedKeysSize:I

.field private final useBalancedAnimationStrategy:Z

.field private final useBitmapPrepareToDraw:Z

.field private final useDownsamplingRatioForResizing:Z

.field private final webpBitmapFactory:Lcom/facebook/common/webp/WebpBitmapFactory;

.field private final webpErrorLogger:Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->Companion:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)V
    .registers 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->webpSupportEnabled:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->isWebpSupportEnabled:Z

    .line 408
    iget-object v0, p1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->webpErrorLogger:Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->webpErrorLogger:Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;

    .line 409
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->decodeCancellationEnabled:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->isDecodeCancellationEnabled:Z

    .line 410
    iget-object v0, p1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->webpBitmapFactory:Lcom/facebook/common/webp/WebpBitmapFactory;

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->webpBitmapFactory:Lcom/facebook/common/webp/WebpBitmapFactory;

    .line 411
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->useDownsamplingRatioForResizing:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->useDownsamplingRatioForResizing:Z

    .line 412
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->useBitmapPrepareToDraw:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->useBitmapPrepareToDraw:Z

    .line 413
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->useBalancedAnimationStrategy:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->useBalancedAnimationStrategy:Z

    .line 414
    iget v0, p1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->animationStrategyBufferLengthMilliseconds:I

    iput v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->animationStrategyBufferLengthMilliseconds:I

    .line 415
    iget v0, p1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->bitmapPrepareToDrawMinSizeBytes:I

    iput v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->bitmapPrepareToDrawMinSizeBytes:I

    .line 416
    iget v0, p1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->bitmapPrepareToDrawMaxSizeBytes:I

    iput v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->bitmapPrepareToDrawMaxSizeBytes:I

    .line 417
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->bitmapPrepareToDrawForPrefetch:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->bitmapPrepareToDrawForPrefetch:Z

    .line 418
    iget v0, p1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->maxBitmapDimension:I

    iput v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->maxBitmapDimension:I

    .line 419
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->nativeCodeDisabled:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->isNativeCodeDisabled:Z

    .line 420
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->isPartialImageCachingEnabled:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->isPartialImageCachingEnabled:Z

    .line 421
    iget-object v0, p1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->producerFactoryMethod:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$ProducerFactoryMethod;

    if-nez v0, :cond_46

    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$DefaultProducerFactoryMethod;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$DefaultProducerFactoryMethod;-><init>()V

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$ProducerFactoryMethod;

    :cond_46
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->producerFactoryMethod:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$ProducerFactoryMethod;

    .line 422
    iget-object v0, p1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->lazyDataSource:Lcom/facebook/common/internal/Supplier;

    if-nez v0, :cond_53

    sget-object v0, Lcom/facebook/common/internal/Suppliers;->BOOLEAN_FALSE:Lcom/facebook/common/internal/Supplier;

    const-string v1, "BOOLEAN_FALSE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_53
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->isLazyDataSource:Lcom/facebook/common/internal/Supplier;

    .line 423
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->gingerbreadDecoderEnabled:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->isGingerbreadDecoderEnabled:Z

    .line 424
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->downscaleFrameToDrawableDimensions:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->downscaleFrameToDrawableDimensions:Z

    .line 425
    iget-object v0, p1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->suppressBitmapPrefetchingSupplier:Lcom/facebook/common/internal/Supplier;

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->suppressBitmapPrefetchingSupplier:Lcom/facebook/common/internal/Supplier;

    .line 426
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->experimentalThreadHandoffQueueEnabled:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->isExperimentalThreadHandoffQueueEnabled:Z

    .line 427
    iget-wide v0, p1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->memoryType:J

    iput-wide v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->memoryType:J

    .line 428
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->keepCancelledFetchAsLowPriority:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->keepCancelledFetchAsLowPriority:Z

    .line 429
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->downsampleIfLargeBitmap:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->downsampleIfLargeBitmap:Z

    .line 430
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->encodedCacheEnabled:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->isEncodedCacheEnabled:Z

    .line 431
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->ensureTranscoderLibraryLoaded:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->isEnsureTranscoderLibraryLoaded:Z

    .line 432
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->isEncodedMemoryCacheProbingEnabled:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->isEncodedMemoryCacheProbingEnabled:Z

    .line 433
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->isDiskCacheProbingEnabled:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->isDiskCacheProbingEnabled:Z

    .line 434
    iget v0, p1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->trackedKeysSize:I

    iput v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->trackedKeysSize:I

    .line 435
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->allowProgressiveOnPrefetch:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->allowProgressiveOnPrefetch:Z

    .line 436
    iget v0, p1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->animationRenderFpsLimit:I

    iput v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->animationRenderFpsLimit:I

    .line 437
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->allowDelay:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->allowDelay:Z

    .line 438
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->handOffOnUiThreadOnly:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->handOffOnUiThreadOnly:Z

    .line 439
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->shouldStoreCacheEntrySize:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->shouldStoreCacheEntrySize:Z

    .line 440
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->shouldIgnoreCacheSizeMismatch:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->shouldIgnoreCacheSizeMismatch:Z

    .line 441
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->shouldUseDecodingBufferHelper:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->shouldUseDecodingBufferHelper:Z

    .line 442
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->cancelDecodeOnCacheMiss:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->cancelDecodeOnCacheMiss:Z

    .line 443
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->prefetchShortcutEnabled:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->prefetchShortcutEnabled:Z

    .line 444
    iget-object p1, p1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->platformDecoderOptions:Lcom/facebook/imagepipeline/platform/PlatformDecoderOptions;

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->platformDecoderOptions:Lcom/facebook/imagepipeline/platform/PlatformDecoderOptions;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)V

    return-void
.end method

.method public static final newBuilder(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->Companion:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Companion;->newBuilder(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getAllowDelay()Z
    .registers 2

    .line 67
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->allowDelay:Z

    return v0
.end method

.method public final getAllowProgressiveOnPrefetch()Z
    .registers 2

    .line 72
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->allowProgressiveOnPrefetch:Z

    return v0
.end method

.method public final getAnimationRenderFpsLimit()I
    .registers 2

    .line 74
    iget v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->animationRenderFpsLimit:I

    return v0
.end method

.method public final getAnimationStrategyBufferLengthMilliseconds()I
    .registers 2

    .line 46
    iget v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->animationStrategyBufferLengthMilliseconds:I

    return v0
.end method

.method public final getBitmapPrepareToDrawForPrefetch()Z
    .registers 2

    .line 49
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->bitmapPrepareToDrawForPrefetch:Z

    return v0
.end method

.method public final getBitmapPrepareToDrawMaxSizeBytes()I
    .registers 2

    .line 48
    iget v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->bitmapPrepareToDrawMaxSizeBytes:I

    return v0
.end method

.method public final getBitmapPrepareToDrawMinSizeBytes()I
    .registers 2

    .line 47
    iget v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->bitmapPrepareToDrawMinSizeBytes:I

    return v0
.end method

.method public final getCancelDecodeOnCacheMiss()Z
    .registers 2

    .line 73
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->cancelDecodeOnCacheMiss:Z

    return v0
.end method

.method public final getDownsampleIfLargeBitmap()Z
    .registers 2

    .line 61
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->downsampleIfLargeBitmap:Z

    return v0
.end method

.method public final getDownscaleFrameToDrawableDimensions()Z
    .registers 2

    .line 56
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->downscaleFrameToDrawableDimensions:Z

    return v0
.end method

.method public final getHandOffOnUiThreadOnly()Z
    .registers 2

    .line 68
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->handOffOnUiThreadOnly:Z

    return v0
.end method

.method public final getKeepCancelledFetchAsLowPriority()Z
    .registers 2

    .line 60
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->keepCancelledFetchAsLowPriority:Z

    return v0
.end method

.method public final getMaxBitmapDimension()I
    .registers 2

    .line 50
    iget v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->maxBitmapDimension:I

    return v0
.end method

.method public final getMemoryType()J
    .registers 3

    .line 59
    iget-wide v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->memoryType:J

    return-wide v0
.end method

.method public final getPlatformDecoderOptions()Lcom/facebook/imagepipeline/platform/PlatformDecoderOptions;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->platformDecoderOptions:Lcom/facebook/imagepipeline/platform/PlatformDecoderOptions;

    return-object v0
.end method

.method public final getPrefetchShortcutEnabled()Z
    .registers 2

    .line 75
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->prefetchShortcutEnabled:Z

    return v0
.end method

.method public final getProducerFactoryMethod()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$ProducerFactoryMethod;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->producerFactoryMethod:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$ProducerFactoryMethod;

    return-object v0
.end method

.method public final getShouldIgnoreCacheSizeMismatch()Z
    .registers 2

    .line 70
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->shouldIgnoreCacheSizeMismatch:Z

    return v0
.end method

.method public final getShouldStoreCacheEntrySize()Z
    .registers 2

    .line 69
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->shouldStoreCacheEntrySize:Z

    return v0
.end method

.method public final getShouldUseDecodingBufferHelper()Z
    .registers 2

    .line 71
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->shouldUseDecodingBufferHelper:Z

    return v0
.end method

.method public final getSuppressBitmapPrefetchingSupplier()Lcom/facebook/common/internal/Supplier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->suppressBitmapPrefetchingSupplier:Lcom/facebook/common/internal/Supplier;

    return-object v0
.end method

.method public final getTrackedKeysSize()I
    .registers 2

    .line 66
    iget v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->trackedKeysSize:I

    return v0
.end method

.method public final getUseBalancedAnimationStrategy()Z
    .registers 2

    .line 45
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->useBalancedAnimationStrategy:Z

    return v0
.end method

.method public final getUseBitmapPrepareToDraw()Z
    .registers 2

    .line 44
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->useBitmapPrepareToDraw:Z

    return v0
.end method

.method public final getUseDownsamplingRatioForResizing()Z
    .registers 2

    .line 43
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->useDownsamplingRatioForResizing:Z

    return v0
.end method

.method public final getWebpBitmapFactory()Lcom/facebook/common/webp/WebpBitmapFactory;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->webpBitmapFactory:Lcom/facebook/common/webp/WebpBitmapFactory;

    return-object v0
.end method

.method public final getWebpErrorLogger()Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->webpErrorLogger:Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;

    return-object v0
.end method

.method public final isDecodeCancellationEnabled()Z
    .registers 2

    .line 41
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->isDecodeCancellationEnabled:Z

    return v0
.end method

.method public final isDiskCacheProbingEnabled()Z
    .registers 2

    .line 65
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->isDiskCacheProbingEnabled:Z

    return v0
.end method

.method public final isEncodedCacheEnabled()Z
    .registers 2

    .line 62
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->isEncodedCacheEnabled:Z

    return v0
.end method

.method public final isEncodedMemoryCacheProbingEnabled()Z
    .registers 2

    .line 64
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->isEncodedMemoryCacheProbingEnabled:Z

    return v0
.end method

.method public final isEnsureTranscoderLibraryLoaded()Z
    .registers 2

    .line 63
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->isEnsureTranscoderLibraryLoaded:Z

    return v0
.end method

.method public final isExperimentalThreadHandoffQueueEnabled()Z
    .registers 2

    .line 58
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->isExperimentalThreadHandoffQueueEnabled:Z

    return v0
.end method

.method public final isGingerbreadDecoderEnabled()Z
    .registers 2

    .line 55
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->isGingerbreadDecoderEnabled:Z

    return v0
.end method

.method public final isLazyDataSource()Lcom/facebook/common/internal/Supplier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->isLazyDataSource:Lcom/facebook/common/internal/Supplier;

    return-object v0
.end method

.method public final isNativeCodeDisabled()Z
    .registers 2

    .line 51
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->isNativeCodeDisabled:Z

    return v0
.end method

.method public final isPartialImageCachingEnabled()Z
    .registers 2

    .line 52
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->isPartialImageCachingEnabled:Z

    return v0
.end method

.method public final isWebpSupportEnabled()Z
    .registers 2

    .line 39
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->isWebpSupportEnabled:Z

    return v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineExperiments.Builder (com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder)
.class public final Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
.super Ljava/lang/Object;
.source "ImagePipelineExperiments.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008)\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0016\u00105\u001a\u00020\u00002\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u00020807H\u0002J\u000e\u00109\u001a\u00020\u00002\u0006\u0010,\u001a\u00020\u0007J\u000e\u0010:\u001a\u00020\u00002\u0006\u0010-\u001a\u00020\u0007J\u000e\u0010;\u001a\u00020\u00002\u0006\u0010.\u001a\u00020\u0007J\u000e\u0010<\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007J\u000e\u0010=\u001a\u00020\u00002\u0006\u00102\u001a\u00020\u0007J\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010>\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010?\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0007J\u000e\u0010@\u001a\u00020\u00002\u0006\u0010A\u001a\u00020\u0007J\u000e\u0010B\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0007J\u0010\u0010C\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\nJ\u0010\u0010D\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rJ&\u0010E\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010F\u001a\u00020\u00122\u0006\u0010G\u001a\u00020\u00122\u0006\u0010H\u001a\u00020\u0007J\u000e\u0010I\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0007J\u000e\u0010J\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010K\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0012J\u000e\u0010L\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0007J\u0010\u0010M\u001a\u00020\u00002\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aJ\u0016\u0010N\u001a\u00020\u00002\u000e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001cJ\u000e\u0010O\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u0007J\u000e\u0010P\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u0007J\u0014\u0010Q\u001a\u00020\u00002\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u001cJ\u000e\u0010R\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u0007J\u000e\u0010S\u001a\u00020\u00002\u0006\u0010T\u001a\u00020#J\u000e\u0010U\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\u0007J\u000e\u0010V\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\u0007J\u000e\u0010W\u001a\u00020\u00002\u0006\u0010&\u001a\u00020\u0007J\u000e\u0010X\u001a\u00020\u00002\u0006\u0010\'\u001a\u00020\u0007J\u000e\u0010Y\u001a\u00020\u00002\u0006\u0010)\u001a\u00020\u0007J\u000e\u0010Z\u001a\u00020\u00002\u0006\u0010(\u001a\u00020\u0007J\u000e\u0010[\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\u0012J\u000e\u0010\\\u001a\u00020\u00002\u0006\u0010+\u001a\u00020\u0007J\u000e\u0010]\u001a\u00020\u00002\u0006\u0010/\u001a\u00020\u0007J\u000e\u0010^\u001a\u00020\u00002\u0006\u00100\u001a\u00020\u0012J\u000e\u0010_\u001a\u00020\u00002\u0006\u00101\u001a\u00020\u0007J\u000e\u0010`\u001a\u00020\u00002\u0006\u00103\u001a\u000204J\u0006\u0010a\u001a\u00020bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u0004\u0018\u00010\u001a8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001d\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001e\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R \u0010\u001f\u001a\u0010\u0012\u000c\u0012\n  *\u0004\u0018\u00010\u00070\u00070\u001c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010!\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\"\u001a\u00020#8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010$\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010%\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010&\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\'\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010(\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010)\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010*\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010+\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010,\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010-\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010.\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010/\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u00100\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u00101\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u00102\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u00103\u001a\u0002048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006c"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;",
        "",
        "configBuilder",
        "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;",
        "<init>",
        "(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)V",
        "shouldUseDecodingBufferHelper",
        "",
        "webpSupportEnabled",
        "webpErrorLogger",
        "Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;",
        "decodeCancellationEnabled",
        "webpBitmapFactory",
        "Lcom/facebook/common/webp/WebpBitmapFactory;",
        "useDownsamplingRatioForResizing",
        "useBitmapPrepareToDraw",
        "useBalancedAnimationStrategy",
        "animationStrategyBufferLengthMilliseconds",
        "",
        "bitmapPrepareToDrawMinSizeBytes",
        "bitmapPrepareToDrawMaxSizeBytes",
        "bitmapPrepareToDrawForPrefetch",
        "maxBitmapDimension",
        "nativeCodeDisabled",
        "isPartialImageCachingEnabled",
        "producerFactoryMethod",
        "Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$ProducerFactoryMethod;",
        "lazyDataSource",
        "Lcom/facebook/common/internal/Supplier;",
        "gingerbreadDecoderEnabled",
        "downscaleFrameToDrawableDimensions",
        "suppressBitmapPrefetchingSupplier",
        "kotlin.jvm.PlatformType",
        "experimentalThreadHandoffQueueEnabled",
        "memoryType",
        "",
        "keepCancelledFetchAsLowPriority",
        "downsampleIfLargeBitmap",
        "encodedCacheEnabled",
        "ensureTranscoderLibraryLoaded",
        "isEncodedMemoryCacheProbingEnabled",
        "isDiskCacheProbingEnabled",
        "trackedKeysSize",
        "allowDelay",
        "handOffOnUiThreadOnly",
        "shouldStoreCacheEntrySize",
        "shouldIgnoreCacheSizeMismatch",
        "allowProgressiveOnPrefetch",
        "animationRenderFpsLimit",
        "cancelDecodeOnCacheMiss",
        "prefetchShortcutEnabled",
        "platformDecoderOptions",
        "Lcom/facebook/imagepipeline/platform/PlatformDecoderOptions;",
        "asBuilder",
        "block",
        "Lkotlin/Function0;",
        "",
        "setHandOffOnUiThreadOnly",
        "setStoreCacheEntrySize",
        "setIgnoreCacheSizeMismatch",
        "setWebpSupportEnabled",
        "setPrefetchShortcutEnabled",
        "setShouldUseDecodingBufferHelper",
        "setUseDownsampligRatioForResizing",
        "setPartialImageCachingEnabled",
        "partialImageCachingEnabled",
        "setDecodeCancellationEnabled",
        "setWebpErrorLogger",
        "setWebpBitmapFactory",
        "setBitmapPrepareToDraw",
        "minBitmapSizeBytes",
        "maxBitmapSizeBytes",
        "preparePrefetch",
        "setBalancedAnimationStrategy",
        "setAnimationStrategyBufferLengthMilliseconds",
        "setMaxBitmapDimension",
        "setNativeCodeDisabled",
        "setProducerFactoryMethod",
        "setLazyDataSource",
        "setGingerbreadDecoderEnabled",
        "setShouldDownscaleFrameToDrawableDimensions",
        "setSuppressBitmapPrefetchingSupplier",
        "setExperimentalThreadHandoffQueueEnabled",
        "setExperimentalMemoryType",
        "MemoryType",
        "setKeepCancelledFetchAsLowPriority",
        "setDownsampleIfLargeBitmap",
        "setEncodedCacheEnabled",
        "setEnsureTranscoderLibraryLoaded",
        "setIsDiskCacheProbingEnabled",
        "setIsEncodedMemoryCacheProbingEnabled",
        "setTrackedKeysSize",
        "setAllowDelay",
        "setAllowProgressiveOnPrefetch",
        "setAnimationRenderFpsLimit",
        "setCancelDecodeOnCacheMiss",
        "setPlatformDecoderOptions",
        "build",
        "Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;",
        "imagepipeline_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public allowDelay:Z

.field public allowProgressiveOnPrefetch:Z

.field public animationRenderFpsLimit:I

.field public animationStrategyBufferLengthMilliseconds:I

.field public bitmapPrepareToDrawForPrefetch:Z

.field public bitmapPrepareToDrawMaxSizeBytes:I

.field public bitmapPrepareToDrawMinSizeBytes:I

.field public cancelDecodeOnCacheMiss:Z

.field private final configBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

.field public decodeCancellationEnabled:Z

.field public downsampleIfLargeBitmap:Z

.field public downscaleFrameToDrawableDimensions:Z

.field public encodedCacheEnabled:Z

.field public ensureTranscoderLibraryLoaded:Z

.field public experimentalThreadHandoffQueueEnabled:Z

.field public gingerbreadDecoderEnabled:Z

.field public handOffOnUiThreadOnly:Z

.field public isDiskCacheProbingEnabled:Z

.field public isEncodedMemoryCacheProbingEnabled:Z

.field public isPartialImageCachingEnabled:Z

.field public keepCancelledFetchAsLowPriority:Z

.field public lazyDataSource:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public maxBitmapDimension:I

.field public memoryType:J

.field public nativeCodeDisabled:Z

.field public platformDecoderOptions:Lcom/facebook/imagepipeline/platform/PlatformDecoderOptions;

.field public prefetchShortcutEnabled:Z

.field public producerFactoryMethod:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$ProducerFactoryMethod;

.field public shouldIgnoreCacheSizeMismatch:Z

.field public shouldStoreCacheEntrySize:Z

.field public shouldUseDecodingBufferHelper:Z

.field public suppressBitmapPrefetchingSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public trackedKeysSize:I

.field public useBalancedAnimationStrategy:Z

.field public useBitmapPrepareToDraw:Z

.field public useDownsamplingRatioForResizing:Z

.field public webpBitmapFactory:Lcom/facebook/common/webp/WebpBitmapFactory;

.field public webpErrorLogger:Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;

.field public webpSupportEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$0T6ykDoimquzKc8iN4LFZ584ejE(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;J)Lkotlin/Unit;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->setExperimentalMemoryType$lambda$22(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;J)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4SlexBXSYgny0XJOkMJxWGRrqQ0(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$ProducerFactoryMethod;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->setProducerFactoryMethod$lambda$16(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$ProducerFactoryMethod;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Cope210vrOz_secCd3Wp9hOEEVk(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->setIgnoreCacheSizeMismatch$lambda$2(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EP2xoACP_8kvhqB26dVE6aaPWg4(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->setPartialImageCachingEnabled$lambda$7(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$En9gjvSsP5iIfhuIco43tyREyLI(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->setWebpErrorLogger$lambda$9(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$F0NIchz-JWBc-Iwsl7AAhJ8E9oo(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->setEnsureTranscoderLibraryLoaded$lambda$26(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GNuzDTba5exv5qFQcXkUpyPGSAA(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->setNativeCodeDisabled$lambda$15(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GcDlD4eCrHPzHc2ohKmTb4eoFcg(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->setAllowDelay$lambda$30(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Gn3LrLHEWcXmkgntJ9pUV6F4ndA(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;I)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->setAnimationStrategyBufferLengthMilliseconds$lambda$13(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HOTewhyx0sEZ9H2PqzOsFB2PYeQ(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->setHandOffOnUiThreadOnly$lambda$0(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HnNPkrOsViHyy92Lf3iDcYsJLy8(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->setExperimentalThreadHandoffQueueEnabled$lambda$21(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MFTObCCX6A2ziXjIfgtEkjGewKU(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->setWebpSupportEnabled$lambda$3(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PrNLrNMvi3pEoJ5RQyXDr6VyrrQ(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->setCancelDecodeOnCacheMiss$lambda$33(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PxTbYrR_csdGV0f9tDjRecVPCa4(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->setPrefetchShortcutEnabled$lambda$4(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TQXzrObRw-2WYi_nLwVNukMc1fY(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->setDecodeCancellationEnabled$lambda$8(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZmDsWuZoKaIemN4yZEHqjfjRutc(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->setShouldDownscaleFrameToDrawableDimensions$lambda$19(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eT9EPAIRq2EC56EdAstWDgs2Dgs(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->setStoreCacheEntrySize$lambda$1(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jBpKJTC-gEtNIdOG1C0rmLaAcFs(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;I)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->setTrackedKeysSize$lambda$29(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kI4LLXQ3Xdeauvlikd98PmUEANA(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/imagepipeline/platform/PlatformDecoderOptions;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->setPlatformDecoderOptions$lambda$34(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/imagepipeline/platform/PlatformDecoderOptions;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$k_s7aioCZQbpAuUftm-LT7TWb7s(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/common/internal/Supplier;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->setLazyDataSource$lambda$17(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/common/internal/Supplier;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ku1OEm5x0IX0j28N2po9r2yQoEs(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;I)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->setAnimationRenderFpsLimit$lambda$32(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mVz_Zgk0ejyx-OyCy7P1uSVi87Q(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->setBalancedAnimationStrategy$lambda$12(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mg4YuPLHHlwbMKw8--aGS5zSJJg(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->setDownsampleIfLargeBitmap$lambda$24(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mmkKhJ5mLy17omJsWZY3crez6O0(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->setAllowProgressiveOnPrefetch$lambda$31(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$o5tfGl6TYYnz8HRvPdbb2dIZanY(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->setShouldUseDecodingBufferHelper$lambda$5(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$q-6A2AQfKXNAm17odF4wuDUko7Q(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->setIsDiskCacheProbingEnabled$lambda$27(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rhBZaxmhaJufX1PY1ORxgThtYh4(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->setEncodedCacheEnabled$lambda$25(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$t_5sfSkg2W4NIYqVha9jxsRHRT0(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->setKeepCancelledFetchAsLowPriority$lambda$23(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ty0tub164ONsIF4RZnxJjAQ-0BM(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->setIsEncodedMemoryCacheProbingEnabled$lambda$28(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$u1OKJPotV_hgHTNydULaFe1lX2E(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/common/internal/Supplier;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->setSuppressBitmapPrefetchingSupplier$lambda$20(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/common/internal/Supplier;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ua6uqV3j4lgMptp6rWKYqUkmViA(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;ZIIZ)Lkotlin/Unit;
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->setBitmapPrepareToDraw$lambda$11(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;ZIIZ)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vqE6Vvw0O2lhdA9946p4yaZ6QEI(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/common/webp/WebpBitmapFactory;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->setWebpBitmapFactory$lambda$10(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/common/webp/WebpBitmapFactory;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$weantRlnJ1pVXjw57pKxDWAeY-I(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;I)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->setMaxBitmapDimension$lambda$14(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$x79kHOIafrGj57Ew8ik3fcy1R6w(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->setUseDownsampligRatioForResizing$lambda$6(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$z-fEhi05mGo6kUM4I-OGqMplxRs(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->setGingerbreadDecoderEnabled$lambda$18(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)V
    .registers 5

    const-string v0, "configBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->configBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    const/16 p1, 0x3e8

    .line 87
    iput p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->animationStrategyBufferLengthMilliseconds:I

    const/16 p1, 0x800

    .line 92
    iput p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->maxBitmapDimension:I

    const/4 p1, 0x0

    .line 103
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Suppliers;->of(Ljava/lang/Object;)Lcom/facebook/common/internal/Supplier;

    move-result-object v0

    const-string v1, "of(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->suppressBitmapPrefetchingSupplier:Lcom/facebook/common/internal/Supplier;

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->encodedCacheEnabled:Z

    .line 114
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->ensureTranscoderLibraryLoaded:Z

    const/16 v0, 0x14

    .line 117
    iput v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->trackedKeysSize:I

    const/16 v0, 0x1e

    .line 124
    iput v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->animationRenderFpsLimit:I

    .line 128
    new-instance v0, Lcom/facebook/imagepipeline/platform/PlatformDecoderOptions;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, p1, p1, v1, v2}, Lcom/facebook/imagepipeline/platform/PlatformDecoderOptions;-><init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->platformDecoderOptions:Lcom/facebook/imagepipeline/platform/PlatformDecoderOptions;

    return-void
.end method

.method private final asBuilder(Lkotlin/jvm/functions/Function0;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;"
        }
    .end annotation

    .line 131
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-object p0
.end method

.method private static final setAllowDelay$lambda$30(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->allowDelay:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setAllowProgressiveOnPrefetch$lambda$31(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->allowProgressiveOnPrefetch:Z

    .line 313
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setAnimationRenderFpsLimit$lambda$32(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;I)Lkotlin/Unit;
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    iput p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->animationRenderFpsLimit:I

    .line 317
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setAnimationStrategyBufferLengthMilliseconds$lambda$13(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;I)Lkotlin/Unit;
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    iput p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->animationStrategyBufferLengthMilliseconds:I

    .line 227
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setBalancedAnimationStrategy$lambda$12(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->useBalancedAnimationStrategy:Z

    .line 220
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setBitmapPrepareToDraw$lambda$11(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;ZIIZ)Lkotlin/Unit;
    .registers 6

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->useBitmapPrepareToDraw:Z

    .line 212
    iput p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->bitmapPrepareToDrawMinSizeBytes:I

    .line 213
    iput p3, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->bitmapPrepareToDrawMaxSizeBytes:I

    .line 214
    iput-boolean p4, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->bitmapPrepareToDrawForPrefetch:Z

    .line 215
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setCancelDecodeOnCacheMiss$lambda$33(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->cancelDecodeOnCacheMiss:Z

    .line 321
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setDecodeCancellationEnabled$lambda$8(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->decodeCancellationEnabled:Z

    .line 181
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setDownsampleIfLargeBitmap$lambda$24(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->downsampleIfLargeBitmap:Z

    .line 286
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setEncodedCacheEnabled$lambda$25(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->encodedCacheEnabled:Z

    .line 290
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setEnsureTranscoderLibraryLoaded$lambda$26(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->ensureTranscoderLibraryLoaded:Z

    .line 294
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setExperimentalMemoryType$lambda$22(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;J)Lkotlin/Unit;
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    iput-wide p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->memoryType:J

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setExperimentalThreadHandoffQueueEnabled$lambda$21(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->experimentalThreadHandoffQueueEnabled:Z

    .line 276
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setGingerbreadDecoderEnabled$lambda$18(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->gingerbreadDecoderEnabled:Z

    .line 261
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setHandOffOnUiThreadOnly$lambda$0(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->handOffOnUiThreadOnly:Z

    .line 137
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setIgnoreCacheSizeMismatch$lambda$2(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->shouldIgnoreCacheSizeMismatch:Z

    .line 145
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setIsDiskCacheProbingEnabled$lambda$27(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->isDiskCacheProbingEnabled:Z

    .line 298
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setIsEncodedMemoryCacheProbingEnabled$lambda$28(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->isEncodedMemoryCacheProbingEnabled:Z

    .line 303
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setKeepCancelledFetchAsLowPriority$lambda$23(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->keepCancelledFetchAsLowPriority:Z

    .line 282
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setLazyDataSource$lambda$17(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/common/internal/Supplier;)Lkotlin/Unit;
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->lazyDataSource:Lcom/facebook/common/internal/Supplier;

    .line 257
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setMaxBitmapDimension$lambda$14(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;I)Lkotlin/Unit;
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    iput p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->maxBitmapDimension:I

    .line 234
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setNativeCodeDisabled$lambda$15(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->nativeCodeDisabled:Z

    .line 244
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setPartialImageCachingEnabled$lambda$7(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->isPartialImageCachingEnabled:Z

    .line 171
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setPlatformDecoderOptions$lambda$34(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/imagepipeline/platform/PlatformDecoderOptions;)Lkotlin/Unit;
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$platformDecoderOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->platformDecoderOptions:Lcom/facebook/imagepipeline/platform/PlatformDecoderOptions;

    .line 325
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setPrefetchShortcutEnabled$lambda$4(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->prefetchShortcutEnabled:Z

    .line 153
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setProducerFactoryMethod$lambda$16(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$ProducerFactoryMethod;)Lkotlin/Unit;
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->producerFactoryMethod:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$ProducerFactoryMethod;

    .line 252
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setShouldDownscaleFrameToDrawableDimensions$lambda$19(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->downscaleFrameToDrawableDimensions:Z

    .line 266
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setShouldUseDecodingBufferHelper$lambda$5(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->shouldUseDecodingBufferHelper:Z

    .line 159
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setStoreCacheEntrySize$lambda$1(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->shouldStoreCacheEntrySize:Z

    .line 141
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setSuppressBitmapPrefetchingSupplier$lambda$20(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/common/internal/Supplier;)Lkotlin/Unit;
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$suppressBitmapPrefetchingSupplier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->suppressBitmapPrefetchingSupplier:Lcom/facebook/common/internal/Supplier;

    .line 271
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setTrackedKeysSize$lambda$29(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;I)Lkotlin/Unit;
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    iput p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->trackedKeysSize:I

    .line 307
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setUseDownsampligRatioForResizing$lambda$6(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->useDownsamplingRatioForResizing:Z

    .line 163
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setWebpBitmapFactory$lambda$10(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/common/webp/WebpBitmapFactory;)Lkotlin/Unit;
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->webpBitmapFactory:Lcom/facebook/common/webp/WebpBitmapFactory;

    .line 189
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setWebpErrorLogger$lambda$9(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;)Lkotlin/Unit;
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->webpErrorLogger:Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;

    .line 185
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setWebpSupportEnabled$lambda$3(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->webpSupportEnabled:Z

    .line 149
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final build()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;
    .registers 3

    .line 327
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final setAllowDelay(Z)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .registers 3

    .line 309
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda12;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->asBuilder(Lkotlin/jvm/functions/Function0;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setAllowProgressiveOnPrefetch(Z)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .registers 3

    .line 311
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda29;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->asBuilder(Lkotlin/jvm/functions/Function0;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setAnimationRenderFpsLimit(I)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .registers 3

    .line 315
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda13;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;I)V

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->asBuilder(Lkotlin/jvm/functions/Function0;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setAnimationStrategyBufferLengthMilliseconds(I)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .registers 3

    .line 225
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda27;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;I)V

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->asBuilder(Lkotlin/jvm/functions/Function0;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setBalancedAnimationStrategy(Z)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .registers 3

    .line 218
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda10;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->asBuilder(Lkotlin/jvm/functions/Function0;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setBitmapPrepareToDraw(ZIIZ)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .registers 11

    .line 210
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda9;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda9;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;ZIIZ)V

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->asBuilder(Lkotlin/jvm/functions/Function0;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setCancelDecodeOnCacheMiss(Z)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .registers 3

    .line 319
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda5;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->asBuilder(Lkotlin/jvm/functions/Function0;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setDecodeCancellationEnabled(Z)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .registers 3

    .line 179
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda24;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->asBuilder(Lkotlin/jvm/functions/Function0;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setDownsampleIfLargeBitmap(Z)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .registers 3

    .line 284
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda19;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->asBuilder(Lkotlin/jvm/functions/Function0;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setEncodedCacheEnabled(Z)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .registers 3

    .line 288
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda28;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->asBuilder(Lkotlin/jvm/functions/Function0;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setEnsureTranscoderLibraryLoaded(Z)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .registers 3

    .line 292
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda25;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->asBuilder(Lkotlin/jvm/functions/Function0;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setExperimentalMemoryType(J)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .registers 4

    .line 278
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda31;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;J)V

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->asBuilder(Lkotlin/jvm/functions/Function0;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setExperimentalThreadHandoffQueueEnabled(Z)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .registers 3

    .line 274
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda4;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->asBuilder(Lkotlin/jvm/functions/Function0;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setGingerbreadDecoderEnabled(Z)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .registers 3

    .line 259
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda23;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->asBuilder(Lkotlin/jvm/functions/Function0;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setHandOffOnUiThreadOnly(Z)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .registers 3

    .line 135
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda11;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->asBuilder(Lkotlin/jvm/functions/Function0;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setIgnoreCacheSizeMismatch(Z)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .registers 3

    .line 143
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda7;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->asBuilder(Lkotlin/jvm/functions/Function0;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setIsDiskCacheProbingEnabled(Z)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .registers 3

    .line 296
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda17;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->asBuilder(Lkotlin/jvm/functions/Function0;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setIsEncodedMemoryCacheProbingEnabled(Z)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .registers 3

    .line 301
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda26;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->asBuilder(Lkotlin/jvm/functions/Function0;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setKeepCancelledFetchAsLowPriority(Z)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .registers 3

    .line 280
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->asBuilder(Lkotlin/jvm/functions/Function0;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setLazyDataSource(Lcom/facebook/common/internal/Supplier;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;"
        }
    .end annotation

    .line 255
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda21;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/common/internal/Supplier;)V

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->asBuilder(Lkotlin/jvm/functions/Function0;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setMaxBitmapDimension(I)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .registers 3

    .line 232
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda22;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;I)V

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->asBuilder(Lkotlin/jvm/functions/Function0;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setNativeCodeDisabled(Z)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .registers 3

    .line 242
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda6;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->asBuilder(Lkotlin/jvm/functions/Function0;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setPartialImageCachingEnabled(Z)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .registers 3

    .line 169
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda33;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->asBuilder(Lkotlin/jvm/functions/Function0;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setPlatformDecoderOptions(Lcom/facebook/imagepipeline/platform/PlatformDecoderOptions;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .registers 3

    const-string v0, "platformDecoderOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda34;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda34;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/imagepipeline/platform/PlatformDecoderOptions;)V

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->asBuilder(Lkotlin/jvm/functions/Function0;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setPrefetchShortcutEnabled(Z)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .registers 3

    .line 151
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda32;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->asBuilder(Lkotlin/jvm/functions/Function0;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setProducerFactoryMethod(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$ProducerFactoryMethod;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .registers 3

    .line 250
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda15;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$ProducerFactoryMethod;)V

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->asBuilder(Lkotlin/jvm/functions/Function0;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setShouldDownscaleFrameToDrawableDimensions(Z)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .registers 3

    .line 264
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda18;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->asBuilder(Lkotlin/jvm/functions/Function0;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setShouldUseDecodingBufferHelper(Z)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .registers 3

    .line 157
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda1;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->asBuilder(Lkotlin/jvm/functions/Function0;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setStoreCacheEntrySize(Z)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .registers 3

    .line 139
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda8;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->asBuilder(Lkotlin/jvm/functions/Function0;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setSuppressBitmapPrefetchingSupplier(Lcom/facebook/common/internal/Supplier;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;"
        }
    .end annotation

    const-string/jumbo v0, "suppressBitmapPrefetchingSupplier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda2;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/common/internal/Supplier;)V

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->asBuilder(Lkotlin/jvm/functions/Function0;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setTrackedKeysSize(I)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .registers 3

    .line 305
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda16;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;I)V

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->asBuilder(Lkotlin/jvm/functions/Function0;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUseDownsampligRatioForResizing(Z)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .registers 3

    .line 161
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda20;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->asBuilder(Lkotlin/jvm/functions/Function0;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setWebpBitmapFactory(Lcom/facebook/common/webp/WebpBitmapFactory;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .registers 3

    .line 187
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda30;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/common/webp/WebpBitmapFactory;)V

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->asBuilder(Lkotlin/jvm/functions/Function0;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setWebpErrorLogger(Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .registers 3

    .line 183
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda3;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;)V

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->asBuilder(Lkotlin/jvm/functions/Function0;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setWebpSupportEnabled(Z)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .registers 3

    .line 147
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda14;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->asBuilder(Lkotlin/jvm/functions/Function0;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final shouldUseDecodingBufferHelper()Z
    .registers 2

    .line 155
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->shouldUseDecodingBufferHelper:Z

    return v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda0 (com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda0;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iput-boolean p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda0;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda0;->f$1:Z

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->$r8$lambda$t_5sfSkg2W4NIYqVha9jxsRHRT0(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda1 (com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda1;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iput-boolean p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda1;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda1;->f$1:Z

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->$r8$lambda$o5tfGl6TYYnz8HRvPdbb2dIZanY(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda10 (com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda10)
.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda10;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iput-boolean p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda10;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda10;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda10;->f$1:Z

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->$r8$lambda$mVz_Zgk0ejyx-OyCy7P1uSVi87Q(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda11 (com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda11)
.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda11;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iput-boolean p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda11;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda11;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda11;->f$1:Z

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->$r8$lambda$HOTewhyx0sEZ9H2PqzOsFB2PYeQ(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda12 (com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda12)
.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda12;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iput-boolean p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda12;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda12;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda12;->f$1:Z

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->$r8$lambda$GcDlD4eCrHPzHc2ohKmTb4eoFcg(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda13 (com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda13)
.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda13;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iput p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda13;->f$1:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda13;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iget v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda13;->f$1:I

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->$r8$lambda$ku1OEm5x0IX0j28N2po9r2yQoEs(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;I)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda14 (com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda14)
.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda14;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iput-boolean p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda14;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda14;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda14;->f$1:Z

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->$r8$lambda$MFTObCCX6A2ziXjIfgtEkjGewKU(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda15 (com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda15)
.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

.field public final synthetic f$1:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$ProducerFactoryMethod;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$ProducerFactoryMethod;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda15;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iput-object p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda15;->f$1:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$ProducerFactoryMethod;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda15;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda15;->f$1:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$ProducerFactoryMethod;

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->$r8$lambda$4SlexBXSYgny0XJOkMJxWGRrqQ0(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$ProducerFactoryMethod;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda16 (com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda16)
.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda16;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iput p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda16;->f$1:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda16;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iget v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda16;->f$1:I

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->$r8$lambda$jBpKJTC-gEtNIdOG1C0rmLaAcFs(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;I)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda17 (com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda17)
.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda17;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iput-boolean p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda17;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda17;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda17;->f$1:Z

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->$r8$lambda$q-6A2AQfKXNAm17odF4wuDUko7Q(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda18 (com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda18)
.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda18;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iput-boolean p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda18;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda18;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda18;->f$1:Z

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->$r8$lambda$ZmDsWuZoKaIemN4yZEHqjfjRutc(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda19 (com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda19)
.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda19;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iput-boolean p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda19;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda19;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda19;->f$1:Z

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->$r8$lambda$mg4YuPLHHlwbMKw8--aGS5zSJJg(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda2 (com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

.field public final synthetic f$1:Lcom/facebook/common/internal/Supplier;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/common/internal/Supplier;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda2;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iput-object p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda2;->f$1:Lcom/facebook/common/internal/Supplier;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda2;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda2;->f$1:Lcom/facebook/common/internal/Supplier;

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->$r8$lambda$u1OKJPotV_hgHTNydULaFe1lX2E(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/common/internal/Supplier;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda20 (com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda20)
.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda20;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iput-boolean p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda20;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda20;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda20;->f$1:Z

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->$r8$lambda$x79kHOIafrGj57Ew8ik3fcy1R6w(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda21 (com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda21)
.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

.field public final synthetic f$1:Lcom/facebook/common/internal/Supplier;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/common/internal/Supplier;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda21;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iput-object p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda21;->f$1:Lcom/facebook/common/internal/Supplier;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda21;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda21;->f$1:Lcom/facebook/common/internal/Supplier;

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->$r8$lambda$k_s7aioCZQbpAuUftm-LT7TWb7s(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/common/internal/Supplier;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda22 (com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda22)
.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda22;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iput p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda22;->f$1:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda22;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iget v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda22;->f$1:I

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->$r8$lambda$weantRlnJ1pVXjw57pKxDWAeY-I(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;I)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda23 (com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda23)
.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda23;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iput-boolean p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda23;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda23;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda23;->f$1:Z

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->$r8$lambda$z-fEhi05mGo6kUM4I-OGqMplxRs(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda24 (com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda24)
.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda24;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iput-boolean p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda24;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda24;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda24;->f$1:Z

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->$r8$lambda$TQXzrObRw-2WYi_nLwVNukMc1fY(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda25 (com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda25)
.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda25;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iput-boolean p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda25;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda25;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda25;->f$1:Z

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->$r8$lambda$F0NIchz-JWBc-Iwsl7AAhJ8E9oo(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda26 (com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda26)
.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda26;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iput-boolean p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda26;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda26;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda26;->f$1:Z

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->$r8$lambda$ty0tub164ONsIF4RZnxJjAQ-0BM(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda27 (com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda27)
.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda27;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iput p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda27;->f$1:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda27;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iget v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda27;->f$1:I

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->$r8$lambda$Gn3LrLHEWcXmkgntJ9pUV6F4ndA(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;I)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda28 (com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda28)
.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda28;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iput-boolean p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda28;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda28;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda28;->f$1:Z

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->$r8$lambda$rhBZaxmhaJufX1PY1ORxgThtYh4(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda29 (com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda29)
.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda29;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iput-boolean p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda29;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda29;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda29;->f$1:Z

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->$r8$lambda$mmkKhJ5mLy17omJsWZY3crez6O0(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda3 (com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

.field public final synthetic f$1:Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda3;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iput-object p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda3;->f$1:Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda3;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda3;->f$1:Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->$r8$lambda$En9gjvSsP5iIfhuIco43tyREyLI(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda30 (com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda30)
.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

.field public final synthetic f$1:Lcom/facebook/common/webp/WebpBitmapFactory;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/common/webp/WebpBitmapFactory;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda30;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iput-object p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda30;->f$1:Lcom/facebook/common/webp/WebpBitmapFactory;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda30;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda30;->f$1:Lcom/facebook/common/webp/WebpBitmapFactory;

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->$r8$lambda$vqE6Vvw0O2lhdA9946p4yaZ6QEI(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/common/webp/WebpBitmapFactory;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda31 (com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda31)
.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;J)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda31;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iput-wide p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda31;->f$1:J

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda31;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iget-wide v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda31;->f$1:J

    invoke-static {v0, v1, v2}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->$r8$lambda$0T6ykDoimquzKc8iN4LFZ584ejE(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;J)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda32 (com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda32)
.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda32;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iput-boolean p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda32;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda32;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda32;->f$1:Z

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->$r8$lambda$PxTbYrR_csdGV0f9tDjRecVPCa4(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda33 (com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda33)
.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda33;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda33;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iput-boolean p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda33;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda33;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda33;->f$1:Z

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->$r8$lambda$EP2xoACP_8kvhqB26dVE6aaPWg4(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda34 (com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda34)
.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda34;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

.field public final synthetic f$1:Lcom/facebook/imagepipeline/platform/PlatformDecoderOptions;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/imagepipeline/platform/PlatformDecoderOptions;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda34;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iput-object p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda34;->f$1:Lcom/facebook/imagepipeline/platform/PlatformDecoderOptions;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda34;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda34;->f$1:Lcom/facebook/imagepipeline/platform/PlatformDecoderOptions;

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->$r8$lambda$kI4LLXQ3Xdeauvlikd98PmUEANA(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/imagepipeline/platform/PlatformDecoderOptions;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda4 (com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda4)
.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda4;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iput-boolean p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda4;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda4;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda4;->f$1:Z

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->$r8$lambda$HnNPkrOsViHyy92Lf3iDcYsJLy8(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda5 (com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda5)
.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda5;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iput-boolean p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda5;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda5;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda5;->f$1:Z

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->$r8$lambda$PrNLrNMvi3pEoJ5RQyXDr6VyrrQ(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda6 (com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda6)
.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda6;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iput-boolean p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda6;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda6;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda6;->f$1:Z

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->$r8$lambda$GNuzDTba5exv5qFQcXkUpyPGSAA(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda7 (com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda7)
.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda7;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iput-boolean p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda7;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda7;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda7;->f$1:Z

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->$r8$lambda$Cope210vrOz_secCd3Wp9hOEEVk(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda8 (com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda8)
.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda8;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iput-boolean p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda8;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda8;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda8;->f$1:Z

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->$r8$lambda$eT9EPAIRq2EC56EdAstWDgs2Dgs(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Z)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda9 (com.facebook.imagepipeline.core.ImagePipelineExperiments$Builder$$ExternalSyntheticLambda9)
.class public final synthetic Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;ZIIZ)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda9;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iput-boolean p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda9;->f$1:Z

    iput p3, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda9;->f$2:I

    iput p4, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda9;->f$3:I

    iput-boolean p5, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda9;->f$4:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda9;->f$0:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda9;->f$1:Z

    iget v2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda9;->f$2:I

    iget v3, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda9;->f$3:I

    iget-boolean v4, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder$$ExternalSyntheticLambda9;->f$4:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->$r8$lambda$ua6uqV3j4lgMptp6rWKYqUkmViA(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;ZIIZ)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineExperiments.Companion (com.facebook.imagepipeline.core.ImagePipelineExperiments$Companion)
.class public final Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Companion;
.super Ljava/lang/Object;
.source "ImagePipelineExperiments.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Companion;",
        "",
        "<init>",
        "()V",
        "newBuilder",
        "Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;",
        "configBuilder",
        "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;",
        "imagepipeline_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newBuilder(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "configBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)V

    return-object v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineExperiments.DefaultProducerFactoryMethod (com.facebook.imagepipeline.core.ImagePipelineExperiments$DefaultProducerFactoryMethod)
.class public final Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$DefaultProducerFactoryMethod;
.super Ljava/lang/Object;
.source "ImagePipelineExperiments.kt"

# interfaces
.implements Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$ProducerFactoryMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultProducerFactoryMethod"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u00de\u0001\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0016\u0010\u0019\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u001b\u0012\u0006\u0012\u0004\u0018\u00010\u001c0\u001a2\u0016\u0010\u001d\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u001b\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u001a2\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020!0 2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\'2\u0006\u0010)\u001a\u00020\u00112\u0006\u0010*\u001a\u00020\'2\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020\u00112\u0006\u0010.\u001a\u00020\'H\u0016\u00a8\u0006/"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$DefaultProducerFactoryMethod;",
        "Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$ProducerFactoryMethod;",
        "<init>",
        "()V",
        "createProducerFactory",
        "Lcom/facebook/imagepipeline/core/ProducerFactory;",
        "context",
        "Landroid/content/Context;",
        "byteArrayPool",
        "Lcom/facebook/common/memory/ByteArrayPool;",
        "imageDecoder",
        "Lcom/facebook/imagepipeline/decoder/ImageDecoder;",
        "progressiveJpegConfig",
        "Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;",
        "downsampleMode",
        "Lcom/facebook/imagepipeline/core/DownsampleMode;",
        "resizeAndRotateEnabledForNetwork",
        "",
        "decodeCancellationEnabled",
        "executorSupplier",
        "Lcom/facebook/imagepipeline/core/ExecutorSupplier;",
        "pooledByteBufferFactory",
        "Lcom/facebook/common/memory/PooledByteBufferFactory;",
        "pooledByteStreams",
        "Lcom/facebook/common/memory/PooledByteStreams;",
        "bitmapMemoryCache",
        "Lcom/facebook/imagepipeline/cache/MemoryCache;",
        "Lcom/facebook/cache/common/CacheKey;",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        "encodedMemoryCache",
        "Lcom/facebook/common/memory/PooledByteBuffer;",
        "diskCachesStoreSupplier",
        "Lcom/facebook/common/internal/Supplier;",
        "Lcom/facebook/imagepipeline/core/DiskCachesStore;",
        "cacheKeyFactory",
        "Lcom/facebook/imagepipeline/cache/CacheKeyFactory;",
        "platformBitmapFactory",
        "Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;",
        "bitmapPrepareToDrawMinSizeBytes",
        "",
        "bitmapPrepareToDrawMaxSizeBytes",
        "bitmapPrepareToDrawForPrefetch",
        "maxBitmapSize",
        "closeableReferenceFactory",
        "Lcom/facebook/imagepipeline/core/CloseableReferenceFactory;",
        "keepCancelledFetchAsLowPriority",
        "trackedKeysSize",
        "imagepipeline_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createProducerFactory(Landroid/content/Context;Lcom/facebook/common/memory/ByteArrayPool;Lcom/facebook/imagepipeline/decoder/ImageDecoder;Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;Lcom/facebook/imagepipeline/core/DownsampleMode;ZZLcom/facebook/imagepipeline/core/ExecutorSupplier;Lcom/facebook/common/memory/PooledByteBufferFactory;Lcom/facebook/common/memory/PooledByteStreams;Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/common/internal/Supplier;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;IIZILcom/facebook/imagepipeline/core/CloseableReferenceFactory;ZI)Lcom/facebook/imagepipeline/core/ProducerFactory;
    .registers 46
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/common/memory/ByteArrayPool;",
            "Lcom/facebook/imagepipeline/decoder/ImageDecoder;",
            "Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;",
            "Lcom/facebook/imagepipeline/core/DownsampleMode;",
            "ZZ",
            "Lcom/facebook/imagepipeline/core/ExecutorSupplier;",
            "Lcom/facebook/common/memory/PooledByteBufferFactory;",
            "Lcom/facebook/common/memory/PooledByteStreams;",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/core/DiskCachesStore;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/CacheKeyFactory;",
            "Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;",
            "IIZI",
            "Lcom/facebook/imagepipeline/core/CloseableReferenceFactory;",
            "ZI)",
            "Lcom/facebook/imagepipeline/core/ProducerFactory;"
        }
    .end annotation

    const-string v0, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "byteArrayPool"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageDecoder"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progressiveJpegConfig"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downsampleMode"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executorSupplier"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pooledByteBufferFactory"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pooledByteStreams"

    move-object/from16 v1, p10

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmapMemoryCache"

    move-object/from16 v11, p11

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encodedMemoryCache"

    move-object/from16 v12, p12

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diskCachesStoreSupplier"

    move-object/from16 v13, p13

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheKeyFactory"

    move-object/from16 v14, p14

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platformBitmapFactory"

    move-object/from16 v15, p15

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closeableReferenceFactory"

    move-object/from16 v1, p20

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    new-instance v1, Lcom/facebook/imagepipeline/core/ProducerFactory;

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move-object/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    invoke-direct/range {v1 .. v22}, Lcom/facebook/imagepipeline/core/ProducerFactory;-><init>(Landroid/content/Context;Lcom/facebook/common/memory/ByteArrayPool;Lcom/facebook/imagepipeline/decoder/ImageDecoder;Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;Lcom/facebook/imagepipeline/core/DownsampleMode;ZZLcom/facebook/imagepipeline/core/ExecutorSupplier;Lcom/facebook/common/memory/PooledByteBufferFactory;Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/common/internal/Supplier;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;IIZILcom/facebook/imagepipeline/core/CloseableReferenceFactory;ZI)V

    return-object v1
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineExperiments.ProducerFactoryMethod (com.facebook.imagepipeline.core.ImagePipelineExperiments$ProducerFactoryMethod)
.class public interface abstract Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$ProducerFactoryMethod;
.super Ljava/lang/Object;
.source "ImagePipelineExperiments.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProducerFactoryMethod"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u00de\u0001\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0016\u0010\u0017\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u00182\u0016\u0010\u001b\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u001c0\u00182\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001e2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020%2\u0006\u0010\'\u001a\u00020\u000f2\u0006\u0010(\u001a\u00020%2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u000f2\u0006\u0010,\u001a\u00020%H&\u00a8\u0006-"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$ProducerFactoryMethod;",
        "",
        "createProducerFactory",
        "Lcom/facebook/imagepipeline/core/ProducerFactory;",
        "context",
        "Landroid/content/Context;",
        "byteArrayPool",
        "Lcom/facebook/common/memory/ByteArrayPool;",
        "imageDecoder",
        "Lcom/facebook/imagepipeline/decoder/ImageDecoder;",
        "progressiveJpegConfig",
        "Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;",
        "downsampleMode",
        "Lcom/facebook/imagepipeline/core/DownsampleMode;",
        "resizeAndRotateEnabledForNetwork",
        "",
        "decodeCancellationEnabled",
        "executorSupplier",
        "Lcom/facebook/imagepipeline/core/ExecutorSupplier;",
        "pooledByteBufferFactory",
        "Lcom/facebook/common/memory/PooledByteBufferFactory;",
        "pooledByteStreams",
        "Lcom/facebook/common/memory/PooledByteStreams;",
        "bitmapMemoryCache",
        "Lcom/facebook/imagepipeline/cache/MemoryCache;",
        "Lcom/facebook/cache/common/CacheKey;",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        "encodedMemoryCache",
        "Lcom/facebook/common/memory/PooledByteBuffer;",
        "diskCachesStoreSupplier",
        "Lcom/facebook/common/internal/Supplier;",
        "Lcom/facebook/imagepipeline/core/DiskCachesStore;",
        "cacheKeyFactory",
        "Lcom/facebook/imagepipeline/cache/CacheKeyFactory;",
        "platformBitmapFactory",
        "Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;",
        "bitmapPrepareToDrawMinSizeBytes",
        "",
        "bitmapPrepareToDrawMaxSizeBytes",
        "bitmapPrepareToDrawForPrefetch",
        "maxBitmapSize",
        "closeableReferenceFactory",
        "Lcom/facebook/imagepipeline/core/CloseableReferenceFactory;",
        "keepCancelledFetchAsLowPriority",
        "trackedKeysSize",
        "imagepipeline_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract createProducerFactory(Landroid/content/Context;Lcom/facebook/common/memory/ByteArrayPool;Lcom/facebook/imagepipeline/decoder/ImageDecoder;Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;Lcom/facebook/imagepipeline/core/DownsampleMode;ZZLcom/facebook/imagepipeline/core/ExecutorSupplier;Lcom/facebook/common/memory/PooledByteBufferFactory;Lcom/facebook/common/memory/PooledByteStreams;Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/common/internal/Supplier;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;IIZILcom/facebook/imagepipeline/core/CloseableReferenceFactory;ZI)Lcom/facebook/imagepipeline/core/ProducerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/common/memory/ByteArrayPool;",
            "Lcom/facebook/imagepipeline/decoder/ImageDecoder;",
            "Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;",
            "Lcom/facebook/imagepipeline/core/DownsampleMode;",
            "ZZ",
            "Lcom/facebook/imagepipeline/core/ExecutorSupplier;",
            "Lcom/facebook/common/memory/PooledByteBufferFactory;",
            "Lcom/facebook/common/memory/PooledByteStreams;",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/core/DiskCachesStore;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/CacheKeyFactory;",
            "Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;",
            "IIZI",
            "Lcom/facebook/imagepipeline/core/CloseableReferenceFactory;",
            "ZI)",
            "Lcom/facebook/imagepipeline/core/ProducerFactory;"
        }
    .end annotation
.end method
