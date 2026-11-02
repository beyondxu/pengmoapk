###### Class com.facebook.imagepipeline.producers.BitmapProbeProducer (com.facebook.imagepipeline.producers.BitmapProbeProducer)
.class public Lcom/facebook/imagepipeline/producers/BitmapProbeProducer;
.super Ljava/lang/Object;
.source "BitmapProbeProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/Producer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/BitmapProbeProducer$ProbeConsumer;
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
.field public static final PRODUCER_NAME:Ljava/lang/String; = "BitmapProbeProducer"


# instance fields
.field private final mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

.field private final mDiskCacheHistory:Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet<",
            "Lcom/facebook/cache/common/CacheKey;",
            ">;"
        }
    .end annotation
.end field

.field private final mDiskCachesStoreSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/core/DiskCachesStore;",
            ">;"
        }
    .end annotation
.end field

.field private final mEncodedMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final mEncodedMemoryCacheHistory:Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet<",
            "Lcom/facebook/cache/common/CacheKey;",
            ">;"
        }
    .end annotation
.end field

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


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/common/internal/Supplier;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;Lcom/facebook/imagepipeline/producers/Producer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/core/DiskCachesStore;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/CacheKeyFactory;",
            "Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet<",
            "Lcom/facebook/cache/common/CacheKey;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet<",
            "Lcom/facebook/cache/common/CacheKey;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/BitmapProbeProducer;->mEncodedMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    .line 49
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/BitmapProbeProducer;->mDiskCachesStoreSupplier:Lcom/facebook/common/internal/Supplier;

    .line 50
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/BitmapProbeProducer;->mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    .line 51
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/BitmapProbeProducer;->mEncodedMemoryCacheHistory:Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;

    .line 52
    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/BitmapProbeProducer;->mDiskCacheHistory:Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;

    .line 53
    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/BitmapProbeProducer;->mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    return-void
.end method


# virtual methods
.method protected getProducerName()Ljava/lang/String;
    .registers 2

    .line 171
    const-string v0, "BitmapProbeProducer"

    return-object v0
.end method

.method public produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .registers 13
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

    .line 61
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 62
    const-string v0, "BitmapProbeProducer#produceResults"

    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 64
    :cond_b
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getProducerListener()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v0

    .line 65
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/BitmapProbeProducer;->getProducerName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerStart(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V

    .line 66
    new-instance v2, Lcom/facebook/imagepipeline/producers/BitmapProbeProducer$ProbeConsumer;

    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/BitmapProbeProducer;->mEncodedMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    iget-object v6, p0, Lcom/facebook/imagepipeline/producers/BitmapProbeProducer;->mDiskCachesStoreSupplier:Lcom/facebook/common/internal/Supplier;

    iget-object v7, p0, Lcom/facebook/imagepipeline/producers/BitmapProbeProducer;->mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    iget-object v8, p0, Lcom/facebook/imagepipeline/producers/BitmapProbeProducer;->mEncodedMemoryCacheHistory:Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;

    iget-object v9, p0, Lcom/facebook/imagepipeline/producers/BitmapProbeProducer;->mDiskCacheHistory:Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v9}, Lcom/facebook/imagepipeline/producers/BitmapProbeProducer$ProbeConsumer;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/common/internal/Supplier;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;)V

    .line 76
    const-string p1, "BitmapProbeProducer"

    const/4 p2, 0x0

    invoke-interface {v0, v4, p1, p2}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerFinishWithSuccess(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    .line 77
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_38

    .line 78
    const-string p1, "mInputProducer.produceResult"

    invoke-static {p1}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 80
    :cond_38
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/BitmapProbeProducer;->mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    invoke-interface {p1, v2, v4}, Lcom/facebook/imagepipeline/producers/Producer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 81
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 82
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V
    :try_end_46
    .catchall {:try_start_0 .. :try_end_46} :catchall_50

    .line 85
    :cond_46
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 86
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_4f
    return-void

    :catchall_50
    move-exception v0

    move-object p1, v0

    .line 85
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p2

    if-eqz p2, :cond_5b

    .line 86
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 88
    :cond_5b
    throw p1
.end method

###### Class com.facebook.imagepipeline.producers.BitmapProbeProducer.ProbeConsumer (com.facebook.imagepipeline.producers.BitmapProbeProducer$ProbeConsumer)
.class Lcom/facebook/imagepipeline/producers/BitmapProbeProducer$ProbeConsumer;
.super Lcom/facebook/imagepipeline/producers/DelegatingConsumer;
.source "BitmapProbeProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/BitmapProbeProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProbeConsumer"
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
.field private final mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

.field private final mDiskCacheHistory:Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet<",
            "Lcom/facebook/cache/common/CacheKey;",
            ">;"
        }
    .end annotation
.end field

.field private final mDiskCachesStoreSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/core/DiskCachesStore;",
            ">;"
        }
    .end annotation
.end field

.field private final mEncodedMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final mEncodedMemoryCacheHistory:Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet<",
            "Lcom/facebook/cache/common/CacheKey;",
            ">;"
        }
    .end annotation
.end field

.field private final mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/common/internal/Supplier;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/core/DiskCachesStore;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/CacheKeyFactory;",
            "Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet<",
            "Lcom/facebook/cache/common/CacheKey;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet<",
            "Lcom/facebook/cache/common/CacheKey;",
            ">;)V"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    .line 111
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/BitmapProbeProducer$ProbeConsumer;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 112
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/BitmapProbeProducer$ProbeConsumer;->mEncodedMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    .line 113
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/BitmapProbeProducer$ProbeConsumer;->mDiskCachesStoreSupplier:Lcom/facebook/common/internal/Supplier;

    .line 114
    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/BitmapProbeProducer$ProbeConsumer;->mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    .line 115
    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/BitmapProbeProducer$ProbeConsumer;->mEncodedMemoryCacheHistory:Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;

    .line 116
    iput-object p7, p0, Lcom/facebook/imagepipeline/producers/BitmapProbeProducer$ProbeConsumer;->mDiskCacheHistory:Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;

    return-void
.end method


# virtual methods
.method public onNewResultImpl(Lcom/facebook/common/references/CloseableReference;I)V
    .registers 7
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

    .line 123
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 124
    const-string v0, "BitmapProbeProducer#onNewResultImpl"

    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 128
    :cond_b
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/BitmapProbeProducer$ProbeConsumer;->isNotLast(I)Z

    move-result v0

    if-nez v0, :cond_b4

    if-eqz p1, :cond_b4

    const/16 v0, 0x8

    invoke-static {p2, v0}, Lcom/facebook/imagepipeline/producers/BitmapProbeProducer$ProbeConsumer;->statusHasAnyFlag(II)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto/16 :goto_b4

    .line 133
    :cond_1d
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/BitmapProbeProducer$ProbeConsumer;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/BitmapProbeProducer$ProbeConsumer;->mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/BitmapProbeProducer$ProbeConsumer;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 135
    invoke-interface {v2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getCallerContext()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/facebook/imagepipeline/cache/CacheKeyFactory;->getEncodedCacheKey(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;

    move-result-object v1

    .line 136
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/BitmapProbeProducer$ProbeConsumer;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v3, "origin"

    invoke-interface {v2, v3}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_a3

    .line 137
    const-string v3, "memory_bitmap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 138
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/BitmapProbeProducer$ProbeConsumer;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 139
    invoke-interface {v2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImagePipelineConfig()Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    move-result-object v2

    .line 140
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->getExperiments()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v2

    .line 141
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->isEncodedMemoryCacheProbingEnabled()Z

    move-result v2

    if-eqz v2, :cond_65

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/BitmapProbeProducer$ProbeConsumer;->mEncodedMemoryCacheHistory:Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;

    .line 142
    invoke-virtual {v2, v1}, Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    .line 143
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/BitmapProbeProducer$ProbeConsumer;->mEncodedMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    invoke-interface {v2, v1}, Lcom/facebook/imagepipeline/cache/MemoryCache;->probe(Ljava/lang/Object;)V

    .line 144
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/BitmapProbeProducer$ProbeConsumer;->mEncodedMemoryCacheHistory:Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;

    invoke-virtual {v2, v1}, Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_65
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/BitmapProbeProducer$ProbeConsumer;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImagePipelineConfig()Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->getExperiments()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->isDiskCacheProbingEnabled()Z

    move-result v2

    if-eqz v2, :cond_a3

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/BitmapProbeProducer$ProbeConsumer;->mDiskCacheHistory:Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;

    .line 147
    invoke-virtual {v2, v1}, Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a3

    .line 149
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getCacheChoice()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    move-result-object v0

    sget-object v2, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->SMALL:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    if-ne v0, v2, :cond_87

    const/4 v0, 0x1

    goto :goto_88

    :cond_87
    const/4 v0, 0x0

    .line 150
    :goto_88
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/BitmapProbeProducer$ProbeConsumer;->mDiskCachesStoreSupplier:Lcom/facebook/common/internal/Supplier;

    invoke-interface {v2}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/imagepipeline/core/DiskCachesStore;

    if-eqz v0, :cond_97

    .line 153
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/DiskCachesStore;->getSmallImageBufferedDiskCache()Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    move-result-object v0

    goto :goto_9b

    .line 154
    :cond_97
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/DiskCachesStore;->getMainBufferedDiskCache()Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    move-result-object v0

    .line 155
    :goto_9b
    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->addKeyForAsyncProbing(Lcom/facebook/cache/common/CacheKey;)V

    .line 156
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/BitmapProbeProducer$ProbeConsumer;->mDiskCacheHistory:Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/cache/BoundedLinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_a3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/BitmapProbeProducer$ProbeConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V
    :try_end_aa
    .catchall {:try_start_0 .. :try_end_aa} :catchall_c5

    .line 163
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_c4

    .line 164
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    return-void

    .line 129
    :cond_b4
    :goto_b4
    :try_start_b4
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/BitmapProbeProducer$ProbeConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V
    :try_end_bb
    .catchall {:try_start_b4 .. :try_end_bb} :catchall_c5

    .line 163
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_c4

    .line 164
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_c4
    return-void

    :catchall_c5
    move-exception p1

    .line 163
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p2

    if-eqz p2, :cond_cf

    .line 164
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 166
    :cond_cf
    throw p1
.end method

.method public bridge synthetic onNewResultImpl(Ljava/lang/Object;I)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 91
    check-cast p1, Lcom/facebook/common/references/CloseableReference;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/BitmapProbeProducer$ProbeConsumer;->onNewResultImpl(Lcom/facebook/common/references/CloseableReference;I)V

    return-void
.end method
