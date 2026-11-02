###### Class com.facebook.imagepipeline.producers.PostprocessedBitmapMemoryCacheProducer (com.facebook.imagepipeline.producers.PostprocessedBitmapMemoryCacheProducer)
.class public Lcom/facebook/imagepipeline/producers/PostprocessedBitmapMemoryCacheProducer;
.super Ljava/lang/Object;
.source "PostprocessedBitmapMemoryCacheProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/Producer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/PostprocessedBitmapMemoryCacheProducer$CachedPostprocessorConsumer;
    }
.end annotation

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
.field public static final PRODUCER_NAME:Ljava/lang/String; = "PostprocessedBitmapMemoryCacheProducer"

.field static final VALUE_FOUND:Ljava/lang/String; = "cached_value_found"


# instance fields
.field private final mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

.field private final mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;Lcom/facebook/imagepipeline/producers/Producer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/CacheKeyFactory;",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/PostprocessedBitmapMemoryCacheProducer;->mMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    .line 40
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/PostprocessedBitmapMemoryCacheProducer;->mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    .line 41
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/PostprocessedBitmapMemoryCacheProducer;->mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    return-void
.end method


# virtual methods
.method protected getProducerName()Ljava/lang/String;
    .registers 2

    .line 152
    const-string v0, "PostprocessedBitmapMemoryCacheProducer"

    return-object v0
.end method

.method public produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .registers 15
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

    .line 49
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getProducerListener()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v0

    .line 50
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    .line 51
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getCallerContext()Ljava/lang/Object;

    move-result-object v2

    .line 54
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getPostprocessor()Lcom/facebook/imagepipeline/request/Postprocessor;

    move-result-object v3

    if-eqz v3, :cond_9f

    .line 55
    invoke-interface {v3}, Lcom/facebook/imagepipeline/request/Postprocessor;->getPostprocessorCacheKey()Lcom/facebook/cache/common/CacheKey;

    move-result-object v4

    if-nez v4, :cond_1a

    goto/16 :goto_9f

    .line 59
    :cond_1a
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/PostprocessedBitmapMemoryCacheProducer;->getProducerName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, p2, v4}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerStart(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V

    .line 60
    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/PostprocessedBitmapMemoryCacheProducer;->mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    .line 61
    invoke-interface {v4, v1, v2}, Lcom/facebook/imagepipeline/cache/CacheKeyFactory;->getPostprocessedBitmapCacheKey(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;

    move-result-object v7

    .line 64
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    const/4 v2, 0x1

    .line 65
    invoke-virtual {v1, v2}, Lcom/facebook/imagepipeline/request/ImageRequest;->isCacheEnabled(I)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_3a

    .line 68
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PostprocessedBitmapMemoryCacheProducer;->mMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    invoke-interface {v1, v7}, Lcom/facebook/imagepipeline/cache/MemoryCache;->get(Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v1

    goto :goto_3b

    :cond_3a
    move-object v1, v4

    .line 70
    :goto_3b
    const-string v11, "cached_value_found"

    if-eqz v1, :cond_6f

    .line 73
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/PostprocessedBitmapMemoryCacheProducer;->getProducerName()Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/PostprocessedBitmapMemoryCacheProducer;->getProducerName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, p2, v5}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->requiresExtraMap(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 75
    const-string/jumbo v4, "true"

    invoke-static {v11, v4}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 71
    :cond_54
    invoke-interface {v0, p2, v3, v4}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerFinishWithSuccess(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    .line 77
    const-string v3, "PostprocessedBitmapMemoryCacheProducer"

    invoke-interface {v0, p2, v3, v2}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onUltimateProducerReached(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Z)V

    .line 78
    const-string v0, "memory_bitmap"

    const-string v3, "postprocessed"

    invoke-interface {p2, v0, v3}, Lcom/facebook/imagepipeline/producers/ProducerContext;->putOriginExtra(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 79
    invoke-interface {p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onProgressUpdate(F)V

    .line 80
    invoke-interface {p1, v1, v2}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V

    .line 81
    invoke-virtual {v1}, Lcom/facebook/common/references/CloseableReference;->close()V

    return-void

    .line 83
    :cond_6f
    instance-of v8, v3, Lcom/facebook/imagepipeline/request/RepeatedPostprocessor;

    .line 86
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    const/4 v2, 0x2

    .line 87
    invoke-virtual {v1, v2}, Lcom/facebook/imagepipeline/request/ImageRequest;->isCacheEnabled(I)Z

    move-result v10

    .line 88
    new-instance v5, Lcom/facebook/imagepipeline/producers/PostprocessedBitmapMemoryCacheProducer$CachedPostprocessorConsumer;

    iget-object v9, p0, Lcom/facebook/imagepipeline/producers/PostprocessedBitmapMemoryCacheProducer;->mMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    move-object v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/facebook/imagepipeline/producers/PostprocessedBitmapMemoryCacheProducer$CachedPostprocessorConsumer;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/cache/common/CacheKey;ZLcom/facebook/imagepipeline/cache/MemoryCache;Z)V

    .line 93
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/PostprocessedBitmapMemoryCacheProducer;->getProducerName()Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/PostprocessedBitmapMemoryCacheProducer;->getProducerName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->requiresExtraMap(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 95
    const-string v1, "false"

    invoke-static {v11, v1}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 91
    :cond_96
    invoke-interface {v0, p2, p1, v4}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerFinishWithSuccess(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    .line 97
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/PostprocessedBitmapMemoryCacheProducer;->mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    invoke-interface {p1, v5, p2}, Lcom/facebook/imagepipeline/producers/Producer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    return-void

    :cond_9f
    :goto_9f
    move-object v6, p1

    .line 56
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/PostprocessedBitmapMemoryCacheProducer;->mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    invoke-interface {p1, v6, p2}, Lcom/facebook/imagepipeline/producers/Producer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    return-void
.end method

###### Class com.facebook.imagepipeline.producers.PostprocessedBitmapMemoryCacheProducer.CachedPostprocessorConsumer (com.facebook.imagepipeline.producers.PostprocessedBitmapMemoryCacheProducer$CachedPostprocessorConsumer)
.class public Lcom/facebook/imagepipeline/producers/PostprocessedBitmapMemoryCacheProducer$CachedPostprocessorConsumer;
.super Lcom/facebook/imagepipeline/producers/DelegatingConsumer;
.source "PostprocessedBitmapMemoryCacheProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/PostprocessedBitmapMemoryCacheProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CachedPostprocessorConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/DelegatingConsumer<",
        "Lcom/facebook/common/references/CloseableReference<",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        ">;",
        "Lcom/facebook/common/references/CloseableReference<",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mCacheKey:Lcom/facebook/cache/common/CacheKey;

.field private final mIsBitmapCacheEnabledForWrite:Z

.field private final mIsRepeatedProcessor:Z

.field private final mMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/cache/common/CacheKey;ZLcom/facebook/imagepipeline/cache/MemoryCache;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;",
            "Lcom/facebook/cache/common/CacheKey;",
            "Z",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;Z)V"
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    .line 117
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/PostprocessedBitmapMemoryCacheProducer$CachedPostprocessorConsumer;->mCacheKey:Lcom/facebook/cache/common/CacheKey;

    .line 118
    iput-boolean p3, p0, Lcom/facebook/imagepipeline/producers/PostprocessedBitmapMemoryCacheProducer$CachedPostprocessorConsumer;->mIsRepeatedProcessor:Z

    .line 119
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/PostprocessedBitmapMemoryCacheProducer$CachedPostprocessorConsumer;->mMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    .line 120
    iput-boolean p5, p0, Lcom/facebook/imagepipeline/producers/PostprocessedBitmapMemoryCacheProducer$CachedPostprocessorConsumer;->mIsBitmapCacheEnabledForWrite:Z

    return-void
.end method


# virtual methods
.method protected onNewResultImpl(Lcom/facebook/common/references/CloseableReference;I)V
    .registers 6
    .param p1    # Lcom/facebook/common/references/CloseableReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_11

    .line 128
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/PostprocessedBitmapMemoryCacheProducer$CachedPostprocessorConsumer;->isLast(I)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 129
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/PostprocessedBitmapMemoryCacheProducer$CachedPostprocessorConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object p1

    invoke-interface {p1, v0, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V

    return-void

    .line 134
    :cond_11
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/PostprocessedBitmapMemoryCacheProducer$CachedPostprocessorConsumer;->isNotLast(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/producers/PostprocessedBitmapMemoryCacheProducer$CachedPostprocessorConsumer;->mIsRepeatedProcessor:Z

    if-nez v1, :cond_1c

    :cond_1b
    return-void

    .line 139
    :cond_1c
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/producers/PostprocessedBitmapMemoryCacheProducer$CachedPostprocessorConsumer;->mIsBitmapCacheEnabledForWrite:Z

    if-eqz v1, :cond_28

    .line 140
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessedBitmapMemoryCacheProducer$CachedPostprocessorConsumer;->mMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PostprocessedBitmapMemoryCacheProducer$CachedPostprocessorConsumer;->mCacheKey:Lcom/facebook/cache/common/CacheKey;

    invoke-interface {v0, v1, p1}, Lcom/facebook/imagepipeline/cache/MemoryCache;->cache(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    .line 143
    :cond_28
    :try_start_28
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/PostprocessedBitmapMemoryCacheProducer$CachedPostprocessorConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v1, v2}, Lcom/facebook/imagepipeline/producers/Consumer;->onProgressUpdate(F)V

    .line 144
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/PostprocessedBitmapMemoryCacheProducer$CachedPostprocessorConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v1

    if-eqz v0, :cond_38

    move-object p1, v0

    :cond_38
    invoke-interface {v1, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V
    :try_end_3b
    .catchall {:try_start_28 .. :try_end_3b} :catchall_3f

    .line 146
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    return-void

    :catchall_3f
    move-exception p1

    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 147
    throw p1
.end method

.method protected bridge synthetic onNewResultImpl(Ljava/lang/Object;I)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 101
    check-cast p1, Lcom/facebook/common/references/CloseableReference;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/PostprocessedBitmapMemoryCacheProducer$CachedPostprocessorConsumer;->onNewResultImpl(Lcom/facebook/common/references/CloseableReference;I)V

    return-void
.end method
