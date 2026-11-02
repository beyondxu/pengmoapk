###### Class com.facebook.imagepipeline.core.ImagePipelineConfig (com.facebook.imagepipeline.core.ImagePipelineConfig)
.class public final Lcom/facebook/imagepipeline/core/ImagePipelineConfig;
.super Ljava/lang/Object;
.source "ImagePipelineConfig.kt"

# interfaces
.implements Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;,
        Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;,
        Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImagePipelineConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImagePipelineConfig.kt\ncom/facebook/imagepipeline/core/ImagePipelineConfig\n+ 2 FrescoSystrace.kt\ncom/facebook/imagepipeline/systrace/FrescoSystrace\n*L\n1#1,577:1\n40#2,9:578\n*S KotlinDebug\n*F\n+ 1 ImagePipelineConfig.kt\ncom/facebook/imagepipeline/core/ImagePipelineConfig\n*L\n159#1:578,9\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a6\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u0000 \u009a\u00012\u00020\u0001:\u0006\u0098\u0001\u0099\u0001\u009a\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u0010X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u0010X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0012R\u001c\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001a\u001a\u00020\u001bX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u001e\u001a\u00020\u001fX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0014\u0010\"\u001a\u00020#X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u001a\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\'0\u000bX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\u000eR\u001a\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\u000eR\u0014\u0010+\u001a\u00020,X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010.R\u0014\u0010/\u001a\u000200X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u00102R\u0016\u00103\u001a\u0004\u0018\u000104X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u00106R\u0016\u00107\u001a\u0004\u0018\u000108X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00089\u0010:R\u001a\u0010;\u001a\u0008\u0012\u0004\u0012\u00020<0\u000bX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008=\u0010\u000eR\u001e\u0010>\u001a\u0004\u0018\u00010?X\u0096\u0004\u00a2\u0006\u0010\n\u0002\u0010D\u0012\u0004\u0008@\u0010A\u001a\u0004\u0008B\u0010CR\u001a\u0010E\u001a\u0008\u0012\u0004\u0012\u00020<0\u000bX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008E\u0010\u000eR\u0014\u0010F\u001a\u00020GX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008H\u0010IR\u0014\u0010J\u001a\u00020KX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008L\u0010MR\u001a\u0010N\u001a\u00020?X\u0096\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008O\u0010A\u001a\u0004\u0008P\u0010QR\u0018\u0010R\u001a\u0006\u0012\u0002\u0008\u00030SX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008T\u0010UR\u000e\u0010V\u001a\u00020?X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010W\u001a\u0004\u0018\u00010XX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008Y\u0010ZR\u0014\u0010[\u001a\u00020\\X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008]\u0010^R\u0014\u0010_\u001a\u00020`X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008a\u0010bR\u001a\u0010c\u001a\u0008\u0012\u0004\u0012\u00020e0dX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008f\u0010gR\u001a\u0010h\u001a\u0008\u0012\u0004\u0012\u00020i0dX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008j\u0010gR\u001a\u0010k\u001a\u0008\u0012\u0004\u0012\u00020l0dX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008m\u0010gR\u0014\u0010n\u001a\u00020<X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008n\u0010oR\u0014\u0010p\u001a\u00020GX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008q\u0010IR\u0016\u0010r\u001a\u0004\u0018\u00010sX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008t\u0010uR\u0014\u0010v\u001a\u00020wX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008x\u0010yR\u0014\u0010z\u001a\u00020<X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008z\u0010oR\u0016\u0010{\u001a\u0004\u0018\u00010|X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008}\u0010~R\u0017\u0010\u007f\u001a\u00030\u0080\u0001X\u0096\u0004\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u0081\u0001\u0010\u0082\u0001R\'\u0010\u0083\u0001\u001a\u0012\u0012\u0004\u0012\u00020\u0017\u0012\u0005\u0012\u00030\u0085\u0001\u0018\u00010\u0084\u0001X\u0096\u0004\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u0086\u0001\u0010\u0087\u0001R\'\u0010\u0088\u0001\u001a\u0012\u0012\u0004\u0012\u00020\u0017\u0012\u0005\u0012\u00030\u0089\u0001\u0018\u00010\u0084\u0001X\u0096\u0004\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u008a\u0001\u0010\u0087\u0001R\u001a\u0010\u008b\u0001\u001a\u0005\u0018\u00010\u008c\u0001X\u0096\u0004\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u008d\u0001\u0010\u008e\u0001R\u0018\u0010\u008f\u0001\u001a\u00030\u0090\u0001X\u0096\u0004\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u0091\u0001\u0010\u0092\u0001R\'\u0010\u0093\u0001\u001a\u0012\u0012\u0005\u0012\u00030\u0095\u0001\u0012\u0004\u0012\u00020G\u0018\u00010\u0094\u0001X\u0096\u0004\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u0096\u0001\u0010\u0097\u0001\u00a8\u0006\u009b\u0001"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/core/ImagePipelineConfig;",
        "Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;",
        "builder",
        "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;",
        "<init>",
        "(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)V",
        "bitmapConfig",
        "Landroid/graphics/Bitmap$Config;",
        "getBitmapConfig",
        "()Landroid/graphics/Bitmap$Config;",
        "bitmapMemoryCacheParamsSupplier",
        "Lcom/facebook/common/internal/Supplier;",
        "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
        "getBitmapMemoryCacheParamsSupplier",
        "()Lcom/facebook/common/internal/Supplier;",
        "bitmapMemoryCacheTrimStrategy",
        "Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;",
        "getBitmapMemoryCacheTrimStrategy",
        "()Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;",
        "encodedMemoryCacheTrimStrategy",
        "getEncodedMemoryCacheTrimStrategy",
        "bitmapMemoryCacheEntryStateObserver",
        "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;",
        "Lcom/facebook/cache/common/CacheKey;",
        "getBitmapMemoryCacheEntryStateObserver",
        "()Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;",
        "cacheKeyFactory",
        "Lcom/facebook/imagepipeline/cache/CacheKeyFactory;",
        "getCacheKeyFactory",
        "()Lcom/facebook/imagepipeline/cache/CacheKeyFactory;",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "downsampleMode",
        "Lcom/facebook/imagepipeline/core/DownsampleMode;",
        "getDownsampleMode",
        "()Lcom/facebook/imagepipeline/core/DownsampleMode;",
        "diskCachesStoreSupplier",
        "Lcom/facebook/imagepipeline/core/DiskCachesStore;",
        "getDiskCachesStoreSupplier",
        "encodedMemoryCacheParamsSupplier",
        "getEncodedMemoryCacheParamsSupplier",
        "executorSupplier",
        "Lcom/facebook/imagepipeline/core/ExecutorSupplier;",
        "getExecutorSupplier",
        "()Lcom/facebook/imagepipeline/core/ExecutorSupplier;",
        "imageCacheStatsTracker",
        "Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;",
        "getImageCacheStatsTracker",
        "()Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;",
        "imageDecoder",
        "Lcom/facebook/imagepipeline/decoder/ImageDecoder;",
        "getImageDecoder",
        "()Lcom/facebook/imagepipeline/decoder/ImageDecoder;",
        "imageTranscoderFactory",
        "Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;",
        "getImageTranscoderFactory",
        "()Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;",
        "enableEncodedImageColorSpaceUsage",
        "",
        "getEnableEncodedImageColorSpaceUsage",
        "imageTranscoderType",
        "",
        "getImageTranscoderType$annotations",
        "()V",
        "getImageTranscoderType",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "isPrefetchEnabledSupplier",
        "mainDiskCacheConfig",
        "Lcom/facebook/cache/disk/DiskCacheConfig;",
        "getMainDiskCacheConfig",
        "()Lcom/facebook/cache/disk/DiskCacheConfig;",
        "memoryTrimmableRegistry",
        "Lcom/facebook/common/memory/MemoryTrimmableRegistry;",
        "getMemoryTrimmableRegistry",
        "()Lcom/facebook/common/memory/MemoryTrimmableRegistry;",
        "memoryChunkType",
        "getMemoryChunkType$annotations",
        "getMemoryChunkType",
        "()I",
        "networkFetcher",
        "Lcom/facebook/imagepipeline/producers/NetworkFetcher;",
        "getNetworkFetcher",
        "()Lcom/facebook/imagepipeline/producers/NetworkFetcher;",
        "httpNetworkTimeout",
        "platformBitmapFactory",
        "Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;",
        "getPlatformBitmapFactory",
        "()Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;",
        "poolFactory",
        "Lcom/facebook/imagepipeline/memory/PoolFactory;",
        "getPoolFactory",
        "()Lcom/facebook/imagepipeline/memory/PoolFactory;",
        "progressiveJpegConfig",
        "Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;",
        "getProgressiveJpegConfig",
        "()Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;",
        "requestListeners",
        "",
        "Lcom/facebook/imagepipeline/listener/RequestListener;",
        "getRequestListeners",
        "()Ljava/util/Set;",
        "requestListener2s",
        "Lcom/facebook/imagepipeline/listener/RequestListener2;",
        "getRequestListener2s",
        "customProducerSequenceFactories",
        "Lcom/facebook/imagepipeline/producers/CustomProducerSequenceFactory;",
        "getCustomProducerSequenceFactories",
        "isResizeAndRotateEnabledForNetwork",
        "()Z",
        "smallImageDiskCacheConfig",
        "getSmallImageDiskCacheConfig",
        "imageDecoderConfig",
        "Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;",
        "getImageDecoderConfig",
        "()Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;",
        "experiments",
        "Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;",
        "getExperiments",
        "()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;",
        "isDiskCacheEnabled",
        "callerContextVerifier",
        "Lcom/facebook/callercontext/CallerContextVerifier;",
        "getCallerContextVerifier",
        "()Lcom/facebook/callercontext/CallerContextVerifier;",
        "closeableReferenceLeakTracker",
        "Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;",
        "getCloseableReferenceLeakTracker",
        "()Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;",
        "bitmapCacheOverride",
        "Lcom/facebook/imagepipeline/cache/MemoryCache;",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        "getBitmapCacheOverride",
        "()Lcom/facebook/imagepipeline/cache/MemoryCache;",
        "encodedMemoryCacheOverride",
        "Lcom/facebook/common/memory/PooledByteBuffer;",
        "getEncodedMemoryCacheOverride",
        "executorServiceForAnimatedImages",
        "Lcom/facebook/common/executors/SerialExecutorService;",
        "getExecutorServiceForAnimatedImages",
        "()Lcom/facebook/common/executors/SerialExecutorService;",
        "bitmapMemoryCacheFactory",
        "Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;",
        "getBitmapMemoryCacheFactory",
        "()Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;",
        "dynamicDiskCacheConfigMap",
        "",
        "",
        "getDynamicDiskCacheConfigMap",
        "()Ljava/util/Map;",
        "DefaultImageRequestConfig",
        "Builder",
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
.field public static final Companion:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;

.field private static defaultImageRequestConfig:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;


# instance fields
.field private final bitmapCacheOverride:Lcom/facebook/imagepipeline/cache/MemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation
.end field

.field private final bitmapConfig:Landroid/graphics/Bitmap$Config;

.field private final bitmapMemoryCacheEntryStateObserver:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver<",
            "Lcom/facebook/cache/common/CacheKey;",
            ">;"
        }
    .end annotation
.end field

.field private final bitmapMemoryCacheFactory:Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;

.field private final bitmapMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;"
        }
    .end annotation
.end field

.field private final bitmapMemoryCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

.field private final cacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

.field private final callerContextVerifier:Lcom/facebook/callercontext/CallerContextVerifier;

.field private final closeableReferenceLeakTracker:Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;

.field private final context:Landroid/content/Context;

.field private final customProducerSequenceFactories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/producers/CustomProducerSequenceFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final diskCachesStoreSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/core/DiskCachesStore;",
            ">;"
        }
    .end annotation
.end field

.field private final downsampleMode:Lcom/facebook/imagepipeline/core/DownsampleMode;

.field private final dynamicDiskCacheConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/cache/disk/DiskCacheConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final enableEncodedImageColorSpaceUsage:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final encodedMemoryCacheOverride:Lcom/facebook/imagepipeline/cache/MemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final encodedMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;"
        }
    .end annotation
.end field

.field private final encodedMemoryCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

.field private final executorServiceForAnimatedImages:Lcom/facebook/common/executors/SerialExecutorService;

.field private final executorSupplier:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

.field private final experiments:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

.field private final httpNetworkTimeout:I

.field private final imageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

.field private final imageDecoder:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

.field private final imageDecoderConfig:Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;

.field private final imageTranscoderFactory:Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

.field private final imageTranscoderType:Ljava/lang/Integer;

.field private final isDiskCacheEnabled:Z

.field private final isPrefetchEnabledSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isResizeAndRotateEnabledForNetwork:Z

.field private final mainDiskCacheConfig:Lcom/facebook/cache/disk/DiskCacheConfig;

.field private final memoryChunkType:I

.field private final memoryTrimmableRegistry:Lcom/facebook/common/memory/MemoryTrimmableRegistry;

.field private final networkFetcher:Lcom/facebook/imagepipeline/producers/NetworkFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/NetworkFetcher<",
            "*>;"
        }
    .end annotation
.end field

.field private final platformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

.field private final poolFactory:Lcom/facebook/imagepipeline/memory/PoolFactory;

.field private final progressiveJpegConfig:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

.field private final requestListener2s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/listener/RequestListener2;",
            ">;"
        }
    .end annotation
.end field

.field private final requestListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ">;"
        }
    .end annotation
.end field

.field private final smallImageDiskCacheConfig:Lcom/facebook/cache/disk/DiskCacheConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->Companion:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;

    .line 518
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;-><init>()V

    sput-object v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->defaultImageRequestConfig:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)V
    .registers 6

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 122
    const-string v0, "ImagePipelineConfig()"

    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 125
    :cond_e
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getExperimentsBuilder()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->build()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->experiments:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    .line 127
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getBitmapMemoryCacheParamsSupplier()Lcom/facebook/common/internal/Supplier;

    move-result-object v0

    const-string v1, "Required value was null."

    if-nez v0, :cond_45

    .line 128
    new-instance v0, Lcom/facebook/imagepipeline/cache/DefaultBitmapMemoryCacheParamsSupplier;

    .line 129
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3b

    const-string v3, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/app/ActivityManager;

    .line 128
    invoke-direct {v0, v2}, Lcom/facebook/imagepipeline/cache/DefaultBitmapMemoryCacheParamsSupplier;-><init>(Landroid/app/ActivityManager;)V

    check-cast v0, Lcom/facebook/common/internal/Supplier;

    goto :goto_45

    .line 129
    :cond_3b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 126
    :cond_45
    :goto_45
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->bitmapMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;

    .line 132
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getBitmapMemoryCacheTrimStrategy()Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

    move-result-object v0

    if-nez v0, :cond_54

    new-instance v0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheTrimStrategy;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheTrimStrategy;-><init>()V

    check-cast v0, Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

    .line 131
    :cond_54
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->bitmapMemoryCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

    .line 134
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getEncodedMemoryCacheTrimStrategy()Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

    move-result-object v0

    if-nez v0, :cond_63

    new-instance v0, Lcom/facebook/imagepipeline/cache/NativeMemoryCacheTrimStrategy;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/cache/NativeMemoryCacheTrimStrategy;-><init>()V

    check-cast v0, Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

    .line 133
    :cond_63
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->encodedMemoryCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

    .line 135
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getBitmapMemoryCacheEntryStateObserver()Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->bitmapMemoryCacheEntryStateObserver:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    .line 136
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_73

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_73
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 137
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getCacheKeyFactory()Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    move-result-object v0

    const-string v2, "getInstance(...)"

    if-nez v0, :cond_86

    invoke-static {}, Lcom/facebook/imagepipeline/cache/DefaultCacheKeyFactory;->getInstance()Lcom/facebook/imagepipeline/cache/DefaultCacheKeyFactory;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    :cond_86
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->cacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    .line 138
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_256

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->context:Landroid/content/Context;

    .line 139
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getDownsampleMode()Lcom/facebook/imagepipeline/core/DownsampleMode;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->downsampleMode:Lcom/facebook/imagepipeline/core/DownsampleMode;

    .line 141
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getEncodedMemoryCacheParamsSupplier()Lcom/facebook/common/internal/Supplier;

    move-result-object v0

    if-nez v0, :cond_a3

    new-instance v0, Lcom/facebook/imagepipeline/cache/DefaultEncodedMemoryCacheParamsSupplier;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/cache/DefaultEncodedMemoryCacheParamsSupplier;-><init>()V

    check-cast v0, Lcom/facebook/common/internal/Supplier;

    .line 140
    :cond_a3
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->encodedMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;

    .line 143
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getImageCacheStatsTracker()Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    move-result-object v0

    if-nez v0, :cond_b4

    invoke-static {}, Lcom/facebook/imagepipeline/cache/NoOpImageCacheStatsTracker;->getInstance()Lcom/facebook/imagepipeline/cache/NoOpImageCacheStatsTracker;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    .line 142
    :cond_b4
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->imageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    .line 144
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getImageDecoder()Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->imageDecoder:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    .line 146
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getEnableEncodedImageColorSpaceUsage()Lcom/facebook/common/internal/Supplier;

    move-result-object v0

    if-nez v0, :cond_c9

    sget-object v0, Lcom/facebook/common/internal/Suppliers;->BOOLEAN_FALSE:Lcom/facebook/common/internal/Supplier;

    const-string v1, "BOOLEAN_FALSE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    :cond_c9
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->enableEncodedImageColorSpaceUsage:Lcom/facebook/common/internal/Supplier;

    .line 147
    sget-object v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->Companion:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;

    invoke-static {v0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;->access$getImageTranscoderFactory(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->imageTranscoderFactory:Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

    .line 148
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getImageTranscoderType()Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->imageTranscoderType:Ljava/lang/Integer;

    .line 149
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->isPrefetchEnabledSupplier()Lcom/facebook/common/internal/Supplier;

    move-result-object v1

    if-nez v1, :cond_e6

    sget-object v1, Lcom/facebook/common/internal/Suppliers;->BOOLEAN_TRUE:Lcom/facebook/common/internal/Supplier;

    const-string v3, "BOOLEAN_TRUE"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_e6
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->isPrefetchEnabledSupplier:Lcom/facebook/common/internal/Supplier;

    .line 151
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getMainDiskCacheConfig()Lcom/facebook/cache/disk/DiskCacheConfig;

    move-result-object v1

    if-nez v1, :cond_f6

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;->access$getDefaultMainDiskCacheConfig(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;Landroid/content/Context;)Lcom/facebook/cache/disk/DiskCacheConfig;

    move-result-object v1

    .line 150
    :cond_f6
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mainDiskCacheConfig:Lcom/facebook/cache/disk/DiskCacheConfig;

    .line 153
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getMemoryTrimmableRegistry()Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    move-result-object v1

    if-nez v1, :cond_107

    invoke-static {}, Lcom/facebook/common/memory/NoOpMemoryTrimmableRegistry;->getInstance()Lcom/facebook/common/memory/NoOpMemoryTrimmableRegistry;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    .line 152
    :cond_107
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->memoryTrimmableRegistry:Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    .line 154
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getExperiments()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;->access$getMemoryChunkType(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;)I

    move-result v1

    iput v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->memoryChunkType:I

    .line 156
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getHttpConnectionTimeout()I

    move-result v1

    if-gez v1, :cond_11c

    const/16 v1, 0x7530

    goto :goto_120

    .line 157
    :cond_11c
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getHttpConnectionTimeout()I

    move-result v1

    .line 155
    :goto_120
    iput v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->httpNetworkTimeout:I

    .line 159
    sget-object v2, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    .line 578
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v2

    if-nez v2, :cond_138

    .line 160
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getNetworkFetcher()Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    move-result-object v2

    if-nez v2, :cond_14d

    new-instance v2, Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher;

    invoke-direct {v2, v1}, Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher;-><init>(I)V

    check-cast v2, Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    goto :goto_14d

    .line 582
    :cond_138
    const-string v2, "ImagePipelineConfig->mNetworkFetcher"

    invoke-static {v2}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 160
    :try_start_13d
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getNetworkFetcher()Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    move-result-object v2

    if-nez v2, :cond_14a

    new-instance v2, Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher;

    invoke-direct {v2, v1}, Lcom/facebook/imagepipeline/producers/HttpUrlConnectionNetworkFetcher;-><init>(I)V

    check-cast v2, Lcom/facebook/imagepipeline/producers/NetworkFetcher;
    :try_end_14a
    .catchall {:try_start_13d .. :try_end_14a} :catchall_251

    .line 586
    :cond_14a
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 158
    :cond_14d
    :goto_14d
    iput-object v2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->networkFetcher:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    .line 162
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getPlatformBitmapFactory()Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->platformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    .line 163
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getPoolFactory()Lcom/facebook/imagepipeline/memory/PoolFactory;

    move-result-object v1

    if-nez v1, :cond_168

    new-instance v1, Lcom/facebook/imagepipeline/memory/PoolFactory;

    invoke-static {}, Lcom/facebook/imagepipeline/memory/PoolConfig;->newBuilder()Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/memory/PoolConfig$Builder;->build()Lcom/facebook/imagepipeline/memory/PoolConfig;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/imagepipeline/memory/PoolFactory;-><init>(Lcom/facebook/imagepipeline/memory/PoolConfig;)V

    :cond_168
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->poolFactory:Lcom/facebook/imagepipeline/memory/PoolFactory;

    .line 164
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getProgressiveJpegConfig()Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

    move-result-object v1

    if-nez v1, :cond_177

    new-instance v1, Lcom/facebook/imagepipeline/decoder/SimpleProgressiveJpegConfig;

    invoke-direct {v1}, Lcom/facebook/imagepipeline/decoder/SimpleProgressiveJpegConfig;-><init>()V

    check-cast v1, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

    :cond_177
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->progressiveJpegConfig:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

    .line 165
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getRequestListeners()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_183

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v1

    :cond_183
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->requestListeners:Ljava/util/Set;

    .line 166
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getRequestListener2s()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_18f

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v1

    :cond_18f
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->requestListener2s:Ljava/util/Set;

    .line 167
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getCustomProducerSequenceFactories()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_19b

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v1

    :cond_19b
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->customProducerSequenceFactories:Ljava/util/Set;

    .line 168
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getResizeAndRotateEnabledForNetwork()Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->isResizeAndRotateEnabledForNetwork:Z

    .line 169
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getSmallImageDiskCacheConfig()Lcom/facebook/cache/disk/DiskCacheConfig;

    move-result-object v1

    if-nez v1, :cond_1ad

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getMainDiskCacheConfig()Lcom/facebook/cache/disk/DiskCacheConfig;

    move-result-object v1

    :cond_1ad
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->smallImageDiskCacheConfig:Lcom/facebook/cache/disk/DiskCacheConfig;

    .line 170
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getImageDecoderConfig()Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->imageDecoderConfig:Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;

    .line 172
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getPoolFactory()Lcom/facebook/imagepipeline/memory/PoolFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/PoolFactory;->getFlexByteArrayPoolMaxNumThreads()I

    move-result v1

    .line 173
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getExecutorSupplier()Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    move-result-object v2

    if-nez v2, :cond_1ca

    new-instance v2, Lcom/facebook/imagepipeline/core/DefaultExecutorSupplier;

    invoke-direct {v2, v1}, Lcom/facebook/imagepipeline/core/DefaultExecutorSupplier;-><init>(I)V

    check-cast v2, Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    :cond_1ca
    iput-object v2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->executorSupplier:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    .line 174
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getDiskCacheEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->isDiskCacheEnabled:Z

    .line 175
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getCallerContextVerifier()Lcom/facebook/callercontext/CallerContextVerifier;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->callerContextVerifier:Lcom/facebook/callercontext/CallerContextVerifier;

    .line 176
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getCloseableReferenceLeakTracker()Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->closeableReferenceLeakTracker:Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;

    .line 177
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getBitmapMemoryCache()Lcom/facebook/imagepipeline/cache/MemoryCache;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->bitmapCacheOverride:Lcom/facebook/imagepipeline/cache/MemoryCache;

    .line 179
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getBitmapMemoryCacheFactory()Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;

    move-result-object v1

    if-nez v1, :cond_1f1

    new-instance v1, Lcom/facebook/imagepipeline/cache/CountingLruBitmapMemoryCacheFactory;

    invoke-direct {v1}, Lcom/facebook/imagepipeline/cache/CountingLruBitmapMemoryCacheFactory;-><init>()V

    check-cast v1, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;

    .line 178
    :cond_1f1
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->bitmapMemoryCacheFactory:Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;

    .line 180
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getEncodedMemoryCache()Lcom/facebook/imagepipeline/cache/MemoryCache;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->encodedMemoryCacheOverride:Lcom/facebook/imagepipeline/cache/MemoryCache;

    .line 181
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getSerialExecutorServiceForAnimatedImages()Lcom/facebook/common/executors/SerialExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->executorServiceForAnimatedImages:Lcom/facebook/common/executors/SerialExecutorService;

    .line 182
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getDynamicDiskCacheConfigMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->dynamicDiskCacheConfigMap:Ljava/util/Map;

    .line 184
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getDiskCachesStoreSupplier()Lcom/facebook/common/internal/Supplier;

    move-result-object v1

    if-nez v1, :cond_229

    .line 185
    new-instance v1, Lcom/facebook/imagepipeline/core/DiskCachesStoreFactory;

    .line 186
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getFileCacheFactory()Lcom/facebook/imagepipeline/core/FileCacheFactory;

    move-result-object p1

    if-nez p1, :cond_221

    .line 187
    new-instance p1, Lcom/facebook/imagepipeline/core/DiskStorageCacheFactory;

    new-instance v2, Lcom/facebook/imagepipeline/core/DynamicDefaultDiskStorageFactory;

    invoke-direct {v2}, Lcom/facebook/imagepipeline/core/DynamicDefaultDiskStorageFactory;-><init>()V

    check-cast v2, Lcom/facebook/imagepipeline/core/DiskStorageFactory;

    invoke-direct {p1, v2}, Lcom/facebook/imagepipeline/core/DiskStorageCacheFactory;-><init>(Lcom/facebook/imagepipeline/core/DiskStorageFactory;)V

    check-cast p1, Lcom/facebook/imagepipeline/core/FileCacheFactory;

    .line 188
    :cond_221
    move-object v2, p0

    check-cast v2, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 185
    invoke-direct {v1, p1, v2}, Lcom/facebook/imagepipeline/core/DiskCachesStoreFactory;-><init>(Lcom/facebook/imagepipeline/core/FileCacheFactory;Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;)V

    check-cast v1, Lcom/facebook/common/internal/Supplier;

    .line 183
    :cond_229
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->diskCachesStoreSupplier:Lcom/facebook/common/internal/Supplier;

    .line 190
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getExperiments()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->getWebpBitmapFactory()Lcom/facebook/common/webp/WebpBitmapFactory;

    move-result-object p1

    if-eqz p1, :cond_247

    .line 192
    new-instance v1, Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getPoolFactory()Lcom/facebook/imagepipeline/memory/PoolFactory;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapCreator;-><init>(Lcom/facebook/imagepipeline/memory/PoolFactory;)V

    check-cast v1, Lcom/facebook/common/webp/BitmapCreator;

    .line 193
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getExperiments()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v2

    invoke-static {v0, p1, v2, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;->access$setWebpBitmapFactory(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;Lcom/facebook/common/webp/WebpBitmapFactory;Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;Lcom/facebook/common/webp/BitmapCreator;)V

    .line 195
    :cond_247
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_250

    .line 196
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_250
    return-void

    :catchall_251
    move-exception p1

    .line 586
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    throw p1

    .line 138
    :cond_256
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)V

    return-void
.end method

.method public static final synthetic access$getDefaultImageRequestConfig$cp()Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;
    .registers 1

    .line 72
    sget-object v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->defaultImageRequestConfig:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;

    return-object v0
.end method

.method public static final synthetic access$setDefaultImageRequestConfig$cp(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;)V
    .registers 1

    .line 72
    sput-object p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->defaultImageRequestConfig:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;

    return-void
.end method

.method public static final getDefaultImageRequestConfig()Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;
    .registers 1

    sget-object v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->Companion:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;->getDefaultImageRequestConfig()Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getImageTranscoderType$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getMemoryChunkType$annotations()V
    .registers 0

    return-void
.end method

.method public static final newBuilder(Landroid/content/Context;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->Companion:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;->newBuilder(Landroid/content/Context;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static final resetDefaultRequestConfig()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->Companion:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;->resetDefaultRequestConfig()V

    return-void
.end method


# virtual methods
.method public getBitmapCacheOverride()Lcom/facebook/imagepipeline/cache/MemoryCache;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->bitmapCacheOverride:Lcom/facebook/imagepipeline/cache/MemoryCache;

    return-object v0
.end method

.method public getBitmapConfig()Landroid/graphics/Bitmap$Config;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public getBitmapMemoryCacheEntryStateObserver()Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver<",
            "Lcom/facebook/cache/common/CacheKey;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->bitmapMemoryCacheEntryStateObserver:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    return-object v0
.end method

.method public getBitmapMemoryCacheFactory()Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->bitmapMemoryCacheFactory:Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;

    return-object v0
.end method

.method public getBitmapMemoryCacheParamsSupplier()Lcom/facebook/common/internal/Supplier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->bitmapMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;

    return-object v0
.end method

.method public getBitmapMemoryCacheTrimStrategy()Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->bitmapMemoryCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

    return-object v0
.end method

.method public getCacheKeyFactory()Lcom/facebook/imagepipeline/cache/CacheKeyFactory;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->cacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    return-object v0
.end method

.method public getCallerContextVerifier()Lcom/facebook/callercontext/CallerContextVerifier;
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->callerContextVerifier:Lcom/facebook/callercontext/CallerContextVerifier;

    return-object v0
.end method

.method public getCloseableReferenceLeakTracker()Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->closeableReferenceLeakTracker:Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCustomProducerSequenceFactories()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/producers/CustomProducerSequenceFactory;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->customProducerSequenceFactories:Ljava/util/Set;

    return-object v0
.end method

.method public getDiskCachesStoreSupplier()Lcom/facebook/common/internal/Supplier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/core/DiskCachesStore;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->diskCachesStoreSupplier:Lcom/facebook/common/internal/Supplier;

    return-object v0
.end method

.method public getDownsampleMode()Lcom/facebook/imagepipeline/core/DownsampleMode;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->downsampleMode:Lcom/facebook/imagepipeline/core/DownsampleMode;

    return-object v0
.end method

.method public getDynamicDiskCacheConfigMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/cache/disk/DiskCacheConfig;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->dynamicDiskCacheConfigMap:Ljava/util/Map;

    return-object v0
.end method

.method public getEnableEncodedImageColorSpaceUsage()Lcom/facebook/common/internal/Supplier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->enableEncodedImageColorSpaceUsage:Lcom/facebook/common/internal/Supplier;

    return-object v0
.end method

.method public getEncodedMemoryCacheOverride()Lcom/facebook/imagepipeline/cache/MemoryCache;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->encodedMemoryCacheOverride:Lcom/facebook/imagepipeline/cache/MemoryCache;

    return-object v0
.end method

.method public getEncodedMemoryCacheParamsSupplier()Lcom/facebook/common/internal/Supplier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->encodedMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;

    return-object v0
.end method

.method public getEncodedMemoryCacheTrimStrategy()Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->encodedMemoryCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

    return-object v0
.end method

.method public getExecutorServiceForAnimatedImages()Lcom/facebook/common/executors/SerialExecutorService;
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->executorServiceForAnimatedImages:Lcom/facebook/common/executors/SerialExecutorService;

    return-object v0
.end method

.method public getExecutorSupplier()Lcom/facebook/imagepipeline/core/ExecutorSupplier;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->executorSupplier:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    return-object v0
.end method

.method public getExperiments()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->experiments:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    return-object v0
.end method

.method public getImageCacheStatsTracker()Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->imageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    return-object v0
.end method

.method public getImageDecoder()Lcom/facebook/imagepipeline/decoder/ImageDecoder;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->imageDecoder:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    return-object v0
.end method

.method public getImageDecoderConfig()Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->imageDecoderConfig:Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;

    return-object v0
.end method

.method public getImageTranscoderFactory()Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->imageTranscoderFactory:Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

    return-object v0
.end method

.method public getImageTranscoderType()Ljava/lang/Integer;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->imageTranscoderType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMainDiskCacheConfig()Lcom/facebook/cache/disk/DiskCacheConfig;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mainDiskCacheConfig:Lcom/facebook/cache/disk/DiskCacheConfig;

    return-object v0
.end method

.method public getMemoryChunkType()I
    .registers 2

    .line 98
    iget v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->memoryChunkType:I

    return v0
.end method

.method public getMemoryTrimmableRegistry()Lcom/facebook/common/memory/MemoryTrimmableRegistry;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->memoryTrimmableRegistry:Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    return-object v0
.end method

.method public getNetworkFetcher()Lcom/facebook/imagepipeline/producers/NetworkFetcher;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/NetworkFetcher<",
            "*>;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->networkFetcher:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    return-object v0
.end method

.method public getPlatformBitmapFactory()Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->platformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    return-object v0
.end method

.method public getPoolFactory()Lcom/facebook/imagepipeline/memory/PoolFactory;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->poolFactory:Lcom/facebook/imagepipeline/memory/PoolFactory;

    return-object v0
.end method

.method public getProgressiveJpegConfig()Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->progressiveJpegConfig:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

    return-object v0
.end method

.method public getRequestListener2s()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/listener/RequestListener2;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->requestListener2s:Ljava/util/Set;

    return-object v0
.end method

.method public getRequestListeners()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->requestListeners:Ljava/util/Set;

    return-object v0
.end method

.method public getSmallImageDiskCacheConfig()Lcom/facebook/cache/disk/DiskCacheConfig;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->smallImageDiskCacheConfig:Lcom/facebook/cache/disk/DiskCacheConfig;

    return-object v0
.end method

.method public isDiskCacheEnabled()Z
    .registers 2

    .line 111
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->isDiskCacheEnabled:Z

    return v0
.end method

.method public isPrefetchEnabledSupplier()Lcom/facebook/common/internal/Supplier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->isPrefetchEnabledSupplier:Lcom/facebook/common/internal/Supplier;

    return-object v0
.end method

.method public isResizeAndRotateEnabledForNetwork()Z
    .registers 2

    .line 107
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->isResizeAndRotateEnabledForNetwork:Z

    return v0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineConfig.Builder (com.facebook.imagepipeline.core.ImagePipelineConfig$Builder)
.class public final Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
.super Ljava/lang/Object;
.source "ImagePipelineConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/core/ImagePipelineConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImagePipelineConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImagePipelineConfig.kt\ncom/facebook/imagepipeline/core/ImagePipelineConfig$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,577:1\n1#2:578\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ac\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u00082\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0012\u0010\u00a1\u0001\u001a\u00020\u00002\t\u0010\u00a2\u0001\u001a\u0004\u0018\u00010\u0007J\u0017\u0010\u00a3\u0001\u001a\u00020\u00002\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000bJ\u0017\u0010\u00a4\u0001\u001a\u00020\u00002\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010J\u0012\u0010\u00a5\u0001\u001a\u00020\u00002\t\u0010\u00a6\u0001\u001a\u0004\u0018\u00010\u0015J\u0012\u0010\u00a7\u0001\u001a\u00020\u00002\t\u0010\u00a6\u0001\u001a\u0004\u0018\u00010\u0015J\u0011\u0010\u00a8\u0001\u001a\u00020\u00002\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001bJ\u0010\u0010\u00a9\u0001\u001a\u00020\u00002\u0007\u0010\u00aa\u0001\u001a\u00020;J\u000f\u0010\u00ab\u0001\u001a\u00020\u00002\u0006\u0010q\u001a\u00020pJ\u0015\u0010\u00ac\u0001\u001a\u00020\u00002\u000c\u0010u\u001a\u0008\u0012\u0004\u0012\u00020t0\u000bJ\u0007\u0010\u00ad\u0001\u001a\u000203J\u000f\u0010\u00ae\u0001\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020!J\u0012\u0010\u00af\u0001\u001a\u00020\u00002\u0007\u0010\u00b0\u0001\u001a\u000203H\u0007J\u0007\u0010\u00b1\u0001\u001a\u000203J\u0010\u0010\u00b2\u0001\u001a\u00020\u00002\u0007\u0010\u0082\u0001\u001a\u000203J\u0017\u0010\u00b3\u0001\u001a\u00020\u00002\u000e\u0010%\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000bJ\u0011\u0010\u00b4\u0001\u001a\u00020\u00002\u0008\u0010(\u001a\u0004\u0018\u00010\'J\u0011\u0010\u00b5\u0001\u001a\u00020\u00002\u0008\u0010,\u001a\u0004\u0018\u00010+J\u0011\u0010\u00b6\u0001\u001a\u00020\u00002\u0008\u00100\u001a\u0004\u0018\u00010/J\u0017\u0010\u00b7\u0001\u001a\u00020\u00002\u000e\u00104\u001a\n\u0012\u0004\u0012\u000203\u0018\u00010\u000bJ\u000e\u0010@\u001a\u00020\u00002\u0006\u0010:\u001a\u00020;J\u0011\u0010\u00b8\u0001\u001a\u00020\u00002\u0008\u00107\u001a\u0004\u0018\u000106J\u0017\u0010\u00b9\u0001\u001a\u00020\u00002\u000e\u0010C\u001a\n\u0012\u0004\u0012\u000203\u0018\u00010\u000bJ\u0011\u0010\u00ba\u0001\u001a\u00020\u00002\u0008\u0010E\u001a\u0004\u0018\u00010DJ\u0011\u0010\u00bb\u0001\u001a\u00020\u00002\u0008\u0010I\u001a\u0004\u0018\u00010HJ\u000e\u0010O\u001a\u00020\u00002\u0006\u0010L\u001a\u00020;J\u0015\u0010\u00bc\u0001\u001a\u00020\u00002\u000c\u0010Q\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010PJ\u0011\u0010\u00bd\u0001\u001a\u00020\u00002\u0008\u0010U\u001a\u0004\u0018\u00010TJ\u0011\u0010\u00be\u0001\u001a\u00020\u00002\u0008\u0010Y\u001a\u0004\u0018\u00010XJ\u0011\u0010\u00bf\u0001\u001a\u00020\u00002\u0008\u0010]\u001a\u0004\u0018\u00010\\J\u0017\u0010\u00c0\u0001\u001a\u00020\u00002\u000e\u0010b\u001a\n\u0012\u0004\u0012\u00020a\u0018\u00010`J\u0017\u0010\u00c1\u0001\u001a\u00020\u00002\u000e\u0010b\u001a\n\u0012\u0004\u0012\u00020e\u0018\u00010`J\u0017\u0010\u00c2\u0001\u001a\u00020\u00002\u000e\u0010i\u001a\n\u0012\u0004\u0012\u00020h\u0018\u00010`J\u000f\u0010\u00c3\u0001\u001a\u00020\u00002\u0006\u0010k\u001a\u000203J\u0011\u0010\u00c4\u0001\u001a\u00020\u00002\u0008\u0010n\u001a\u0004\u0018\u00010DJ\u0011\u0010\u00c5\u0001\u001a\u00020\u00002\u0008\u0010x\u001a\u0004\u0018\u00010wJ\u0013\u0010\u00c6\u0001\u001a\u00020\u00002\n\u0010\u0085\u0001\u001a\u0005\u0018\u00010\u0084\u0001J\u0011\u0010\u00c7\u0001\u001a\u00020\u00002\u0008\u0010\u0089\u0001\u001a\u00030\u0088\u0001J \u0010\u00c8\u0001\u001a\u00020\u00002\u0017\u0010\u008e\u0001\u001a\u0012\u0012\u0004\u0012\u00020\u0011\u0012\u0005\u0012\u00030\u008d\u0001\u0018\u00010\u008c\u0001J \u0010\u00c9\u0001\u001a\u00020\u00002\u0017\u0010\u0092\u0001\u001a\u0012\u0012\u0004\u0012\u00020\u0011\u0012\u0005\u0012\u00030\u0091\u0001\u0018\u00010\u008c\u0001J\u0013\u0010\u00ca\u0001\u001a\u00020\u00002\n\u0010\u00cb\u0001\u001a\u0005\u0018\u00010\u0094\u0001J\u0013\u0010\u00cc\u0001\u001a\u00020\u00002\n\u0010\u0099\u0001\u001a\u0005\u0018\u00010\u0098\u0001J\u001e\u0010\u00cd\u0001\u001a\u00020\u00002\u0015\u0010\u009e\u0001\u001a\u0010\u0012\u0005\u0012\u00030\u009d\u0001\u0012\u0004\u0012\u00020D0\u009c\u0001J\u0007\u0010\u00ce\u0001\u001a\u00020\u007fJ\u0008\u0010\u00cf\u0001\u001a\u00030\u00d0\u0001R\"\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR.\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b2\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR.\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\"\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0015@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\"\u0010\u0019\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0015@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0018R\"\u0010\u001c\u001a\u0004\u0018\u00010\u001b2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u001b@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u001e\u0010\"\u001a\u00020!2\u0006\u0010\u0006\u001a\u00020!@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R.\u0010%\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b2\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\u000fR\"\u0010(\u001a\u0004\u0018\u00010\'2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\'@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010*R\"\u0010,\u001a\u0004\u0018\u00010+2\u0008\u0010\u0006\u001a\u0004\u0018\u00010+@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010.R\"\u00100\u001a\u0004\u0018\u00010/2\u0008\u0010\u0006\u001a\u0004\u0018\u00010/@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u00102R.\u00104\u001a\n\u0012\u0004\u0012\u000203\u0018\u00010\u000b2\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u000203\u0018\u00010\u000b@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u0010\u000fR\"\u00107\u001a\u0004\u0018\u0001062\u0008\u0010\u0006\u001a\u0004\u0018\u000106@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00088\u00109R$\u0010:\u001a\u0004\u0018\u00010;X\u0086\u000e\u00a2\u0006\u0016\n\u0002\u0010B\u0012\u0004\u0008<\u0010=\u001a\u0004\u0008>\u0010?\"\u0004\u0008@\u0010AR.\u0010C\u001a\n\u0012\u0004\u0012\u000203\u0018\u00010\u000b2\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u000203\u0018\u00010\u000b@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008C\u0010\u000fR\"\u0010E\u001a\u0004\u0018\u00010D2\u0008\u0010\u0006\u001a\u0004\u0018\u00010D@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008F\u0010GR\"\u0010I\u001a\u0004\u0018\u00010H2\u0008\u0010\u0006\u001a\u0004\u0018\u00010H@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008J\u0010KR$\u0010L\u001a\u0004\u0018\u00010;X\u0086\u000e\u00a2\u0006\u0016\n\u0002\u0010B\u0012\u0004\u0008M\u0010=\u001a\u0004\u0008N\u0010?\"\u0004\u0008O\u0010AR*\u0010Q\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010P2\u000c\u0010\u0006\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010P@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008R\u0010SR\"\u0010U\u001a\u0004\u0018\u00010T2\u0008\u0010\u0006\u001a\u0004\u0018\u00010T@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008V\u0010WR\"\u0010Y\u001a\u0004\u0018\u00010X2\u0008\u0010\u0006\u001a\u0004\u0018\u00010X@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008Z\u0010[R\"\u0010]\u001a\u0004\u0018\u00010\\2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\\@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008^\u0010_R.\u0010b\u001a\n\u0012\u0004\u0012\u00020a\u0018\u00010`2\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020a\u0018\u00010`@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008c\u0010dR.\u0010f\u001a\n\u0012\u0004\u0012\u00020e\u0018\u00010`2\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020e\u0018\u00010`@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008g\u0010dR.\u0010i\u001a\n\u0012\u0004\u0012\u00020h\u0018\u00010`2\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020h\u0018\u00010`@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008j\u0010dR\u001e\u0010k\u001a\u0002032\u0006\u0010\u0006\u001a\u000203@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008l\u0010mR\"\u0010n\u001a\u0004\u0018\u00010D2\u0008\u0010\u0006\u001a\u0004\u0018\u00010D@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008o\u0010GR\"\u0010q\u001a\u0004\u0018\u00010p2\u0008\u0010\u0006\u001a\u0004\u0018\u00010p@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008r\u0010sR.\u0010u\u001a\n\u0012\u0004\u0012\u00020t\u0018\u00010\u000b2\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020t\u0018\u00010\u000b@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008v\u0010\u000fR\"\u0010x\u001a\u0004\u0018\u00010w2\u0008\u0010\u0006\u001a\u0004\u0018\u00010w@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008y\u0010zR\u001e\u0010{\u001a\u00020;2\u0006\u0010\u0006\u001a\u00020;@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008|\u0010}R\u0013\u0010~\u001a\u00020\u007f\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u0080\u0001\u0010\u0081\u0001R \u0010\u0082\u0001\u001a\u0002032\u0006\u0010\u0006\u001a\u000203@BX\u0086\u000e\u00a2\u0006\t\n\u0000\u001a\u0005\u0008\u0083\u0001\u0010mR\'\u0010\u0085\u0001\u001a\u0005\u0018\u00010\u0084\u00012\t\u0010\u0006\u001a\u0005\u0018\u00010\u0084\u0001@BX\u0086\u000e\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u0086\u0001\u0010\u0087\u0001R#\u0010\u0089\u0001\u001a\u00030\u0088\u00012\u0007\u0010\u0006\u001a\u00030\u0088\u0001@BX\u0086\u000e\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u008a\u0001\u0010\u008b\u0001RA\u0010\u008e\u0001\u001a\u0012\u0012\u0004\u0012\u00020\u0011\u0012\u0005\u0012\u00030\u008d\u0001\u0018\u00010\u008c\u00012\u0016\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u0011\u0012\u0005\u0012\u00030\u008d\u0001\u0018\u00010\u008c\u0001@BX\u0086\u000e\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u008f\u0001\u0010\u0090\u0001RA\u0010\u0092\u0001\u001a\u0012\u0012\u0004\u0012\u00020\u0011\u0012\u0005\u0012\u00030\u0091\u0001\u0018\u00010\u008c\u00012\u0016\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u0011\u0012\u0005\u0012\u00030\u0091\u0001\u0018\u00010\u008c\u0001@BX\u0086\u000e\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u0093\u0001\u0010\u0090\u0001R\'\u0010\u0095\u0001\u001a\u0005\u0018\u00010\u0094\u00012\t\u0010\u0006\u001a\u0005\u0018\u00010\u0094\u0001@BX\u0086\u000e\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u0096\u0001\u0010\u0097\u0001R\'\u0010\u0099\u0001\u001a\u0005\u0018\u00010\u0098\u00012\t\u0010\u0006\u001a\u0005\u0018\u00010\u0098\u0001@BX\u0086\u000e\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u009a\u0001\u0010\u009b\u0001RA\u0010\u009e\u0001\u001a\u0012\u0012\u0005\u0012\u00030\u009d\u0001\u0012\u0004\u0012\u00020D\u0018\u00010\u009c\u00012\u0016\u0010\u0006\u001a\u0012\u0012\u0005\u0012\u00030\u009d\u0001\u0012\u0004\u0012\u00020D\u0018\u00010\u009c\u0001@BX\u0086\u000e\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u009f\u0001\u0010\u00a0\u0001\u00a8\u0006\u00d1\u0001"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "value",
        "Landroid/graphics/Bitmap$Config;",
        "bitmapConfig",
        "getBitmapConfig",
        "()Landroid/graphics/Bitmap$Config;",
        "Lcom/facebook/common/internal/Supplier;",
        "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
        "bitmapMemoryCacheParamsSupplier",
        "getBitmapMemoryCacheParamsSupplier",
        "()Lcom/facebook/common/internal/Supplier;",
        "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;",
        "Lcom/facebook/cache/common/CacheKey;",
        "bitmapMemoryCacheEntryStateObserver",
        "getBitmapMemoryCacheEntryStateObserver",
        "()Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;",
        "Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;",
        "bitmapMemoryCacheTrimStrategy",
        "getBitmapMemoryCacheTrimStrategy",
        "()Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;",
        "encodedMemoryCacheTrimStrategy",
        "getEncodedMemoryCacheTrimStrategy",
        "Lcom/facebook/imagepipeline/cache/CacheKeyFactory;",
        "cacheKeyFactory",
        "getCacheKeyFactory",
        "()Lcom/facebook/imagepipeline/cache/CacheKeyFactory;",
        "getContext",
        "()Landroid/content/Context;",
        "Lcom/facebook/imagepipeline/core/DownsampleMode;",
        "downsampleMode",
        "getDownsampleMode",
        "()Lcom/facebook/imagepipeline/core/DownsampleMode;",
        "encodedMemoryCacheParamsSupplier",
        "getEncodedMemoryCacheParamsSupplier",
        "Lcom/facebook/imagepipeline/core/ExecutorSupplier;",
        "executorSupplier",
        "getExecutorSupplier",
        "()Lcom/facebook/imagepipeline/core/ExecutorSupplier;",
        "Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;",
        "imageCacheStatsTracker",
        "getImageCacheStatsTracker",
        "()Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;",
        "Lcom/facebook/imagepipeline/decoder/ImageDecoder;",
        "imageDecoder",
        "getImageDecoder",
        "()Lcom/facebook/imagepipeline/decoder/ImageDecoder;",
        "",
        "enableEncodedImageColorSpaceUsage",
        "getEnableEncodedImageColorSpaceUsage",
        "Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;",
        "imageTranscoderFactory",
        "getImageTranscoderFactory",
        "()Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;",
        "imageTranscoderType",
        "",
        "getImageTranscoderType$annotations",
        "()V",
        "getImageTranscoderType",
        "()Ljava/lang/Integer;",
        "setImageTranscoderType",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "isPrefetchEnabledSupplier",
        "Lcom/facebook/cache/disk/DiskCacheConfig;",
        "mainDiskCacheConfig",
        "getMainDiskCacheConfig",
        "()Lcom/facebook/cache/disk/DiskCacheConfig;",
        "Lcom/facebook/common/memory/MemoryTrimmableRegistry;",
        "memoryTrimmableRegistry",
        "getMemoryTrimmableRegistry",
        "()Lcom/facebook/common/memory/MemoryTrimmableRegistry;",
        "memoryChunkType",
        "getMemoryChunkType$annotations",
        "getMemoryChunkType",
        "setMemoryChunkType",
        "Lcom/facebook/imagepipeline/producers/NetworkFetcher;",
        "networkFetcher",
        "getNetworkFetcher",
        "()Lcom/facebook/imagepipeline/producers/NetworkFetcher;",
        "Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;",
        "platformBitmapFactory",
        "getPlatformBitmapFactory",
        "()Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;",
        "Lcom/facebook/imagepipeline/memory/PoolFactory;",
        "poolFactory",
        "getPoolFactory",
        "()Lcom/facebook/imagepipeline/memory/PoolFactory;",
        "Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;",
        "progressiveJpegConfig",
        "getProgressiveJpegConfig",
        "()Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;",
        "",
        "Lcom/facebook/imagepipeline/listener/RequestListener;",
        "requestListeners",
        "getRequestListeners",
        "()Ljava/util/Set;",
        "Lcom/facebook/imagepipeline/listener/RequestListener2;",
        "requestListener2s",
        "getRequestListener2s",
        "Lcom/facebook/imagepipeline/producers/CustomProducerSequenceFactory;",
        "customProducerSequenceFactories",
        "getCustomProducerSequenceFactories",
        "resizeAndRotateEnabledForNetwork",
        "getResizeAndRotateEnabledForNetwork",
        "()Z",
        "smallImageDiskCacheConfig",
        "getSmallImageDiskCacheConfig",
        "Lcom/facebook/imagepipeline/core/FileCacheFactory;",
        "fileCacheFactory",
        "getFileCacheFactory",
        "()Lcom/facebook/imagepipeline/core/FileCacheFactory;",
        "Lcom/facebook/imagepipeline/core/DiskCachesStore;",
        "diskCachesStoreSupplier",
        "getDiskCachesStoreSupplier",
        "Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;",
        "imageDecoderConfig",
        "getImageDecoderConfig",
        "()Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;",
        "httpConnectionTimeout",
        "getHttpConnectionTimeout",
        "()I",
        "experimentsBuilder",
        "Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;",
        "getExperimentsBuilder",
        "()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;",
        "diskCacheEnabled",
        "getDiskCacheEnabled",
        "Lcom/facebook/callercontext/CallerContextVerifier;",
        "callerContextVerifier",
        "getCallerContextVerifier",
        "()Lcom/facebook/callercontext/CallerContextVerifier;",
        "Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;",
        "closeableReferenceLeakTracker",
        "getCloseableReferenceLeakTracker",
        "()Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;",
        "Lcom/facebook/imagepipeline/cache/MemoryCache;",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        "bitmapMemoryCache",
        "getBitmapMemoryCache",
        "()Lcom/facebook/imagepipeline/cache/MemoryCache;",
        "Lcom/facebook/common/memory/PooledByteBuffer;",
        "encodedMemoryCache",
        "getEncodedMemoryCache",
        "Lcom/facebook/common/executors/SerialExecutorService;",
        "serialExecutorServiceForAnimatedImages",
        "getSerialExecutorServiceForAnimatedImages",
        "()Lcom/facebook/common/executors/SerialExecutorService;",
        "Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;",
        "bitmapMemoryCacheFactory",
        "getBitmapMemoryCacheFactory",
        "()Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;",
        "",
        "",
        "dynamicDiskCacheConfigMap",
        "getDynamicDiskCacheConfigMap",
        "()Ljava/util/Map;",
        "setBitmapsConfig",
        "config",
        "setBitmapMemoryCacheParamsSupplier",
        "setBitmapMemoryCacheEntryStateObserver",
        "setBitmapMemoryCacheTrimStrategy",
        "trimStrategy",
        "setEncodedMemoryCacheTrimStrategy",
        "setCacheKeyFactory",
        "setHttpConnectionTimeout",
        "httpConnectionTimeoutMs",
        "setFileCacheFactory",
        "setDiskCachesStoreSupplier",
        "isDownsampleEnabled",
        "setDownsampleMode",
        "setDownsampleEnabled",
        "downsampleEnabled",
        "isDiskCacheEnabled",
        "setDiskCacheEnabled",
        "setEncodedMemoryCacheParamsSupplier",
        "setExecutorSupplier",
        "setImageCacheStatsTracker",
        "setImageDecoder",
        "setEnableEncodedImageColorSpaceUsage",
        "setImageTranscoderFactory",
        "setIsPrefetchEnabledSupplier",
        "setMainDiskCacheConfig",
        "setMemoryTrimmableRegistry",
        "setNetworkFetcher",
        "setPlatformBitmapFactory",
        "setPoolFactory",
        "setProgressiveJpegConfig",
        "setRequestListeners",
        "setRequestListener2s",
        "setCustomFetchSequenceFactories",
        "setResizeAndRotateEnabledForNetwork",
        "setSmallImageDiskCacheConfig",
        "setImageDecoderConfig",
        "setCallerContextVerifier",
        "setCloseableReferenceLeakTracker",
        "setBitmapMemoryCache",
        "setEncodedMemoryCache",
        "setExecutorServiceForAnimatedImages",
        "serialExecutorService",
        "setBitmapMemoryCacheFactory",
        "setDynamicDiskCacheConfigMap",
        "experiment",
        "build",
        "Lcom/facebook/imagepipeline/core/ImagePipelineConfig;",
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
.field private bitmapConfig:Landroid/graphics/Bitmap$Config;

.field private bitmapMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation
.end field

.field private bitmapMemoryCacheEntryStateObserver:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver<",
            "Lcom/facebook/cache/common/CacheKey;",
            ">;"
        }
    .end annotation
.end field

.field private bitmapMemoryCacheFactory:Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;

.field private bitmapMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;"
        }
    .end annotation
.end field

.field private bitmapMemoryCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

.field private cacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

.field private callerContextVerifier:Lcom/facebook/callercontext/CallerContextVerifier;

.field private closeableReferenceLeakTracker:Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;

.field private final context:Landroid/content/Context;

.field private customProducerSequenceFactories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Lcom/facebook/imagepipeline/producers/CustomProducerSequenceFactory;",
            ">;"
        }
    .end annotation
.end field

.field private diskCacheEnabled:Z

.field private diskCachesStoreSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/core/DiskCachesStore;",
            ">;"
        }
    .end annotation
.end field

.field private downsampleMode:Lcom/facebook/imagepipeline/core/DownsampleMode;

.field private dynamicDiskCacheConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/facebook/cache/disk/DiskCacheConfig;",
            ">;"
        }
    .end annotation
.end field

.field private enableEncodedImageColorSpaceUsage:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private encodedMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private encodedMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;"
        }
    .end annotation
.end field

.field private encodedMemoryCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

.field private executorSupplier:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

.field private final experimentsBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

.field private fileCacheFactory:Lcom/facebook/imagepipeline/core/FileCacheFactory;

.field private httpConnectionTimeout:I

.field private imageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

.field private imageDecoder:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

.field private imageDecoderConfig:Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;

.field private imageTranscoderFactory:Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

.field private imageTranscoderType:Ljava/lang/Integer;

.field private isPrefetchEnabledSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mainDiskCacheConfig:Lcom/facebook/cache/disk/DiskCacheConfig;

.field private memoryChunkType:Ljava/lang/Integer;

.field private memoryTrimmableRegistry:Lcom/facebook/common/memory/MemoryTrimmableRegistry;

.field private networkFetcher:Lcom/facebook/imagepipeline/producers/NetworkFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/NetworkFetcher<",
            "*>;"
        }
    .end annotation
.end field

.field private platformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

.field private poolFactory:Lcom/facebook/imagepipeline/memory/PoolFactory;

.field private progressiveJpegConfig:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

.field private requestListener2s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Lcom/facebook/imagepipeline/listener/RequestListener2;",
            ">;"
        }
    .end annotation
.end field

.field private requestListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ">;"
        }
    .end annotation
.end field

.field private resizeAndRotateEnabledForNetwork:Z

.field private serialExecutorServiceForAnimatedImages:Lcom/facebook/common/executors/SerialExecutorService;

.field private smallImageDiskCacheConfig:Lcom/facebook/cache/disk/DiskCacheConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    sget-object v0, Lcom/facebook/imagepipeline/core/DownsampleMode;->AUTO:Lcom/facebook/imagepipeline/core/DownsampleMode;

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->downsampleMode:Lcom/facebook/imagepipeline/core/DownsampleMode;

    const/4 v0, 0x1

    .line 279
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->resizeAndRotateEnabledForNetwork:Z

    const/4 v1, -0x1

    .line 294
    iput v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->httpConnectionTimeout:I

    .line 297
    new-instance v1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    invoke-direct {v1, p0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)V

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->experimentsBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    .line 298
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->diskCacheEnabled:Z

    .line 305
    new-instance v0, Lcom/facebook/imagepipeline/debug/NoOpCloseableReferenceLeakTracker;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/debug/NoOpCloseableReferenceLeakTracker;-><init>()V

    check-cast v0, Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->closeableReferenceLeakTracker:Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;

    .line 512
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->context:Landroid/content/Context;

    return-void
.end method

.method public static synthetic getImageTranscoderType$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getMemoryChunkType$annotations()V
    .registers 0

    return-void
.end method


# virtual methods
.method public final build()Lcom/facebook/imagepipeline/core/ImagePipelineConfig;
    .registers 3

    .line 508
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final experiment()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .registers 2

    .line 506
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->experimentsBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    return-object v0
.end method

.method public final getBitmapConfig()Landroid/graphics/Bitmap$Config;
    .registers 2

    .line 206
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public final getBitmapMemoryCache()Lcom/facebook/imagepipeline/cache/MemoryCache;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->bitmapMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    return-object v0
.end method

.method public final getBitmapMemoryCacheEntryStateObserver()Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver<",
            "Lcom/facebook/cache/common/CacheKey;",
            ">;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->bitmapMemoryCacheEntryStateObserver:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    return-object v0
.end method

.method public final getBitmapMemoryCacheFactory()Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;
    .registers 2

    .line 317
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->bitmapMemoryCacheFactory:Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;

    return-object v0
.end method

.method public final getBitmapMemoryCacheParamsSupplier()Lcom/facebook/common/internal/Supplier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->bitmapMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;

    return-object v0
.end method

.method public final getBitmapMemoryCacheTrimStrategy()Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;
    .registers 2

    .line 215
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->bitmapMemoryCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

    return-object v0
.end method

.method public final getCacheKeyFactory()Lcom/facebook/imagepipeline/cache/CacheKeyFactory;
    .registers 2

    .line 221
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->cacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    return-object v0
.end method

.method public final getCallerContextVerifier()Lcom/facebook/callercontext/CallerContextVerifier;
    .registers 2

    .line 301
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->callerContextVerifier:Lcom/facebook/callercontext/CallerContextVerifier;

    return-object v0
.end method

.method public final getCloseableReferenceLeakTracker()Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;
    .registers 2

    .line 304
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->closeableReferenceLeakTracker:Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2

    .line 224
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getCustomProducerSequenceFactories()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/producers/CustomProducerSequenceFactory;",
            ">;"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->customProducerSequenceFactories:Ljava/util/Set;

    return-object v0
.end method

.method public final getDiskCacheEnabled()Z
    .registers 2

    .line 298
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->diskCacheEnabled:Z

    return v0
.end method

.method public final getDiskCachesStoreSupplier()Lcom/facebook/common/internal/Supplier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/core/DiskCachesStore;",
            ">;"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->diskCachesStoreSupplier:Lcom/facebook/common/internal/Supplier;

    return-object v0
.end method

.method public final getDownsampleMode()Lcom/facebook/imagepipeline/core/DownsampleMode;
    .registers 2

    .line 226
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->downsampleMode:Lcom/facebook/imagepipeline/core/DownsampleMode;

    return-object v0
.end method

.method public final getDynamicDiskCacheConfigMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/cache/disk/DiskCacheConfig;",
            ">;"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->dynamicDiskCacheConfigMap:Ljava/util/Map;

    return-object v0
.end method

.method public final getEnableEncodedImageColorSpaceUsage()Lcom/facebook/common/internal/Supplier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->enableEncodedImageColorSpaceUsage:Lcom/facebook/common/internal/Supplier;

    return-object v0
.end method

.method public final getEncodedMemoryCache()Lcom/facebook/imagepipeline/cache/MemoryCache;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->encodedMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    return-object v0
.end method

.method public final getEncodedMemoryCacheParamsSupplier()Lcom/facebook/common/internal/Supplier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->encodedMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;

    return-object v0
.end method

.method public final getEncodedMemoryCacheTrimStrategy()Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;
    .registers 2

    .line 218
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->encodedMemoryCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

    return-object v0
.end method

.method public final getExecutorSupplier()Lcom/facebook/imagepipeline/core/ExecutorSupplier;
    .registers 2

    .line 232
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->executorSupplier:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    return-object v0
.end method

.method public final getExperimentsBuilder()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .registers 2

    .line 297
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->experimentsBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    return-object v0
.end method

.method public final getFileCacheFactory()Lcom/facebook/imagepipeline/core/FileCacheFactory;
    .registers 2

    .line 285
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->fileCacheFactory:Lcom/facebook/imagepipeline/core/FileCacheFactory;

    return-object v0
.end method

.method public final getHttpConnectionTimeout()I
    .registers 2

    .line 294
    iget v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->httpConnectionTimeout:I

    return v0
.end method

.method public final getImageCacheStatsTracker()Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;
    .registers 2

    .line 235
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->imageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    return-object v0
.end method

.method public final getImageDecoder()Lcom/facebook/imagepipeline/decoder/ImageDecoder;
    .registers 2

    .line 238
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->imageDecoder:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    return-object v0
.end method

.method public final getImageDecoderConfig()Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;
    .registers 2

    .line 291
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->imageDecoderConfig:Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;

    return-object v0
.end method

.method public final getImageTranscoderFactory()Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;
    .registers 2

    .line 244
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->imageTranscoderFactory:Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

    return-object v0
.end method

.method public final getImageTranscoderType()Ljava/lang/Integer;
    .registers 2

    .line 247
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->imageTranscoderType:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMainDiskCacheConfig()Lcom/facebook/cache/disk/DiskCacheConfig;
    .registers 2

    .line 251
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mainDiskCacheConfig:Lcom/facebook/cache/disk/DiskCacheConfig;

    return-object v0
.end method

.method public final getMemoryChunkType()Ljava/lang/Integer;
    .registers 2

    .line 257
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->memoryChunkType:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMemoryTrimmableRegistry()Lcom/facebook/common/memory/MemoryTrimmableRegistry;
    .registers 2

    .line 254
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->memoryTrimmableRegistry:Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    return-object v0
.end method

.method public final getNetworkFetcher()Lcom/facebook/imagepipeline/producers/NetworkFetcher;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/NetworkFetcher<",
            "*>;"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->networkFetcher:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    return-object v0
.end method

.method public final getPlatformBitmapFactory()Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;
    .registers 2

    .line 261
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->platformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    return-object v0
.end method

.method public final getPoolFactory()Lcom/facebook/imagepipeline/memory/PoolFactory;
    .registers 2

    .line 264
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->poolFactory:Lcom/facebook/imagepipeline/memory/PoolFactory;

    return-object v0
.end method

.method public final getProgressiveJpegConfig()Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;
    .registers 2

    .line 267
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->progressiveJpegConfig:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

    return-object v0
.end method

.method public final getRequestListener2s()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/listener/RequestListener2;",
            ">;"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->requestListener2s:Ljava/util/Set;

    return-object v0
.end method

.method public final getRequestListeners()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ">;"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->requestListeners:Ljava/util/Set;

    return-object v0
.end method

.method public final getResizeAndRotateEnabledForNetwork()Z
    .registers 2

    .line 279
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->resizeAndRotateEnabledForNetwork:Z

    return v0
.end method

.method public final getSerialExecutorServiceForAnimatedImages()Lcom/facebook/common/executors/SerialExecutorService;
    .registers 2

    .line 314
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->serialExecutorServiceForAnimatedImages:Lcom/facebook/common/executors/SerialExecutorService;

    return-object v0
.end method

.method public final getSmallImageDiskCacheConfig()Lcom/facebook/cache/disk/DiskCacheConfig;
    .registers 2

    .line 282
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->smallImageDiskCacheConfig:Lcom/facebook/cache/disk/DiskCacheConfig;

    return-object v0
.end method

.method public final isDiskCacheEnabled()Z
    .registers 2

    .line 377
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->diskCacheEnabled:Z

    return v0
.end method

.method public final isDownsampleEnabled()Z
    .registers 3

    .line 362
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->downsampleMode:Lcom/facebook/imagepipeline/core/DownsampleMode;

    sget-object v1, Lcom/facebook/imagepipeline/core/DownsampleMode;->ALWAYS:Lcom/facebook/imagepipeline/core/DownsampleMode;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final isPrefetchEnabledSupplier()Lcom/facebook/common/internal/Supplier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->isPrefetchEnabledSupplier:Lcom/facebook/common/internal/Supplier;

    return-object v0
.end method

.method public final setBitmapMemoryCache(Lcom/facebook/imagepipeline/cache/MemoryCache;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 485
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 486
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->bitmapMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    return-object p0
.end method

.method public final setBitmapMemoryCacheEntryStateObserver(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver<",
            "Lcom/facebook/cache/common/CacheKey;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 333
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 334
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->bitmapMemoryCacheEntryStateObserver:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    return-object p0
.end method

.method public final setBitmapMemoryCacheFactory(Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 3

    .line 498
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 499
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->bitmapMemoryCacheFactory:Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;

    return-object p0
.end method

.method public final setBitmapMemoryCacheParamsSupplier(Lcom/facebook/common/internal/Supplier;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 327
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    if-eqz p1, :cond_8

    .line 328
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->bitmapMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;

    return-object p0

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Required value was null."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setBitmapMemoryCacheTrimStrategy(Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 3

    .line 337
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 338
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->bitmapMemoryCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

    return-object p0
.end method

.method public final setBitmapsConfig(Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 3

    .line 323
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method public final setCacheKeyFactory(Lcom/facebook/imagepipeline/cache/CacheKeyFactory;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 3

    .line 345
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 346
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->cacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    return-object p0
.end method

.method public final setCallerContextVerifier(Lcom/facebook/callercontext/CallerContextVerifier;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 3

    .line 476
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 477
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->callerContextVerifier:Lcom/facebook/callercontext/CallerContextVerifier;

    return-object p0
.end method

.method public final setCloseableReferenceLeakTracker(Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 3

    const-string v0, "closeableReferenceLeakTracker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 482
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->closeableReferenceLeakTracker:Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;

    return-object p0
.end method

.method public final setCustomFetchSequenceFactories(Ljava/util/Set;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/facebook/imagepipeline/producers/CustomProducerSequenceFactory;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 461
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->customProducerSequenceFactories:Ljava/util/Set;

    return-object p0
.end method

.method public final setDiskCacheEnabled(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 3

    .line 379
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 380
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->diskCacheEnabled:Z

    return-object p0
.end method

.method public final setDiskCachesStoreSupplier(Lcom/facebook/common/internal/Supplier;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/core/DiskCachesStore;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    const-string v0, "diskCachesStoreSupplier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 359
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->diskCachesStoreSupplier:Lcom/facebook/common/internal/Supplier;

    return-object p0
.end method

.method public final setDownsampleEnabled(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 3
    .annotation runtime Lkotlin/Deprecated;
        message = "Use the new setDownsampleMode() method"
    .end annotation

    .line 369
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    if-eqz p1, :cond_b

    .line 371
    sget-object p1, Lcom/facebook/imagepipeline/core/DownsampleMode;->ALWAYS:Lcom/facebook/imagepipeline/core/DownsampleMode;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->setDownsampleMode(Lcom/facebook/imagepipeline/core/DownsampleMode;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p0

    .line 373
    :cond_b
    sget-object p1, Lcom/facebook/imagepipeline/core/DownsampleMode;->AUTO:Lcom/facebook/imagepipeline/core/DownsampleMode;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->setDownsampleMode(Lcom/facebook/imagepipeline/core/DownsampleMode;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p0
.end method

.method public final setDownsampleMode(Lcom/facebook/imagepipeline/core/DownsampleMode;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 3

    const-string v0, "downsampleMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 365
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->downsampleMode:Lcom/facebook/imagepipeline/core/DownsampleMode;

    return-object p0
.end method

.method public final setDynamicDiskCacheConfigMap(Ljava/util/Map;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/facebook/cache/disk/DiskCacheConfig;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    const-string v0, "dynamicDiskCacheConfigMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 504
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->dynamicDiskCacheConfigMap:Ljava/util/Map;

    return-object p0
.end method

.method public final setEnableEncodedImageColorSpaceUsage(Lcom/facebook/common/internal/Supplier;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 404
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 405
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->enableEncodedImageColorSpaceUsage:Lcom/facebook/common/internal/Supplier;

    return-object p0
.end method

.method public final setEncodedMemoryCache(Lcom/facebook/imagepipeline/cache/MemoryCache;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 491
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->encodedMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    return-object p0
.end method

.method public final setEncodedMemoryCacheParamsSupplier(Lcom/facebook/common/internal/Supplier;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 385
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    if-eqz p1, :cond_8

    .line 386
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->encodedMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;

    return-object p0

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Required value was null."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setEncodedMemoryCacheTrimStrategy(Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 3

    .line 341
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 342
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->encodedMemoryCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

    return-object p0
.end method

.method public final setExecutorServiceForAnimatedImages(Lcom/facebook/common/executors/SerialExecutorService;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 3

    .line 495
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->serialExecutorServiceForAnimatedImages:Lcom/facebook/common/executors/SerialExecutorService;

    return-object p0
.end method

.method public final setExecutorSupplier(Lcom/facebook/imagepipeline/core/ExecutorSupplier;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 3

    .line 389
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 390
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->executorSupplier:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    return-object p0
.end method

.method public final setFileCacheFactory(Lcom/facebook/imagepipeline/core/FileCacheFactory;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 3

    const-string v0, "fileCacheFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 354
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->fileCacheFactory:Lcom/facebook/imagepipeline/core/FileCacheFactory;

    return-object p0
.end method

.method public final setHttpConnectionTimeout(I)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 3

    .line 349
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 350
    iput p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->httpConnectionTimeout:I

    return-object p0
.end method

.method public final setImageCacheStatsTracker(Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 3

    .line 394
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 395
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->imageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    return-object p0
.end method

.method public final setImageDecoder(Lcom/facebook/imagepipeline/decoder/ImageDecoder;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 3

    .line 398
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 399
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->imageDecoder:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    return-object p0
.end method

.method public final setImageDecoderConfig(Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 3

    .line 472
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 473
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->imageDecoderConfig:Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;

    return-object p0
.end method

.method public final setImageTranscoderFactory(Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 3

    .line 413
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 414
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->imageTranscoderFactory:Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

    return-object p0
.end method

.method public final setImageTranscoderType(I)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 3

    .line 408
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 409
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->imageTranscoderType:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setImageTranscoderType(Ljava/lang/Integer;)V
    .registers 2

    .line 247
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->imageTranscoderType:Ljava/lang/Integer;

    return-void
.end method

.method public final setIsPrefetchEnabledSupplier(Lcom/facebook/common/internal/Supplier;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 418
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 419
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->isPrefetchEnabledSupplier:Lcom/facebook/common/internal/Supplier;

    return-object p0
.end method

.method public final setMainDiskCacheConfig(Lcom/facebook/cache/disk/DiskCacheConfig;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 3

    .line 422
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 423
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mainDiskCacheConfig:Lcom/facebook/cache/disk/DiskCacheConfig;

    return-object p0
.end method

.method public final setMemoryChunkType(I)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 3

    .line 431
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 432
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->memoryChunkType:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setMemoryChunkType(Ljava/lang/Integer;)V
    .registers 2

    .line 257
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->memoryChunkType:Ljava/lang/Integer;

    return-void
.end method

.method public final setMemoryTrimmableRegistry(Lcom/facebook/common/memory/MemoryTrimmableRegistry;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 3

    .line 427
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 428
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->memoryTrimmableRegistry:Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    return-object p0
.end method

.method public final setNetworkFetcher(Lcom/facebook/imagepipeline/producers/NetworkFetcher;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/NetworkFetcher<",
            "*>;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 435
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 436
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->networkFetcher:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    return-object p0
.end method

.method public final setPlatformBitmapFactory(Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 3

    .line 439
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 440
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->platformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    return-object p0
.end method

.method public final setPoolFactory(Lcom/facebook/imagepipeline/memory/PoolFactory;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 3

    .line 443
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 444
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->poolFactory:Lcom/facebook/imagepipeline/memory/PoolFactory;

    return-object p0
.end method

.method public final setProgressiveJpegConfig(Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 3

    .line 447
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 448
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->progressiveJpegConfig:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

    return-object p0
.end method

.method public final setRequestListener2s(Ljava/util/Set;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/facebook/imagepipeline/listener/RequestListener2;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 455
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 456
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->requestListener2s:Ljava/util/Set;

    return-object p0
.end method

.method public final setRequestListeners(Ljava/util/Set;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 451
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 452
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->requestListeners:Ljava/util/Set;

    return-object p0
.end method

.method public final setResizeAndRotateEnabledForNetwork(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 3

    .line 464
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 465
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->resizeAndRotateEnabledForNetwork:Z

    return-object p0
.end method

.method public final setSmallImageDiskCacheConfig(Lcom/facebook/cache/disk/DiskCacheConfig;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 3

    .line 468
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 469
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->smallImageDiskCacheConfig:Lcom/facebook/cache/disk/DiskCacheConfig;

    return-object p0
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineConfig.Companion (com.facebook.imagepipeline.core.ImagePipelineConfig$Companion)
.class public final Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;
.super Ljava/lang/Object;
.source "ImagePipelineConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/core/ImagePipelineConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImagePipelineConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImagePipelineConfig.kt\ncom/facebook/imagepipeline/core/ImagePipelineConfig$Companion\n+ 2 FrescoSystrace.kt\ncom/facebook/imagepipeline/systrace/FrescoSystrace\n*L\n1#1,577:1\n40#2,9:578\n*S KotlinDebug\n*F\n+ 1 ImagePipelineConfig.kt\ncom/facebook/imagepipeline/core/ImagePipelineConfig$Companion\n*L\n537#1:578,9\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\"\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0002J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0008\u0010\u0016\u001a\u00020\u000bH\u0007J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001b\u001a\u00020\u0018H\u0002J\u0018\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u000e\u001a\u00020\u000fH\u0002R&\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058\u0006@BX\u0087\u000e\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0007\u0010\u0003\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;",
        "",
        "<init>",
        "()V",
        "value",
        "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;",
        "defaultImageRequestConfig",
        "getDefaultImageRequestConfig$annotations",
        "getDefaultImageRequestConfig",
        "()Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;",
        "setWebpBitmapFactory",
        "",
        "webpBitmapFactory",
        "Lcom/facebook/common/webp/WebpBitmapFactory;",
        "imagePipelineExperiments",
        "Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;",
        "bitmapCreator",
        "Lcom/facebook/common/webp/BitmapCreator;",
        "getDefaultMainDiskCacheConfig",
        "Lcom/facebook/cache/disk/DiskCacheConfig;",
        "context",
        "Landroid/content/Context;",
        "resetDefaultRequestConfig",
        "newBuilder",
        "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;",
        "getImageTranscoderFactory",
        "Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;",
        "builder",
        "getMemoryChunkType",
        "",
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

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDefaultMainDiskCacheConfig(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;Landroid/content/Context;)Lcom/facebook/cache/disk/DiskCacheConfig;
    .registers 2

    .line 516
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;->getDefaultMainDiskCacheConfig(Landroid/content/Context;)Lcom/facebook/cache/disk/DiskCacheConfig;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getImageTranscoderFactory(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;
    .registers 2

    .line 516
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;->getImageTranscoderFactory(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMemoryChunkType(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;)I
    .registers 3

    .line 516
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;->getMemoryChunkType(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$setWebpBitmapFactory(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;Lcom/facebook/common/webp/WebpBitmapFactory;Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;Lcom/facebook/common/webp/BitmapCreator;)V
    .registers 4

    .line 516
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Companion;->setWebpBitmapFactory(Lcom/facebook/common/webp/WebpBitmapFactory;Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;Lcom/facebook/common/webp/BitmapCreator;)V

    return-void
.end method

.method public static synthetic getDefaultImageRequestConfig$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method private final getDefaultMainDiskCacheConfig(Landroid/content/Context;)Lcom/facebook/cache/disk/DiskCacheConfig;
    .registers 3

    .line 537
    sget-object v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    .line 578
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-nez v0, :cond_11

    .line 538
    invoke-static {p1}, Lcom/facebook/cache/disk/DiskCacheConfig;->newBuilder(Landroid/content/Context;)Lcom/facebook/cache/disk/DiskCacheConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->build()Lcom/facebook/cache/disk/DiskCacheConfig;

    move-result-object p1

    goto :goto_21

    .line 582
    :cond_11
    const-string v0, "DiskCacheConfig.getDefaultMainDiskCacheConfig"

    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 538
    :try_start_16
    invoke-static {p1}, Lcom/facebook/cache/disk/DiskCacheConfig;->newBuilder(Landroid/content/Context;)Lcom/facebook/cache/disk/DiskCacheConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->build()Lcom/facebook/cache/disk/DiskCacheConfig;

    move-result-object p1
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_28

    .line 586
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 537
    :goto_21
    const-string/jumbo v0, "traceSection(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :catchall_28
    move-exception p1

    .line 586
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    throw p1
.end method

.method private final getImageTranscoderFactory(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;
    .registers 3

    .line 550
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getImageTranscoderFactory()Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getImageTranscoderType()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_19

    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You can\'t define a custom ImageTranscoderFactory and provide an ImageTranscoderType"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 553
    :cond_19
    :goto_19
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getImageTranscoderFactory()Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

    move-result-object p1

    return-object p1
.end method

.method private final getMemoryChunkType(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;)I
    .registers 7

    .line 562
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->getMemoryChunkType()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 563
    :cond_b
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->getMemoryType()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long p1, v0, v2

    if-nez p1, :cond_1d

    .line 564
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1b

    if-lt p1, v0, :cond_1d

    const/4 p1, 0x2

    return p1

    .line 566
    :cond_1d
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->getMemoryType()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_29

    const/4 p1, 0x1

    return p1

    .line 569
    :cond_29
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->getMemoryType()J

    const/4 p1, 0x0

    return p1
.end method

.method private final setWebpBitmapFactory(Lcom/facebook/common/webp/WebpBitmapFactory;Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;Lcom/facebook/common/webp/BitmapCreator;)V
    .registers 4

    .line 526
    sput-object p1, Lcom/facebook/common/webp/WebpSupportStatus;->sWebpBitmapFactory:Lcom/facebook/common/webp/WebpBitmapFactory;

    .line 527
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->getWebpErrorLogger()Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 529
    invoke-interface {p1, p2}, Lcom/facebook/common/webp/WebpBitmapFactory;->setWebpErrorLogger(Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;)V

    :cond_b
    if-eqz p3, :cond_10

    .line 532
    invoke-interface {p1, p3}, Lcom/facebook/common/webp/WebpBitmapFactory;->setBitmapCreator(Lcom/facebook/common/webp/BitmapCreator;)V

    :cond_10
    return-void
.end method


# virtual methods
.method public final getDefaultImageRequestConfig()Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;
    .registers 2

    .line 517
    invoke-static {}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->access$getDefaultImageRequestConfig$cp()Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilder(Landroid/content/Context;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final resetDefaultRequestConfig()V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 544
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;-><init>()V

    invoke-static {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->access$setDefaultImageRequestConfig$cp(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;)V

    return-void
.end method

###### Class com.facebook.imagepipeline.core.ImagePipelineConfig.DefaultImageRequestConfig (com.facebook.imagepipeline.core.ImagePipelineConfig$DefaultImageRequestConfig)
.class public final Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;
.super Ljava/lang/Object;
.source "ImagePipelineConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/core/ImagePipelineConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImageRequestConfig"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;",
        "",
        "<init>",
        "()V",
        "isProgressiveRenderingEnabled",
        "",
        "()Z",
        "setProgressiveRenderingEnabled",
        "(Z)V",
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
.field private isProgressiveRenderingEnabled:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isProgressiveRenderingEnabled()Z
    .registers 2

    .line 202
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;->isProgressiveRenderingEnabled:Z

    return v0
.end method

.method public final setProgressiveRenderingEnabled(Z)V
    .registers 2

    .line 202
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;->isProgressiveRenderingEnabled:Z

    return-void
.end method
