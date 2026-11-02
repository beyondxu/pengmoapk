###### Class com.facebook.imagepipeline.producers.RemoveImageTransformMetaDataProducer (com.facebook.imagepipeline.producers.RemoveImageTransformMetaDataProducer)
.class public final Lcom/facebook/imagepipeline/producers/RemoveImageTransformMetaDataProducer;
.super Ljava/lang/Object;
.source "RemoveImageTransformMetaDataProducer.kt"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/Producer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/RemoveImageTransformMetaDataProducer$RemoveImageTransformMetaDataConsumer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/Producer<",
        "Lcom/facebook/common/references/CloseableReference<",
        "Lcom/facebook/common/memory/PooledByteBuffer;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0001\u000eB\u0017\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0001\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J$\u0010\u0008\u001a\u00020\t2\u0012\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016R\u0016\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/producers/RemoveImageTransformMetaDataProducer;",
        "Lcom/facebook/imagepipeline/producers/Producer;",
        "Lcom/facebook/common/references/CloseableReference;",
        "Lcom/facebook/common/memory/PooledByteBuffer;",
        "inputProducer",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        "<init>",
        "(Lcom/facebook/imagepipeline/producers/Producer;)V",
        "produceResults",
        "",
        "consumer",
        "Lcom/facebook/imagepipeline/producers/Consumer;",
        "context",
        "Lcom/facebook/imagepipeline/producers/ProducerContext;",
        "RemoveImageTransformMetaDataConsumer",
        "imagepipeline_release"
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
.field private final inputProducer:Lcom/facebook/imagepipeline/producers/Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/Producer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;)V"
        }
    .end annotation

    const-string v0, "inputProducer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/RemoveImageTransformMetaDataProducer;->inputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    return-void
.end method


# virtual methods
.method public produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")V"
        }
    .end annotation

    const-string v0, "consumer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/RemoveImageTransformMetaDataProducer;->inputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    new-instance v1, Lcom/facebook/imagepipeline/producers/RemoveImageTransformMetaDataProducer$RemoveImageTransformMetaDataConsumer;

    invoke-direct {v1, p0, p1}, Lcom/facebook/imagepipeline/producers/RemoveImageTransformMetaDataProducer$RemoveImageTransformMetaDataConsumer;-><init>(Lcom/facebook/imagepipeline/producers/RemoveImageTransformMetaDataProducer;Lcom/facebook/imagepipeline/producers/Consumer;)V

    check-cast v1, Lcom/facebook/imagepipeline/producers/Consumer;

    invoke-interface {v0, v1, p2}, Lcom/facebook/imagepipeline/producers/Producer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    return-void
.end method

###### Class com.facebook.imagepipeline.producers.RemoveImageTransformMetaDataProducer.RemoveImageTransformMetaDataConsumer (com.facebook.imagepipeline.producers.RemoveImageTransformMetaDataProducer$RemoveImageTransformMetaDataConsumer)
.class final Lcom/facebook/imagepipeline/producers/RemoveImageTransformMetaDataProducer$RemoveImageTransformMetaDataConsumer;
.super Lcom/facebook/imagepipeline/producers/DelegatingConsumer;
.source "RemoveImageTransformMetaDataProducer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/RemoveImageTransformMetaDataProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RemoveImageTransformMetaDataConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/DelegatingConsumer<",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        "Lcom/facebook/common/references/CloseableReference<",
        "Lcom/facebook/common/memory/PooledByteBuffer;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0082\u0004\u0018\u00002\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u001b\u0012\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001a\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000c\u001a\u00020\rH\u0014\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/producers/RemoveImageTransformMetaDataProducer$RemoveImageTransformMetaDataConsumer;",
        "Lcom/facebook/imagepipeline/producers/DelegatingConsumer;",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        "Lcom/facebook/common/references/CloseableReference;",
        "Lcom/facebook/common/memory/PooledByteBuffer;",
        "consumer",
        "Lcom/facebook/imagepipeline/producers/Consumer;",
        "<init>",
        "(Lcom/facebook/imagepipeline/producers/RemoveImageTransformMetaDataProducer;Lcom/facebook/imagepipeline/producers/Consumer;)V",
        "onNewResultImpl",
        "",
        "newResult",
        "status",
        "",
        "imagepipeline_release"
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
.field final synthetic this$0:Lcom/facebook/imagepipeline/producers/RemoveImageTransformMetaDataProducer;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/RemoveImageTransformMetaDataProducer;Lcom/facebook/imagepipeline/producers/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "consumer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/RemoveImageTransformMetaDataProducer$RemoveImageTransformMetaDataConsumer;->this$0:Lcom/facebook/imagepipeline/producers/RemoveImageTransformMetaDataProducer;

    .line 32
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    return-void
.end method


# virtual methods
.method protected onNewResultImpl(Lcom/facebook/imagepipeline/image/EncodedImage;I)V
    .registers 5

    const/4 v0, 0x0

    .line 36
    :try_start_1
    invoke-static {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->isValid(Lcom/facebook/imagepipeline/image/EncodedImage;)Z

    move-result v1

    if-eqz v1, :cond_e

    if-eqz p1, :cond_e

    .line 37
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getByteBufferRef()Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    move-object v0, p1

    .line 39
    :cond_e
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/RemoveImageTransformMetaDataProducer$RemoveImageTransformMetaDataConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object p1

    invoke-interface {p1, v0, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_19

    .line 41
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    return-void

    :catchall_19
    move-exception p1

    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    throw p1
.end method

.method public bridge synthetic onNewResultImpl(Ljava/lang/Object;I)V
    .registers 3

    .line 30
    check-cast p1, Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/RemoveImageTransformMetaDataProducer$RemoveImageTransformMetaDataConsumer;->onNewResultImpl(Lcom/facebook/imagepipeline/image/EncodedImage;I)V

    return-void
.end method
