###### Class com.nostra13.dcloudimageloader.core.DefaultConfigurationFactory (com.nostra13.dcloudimageloader.core.DefaultConfigurationFactory)
.class public Lcom/nostra13/dcloudimageloader/core/DefaultConfigurationFactory;
.super Ljava/lang/Object;
.source "DefaultConfigurationFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/dcloudimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBitmapDisplayer()Lcom/nostra13/dcloudimageloader/core/display/BitmapDisplayer;
    .registers 1

    .line 98
    new-instance v0, Lcom/nostra13/dcloudimageloader/core/display/SimpleBitmapDisplayer;

    invoke-direct {v0}, Lcom/nostra13/dcloudimageloader/core/display/SimpleBitmapDisplayer;-><init>()V

    return-object v0
.end method

.method public static createDiscCache(Landroid/content/Context;Lcom/nostra13/dcloudimageloader/cache/disc/naming/FileNameGenerator;II)Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;
    .registers 4

    if-lez p2, :cond_c

    .line 54
    invoke-static {p0}, Lcom/nostra13/dcloudimageloader/utils/StorageUtils;->getIndividualCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 55
    new-instance p3, Lcom/nostra13/dcloudimageloader/cache/disc/impl/TotalSizeLimitedDiscCache;

    invoke-direct {p3, p0, p1, p2}, Lcom/nostra13/dcloudimageloader/cache/disc/impl/TotalSizeLimitedDiscCache;-><init>(Ljava/io/File;Lcom/nostra13/dcloudimageloader/cache/disc/naming/FileNameGenerator;I)V

    return-object p3

    :cond_c
    if-lez p3, :cond_18

    .line 57
    invoke-static {p0}, Lcom/nostra13/dcloudimageloader/utils/StorageUtils;->getIndividualCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 58
    new-instance p2, Lcom/nostra13/dcloudimageloader/cache/disc/impl/FileCountLimitedDiscCache;

    invoke-direct {p2, p0, p1, p3}, Lcom/nostra13/dcloudimageloader/cache/disc/impl/FileCountLimitedDiscCache;-><init>(Ljava/io/File;Lcom/nostra13/dcloudimageloader/cache/disc/naming/FileNameGenerator;I)V

    return-object p2

    .line 60
    :cond_18
    invoke-static {p0}, Lcom/nostra13/dcloudimageloader/utils/StorageUtils;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 61
    new-instance p2, Lcom/nostra13/dcloudimageloader/cache/disc/impl/UnlimitedDiscCache;

    invoke-direct {p2, p0, p1}, Lcom/nostra13/dcloudimageloader/cache/disc/impl/UnlimitedDiscCache;-><init>(Ljava/io/File;Lcom/nostra13/dcloudimageloader/cache/disc/naming/FileNameGenerator;)V

    return-object p2
.end method

.method public static createExecutor(IILcom/nostra13/dcloudimageloader/core/assist/QueueProcessingType;)Ljava/util/concurrent/Executor;
    .registers 11

    .line 42
    sget-object v0, Lcom/nostra13/dcloudimageloader/core/assist/QueueProcessingType;->LIFO:Lcom/nostra13/dcloudimageloader/core/assist/QueueProcessingType;

    if-ne p2, v0, :cond_a

    .line 43
    new-instance p2, Lcom/nostra13/dcloudimageloader/core/assist/deque/LIFOLinkedBlockingDeque;

    invoke-direct {p2}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LIFOLinkedBlockingDeque;-><init>()V

    goto :goto_f

    :cond_a
    new-instance p2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    :goto_f
    move-object v6, p2

    check-cast v6, Ljava/util/concurrent/BlockingQueue;

    .line 44
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/DefaultConfigurationFactory;->createThreadFactory(I)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const-wide/16 v3, 0x0

    move v2, p0

    move v1, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method public static createFileNameGenerator()Lcom/nostra13/dcloudimageloader/cache/disc/naming/FileNameGenerator;
    .registers 1

    .line 48
    new-instance v0, Lcom/nostra13/dcloudimageloader/cache/disc/naming/HashCodeFileNameGenerator;

    invoke-direct {v0}, Lcom/nostra13/dcloudimageloader/cache/disc/naming/HashCodeFileNameGenerator;-><init>()V

    return-object v0
.end method

.method public static createImageDecoder(Z)Lcom/nostra13/dcloudimageloader/core/decode/ImageDecoder;
    .registers 2

    .line 94
    new-instance v0, Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder;

    invoke-direct {v0, p0}, Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder;-><init>(Z)V

    return-object v0
.end method

.method public static createImageDownloader(Landroid/content/Context;)Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;
    .registers 2

    .line 90
    new-instance v0, Lcom/nostra13/dcloudimageloader/core/download/BaseImageDownloader;

    invoke-direct {v0, p0}, Lcom/nostra13/dcloudimageloader/core/download/BaseImageDownloader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static createMemoryCache(I)Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;
    .registers 5

    if-nez p0, :cond_e

    .line 76
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    long-to-int p0, v0

    .line 81
    :cond_e
    new-instance v0, Lcom/nostra13/dcloudimageloader/cache/memory/impl/LruMemoryCache;

    invoke-direct {v0, p0}, Lcom/nostra13/dcloudimageloader/cache/memory/impl/LruMemoryCache;-><init>(I)V

    .line 86
    check-cast v0, Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;

    return-object v0
.end method

.method public static createReserveDiscCache(Ljava/io/File;)Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;
    .registers 3

    .line 66
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "uil-images"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_14
    move-object p0, v0

    .line 71
    :cond_15
    new-instance v0, Lcom/nostra13/dcloudimageloader/cache/disc/impl/TotalSizeLimitedDiscCache;

    const/high16 v1, 0x200000

    invoke-direct {v0, p0, v1}, Lcom/nostra13/dcloudimageloader/cache/disc/impl/TotalSizeLimitedDiscCache;-><init>(Ljava/io/File;I)V

    return-object v0
.end method

.method private static createThreadFactory(I)Ljava/util/concurrent/ThreadFactory;
    .registers 2

    .line 102
    new-instance v0, Lcom/nostra13/dcloudimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;

    invoke-direct {v0, p0}, Lcom/nostra13/dcloudimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;-><init>(I)V

    return-object v0
.end method

###### Class com.nostra13.dcloudimageloader.core.DefaultConfigurationFactory.DefaultThreadFactory (com.nostra13.dcloudimageloader.core.DefaultConfigurationFactory$DefaultThreadFactory)
.class Lcom/nostra13/dcloudimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;
.super Ljava/lang/Object;
.source "DefaultConfigurationFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/dcloudimageloader/core/DefaultConfigurationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultThreadFactory"
.end annotation


# static fields
.field private static final poolNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final group:Ljava/lang/ThreadGroup;

.field private final namePrefix:Ljava/lang/String;

.field private final threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final threadPriority:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 106
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/nostra13/dcloudimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;->poolNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(I)V
    .registers 4

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;->threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 113
    iput p1, p0, Lcom/nostra13/dcloudimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;->threadPriority:I

    .line 114
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 115
    invoke-virtual {p1}, Ljava/lang/SecurityManager;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object p1

    goto :goto_20

    :cond_18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object p1

    :goto_20
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;->group:Ljava/lang/ThreadGroup;

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "uil-pool-"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/nostra13/dcloudimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;->poolNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-thread-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;->namePrefix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 8

    .line 120
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;->group:Ljava/lang/ThreadGroup;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nostra13/dcloudimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;->namePrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/nostra13/dcloudimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;->threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 121
    invoke-virtual {v0}, Ljava/lang/Thread;->isDaemon()Z

    move-result p1

    if-eqz p1, :cond_2b

    const/4 p1, 0x0

    .line 122
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 125
    :cond_2b
    iget p1, p0, Lcom/nostra13/dcloudimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;->threadPriority:I

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    return-object v0
.end method
