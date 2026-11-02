###### Class com.facebook.imagepipeline.animated.impl.AnimatedFrameCache (com.facebook.imagepipeline.animated.impl.AnimatedFrameCache)
.class public Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;
.super Ljava/lang/Object;
.source "AnimatedFrameCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;
    }
.end annotation


# instance fields
.field private final mBackingCache:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntryStateObserver:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver<",
            "Lcom/facebook/cache/common/CacheKey;",
            ">;"
        }
    .end annotation
.end field

.field private final mFreeItemsPool:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/facebook/cache/common/CacheKey;",
            ">;"
        }
    .end annotation
.end field

.field private final mImageCacheKey:Lcom/facebook/cache/common/CacheKey;


# direct methods
.method public constructor <init>(Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/cache/CountingMemoryCache;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;)V"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;->mImageCacheKey:Lcom/facebook/cache/common/CacheKey;

    .line 95
    iput-object p2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;->mBackingCache:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;

    .line 96
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;->mFreeItemsPool:Ljava/util/LinkedHashSet;

    .line 97
    new-instance p1, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$1;

    invoke-direct {p1, p0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$1;-><init>(Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;)V

    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;->mEntryStateObserver:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    return-void
.end method

.method private keyFor(I)Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;
    .registers 4

    .line 178
    new-instance v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;->mImageCacheKey:Lcom/facebook/cache/common/CacheKey;

    invoke-direct {v0, v1, p1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;-><init>(Lcom/facebook/cache/common/CacheKey;I)V

    return-object v0
.end method

.method private declared-synchronized popFirstFreeItemKey()Lcom/facebook/cache/common/CacheKey;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 169
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;->mFreeItemsPool:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 170
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 171
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/cache/common/CacheKey;

    .line 172
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1a

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    .line 174
    :goto_18
    monitor-exit p0

    return-object v1

    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method


# virtual methods
.method public cache(ILcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;->mBackingCache:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;->keyFor(I)Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;

    move-result-object p1

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;->mEntryStateObserver:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    invoke-interface {v0, p1, p2, v1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->cache(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    return-object p1
.end method

.method public contains(I)Z
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;->mBackingCache:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;->keyFor(I)Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)Lcom/facebook/common/references/CloseableReference;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;->mBackingCache:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;->keyFor(I)Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->get(Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    return-object p1
.end method

.method public getForReuse()Lcom/facebook/common/references/CloseableReference;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;->popFirstFreeItemKey()Lcom/facebook/cache/common/CacheKey;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 159
    :cond_8
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;->mBackingCache:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->reuse(Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0
.end method

.method public declared-synchronized onReusabilityChange(Lcom/facebook/cache/common/CacheKey;Z)V
    .registers 3

    monitor-enter p0

    if-eqz p2, :cond_9

    .line 108
    :try_start_3
    iget-object p2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;->mFreeItemsPool:Ljava/util/LinkedHashSet;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 110
    :cond_9
    iget-object p2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;->mFreeItemsPool:Ljava/util/LinkedHashSet;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 112
    :goto_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p1
.end method

###### Class com.facebook.imagepipeline.animated.impl.AnimatedFrameCache.AnonymousClass1 (com.facebook.imagepipeline.animated.impl.AnimatedFrameCache$1)
.class Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$1;
.super Ljava/lang/Object;
.source "AnimatedFrameCache.java"

# interfaces
.implements Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;-><init>(Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/cache/CountingMemoryCache;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver<",
        "Lcom/facebook/cache/common/CacheKey;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$1;->this$0:Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExclusivityChanged(Lcom/facebook/cache/common/CacheKey;Z)V
    .registers 4

    .line 101
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$1;->this$0:Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;->onReusabilityChange(Lcom/facebook/cache/common/CacheKey;Z)V

    return-void
.end method

.method public bridge synthetic onExclusivityChanged(Ljava/lang/Object;Z)V
    .registers 3

    .line 98
    check-cast p1, Lcom/facebook/cache/common/CacheKey;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$1;->onExclusivityChanged(Lcom/facebook/cache/common/CacheKey;Z)V

    return-void
.end method

###### Class com.facebook.imagepipeline.animated.impl.AnimatedFrameCache.FrameKey (com.facebook.imagepipeline.animated.impl.AnimatedFrameCache$FrameKey)
.class Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;
.super Ljava/lang/Object;
.source "AnimatedFrameCache.java"

# interfaces
.implements Lcom/facebook/cache/common/CacheKey;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FrameKey"
.end annotation


# instance fields
.field private final mFrameIndex:I

.field private final mImageCacheKey:Lcom/facebook/cache/common/CacheKey;


# direct methods
.method public constructor <init>(Lcom/facebook/cache/common/CacheKey;I)V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;->mImageCacheKey:Lcom/facebook/cache/common/CacheKey;

    .line 39
    iput p2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;->mFrameIndex:I

    return-void
.end method


# virtual methods
.method public containsUri(Landroid/net/Uri;)Z
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;->mImageCacheKey:Lcom/facebook/cache/common/CacheKey;

    invoke-interface {v0, p1}, Lcom/facebook/cache/common/CacheKey;->containsUri(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 55
    :cond_4
    instance-of v1, p1, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    .line 56
    check-cast p1, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;

    .line 57
    iget v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;->mFrameIndex:I

    iget v3, p1, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;->mFrameIndex:I

    if-ne v1, v3, :cond_1c

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;->mImageCacheKey:Lcom/facebook/cache/common/CacheKey;

    iget-object p1, p1, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;->mImageCacheKey:Lcom/facebook/cache/common/CacheKey;

    .line 58
    invoke-interface {v1, p1}, Lcom/facebook/cache/common/CacheKey;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    return v0

    :cond_1c
    return v2
.end method

.method public getUriString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;->mImageCacheKey:Lcom/facebook/cache/common/CacheKey;

    invoke-interface {v0}, Lcom/facebook/cache/common/CacheKey;->hashCode()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3f5

    iget v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;->mFrameIndex:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isResourceIdForDebugging()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 44
    invoke-static {p0}, Lcom/facebook/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "imageCacheKey"

    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;->mImageCacheKey:Lcom/facebook/cache/common/CacheKey;

    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "frameIndex"

    iget v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedFrameCache$FrameKey;->mFrameIndex:I

    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/facebook/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
