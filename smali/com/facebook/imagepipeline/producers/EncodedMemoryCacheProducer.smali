###### Class com.facebook.imagepipeline.producers.EncodedMemoryCacheProducer (com.facebook.imagepipeline.producers.EncodedMemoryCacheProducer)
.class public Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer;
.super Ljava/lang/Object;
.source "EncodedMemoryCacheProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/Producer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer$EncodedMemoryCacheConsumer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/Producer<",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        ">;"
    }
.end annotation


# static fields
.field public static final EXTRA_CACHED_VALUE_FOUND:Ljava/lang/String; = "cached_value_found"

.field public static final PRODUCER_NAME:Ljava/lang/String; = "EncodedMemoryCacheProducer"


# instance fields
.field private final mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

.field private final mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;"
        }
    .end annotation
.end field

.field private final mMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
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
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/CacheKeyFactory;",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer;->mMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    .line 40
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer;->mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    .line 41
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer;->mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    return-void
.end method


# virtual methods
.method public produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")V"
        }
    .end annotation

    .line 48
    const-string v0, "EncodedMemoryCacheProducer"

    :try_start_2
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 49
    const-string v1, "EncodedMemoryCacheProducer#produceResults"

    invoke-static {v1}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 51
    :cond_d
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getProducerListener()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v1

    .line 52
    invoke-interface {v1, p2, v0}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerStart(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V

    .line 53
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v2

    .line 54
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer;->mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    .line 55
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getCallerContext()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/facebook/imagepipeline/cache/CacheKeyFactory;->getEncodedCacheKey(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;

    move-result-object v8

    .line 58
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v2

    const/4 v3, 0x4

    .line 59
    invoke-virtual {v2, v3}, Lcom/facebook/imagepipeline/request/ImageRequest;->isCacheEnabled(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_35

    .line 61
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer;->mMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    invoke-interface {v2, v8}, Lcom/facebook/imagepipeline/cache/MemoryCache;->get(Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v2
    :try_end_34
    .catchall {:try_start_2 .. :try_end_34} :catchall_f3

    goto :goto_36

    :cond_35
    move-object v2, v3

    .line 63
    :goto_36
    const-string v4, "memory_encoded"

    const/4 v5, 0x1

    const-string v11, "cached_value_found"

    if-eqz v2, :cond_76

    .line 64
    :try_start_3d
    new-instance v6, Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-direct {v6, v2}, Lcom/facebook/imagepipeline/image/EncodedImage;-><init>(Lcom/facebook/common/references/CloseableReference;)V
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_ed

    .line 69
    :try_start_42
    invoke-interface {v1, p2, v0}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->requiresExtraMap(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 70
    const-string/jumbo v3, "true"

    invoke-static {v11, v3}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 66
    :cond_4f
    invoke-interface {v1, p2, v0, v3}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerFinishWithSuccess(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    .line 72
    invoke-interface {v1, p2, v0, v5}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onUltimateProducerReached(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Z)V

    .line 73
    invoke-interface {p2, v4}, Lcom/facebook/imagepipeline/producers/ProducerContext;->putOriginExtra(Ljava/lang/String;)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 74
    invoke-interface {p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onProgressUpdate(F)V

    .line 75
    invoke-interface {p1, v6, v5}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V
    :try_end_60
    .catchall {:try_start_42 .. :try_end_60} :catchall_70

    .line 78
    :try_start_60
    invoke-static {v6}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_ed

    .line 114
    :try_start_63
    invoke-static {v2}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_f3

    .line 117
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_ec

    .line 118
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    return-void

    :catchall_70
    move-exception v0

    move-object p1, v0

    .line 78
    :try_start_72
    invoke-static {v6}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 79
    throw p1

    .line 82
    :cond_76
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getLowestPermittedRequestLevel()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getValue()I

    move-result v6

    sget-object v7, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->ENCODED_MEMORY_CACHE:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 83
    invoke-virtual {v7}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getValue()I

    move-result v7
    :try_end_84
    .catchall {:try_start_72 .. :try_end_84} :catchall_ed

    const-string v12, "false"

    if-lt v6, v7, :cond_b0

    .line 87
    :try_start_88
    invoke-interface {v1, p2, v0}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->requiresExtraMap(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_93

    .line 88
    invoke-static {v11, v12}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    goto :goto_94

    :cond_93
    move-object v6, v3

    .line 84
    :goto_94
    invoke-interface {v1, p2, v0, v6}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerFinishWithSuccess(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v6, 0x0

    .line 90
    invoke-interface {v1, p2, v0, v6}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onUltimateProducerReached(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Z)V

    .line 91
    const-string v0, "nil-result"

    invoke-interface {p2, v4, v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->putOriginExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-interface {p1, v3, v5}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V
    :try_end_a3
    .catchall {:try_start_88 .. :try_end_a3} :catchall_ed

    .line 114
    :try_start_a3
    invoke-static {v2}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_f3

    .line 117
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_ec

    .line 118
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    return-void

    .line 96
    :cond_b0
    :try_start_b0
    new-instance v5, Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer$EncodedMemoryCacheConsumer;

    iget-object v7, p0, Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer;->mMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    .line 102
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v4

    const/16 v6, 0x8

    .line 103
    invoke-virtual {v4, v6}, Lcom/facebook/imagepipeline/request/ImageRequest;->isCacheEnabled(I)Z

    move-result v9

    .line 104
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImagePipelineConfig()Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->getExperiments()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->isEncodedCacheEnabled()Z

    move-result v10

    move-object v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer$EncodedMemoryCacheConsumer;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/cache/common/CacheKey;ZZ)V

    .line 109
    invoke-interface {v1, p2, v0}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->requiresExtraMap(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d8

    .line 110
    invoke-static {v11, v12}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 106
    :cond_d8
    invoke-interface {v1, p2, v0, v3}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerFinishWithSuccess(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    .line 112
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer;->mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    invoke-interface {p1, v5, p2}, Lcom/facebook/imagepipeline/producers/Producer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    :try_end_e0
    .catchall {:try_start_b0 .. :try_end_e0} :catchall_ed

    .line 114
    :try_start_e0
    invoke-static {v2}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V
    :try_end_e3
    .catchall {:try_start_e0 .. :try_end_e3} :catchall_f3

    .line 117
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_ec

    .line 118
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_ec
    return-void

    :catchall_ed
    move-exception v0

    move-object p1, v0

    .line 114
    :try_start_ef
    invoke-static {v2}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 115
    throw p1
    :try_end_f3
    .catchall {:try_start_ef .. :try_end_f3} :catchall_f3

    :catchall_f3
    move-exception v0

    move-object p1, v0

    .line 117
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p2

    if-eqz p2, :cond_fe

    .line 118
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 120
    :cond_fe
    throw p1
.end method

###### Class com.facebook.imagepipeline.producers.EncodedMemoryCacheProducer.EncodedMemoryCacheConsumer (com.facebook.imagepipeline.producers.EncodedMemoryCacheProducer$EncodedMemoryCacheConsumer)
.class Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer$EncodedMemoryCacheConsumer;
.super Lcom/facebook/imagepipeline/producers/DelegatingConsumer;
.source "EncodedMemoryCacheProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EncodedMemoryCacheConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/DelegatingConsumer<",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        ">;"
    }
.end annotation


# instance fields
.field private final mEncodedCacheEnabled:Z

.field private final mIsEncodedCacheEnabledForWrite:Z

.field private final mMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestedCacheKey:Lcom/facebook/cache/common/CacheKey;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/cache/common/CacheKey;ZZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;",
            "Lcom/facebook/cache/common/CacheKey;",
            "ZZ)V"
        }
    .end annotation

    .line 137
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    .line 138
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer$EncodedMemoryCacheConsumer;->mMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    .line 139
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer$EncodedMemoryCacheConsumer;->mRequestedCacheKey:Lcom/facebook/cache/common/CacheKey;

    .line 140
    iput-boolean p4, p0, Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer$EncodedMemoryCacheConsumer;->mIsEncodedCacheEnabledForWrite:Z

    .line 141
    iput-boolean p5, p0, Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer$EncodedMemoryCacheConsumer;->mEncodedCacheEnabled:Z

    return-void
.end method


# virtual methods
.method public onNewResultImpl(Lcom/facebook/imagepipeline/image/EncodedImage;I)V
    .registers 6
    .param p1    # Lcom/facebook/imagepipeline/image/EncodedImage;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 147
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 148
    const-string v0, "EncodedMemoryCacheProducer#onNewResultImpl"

    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 152
    :cond_b
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer$EncodedMemoryCacheConsumer;->isNotLast(I)Z

    move-result v0

    if-nez v0, :cond_89

    if-eqz p1, :cond_89

    const/16 v0, 0xa

    .line 154
    invoke-static {p2, v0}, Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer$EncodedMemoryCacheConsumer;->statusHasAnyFlag(II)Z

    move-result v0

    if-nez v0, :cond_89

    .line 155
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getImageFormat()Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0

    sget-object v1, Lcom/facebook/imageformat/ImageFormat;->UNKNOWN:Lcom/facebook/imageformat/ImageFormat;

    if-ne v0, v1, :cond_24

    goto :goto_89

    .line 161
    :cond_24
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getByteBufferRef()Lcom/facebook/common/references/CloseableReference;

    move-result-object v0
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_9a

    if-eqz v0, :cond_78

    .line 165
    :try_start_2a
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer$EncodedMemoryCacheConsumer;->mEncodedCacheEnabled:Z

    if-eqz v1, :cond_3b

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer$EncodedMemoryCacheConsumer;->mIsEncodedCacheEnabledForWrite:Z

    if-eqz v1, :cond_3b

    .line 166
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer$EncodedMemoryCacheConsumer;->mMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer$EncodedMemoryCacheConsumer;->mRequestedCacheKey:Lcom/facebook/cache/common/CacheKey;

    invoke-interface {v1, v2, v0}, Lcom/facebook/imagepipeline/cache/MemoryCache;->cache(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v1
    :try_end_3a
    .catchall {:try_start_2a .. :try_end_3a} :catchall_73

    goto :goto_3c

    :cond_3b
    const/4 v1, 0x0

    .line 169
    :goto_3c
    :try_start_3c
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_9a

    if-eqz v1, :cond_78

    .line 174
    :try_start_41
    new-instance v0, Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/image/EncodedImage;-><init>(Lcom/facebook/common/references/CloseableReference;)V

    .line 175
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->copyMetaDataFrom(Lcom/facebook/imagepipeline/image/EncodedImage;)V
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_6e

    .line 177
    :try_start_49
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_9a

    .line 180
    :try_start_4c
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer$EncodedMemoryCacheConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v1}, Lcom/facebook/imagepipeline/producers/Consumer;->onProgressUpdate(F)V

    .line 181
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer$EncodedMemoryCacheConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object p1

    invoke-interface {p1, v0, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V
    :try_end_5c
    .catchall {:try_start_4c .. :try_end_5c} :catchall_69

    .line 184
    :try_start_5c
    invoke-static {v0}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_9a

    .line 190
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_99

    .line 191
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    return-void

    :catchall_69
    move-exception p1

    .line 184
    :try_start_6a
    invoke-static {v0}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 185
    throw p1

    :catchall_6e
    move-exception p1

    .line 177
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 178
    throw p1

    :catchall_73
    move-exception p1

    .line 169
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 170
    throw p1

    .line 188
    :cond_78
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer$EncodedMemoryCacheConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V
    :try_end_7f
    .catchall {:try_start_6a .. :try_end_7f} :catchall_9a

    .line 190
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_99

    .line 191
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    return-void

    .line 156
    :cond_89
    :goto_89
    :try_start_89
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer$EncodedMemoryCacheConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V
    :try_end_90
    .catchall {:try_start_89 .. :try_end_90} :catchall_9a

    .line 190
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_99

    .line 191
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_99
    return-void

    :catchall_9a
    move-exception p1

    .line 190
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p2

    if-eqz p2, :cond_a4

    .line 191
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 193
    :cond_a4
    throw p1
.end method

.method public bridge synthetic onNewResultImpl(Ljava/lang/Object;I)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 123
    check-cast p1, Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer$EncodedMemoryCacheConsumer;->onNewResultImpl(Lcom/facebook/imagepipeline/image/EncodedImage;I)V

    return-void
.end method
