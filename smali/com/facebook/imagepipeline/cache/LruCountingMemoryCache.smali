###### Class com.facebook.imagepipeline.cache.LruCountingMemoryCache (com.facebook.imagepipeline.cache.LruCountingMemoryCache)
.class public Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;
.super Ljava/lang/Object;
.source "LruCountingMemoryCache.java"

# interfaces
.implements Lcom/facebook/imagepipeline/cache/CountingMemoryCache;
.implements Lcom/facebook/imagepipeline/cache/MemoryCache;
.implements Lcom/facebook/cache/common/HasDebugData;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<",
        "TK;TV;>;",
        "Lcom/facebook/imagepipeline/cache/MemoryCache<",
        "TK;TV;>;",
        "Lcom/facebook/cache/common/HasDebugData;"
    }
.end annotation


# instance fields
.field private final mCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

.field final mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/CountingLruMap<",
            "TK;",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final mEntryStateObserver:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/CountingLruMap<",
            "TK;",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final mIgnoreSizeMismatch:Z

.field private mLastCacheParamsCheck:J

.field protected mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

.field private final mMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;"
        }
    .end annotation
.end field

.field final mOtherEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mStoreEntrySize:Z

.field private final mValueDescriptor:Lcom/facebook/imagepipeline/cache/ValueDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/ValueDescriptor<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmStoreEntrySize(Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mStoreEntrySize:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mreleaseClientReference(Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->releaseClientReference(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/cache/ValueDescriptor;Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;Lcom/facebook/common/internal/Supplier;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;ZZ)V
    .registers 9
    .param p4    # Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/ValueDescriptor<",
            "TV;>;",
            "Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver<",
            "TK;>;ZZ)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mOtherEntries:Ljava/util/Map;

    .line 87
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mValueDescriptor:Lcom/facebook/imagepipeline/cache/ValueDescriptor;

    .line 88
    new-instance v0, Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->wrapValueDescriptor(Lcom/facebook/imagepipeline/cache/ValueDescriptor;)Lcom/facebook/imagepipeline/cache/ValueDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;-><init>(Lcom/facebook/imagepipeline/cache/ValueDescriptor;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    .line 89
    new-instance v0, Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->wrapValueDescriptor(Lcom/facebook/imagepipeline/cache/ValueDescriptor;)Lcom/facebook/imagepipeline/cache/ValueDescriptor;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;-><init>(Lcom/facebook/imagepipeline/cache/ValueDescriptor;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    .line 90
    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

    .line 91
    iput-object p3, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;

    .line 94
    invoke-interface {p3}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    const-string p2, "mMemoryCacheParamsSupplier returned null"

    .line 93
    invoke-static {p1, p2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    .line 95
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mLastCacheParamsCheck:J

    .line 96
    iput-object p4, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mEntryStateObserver:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    .line 97
    iput-boolean p5, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mStoreEntrySize:Z

    .line 98
    iput-boolean p6, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mIgnoreSizeMismatch:Z

    return-void
.end method

.method private declared-synchronized canCacheNewValueOfSize(I)Z
    .registers 5

    monitor-enter p0

    .line 181
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget v0, v0, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxCacheEntrySize:I

    if-gt p1, v0, :cond_1f

    .line 182
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->getInUseCount()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget v1, v1, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxCacheEntries:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1f

    .line 183
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->getInUseSizeInBytes()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget v1, v1, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxCacheSize:I
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_22

    sub-int/2addr v1, p1

    if-gt v0, v1, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    .line 181
    :goto_20
    monitor-exit p0

    return v2

    :catchall_22
    move-exception p1

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p1
.end method

.method private declared-synchronized decreaseClientCount(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 521
    :try_start_1
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    iget v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->clientCount:I

    const/4 v1, 0x1

    if-lez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 523
    iget v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->clientCount:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->clientCount:I
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 524
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p1
.end method

.method private declared-synchronized increaseClientCount(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 514
    :try_start_1
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->isOrphan:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 516
    iget v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->clientCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->clientCount:I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 517
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p1
.end method

.method private declared-synchronized makeOrphan(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 507
    :try_start_1
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->isOrphan:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 509
    iput-boolean v1, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->isOrphan:Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 510
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method

.method private declared-synchronized makeOrphans(Ljava/util/ArrayList;)V
    .registers 3
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_1a

    .line 499
    :try_start_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 500
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->makeOrphan(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    goto :goto_7

    :catchall_17
    move-exception p1

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1

    .line 503
    :cond_1a
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized maybeAddToExclusives(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 265
    :try_start_1
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->isOrphan:Z

    if-nez v0, :cond_13

    iget v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->clientCount:I

    if-nez v0, :cond_13

    .line 266
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    iget-object v1, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_16

    .line 267
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 269
    :cond_13
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_16
    move-exception p1

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p1
.end method

.method private maybeClose(Ljava/util/ArrayList;)V
    .registers 3
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1a

    .line 470
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 471
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->referenceToClose(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    goto :goto_6

    :cond_1a
    return-void
.end method

.method private static maybeNotifyExclusiveEntryInsertion(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V
    .registers 3
    .param p0    # Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_e

    .line 491
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->observer:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    if-eqz v0, :cond_e

    .line 492
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->observer:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    iget-object p0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->key:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;->onExclusivityChanged(Ljava/lang/Object;Z)V

    :cond_e
    return-void
.end method

.method private static maybeNotifyExclusiveEntryRemoval(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V
    .registers 3
    .param p0    # Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_e

    .line 485
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->observer:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    if-eqz v0, :cond_e

    .line 486
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->observer:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    iget-object p0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->key:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;->onExclusivityChanged(Ljava/lang/Object;Z)V

    :cond_e
    return-void
.end method

.method private maybeNotifyExclusiveEntryRemoval(Ljava/util/ArrayList;)V
    .registers 3
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_16

    .line 478
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 479
    invoke-static {v0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeNotifyExclusiveEntryRemoval(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private declared-synchronized maybeUpdateCacheParams()V
    .registers 6

    monitor-enter p0

    .line 379
    :try_start_1
    iget-wide v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mLastCacheParamsCheck:J

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget-wide v2, v2, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->paramsCheckIntervalMs:J

    add-long/2addr v0, v2

    .line 380
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_2c

    cmp-long v4, v0, v2

    if-lez v4, :cond_12

    .line 381
    monitor-exit p0

    return-void

    .line 383
    :cond_12
    :try_start_12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mLastCacheParamsCheck:J

    .line 384
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;

    .line 386
    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    const-string v1, "mMemoryCacheParamsSupplier returned null"

    .line 385
    invoke-static {v0, v1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_2c

    .line 387
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method private declared-synchronized newClientReference(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Lcom/facebook/common/references/CloseableReference;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;"
        }
    .end annotation

    monitor-enter p0

    .line 236
    :try_start_1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->increaseClientCount(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 237
    iget-object v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->valueRef:Lcom/facebook/common/references/CloseableReference;

    .line 238
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache$2;

    invoke-direct {v1, p0, p1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache$2;-><init>(Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 237
    invoke-static {v0, v1}, Lcom/facebook/common/references/CloseableReference;->of(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object p1

    :catchall_15
    move-exception p1

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p1
.end method

.method private declared-synchronized referenceToClose(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Lcom/facebook/common/references/CloseableReference;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 529
    :try_start_1
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->isOrphan:Z

    if-eqz v0, :cond_f

    iget v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->clientCount:I

    if-nez v0, :cond_f

    iget-object p1, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->valueRef:Lcom/facebook/common/references/CloseableReference;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_12

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    monitor-exit p0

    return-object p1

    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p1
.end method

.method private releaseClientReference(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 249
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    monitor-enter p0

    .line 253
    :try_start_4
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->decreaseClientCount(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 254
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeAddToExclusives(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Z

    move-result v0

    .line 255
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->referenceToClose(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v1

    .line 256
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_21

    .line 257
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    if-eqz v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    .line 258
    :goto_17
    invoke-static {p1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeNotifyExclusiveEntryInsertion(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 259
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeUpdateCacheParams()V

    .line 260
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeEvictEntries()V

    return-void

    :catchall_21
    move-exception p1

    .line 256
    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p1
.end method

.method private declared-synchronized trimExclusivelyOwnedEntries(II)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 437
    :try_start_2
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 438
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 440
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getCount()I

    move-result v1

    if-gt v1, p1, :cond_1d

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getSizeInBytes()I

    move-result v1
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_7e

    if-gt v1, p2, :cond_1d

    .line 441
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    .line 443
    :cond_1d
    :try_start_1d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 444
    :goto_22
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getCount()I

    move-result v2

    if-gt v2, p1, :cond_32

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getSizeInBytes()I

    move-result v2

    if-le v2, p2, :cond_43

    .line 445
    :cond_32
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getFirstKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6d

    .line 447
    iget-boolean p1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mIgnoreSizeMismatch:Z

    if-eqz p1, :cond_45

    .line 448
    iget-object p1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->resetSize()V
    :try_end_43
    .catchall {:try_start_1d .. :try_end_43} :catchall_7e

    .line 459
    :cond_43
    monitor-exit p0

    return-object v1

    .line 451
    :cond_45
    :try_start_45
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "key is null, but exclusiveEntries count: %d, size: %d"

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    .line 454
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getSizeInBytes()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    const/4 v0, 0x1

    aput-object v2, v3, v0

    .line 452
    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 456
    :cond_6d
    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v3, v2}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v3, v2}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :catchall_7e
    move-exception p1

    monitor-exit p0
    :try_end_80
    .catchall {:try_start_45 .. :try_end_80} :catchall_7e

    throw p1
.end method

.method private wrapValueDescriptor(Lcom/facebook/imagepipeline/cache/ValueDescriptor;)Lcom/facebook/imagepipeline/cache/ValueDescriptor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/ValueDescriptor<",
            "TV;>;)",
            "Lcom/facebook/imagepipeline/cache/ValueDescriptor<",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 103
    new-instance v0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache$1;-><init>(Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;Lcom/facebook/imagepipeline/cache/ValueDescriptor;)V

    return-object v0
.end method


# virtual methods
.method public cache(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mEntryStateObserver:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->cache(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    return-object p1
.end method

.method public cache(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;)Lcom/facebook/common/references/CloseableReference;
    .registers 9
    .param p3    # Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver<",
            "TK;>;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 139
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static {p2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeUpdateCacheParams()V

    .line 147
    monitor-enter p0

    .line 149
    :try_start_a
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 150
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    .line 152
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->makeOrphan(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 153
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->referenceToClose(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v1

    goto :goto_26

    :cond_25
    move-object v1, v2

    .line 156
    :goto_26
    invoke-virtual {p2}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v3

    .line 157
    iget-object v4, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mValueDescriptor:Lcom/facebook/imagepipeline/cache/ValueDescriptor;

    invoke-interface {v4, v3}, Lcom/facebook/imagepipeline/cache/ValueDescriptor;->getSizeInBytes(Ljava/lang/Object;)I

    move-result v3

    .line 158
    invoke-direct {p0, v3}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->canCacheNewValueOfSize(I)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 160
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mStoreEntrySize:Z

    if-eqz v2, :cond_3f

    .line 161
    invoke-static {p1, p2, v3, p3}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->of(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;ILcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;)Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    move-result-object p2

    goto :goto_43

    .line 163
    :cond_3f
    invoke-static {p1, p2, p3}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->of(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;)Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    move-result-object p2

    .line 165
    :goto_43
    iget-object p3, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {p3, p1, p2}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->newClientReference(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v2

    .line 168
    :cond_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_a .. :try_end_4d} :catchall_57

    .line 169
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 170
    invoke-static {v0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeNotifyExclusiveEntryRemoval(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 172
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeEvictEntries()V

    return-object v2

    :catchall_57
    move-exception p1

    .line 168
    :try_start_58
    monitor-exit p0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw p1
.end method

.method public clear()V
    .registers 3

    .line 328
    monitor-enter p0

    .line 329
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->clear()Ljava/util/ArrayList;

    move-result-object v0

    .line 330
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->clear()Ljava/util/ArrayList;

    move-result-object v1

    .line 331
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->makeOrphans(Ljava/util/ArrayList;)V

    .line 332
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1b

    .line 333
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeClose(Ljava/util/ArrayList;)V

    .line 334
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeNotifyExclusiveEntryRemoval(Ljava/util/ArrayList;)V

    .line 335
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeUpdateCacheParams()V

    return-void

    :catchall_1b
    move-exception v0

    .line 332
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public declared-synchronized contains(Lcom/facebook/common/internal/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Predicate<",
            "TK;>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 346
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getMatchingEntries(Lcom/facebook/common/internal/Predicate;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_f

    xor-int/lit8 p1, p1, 0x1

    monitor-exit p0

    return p1

    :catchall_f
    move-exception p1

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public declared-synchronized contains(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 357
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return p1

    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public get(Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 193
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    monitor-enter p0

    .line 197
    :try_start_4
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 198
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    if-eqz p1, :cond_1b

    .line 200
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->newClientReference(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    .line 202
    :goto_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_27

    .line 203
    invoke-static {v0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeNotifyExclusiveEntryRemoval(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 204
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeUpdateCacheParams()V

    .line 205
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeEvictEntries()V

    return-object p1

    :catchall_27
    move-exception p1

    .line 202
    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p1
.end method

.method public getCachedEntries()Lcom/facebook/imagepipeline/cache/CountingLruMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/CountingLruMap<",
            "TK;",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    return-object v0
.end method

.method public declared-synchronized getCount()I
    .registers 2

    monitor-enter p0

    .line 536
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getCount()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized getDebugData()Ljava/lang/String;
    .registers 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 570
    :try_start_1
    const-string v0, "CountingMemoryCache"

    invoke-static {v0}, Lcom/facebook/common/internal/Objects;->toStringHelper(Ljava/lang/String;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "cached_entries_count"

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    .line 571
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "cached_entries_size_bytes"

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    .line 572
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getSizeInBytes()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "exclusive_entries_count"

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    .line 573
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "exclusive_entries_size_bytes"

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    .line 574
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getSizeInBytes()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 575
    invoke-virtual {v0}, Lcom/facebook/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_3d

    .line 570
    monitor-exit p0

    return-object v0

    :catchall_3d
    move-exception v0

    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method public declared-synchronized getEvictionQueueCount()I
    .registers 2

    monitor-enter p0

    .line 559
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getCount()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized getEvictionQueueSizeInBytes()I
    .registers 2

    monitor-enter p0

    .line 565
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getSizeInBytes()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized getInUseCount()I
    .registers 3

    monitor-enter p0

    .line 547
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getCount()I

    move-result v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public declared-synchronized getInUseSizeInBytes()I
    .registers 3

    monitor-enter p0

    .line 553
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getSizeInBytes()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getSizeInBytes()I

    move-result v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public getMemoryCacheParams()Lcom/facebook/imagepipeline/cache/MemoryCacheParams;
    .registers 2

    .line 390
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    return-object v0
.end method

.method public getOtherEntries()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mOtherEntries:Ljava/util/Map;

    return-object v0
.end method

.method public declared-synchronized getSizeInBytes()I
    .registers 2

    monitor-enter p0

    .line 542
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getSizeInBytes()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized inspect(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 211
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_16

    if-nez p1, :cond_e

    .line 213
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    .line 215
    :cond_e
    :try_start_e
    iget-object p1, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->valueRef:Lcom/facebook/common/references/CloseableReference;

    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object p1

    :catchall_16
    move-exception p1

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public maybeEvictEntries()V
    .registers 5

    .line 412
    monitor-enter p0

    .line 413
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget v0, v0, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxEvictionQueueEntries:I

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget v1, v1, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxCacheEntries:I

    .line 416
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->getInUseCount()I

    move-result v2

    sub-int/2addr v1, v2

    .line 414
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 417
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget v1, v1, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxEvictionQueueSize:I

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget v2, v2, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxCacheSize:I

    .line 420
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->getInUseSizeInBytes()I

    move-result v3

    sub-int/2addr v2, v3

    .line 418
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 421
    invoke-direct {p0, v0, v1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->trimExclusivelyOwnedEntries(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 422
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->makeOrphans(Ljava/util/ArrayList;)V

    .line 423
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_32

    .line 424
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeClose(Ljava/util/ArrayList;)V

    .line 425
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeNotifyExclusiveEntryRemoval(Ljava/util/ArrayList;)V

    return-void

    :catchall_32
    move-exception v0

    .line 423
    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0
.end method

.method public probe(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 224
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    monitor-enter p0

    .line 227
    :try_start_4
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    if-eqz v0, :cond_13

    .line 229
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v1, p1, v0}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_13
    monitor-exit p0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public removeAll(Lcom/facebook/common/internal/Predicate;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Predicate<",
            "TK;>;)I"
        }
    .end annotation

    .line 311
    monitor-enter p0

    .line 312
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->removeAll(Lcom/facebook/common/internal/Predicate;)Ljava/util/ArrayList;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->removeAll(Lcom/facebook/common/internal/Predicate;)Ljava/util/ArrayList;

    move-result-object p1

    .line 314
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->makeOrphans(Ljava/util/ArrayList;)V

    .line 315
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_22

    .line 316
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeClose(Ljava/util/ArrayList;)V

    .line 317
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeNotifyExclusiveEntryRemoval(Ljava/util/ArrayList;)V

    .line 318
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeUpdateCacheParams()V

    .line 319
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeEvictEntries()V

    .line 320
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1

    :catchall_22
    move-exception p1

    .line 315
    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public reuse(Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 280
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    monitor-enter p0

    .line 285
    :try_start_4
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    .line 287
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v2, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 288
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget v2, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->clientCount:I

    const/4 v3, 0x1

    if-nez v2, :cond_20

    const/4 v1, 0x1

    :cond_20
    invoke-static {v1}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 292
    iget-object p1, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->valueRef:Lcom/facebook/common/references/CloseableReference;

    const/4 v1, 0x1

    goto :goto_28

    :cond_27
    const/4 p1, 0x0

    .line 295
    :goto_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_2f

    if-eqz v1, :cond_2e

    .line 297
    invoke-static {v0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeNotifyExclusiveEntryRemoval(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    :cond_2e
    return-object p1

    :catchall_2f
    move-exception p1

    .line 295
    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public trim(Lcom/facebook/common/memory/MemoryTrimType;)V
    .registers 8

    .line 364
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;->getTrimRatio(Lcom/facebook/common/memory/MemoryTrimType;)D

    move-result-wide v0

    .line 365
    monitor-enter p0

    .line 366
    :try_start_7
    iget-object p1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getSizeInBytes()I

    move-result p1

    int-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v0

    mul-double v2, v2, v4

    double-to-int p1, v2

    .line 367
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->getInUseSizeInBytes()I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const v0, 0x7fffffff

    .line 368
    invoke-direct {p0, v0, p1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->trimExclusivelyOwnedEntries(II)Ljava/util/ArrayList;

    move-result-object p1

    .line 369
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->makeOrphans(Ljava/util/ArrayList;)V

    .line 370
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_36

    .line 371
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeClose(Ljava/util/ArrayList;)V

    .line 372
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeNotifyExclusiveEntryRemoval(Ljava/util/ArrayList;)V

    .line 373
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeUpdateCacheParams()V

    .line 374
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeEvictEntries()V

    return-void

    :catchall_36
    move-exception p1

    .line 370
    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p1
.end method

###### Class com.facebook.imagepipeline.cache.LruCountingMemoryCache.AnonymousClass1 (com.facebook.imagepipeline.cache.LruCountingMemoryCache$1)
.class Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache$1;
.super Ljava/lang/Object;
.source "LruCountingMemoryCache.java"

# interfaces
.implements Lcom/facebook/imagepipeline/cache/ValueDescriptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->wrapValueDescriptor(Lcom/facebook/imagepipeline/cache/ValueDescriptor;)Lcom/facebook/imagepipeline/cache/ValueDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/cache/ValueDescriptor<",
        "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;

.field final synthetic val$evictableValueDescriptor:Lcom/facebook/imagepipeline/cache/ValueDescriptor;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;Lcom/facebook/imagepipeline/cache/ValueDescriptor;)V
    .registers 3

    .line 103
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache$1;->this$0:Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;

    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache$1;->val$evictableValueDescriptor:Lcom/facebook/imagepipeline/cache/ValueDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSizeInBytes(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;)I"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache$1;->this$0:Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;

    invoke-static {v0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->-$$Nest$fgetmStoreEntrySize(Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 107
    iget p1, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->size:I

    return p1

    .line 109
    :cond_b
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache$1;->val$evictableValueDescriptor:Lcom/facebook/imagepipeline/cache/ValueDescriptor;

    iget-object p1, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->valueRef:Lcom/facebook/common/references/CloseableReference;

    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/ValueDescriptor;->getSizeInBytes(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getSizeInBytes(Ljava/lang/Object;)I
    .registers 2

    .line 103
    check-cast p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache$1;->getSizeInBytes(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)I

    move-result p1

    return p1
.end method

###### Class com.facebook.imagepipeline.cache.LruCountingMemoryCache.AnonymousClass2 (com.facebook.imagepipeline.cache.LruCountingMemoryCache$2)
.class Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache$2;
.super Ljava/lang/Object;
.source "LruCountingMemoryCache.java"

# interfaces
.implements Lcom/facebook/common/references/ResourceReleaser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->newClientReference(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Lcom/facebook/common/references/CloseableReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/references/ResourceReleaser<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;

.field final synthetic val$entry:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V
    .registers 3

    .line 239
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache$2;->this$0:Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;

    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache$2;->val$entry:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public release(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 242
    iget-object p1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache$2;->this$0:Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache$2;->val$entry:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    invoke-static {p1, v0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->-$$Nest$mreleaseClientReference(Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    return-void
.end method
