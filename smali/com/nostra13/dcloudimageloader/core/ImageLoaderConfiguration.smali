###### Class com.nostra13.dcloudimageloader.core.ImageLoaderConfiguration (com.nostra13.dcloudimageloader.core.ImageLoaderConfiguration)
.class public final Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;
.super Ljava/lang/Object;
.source "ImageLoaderConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;
    }
.end annotation


# instance fields
.field final customExecutor:Z

.field final customExecutorForCachedImages:Z

.field final decoder:Lcom/nostra13/dcloudimageloader/core/decode/ImageDecoder;

.field final defaultDisplayImageOptions:Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

.field final discCache:Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;

.field final downloader:Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;

.field final imageCompressFormatForDiscCache:Landroid/graphics/Bitmap$CompressFormat;

.field final imageQualityForDiscCache:I

.field final maxImageHeightForDiscCache:I

.field final maxImageHeightForMemoryCache:I

.field final maxImageWidthForDiscCache:I

.field final maxImageWidthForMemoryCache:I

.field final memoryCache:Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;

.field final networkDeniedDownloader:Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;

.field final processorForDiscCache:Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;

.field final reserveDiscCache:Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;

.field final resources:Landroid/content/res/Resources;

.field final slowNetworkDownloader:Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;

.field final taskExecutor:Ljava/util/concurrent/Executor;

.field final taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

.field final tasksProcessingType:Lcom/nostra13/dcloudimageloader/core/assist/QueueProcessingType;

.field final threadPoolSize:I

.field final threadPriority:I

.field final writeLogs:Z


# direct methods
.method private constructor <init>(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)V
    .registers 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->access$000(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->resources:Landroid/content/res/Resources;

    .line 57
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->access$100(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->maxImageWidthForMemoryCache:I

    .line 58
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->access$200(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->maxImageHeightForMemoryCache:I

    .line 59
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->access$300(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->maxImageWidthForDiscCache:I

    .line 60
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->access$400(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->maxImageHeightForDiscCache:I

    .line 61
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->access$500(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->imageCompressFormatForDiscCache:Landroid/graphics/Bitmap$CompressFormat;

    .line 62
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->access$600(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->imageQualityForDiscCache:I

    .line 63
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->access$700(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->processorForDiscCache:Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;

    .line 64
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->access$800(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->taskExecutor:Ljava/util/concurrent/Executor;

    .line 65
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->access$900(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    .line 66
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->access$1000(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->threadPoolSize:I

    .line 67
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->access$1100(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->threadPriority:I

    .line 68
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->access$1200(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/dcloudimageloader/core/assist/QueueProcessingType;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->tasksProcessingType:Lcom/nostra13/dcloudimageloader/core/assist/QueueProcessingType;

    .line 69
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->access$1300(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->discCache:Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;

    .line 70
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->access$1400(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;

    .line 71
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->access$1500(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->defaultDisplayImageOptions:Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

    .line 72
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->access$1600(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->writeLogs:Z

    .line 73
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->access$1700(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->downloader:Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;

    .line 74
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->access$1800(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/dcloudimageloader/core/decode/ImageDecoder;

    move-result-object v1

    iput-object v1, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->decoder:Lcom/nostra13/dcloudimageloader/core/decode/ImageDecoder;

    .line 75
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->access$1900(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->customExecutor:Z

    .line 76
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->access$2000(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->customExecutorForCachedImages:Z

    .line 77
    new-instance v1, Lcom/nostra13/dcloudimageloader/core/download/NetworkDeniedImageDownloader;

    invoke-direct {v1, v0}, Lcom/nostra13/dcloudimageloader/core/download/NetworkDeniedImageDownloader;-><init>(Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;)V

    iput-object v1, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->networkDeniedDownloader:Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;

    .line 78
    new-instance v1, Lcom/nostra13/dcloudimageloader/core/download/SlowNetworkImageDownloader;

    invoke-direct {v1, v0}, Lcom/nostra13/dcloudimageloader/core/download/SlowNetworkImageDownloader;-><init>(Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;)V

    iput-object v1, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->slowNetworkDownloader:Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;

    .line 79
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->access$000(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/nostra13/dcloudimageloader/utils/StorageUtils;->getCacheDirectory(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object p1

    .line 80
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/DefaultConfigurationFactory;->createReserveDiscCache(Ljava/io/File;)Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;

    move-result-object p1

    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->reserveDiscCache:Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;

    return-void
.end method

.method synthetic constructor <init>(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$1;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;-><init>(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)V

    return-void
.end method

.method public static createDefault(Landroid/content/Context;)Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;
    .registers 2

    .line 84
    new-instance v0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;

    invoke-direct {v0, p0}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method getMaxImageSize()Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;
    .registers 4

    .line 88
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 89
    iget v1, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->maxImageWidthForMemoryCache:I

    if-gtz v1, :cond_c

    .line 91
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 94
    :cond_c
    iget v2, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->maxImageHeightForMemoryCache:I

    if-gtz v2, :cond_12

    .line 96
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 99
    :cond_12
    new-instance v0, Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;

    invoke-direct {v0, v1, v2}, Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;-><init>(II)V

    return-object v0
.end method

###### Class com.nostra13.dcloudimageloader.core.ImageLoaderConfiguration.AnonymousClass1 (com.nostra13.dcloudimageloader.core.ImageLoaderConfiguration$1)
.class synthetic Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$1;
.super Ljava/lang/Object;
.source "ImageLoaderConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.nostra13.dcloudimageloader.core.ImageLoaderConfiguration.Builder (com.nostra13.dcloudimageloader.core.ImageLoaderConfiguration$Builder)
.class public Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;
.super Ljava/lang/Object;
.source "ImageLoaderConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static final DEFAULT_TASK_PROCESSING_TYPE:Lcom/nostra13/dcloudimageloader/core/assist/QueueProcessingType;

.field public static final DEFAULT_THREAD_POOL_SIZE:I = 0x3

.field public static final DEFAULT_THREAD_PRIORITY:I = 0x4

.field private static final WARNING_OVERLAP_DISC_CACHE_NAME_GENERATOR:Ljava/lang/String; = "discCache() and discCacheFileNameGenerator() calls overlap each other"

.field private static final WARNING_OVERLAP_DISC_CACHE_PARAMS:Ljava/lang/String; = "discCache(), discCacheSize() and discCacheFileCount calls overlap each other"

.field private static final WARNING_OVERLAP_EXECUTOR:Ljava/lang/String; = "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

.field private static final WARNING_OVERLAP_MEMORY_CACHE:Ljava/lang/String; = "memoryCache() and memoryCacheSize() calls overlap each other"


# instance fields
.field private context:Landroid/content/Context;

.field private customExecutor:Z

.field private customExecutorForCachedImages:Z

.field private decoder:Lcom/nostra13/dcloudimageloader/core/decode/ImageDecoder;

.field private defaultDisplayImageOptions:Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

.field private denyCacheImageMultipleSizesInMemory:Z

.field private discCache:Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;

.field private discCacheFileCount:I

.field private discCacheFileNameGenerator:Lcom/nostra13/dcloudimageloader/cache/disc/naming/FileNameGenerator;

.field private discCacheSize:I

.field private downloader:Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;

.field private imageCompressFormatForDiscCache:Landroid/graphics/Bitmap$CompressFormat;

.field private imageQualityForDiscCache:I

.field private maxImageHeightForDiscCache:I

.field private maxImageHeightForMemoryCache:I

.field private maxImageWidthForDiscCache:I

.field private maxImageWidthForMemoryCache:I

.field private memoryCache:Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;

.field private memoryCacheSize:I

.field private processorForDiscCache:Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;

.field private taskExecutor:Ljava/util/concurrent/Executor;

.field private taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

.field private tasksProcessingType:Lcom/nostra13/dcloudimageloader/core/assist/QueueProcessingType;

.field private threadPoolSize:I

.field private threadPriority:I

.field private writeLogs:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 377
    sget-object v0, Lcom/nostra13/dcloudimageloader/core/assist/QueueProcessingType;->FIFO:Lcom/nostra13/dcloudimageloader/core/assist/QueueProcessingType;

    sput-object v0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->DEFAULT_TASK_PROCESSING_TYPE:Lcom/nostra13/dcloudimageloader/core/assist/QueueProcessingType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 111
    iput v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForMemoryCache:I

    .line 112
    iput v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForMemoryCache:I

    .line 113
    iput v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForDiscCache:I

    .line 114
    iput v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForDiscCache:I

    const/4 v1, 0x0

    .line 115
    iput-object v1, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->imageCompressFormatForDiscCache:Landroid/graphics/Bitmap$CompressFormat;

    .line 116
    iput v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->imageQualityForDiscCache:I

    .line 117
    iput-object v1, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->processorForDiscCache:Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;

    .line 118
    iput-object v1, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    .line 119
    iput-object v1, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    .line 120
    iput-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->customExecutor:Z

    .line 121
    iput-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->customExecutorForCachedImages:Z

    const/4 v2, 0x3

    .line 122
    iput v2, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    const/4 v2, 0x4

    .line 123
    iput v2, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    .line 124
    iput-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->denyCacheImageMultipleSizesInMemory:Z

    .line 138
    sget-object v2, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->DEFAULT_TASK_PROCESSING_TYPE:Lcom/nostra13/dcloudimageloader/core/assist/QueueProcessingType;

    iput-object v2, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lcom/nostra13/dcloudimageloader/core/assist/QueueProcessingType;

    .line 139
    iput v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize:I

    .line 140
    iput v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->discCacheSize:I

    .line 141
    iput v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileCount:I

    .line 142
    iput-object v1, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;

    .line 143
    iput-object v1, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->discCache:Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;

    .line 144
    iput-object v1, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileNameGenerator:Lcom/nostra13/dcloudimageloader/cache/disc/naming/FileNameGenerator;

    .line 145
    iput-object v1, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->downloader:Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;

    .line 146
    iput-object v1, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions:Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

    .line 147
    iput-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->writeLogs:Z

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)Landroid/content/Context;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)I
    .registers 1

    .line 102
    iget p0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForMemoryCache:I

    return p0
.end method

.method static synthetic access$1000(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)I
    .registers 1

    .line 102
    iget p0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    return p0
.end method

.method static synthetic access$1100(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)I
    .registers 1

    .line 102
    iget p0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    return p0
.end method

.method static synthetic access$1200(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/dcloudimageloader/core/assist/QueueProcessingType;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lcom/nostra13/dcloudimageloader/core/assist/QueueProcessingType;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->discCache:Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions:Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)Z
    .registers 1

    .line 102
    iget-boolean p0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->writeLogs:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->downloader:Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/dcloudimageloader/core/decode/ImageDecoder;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->decoder:Lcom/nostra13/dcloudimageloader/core/decode/ImageDecoder;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)Z
    .registers 1

    .line 102
    iget-boolean p0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->customExecutor:Z

    return p0
.end method

.method static synthetic access$200(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)I
    .registers 1

    .line 102
    iget p0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForMemoryCache:I

    return p0
.end method

.method static synthetic access$2000(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)Z
    .registers 1

    .line 102
    iget-boolean p0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->customExecutorForCachedImages:Z

    return p0
.end method

.method static synthetic access$300(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)I
    .registers 1

    .line 102
    iget p0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForDiscCache:I

    return p0
.end method

.method static synthetic access$400(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)I
    .registers 1

    .line 102
    iget p0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForDiscCache:I

    return p0
.end method

.method static synthetic access$500(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)Landroid/graphics/Bitmap$CompressFormat;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->imageCompressFormatForDiscCache:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0
.end method

.method static synthetic access$600(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)I
    .registers 1

    .line 102
    iget p0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->imageQualityForDiscCache:I

    return p0
.end method

.method static synthetic access$700(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->processorForDiscCache:Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;

    return-object p0
.end method

.method static synthetic access$800(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)Ljava/util/concurrent/Executor;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$900(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;)Ljava/util/concurrent/Executor;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method private initEmptyFieldsWithDefaultValues()V
    .registers 5

    .line 334
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    if-nez v0, :cond_12

    .line 335
    iget v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    iget v2, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    iget-object v3, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lcom/nostra13/dcloudimageloader/core/assist/QueueProcessingType;

    invoke-static {v0, v2, v3}, Lcom/nostra13/dcloudimageloader/core/DefaultConfigurationFactory;->createExecutor(IILcom/nostra13/dcloudimageloader/core/assist/QueueProcessingType;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    goto :goto_14

    .line 337
    :cond_12
    iput-boolean v1, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->customExecutor:Z

    .line 340
    :goto_14
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_25

    .line 341
    iget v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    iget v1, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    iget-object v2, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lcom/nostra13/dcloudimageloader/core/assist/QueueProcessingType;

    invoke-static {v0, v1, v2}, Lcom/nostra13/dcloudimageloader/core/DefaultConfigurationFactory;->createExecutor(IILcom/nostra13/dcloudimageloader/core/assist/QueueProcessingType;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    goto :goto_27

    .line 343
    :cond_25
    iput-boolean v1, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->customExecutorForCachedImages:Z

    .line 346
    :goto_27
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->discCache:Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;

    if-nez v0, :cond_43

    .line 347
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileNameGenerator:Lcom/nostra13/dcloudimageloader/cache/disc/naming/FileNameGenerator;

    if-nez v0, :cond_35

    .line 348
    invoke-static {}, Lcom/nostra13/dcloudimageloader/core/DefaultConfigurationFactory;->createFileNameGenerator()Lcom/nostra13/dcloudimageloader/cache/disc/naming/FileNameGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileNameGenerator:Lcom/nostra13/dcloudimageloader/cache/disc/naming/FileNameGenerator;

    .line 351
    :cond_35
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileNameGenerator:Lcom/nostra13/dcloudimageloader/cache/disc/naming/FileNameGenerator;

    iget v2, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->discCacheSize:I

    iget v3, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileCount:I

    invoke-static {v0, v1, v2, v3}, Lcom/nostra13/dcloudimageloader/core/DefaultConfigurationFactory;->createDiscCache(Landroid/content/Context;Lcom/nostra13/dcloudimageloader/cache/disc/naming/FileNameGenerator;II)Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->discCache:Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;

    .line 354
    :cond_43
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;

    if-nez v0, :cond_4f

    .line 355
    iget v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize:I

    invoke-static {v0}, Lcom/nostra13/dcloudimageloader/core/DefaultConfigurationFactory;->createMemoryCache(I)Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;

    .line 358
    :cond_4f
    iget-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->denyCacheImageMultipleSizesInMemory:Z

    if-eqz v0, :cond_60

    .line 359
    new-instance v0, Lcom/nostra13/dcloudimageloader/cache/memory/impl/FuzzyKeyMemoryCache;

    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;

    invoke-static {}, Lcom/nostra13/dcloudimageloader/core/assist/MemoryCacheUtil;->createFuzzyKeyComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nostra13/dcloudimageloader/cache/memory/impl/FuzzyKeyMemoryCache;-><init>(Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;

    .line 362
    :cond_60
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->downloader:Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;

    if-nez v0, :cond_6c

    .line 363
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nostra13/dcloudimageloader/core/DefaultConfigurationFactory;->createImageDownloader(Landroid/content/Context;)Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->downloader:Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;

    .line 366
    :cond_6c
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->decoder:Lcom/nostra13/dcloudimageloader/core/decode/ImageDecoder;

    if-nez v0, :cond_78

    .line 367
    iget-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->writeLogs:Z

    invoke-static {v0}, Lcom/nostra13/dcloudimageloader/core/DefaultConfigurationFactory;->createImageDecoder(Z)Lcom/nostra13/dcloudimageloader/core/decode/ImageDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->decoder:Lcom/nostra13/dcloudimageloader/core/decode/ImageDecoder;

    .line 370
    :cond_78
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions:Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

    if-nez v0, :cond_82

    .line 371
    invoke-static {}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->createSimple()Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions:Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

    :cond_82
    return-void
.end method


# virtual methods
.method public build()Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;
    .registers 3

    .line 329
    invoke-direct {p0}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->initEmptyFieldsWithDefaultValues()V

    .line 330
    new-instance v0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;-><init>(Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$1;)V

    return-object v0
.end method

.method public defaultDisplayImageOptions(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;
    .registers 2

    .line 319
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions:Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

    return-object p0
.end method

.method public denyCacheImageMultipleSizesInMemory()Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;
    .registers 2

    const/4 v0, 0x1

    .line 210
    iput-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->denyCacheImageMultipleSizesInMemory:Z

    return-object p0
.end method

.method public discCache(Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;)Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;
    .registers 5

    .line 306
    iget v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->discCacheSize:I

    const/4 v1, 0x0

    if-gtz v0, :cond_9

    iget v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileCount:I

    if-lez v0, :cond_10

    .line 307
    :cond_9
    const-string v0, "discCache(), discCacheSize() and discCacheFileCount calls overlap each other"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/nostra13/dcloudimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    :cond_10
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileNameGenerator:Lcom/nostra13/dcloudimageloader/cache/disc/naming/FileNameGenerator;

    if-eqz v0, :cond_1b

    .line 311
    const-string v0, "discCache() and discCacheFileNameGenerator() calls overlap each other"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/dcloudimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    :cond_1b
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->discCache:Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;

    return-object p0
.end method

.method public discCacheExtraOptions(IILandroid/graphics/Bitmap$CompressFormat;ILcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;)Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;
    .registers 6

    .line 158
    iput p1, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForDiscCache:I

    .line 159
    iput p2, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForDiscCache:I

    .line 160
    iput-object p3, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->imageCompressFormatForDiscCache:Landroid/graphics/Bitmap$CompressFormat;

    .line 161
    iput p4, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->imageQualityForDiscCache:I

    .line 162
    iput-object p5, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->processorForDiscCache:Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;

    return-object p0
.end method

.method public discCacheFileCount(I)Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;
    .registers 5

    if-lez p1, :cond_17

    .line 276
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->discCache:Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    iget v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->discCacheSize:I

    if-lez v0, :cond_12

    .line 277
    :cond_b
    const-string v0, "discCache(), discCacheSize() and discCacheFileCount calls overlap each other"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/nostra13/dcloudimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    :cond_12
    iput v1, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->discCacheSize:I

    .line 281
    iput p1, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileCount:I

    return-object p0

    .line 274
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxFileCount must be a positive number"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public discCacheFileNameGenerator(Lcom/nostra13/dcloudimageloader/cache/disc/naming/FileNameGenerator;)Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;
    .registers 4

    .line 287
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->discCache:Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 288
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "discCache() and discCacheFileNameGenerator() calls overlap each other"

    invoke-static {v1, v0}, Lcom/nostra13/dcloudimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    :cond_c
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileNameGenerator:Lcom/nostra13/dcloudimageloader/cache/disc/naming/FileNameGenerator;

    return-object p0
.end method

.method public discCacheSize(I)Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;
    .registers 4

    if-lez p1, :cond_15

    .line 263
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->discCache:Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;

    if-nez v0, :cond_a

    iget v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileCount:I

    if-lez v0, :cond_12

    :cond_a
    const/4 v0, 0x0

    .line 264
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "discCache(), discCacheSize() and discCacheFileCount calls overlap each other"

    invoke-static {v1, v0}, Lcom/nostra13/dcloudimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    :cond_12
    iput p1, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->discCacheSize:I

    return-object p0

    .line 261
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxCacheSize must be a positive number"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public imageDecoder(Lcom/nostra13/dcloudimageloader/core/decode/ImageDecoder;)Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;
    .registers 2

    .line 301
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->decoder:Lcom/nostra13/dcloudimageloader/core/decode/ImageDecoder;

    return-object p0
.end method

.method public imageDownloader(Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;)Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;
    .registers 2

    .line 296
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->downloader:Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;

    return-object p0
.end method

.method public memoryCache(Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;)Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;
    .registers 4

    .line 251
    iget v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize:I

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 252
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "memoryCache() and memoryCacheSize() calls overlap each other"

    invoke-static {v1, v0}, Lcom/nostra13/dcloudimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    :cond_c
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;

    return-object p0
.end method

.method public memoryCacheExtraOptions(II)Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;
    .registers 3

    .line 152
    iput p1, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForMemoryCache:I

    .line 153
    iput p2, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForMemoryCache:I

    return-object p0
.end method

.method public memoryCacheSize(I)Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;
    .registers 4

    if-lez p1, :cond_11

    .line 227
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 228
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "memoryCache() and memoryCacheSize() calls overlap each other"

    invoke-static {v1, v0}, Lcom/nostra13/dcloudimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    :cond_e
    iput p1, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize:I

    return-object p0

    .line 225
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "memoryCacheSize must be a positive number"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public memoryCacheSizePercentage(I)Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;
    .registers 4

    if-lez p1, :cond_25

    const/16 v0, 0x64

    if-ge p1, v0, :cond_25

    .line 238
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    .line 239
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "memoryCache() and memoryCacheSize() calls overlap each other"

    invoke-static {v1, v0}, Lcom/nostra13/dcloudimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    :cond_12
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-float v0, v0

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    mul-float v0, v0, p1

    float-to-int p1, v0

    .line 243
    iput p1, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize:I

    return-object p0

    .line 246
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "availableMemoryPercent must be in range (0 < % < 100)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public taskExecutor(Ljava/util/concurrent/Executor;)Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;
    .registers 4

    .line 167
    iget v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    iget v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lcom/nostra13/dcloudimageloader/core/assist/QueueProcessingType;

    sget-object v1, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->DEFAULT_TASK_PROCESSING_TYPE:Lcom/nostra13/dcloudimageloader/core/assist/QueueProcessingType;

    if-eq v0, v1, :cond_19

    :cond_10
    const/4 v0, 0x0

    .line 168
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    invoke-static {v1, v0}, Lcom/nostra13/dcloudimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    :cond_19
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public taskExecutorForCachedImages(Ljava/util/concurrent/Executor;)Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;
    .registers 4

    .line 176
    iget v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    iget v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lcom/nostra13/dcloudimageloader/core/assist/QueueProcessingType;

    sget-object v1, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->DEFAULT_TASK_PROCESSING_TYPE:Lcom/nostra13/dcloudimageloader/core/assist/QueueProcessingType;

    if-eq v0, v1, :cond_19

    :cond_10
    const/4 v0, 0x0

    .line 177
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    invoke-static {v1, v0}, Lcom/nostra13/dcloudimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    :cond_19
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public tasksProcessingOrder(Lcom/nostra13/dcloudimageloader/core/assist/QueueProcessingType;)Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;
    .registers 4

    .line 215
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_11

    :cond_8
    const/4 v0, 0x0

    .line 216
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    invoke-static {v1, v0}, Lcom/nostra13/dcloudimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    :cond_11
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lcom/nostra13/dcloudimageloader/core/assist/QueueProcessingType;

    return-object p0
.end method

.method public threadPoolSize(I)Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;
    .registers 4

    .line 185
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_11

    :cond_8
    const/4 v0, 0x0

    .line 186
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    invoke-static {v1, v0}, Lcom/nostra13/dcloudimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    :cond_11
    iput p1, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    return-object p0
.end method

.method public threadPriority(I)Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;
    .registers 4

    .line 194
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_11

    :cond_8
    const/4 v0, 0x0

    .line 195
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    invoke-static {v1, v0}, Lcom/nostra13/dcloudimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    const/4 v0, 0x1

    if-ge p1, v0, :cond_17

    .line 199
    iput v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    return-object p0

    :cond_17
    const/16 v0, 0xa

    if-le p1, v0, :cond_1e

    .line 201
    iput v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    return-object p0

    .line 203
    :cond_1e
    iput p1, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    return-object p0
.end method

.method public writeDebugLogs()Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;
    .registers 2

    const/4 v0, 0x1

    .line 324
    iput-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration$Builder;->writeLogs:Z

    return-object p0
.end method
