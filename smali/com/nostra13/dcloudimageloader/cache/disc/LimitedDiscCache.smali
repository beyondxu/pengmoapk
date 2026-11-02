###### Class com.nostra13.dcloudimageloader.cache.disc.LimitedDiscCache (com.nostra13.dcloudimageloader.cache.disc.LimitedDiscCache)
.class public abstract Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;
.super Lcom/nostra13/dcloudimageloader/cache/disc/BaseDiscCache;
.source "LimitedDiscCache.java"


# static fields
.field private static final INVALID_SIZE:I = -0x1


# instance fields
.field private final cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final lastUsageDates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/io/File;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final sizeLimit:I


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .registers 4

    .line 26
    invoke-static {}, Lcom/nostra13/dcloudimageloader/core/DefaultConfigurationFactory;->createFileNameGenerator()Lcom/nostra13/dcloudimageloader/cache/disc/naming/FileNameGenerator;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;-><init>(Ljava/io/File;Lcom/nostra13/dcloudimageloader/cache/disc/naming/FileNameGenerator;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/nostra13/dcloudimageloader/cache/disc/naming/FileNameGenerator;I)V
    .registers 4

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/nostra13/dcloudimageloader/cache/disc/BaseDiscCache;-><init>(Ljava/io/File;Lcom/nostra13/dcloudimageloader/cache/disc/naming/FileNameGenerator;)V

    .line 31
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    .line 32
    iput p3, p0, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->sizeLimit:I

    .line 33
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 34
    invoke-direct {p0}, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->calculateCacheSizeAndFillUsageMap()V

    return-void
.end method

.method static synthetic access$000(Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;)Ljava/util/Map;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private calculateCacheSizeAndFillUsageMap()V
    .registers 3

    .line 38
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache$1;

    invoke-direct {v1, p0}, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache$1;-><init>(Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 56
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private removeNext()I
    .registers 12

    .line 91
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, -0x1

    return v0

    .line 96
    :cond_a
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    .line 98
    monitor-enter v1

    .line 99
    :try_start_13
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 101
    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 102
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    if-nez v2, :cond_34

    .line 104
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 105
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    goto :goto_19

    .line 107
    :cond_34
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 108
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-gez v10, :cond_19

    .line 110
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    move-object v3, v5

    goto :goto_19

    .line 114
    :cond_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_13 .. :try_end_4f} :catchall_6e

    const/4 v0, 0x0

    if-eqz v2, :cond_6d

    .line 118
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 119
    invoke-virtual {p0, v2}, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->getSize(Ljava/io/File;)I

    move-result v0

    .line 120
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 121
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_67
    return v0

    .line 124
    :cond_68
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6d
    return v0

    :catchall_6e
    move-exception v0

    .line 114
    :try_start_6f
    monitor-exit v1
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw v0
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 86
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 87
    invoke-super {p0}, Lcom/nostra13/dcloudimageloader/cache/disc/BaseDiscCache;->clear()V

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 77
    invoke-super {p0, p1}, Lcom/nostra13/dcloudimageloader/cache/disc/BaseDiscCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 79
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 80
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method protected abstract getSize(Ljava/io/File;)I
.end method

.method public put(Ljava/lang/String;Ljava/io/File;)V
    .registers 5

    .line 60
    invoke-virtual {p0, p2}, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->getSize(Ljava/io/File;)I

    move-result p1

    .line 63
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    :goto_a
    add-int/2addr v0, p1

    iget v1, p0, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->sizeLimit:I

    if-le v0, v1, :cond_1f

    .line 64
    invoke-direct {p0}, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->removeNext()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    goto :goto_1f

    .line 63
    :cond_17
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v0, v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    goto :goto_a

    .line 70
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 73
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.nostra13.dcloudimageloader.cache.disc.LimitedDiscCache.AnonymousClass1 (com.nostra13.dcloudimageloader.cache.disc.LimitedDiscCache$1)
.class Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache$1;
.super Ljava/lang/Object;
.source "LimitedDiscCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->calculateCacheSizeAndFillUsageMap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;


# direct methods
.method constructor <init>(Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache$1;->this$0:Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 41
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache$1;->this$0:Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;

    iget-object v0, v0, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 44
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_d
    if-ge v2, v1, :cond_2c

    .line 47
    aget-object v4, v0, v2

    .line 48
    iget-object v5, p0, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache$1;->this$0:Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;

    invoke-virtual {v5, v4}, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->getSize(Ljava/io/File;)I

    move-result v5

    add-int/2addr v3, v5

    .line 49
    iget-object v5, p0, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache$1;->this$0:Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;

    invoke-static {v5}, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->access$000(Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 52
    :cond_2c
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache$1;->this$0:Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;

    invoke-static {v0}, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->access$100(Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_35
    return-void
.end method
