###### Class com.facebook.imagepipeline.cache.CountingMemoryCacheInspector (com.facebook.imagepipeline.cache.CountingMemoryCacheInspector)
.class public final Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector;
.super Ljava/lang/Object;
.source "CountingMemoryCacheInspector.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfo;,
        Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfoEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u00020\u0003:\u0002\n\u000bB\u001b\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\tR\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector;",
        "K",
        "V",
        "",
        "countingBitmapCache",
        "Lcom/facebook/imagepipeline/cache/CountingMemoryCache;",
        "<init>",
        "(Lcom/facebook/imagepipeline/cache/CountingMemoryCache;)V",
        "dumpCacheContent",
        "Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfo;",
        "DumpInfoEntry",
        "DumpInfo",
        "imagepipeline-base_release"
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
.field private final countingBitmapCache:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/cache/CountingMemoryCache;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<",
            "TK;TV;>;)V"
        }
    .end annotation

    const-string v0, "countingBitmapCache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector;->countingBitmapCache:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;

    return-void
.end method


# virtual methods
.method public final dumpCacheContent()Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfo;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfo<",
            "TK;TV;>;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector;->countingBitmapCache:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;

    monitor-enter v0

    .line 86
    :try_start_3
    new-instance v1, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfo;

    .line 87
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector;->countingBitmapCache:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;

    invoke-interface {v2}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->getSizeInBytes()I

    move-result v2

    .line 88
    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector;->countingBitmapCache:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;

    invoke-interface {v3}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->getEvictionQueueSizeInBytes()I

    move-result v3

    .line 89
    iget-object v4, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector;->countingBitmapCache:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;

    invoke-interface {v4}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->getMemoryCacheParams()Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    move-result-object v4

    const-string v5, "getMemoryCacheParams(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfo;-><init>(IILcom/facebook/imagepipeline/cache/MemoryCacheParams;)V

    .line 90
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector;->countingBitmapCache:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;

    invoke-interface {v2}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->getCachedEntries()Lcom/facebook/imagepipeline/cache/CountingLruMap;

    move-result-object v2
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_9e

    if-nez v2, :cond_29

    monitor-exit v0

    return-object v1

    :cond_29
    const/4 v3, 0x0

    .line 92
    :try_start_2a
    invoke-virtual {v2, v3}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getMatchingEntries(Lcom/facebook/common/internal/Predicate;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "getMatchingEntries(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/util/List;

    .line 93
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 94
    new-instance v4, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfoEntry;

    iget-object v5, v3, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->key:Ljava/lang/Object;

    iget-object v6, v3, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->valueRef:Lcom/facebook/common/references/CloseableReference;

    invoke-direct {v4, v5, v6}, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfoEntry;-><init>(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;)V

    .line 95
    iget v3, v3, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->clientCount:I

    if-lez v3, :cond_5e

    .line 96
    iget-object v3, v1, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfo;->sharedEntries:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 98
    :cond_5e
    iget-object v3, v1, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfo;->lruEntries:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 101
    :cond_64
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector;->countingBitmapCache:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;

    invoke-interface {v2}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->getOtherEntries()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_9c

    .line 103
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_74
    :goto_74
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-eqz v3, :cond_74

    .line 104
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_74

    .line 105
    iget-object v4, v1, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfo;->otherEntries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9b
    .catchall {:try_start_2a .. :try_end_9b} :catchall_9e

    goto :goto_74

    .line 109
    :cond_9c
    monitor-exit v0

    return-object v1

    :catchall_9e
    move-exception v1

    monitor-exit v0

    throw v1
.end method

###### Class com.facebook.imagepipeline.cache.CountingMemoryCacheInspector.DumpInfo (com.facebook.imagepipeline.cache.CountingMemoryCacheInspector$DumpInfo)
.class public final Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfo;
.super Ljava/lang/Object;
.source "CountingMemoryCacheInspector.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DumpInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u0000*\u0004\u0008\u0002\u0010\u0001*\u0004\u0008\u0003\u0010\u00022\u00020\u0003B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0006\u0010\u0015\u001a\u00020\u0016R\u0010\u0010\u000b\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\u000e\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00100\u000f8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\u0011\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00100\u000f8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00030\u00138\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfo;",
        "K",
        "V",
        "",
        "size",
        "",
        "lruSize",
        "params",
        "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
        "<init>",
        "(IILcom/facebook/imagepipeline/cache/MemoryCacheParams;)V",
        "maxSize",
        "maxEntriesCount",
        "maxEntrySize",
        "lruEntries",
        "",
        "Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfoEntry;",
        "sharedEntries",
        "otherEntries",
        "",
        "Landroid/graphics/Bitmap;",
        "release",
        "",
        "imagepipeline-base_release"
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
.field public final lruEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfoEntry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field public final lruSize:I

.field public final maxEntriesCount:I

.field public final maxEntrySize:I

.field public final maxSize:I

.field public final otherEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final sharedEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfoEntry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field public final size:I


# direct methods
.method public constructor <init>(IILcom/facebook/imagepipeline/cache/MemoryCacheParams;)V
    .registers 5

    const-string v0, "params"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iget v0, p3, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxCacheSize:I

    iput v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfo;->maxSize:I

    .line 43
    iget v0, p3, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxCacheEntries:I

    iput v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfo;->maxEntriesCount:I

    .line 45
    iget p3, p3, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxCacheEntrySize:I

    iput p3, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfo;->maxEntrySize:I

    .line 68
    iput p1, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfo;->size:I

    .line 69
    iput p2, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfo;->lruSize:I

    .line 70
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfo;->lruEntries:Ljava/util/List;

    .line 71
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfo;->sharedEntries:Ljava/util/List;

    .line 72
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfo;->otherEntries:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final release()V
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfo;->lruEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfoEntry;

    .line 59
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfoEntry;->release()V

    goto :goto_6

    .line 61
    :cond_16
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfo;->sharedEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfoEntry;

    .line 62
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfoEntry;->release()V

    goto :goto_1c

    :cond_2c
    return-void
.end method

###### Class com.facebook.imagepipeline.cache.CountingMemoryCacheInspector.DumpInfoEntry (com.facebook.imagepipeline.cache.CountingMemoryCacheInspector$DumpInfoEntry)
.class public final Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfoEntry;
.super Ljava/lang/Object;
.source "CountingMemoryCacheInspector.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DumpInfoEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0018\u0000*\u0004\u0008\u0002\u0010\u0001*\u0004\u0008\u0003\u0010\u00022\u00020\u0003B\u001f\u0012\u0006\u0010\u0004\u001a\u00028\u0002\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00028\u0003\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0006\u0010\u000b\u001a\u00020\u000cR\u0012\u0010\u0004\u001a\u00028\u00028\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\tR\u0018\u0010\n\u001a\n\u0012\u0004\u0012\u00028\u0003\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfoEntry;",
        "K",
        "V",
        "",
        "key",
        "valueRef",
        "Lcom/facebook/common/references/CloseableReference;",
        "<init>",
        "(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;)V",
        "Ljava/lang/Object;",
        "value",
        "release",
        "",
        "imagepipeline-base_release"
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
.field public final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public final value:Lcom/facebook/common/references/CloseableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_e

    .line 34
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfoEntry;->key:Ljava/lang/Object;

    .line 35
    invoke-static {p2}, Lcom/facebook/common/references/CloseableReference;->cloneOrNull(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfoEntry;->value:Lcom/facebook/common/references/CloseableReference;

    return-void

    .line 34
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Required value was null."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final release()V
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCacheInspector$DumpInfoEntry;->value:Lcom/facebook/common/references/CloseableReference;

    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    return-void
.end method
