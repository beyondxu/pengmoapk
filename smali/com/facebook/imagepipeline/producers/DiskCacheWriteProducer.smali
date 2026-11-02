###### Class com.facebook.imagepipeline.producers.DiskCacheWriteProducer (com.facebook.imagepipeline.producers.DiskCacheWriteProducer)
.class public Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer;
.super Ljava/lang/Object;
.source "DiskCacheWriteProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/Producer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;
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
.field static final PRODUCER_NAME:Ljava/lang/String; = "DiskCacheWriteProducer"


# instance fields
.field private final mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

.field private final mDiskCachesStoreSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/core/DiskCachesStore;",
            ">;"
        }
    .end annotation
.end field

.field private final mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/common/internal/Supplier;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;Lcom/facebook/imagepipeline/producers/Producer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/core/DiskCachesStore;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/CacheKeyFactory;",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer;->mDiskCachesStoreSupplier:Lcom/facebook/common/internal/Supplier;

    .line 48
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer;->mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    .line 49
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer;->mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    return-void
.end method

.method private maybeStartInputProducer(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .registers 10
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

    .line 59
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getLowestPermittedRequestLevel()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getValue()I

    move-result v0

    sget-object v1, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->DISK_CACHE:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 60
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getValue()I

    move-result v1

    if-lt v0, v1, :cond_1d

    .line 61
    const-string v0, "disk"

    const-string v1, "nil-result_write"

    invoke-interface {p2, v0, v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->putOriginExtra(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 62
    invoke-interface {p1, p2, v0}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V

    return-void

    .line 67
    :cond_1d
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    const/16 v1, 0x20

    .line 68
    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequest;->isCacheEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 70
    new-instance v1, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer;->mDiskCachesStoreSupplier:Lcom/facebook/common/internal/Supplier;

    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer;->mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/common/internal/Supplier;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer-IA;)V

    move-object p1, v1

    goto :goto_39

    :cond_37
    move-object v2, p1

    move-object v3, p2

    .line 80
    :goto_39
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer;->mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    invoke-interface {p2, p1, v3}, Lcom/facebook/imagepipeline/producers/Producer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    return-void
.end method


# virtual methods
.method public produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .registers 3
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

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer;->maybeStartInputProducer(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    return-void
.end method

###### Class com.facebook.imagepipeline.producers.DiskCacheWriteProducer.DiskCacheWriteConsumer (com.facebook.imagepipeline.producers.DiskCacheWriteProducer$DiskCacheWriteConsumer)
.class Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;
.super Lcom/facebook/imagepipeline/producers/DelegatingConsumer;
.source "DiskCacheWriteProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DiskCacheWriteConsumer"
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
.field private final mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

.field private final mDiskCachesStoreSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/core/DiskCachesStore;",
            ">;"
        }
    .end annotation
.end field

.field private final mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/common/internal/Supplier;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/core/DiskCachesStore;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/CacheKeyFactory;",
            ")V"
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    .line 103
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 104
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;->mDiskCachesStoreSupplier:Lcom/facebook/common/internal/Supplier;

    .line 105
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;->mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/common/internal/Supplier;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/common/internal/Supplier;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;)V

    return-void
.end method


# virtual methods
.method public onNewResultImpl(Lcom/facebook/imagepipeline/image/EncodedImage;I)V
    .registers 11
    .param p1    # Lcom/facebook/imagepipeline/image/EncodedImage;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 110
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getProducerListener()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v2, "DiskCacheWriteProducer"

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerStart(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V

    .line 113
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;->isNotLast(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9f

    if-eqz p1, :cond_9f

    const/16 v0, 0xa

    .line 115
    invoke-static {p2, v0}, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;->statusHasAnyFlag(II)Z

    move-result v0

    if-nez v0, :cond_9f

    .line 116
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getImageFormat()Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0

    sget-object v3, Lcom/facebook/imageformat/ImageFormat;->UNKNOWN:Lcom/facebook/imageformat/ImageFormat;

    if-ne v0, v3, :cond_27

    goto :goto_9f

    .line 124
    :cond_27
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 125
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;->mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 126
    invoke-interface {v4}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getCallerContext()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lcom/facebook/imagepipeline/cache/CacheKeyFactory;->getEncodedCacheKey(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;

    move-result-object v3

    .line 127
    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;->mDiskCachesStoreSupplier:Lcom/facebook/common/internal/Supplier;

    invoke-interface {v4}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/imagepipeline/core/DiskCachesStore;

    .line 131
    invoke-interface {v4}, Lcom/facebook/imagepipeline/core/DiskCachesStore;->getSmallImageBufferedDiskCache()Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    move-result-object v5

    .line 132
    invoke-interface {v4}, Lcom/facebook/imagepipeline/core/DiskCachesStore;->getMainBufferedDiskCache()Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    move-result-object v6

    .line 133
    invoke-interface {v4}, Lcom/facebook/imagepipeline/core/DiskCachesStore;->getDynamicBufferedDiskCaches()Lcom/facebook/common/internal/ImmutableMap;

    move-result-object v4

    .line 129
    invoke-static {v0, v5, v6, v4}, Lcom/facebook/imagepipeline/producers/DiskCacheDecision;->chooseDiskCacheForRequest(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Ljava/util/Map;)Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    move-result-object v4

    if-nez v4, :cond_89

    .line 135
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 136
    invoke-interface {v3}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getProducerListener()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    new-instance v5, Lcom/facebook/imagepipeline/producers/DiskCacheDecision$DiskCacheDecisionNoDiskCacheChosenException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Got no disk cache for CacheChoice: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getCacheChoice()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/facebook/imagepipeline/producers/DiskCacheDecision$DiskCacheDecisionNoDiskCacheChosenException;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-interface {v3, v4, v2, v5, v1}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerFinishWithFailure(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 144
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V

    return-void

    .line 147
    :cond_89
    invoke-virtual {v4, v3, p1}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->put(Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 148
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 149
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getProducerListener()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v0

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 150
    invoke-interface {v0, v3, v2, v1}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerFinishWithSuccess(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    .line 152
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V

    return-void

    .line 117
    :cond_9f
    :goto_9f
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 118
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getProducerListener()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v0

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 119
    invoke-interface {v0, v3, v2, v1}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerFinishWithSuccess(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    .line 120
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V

    return-void
.end method

.method public bridge synthetic onNewResultImpl(Ljava/lang/Object;I)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 90
    check-cast p1, Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/DiskCacheWriteProducer$DiskCacheWriteConsumer;->onNewResultImpl(Lcom/facebook/imagepipeline/image/EncodedImage;I)V

    return-void
.end method
