###### Class com.facebook.imagepipeline.producers.PostprocessorProducer (com.facebook.imagepipeline.producers.PostprocessorProducer)
.class public Lcom/facebook/imagepipeline/producers/PostprocessorProducer;
.super Ljava/lang/Object;
.source "PostprocessorProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/Producer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer;,
        Lcom/facebook/imagepipeline/producers/PostprocessorProducer$SingleUsePostprocessorConsumer;,
        Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;
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
.field public static final NAME:Ljava/lang/String; = "PostprocessorProducer"

.field static final POSTPROCESSOR:Ljava/lang/String; = "Postprocessor"


# instance fields
.field private final mBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

.field private final mExecutor:Ljava/util/concurrent/Executor;

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
.method static bridge synthetic -$$Nest$fgetmBitmapFactory(Lcom/facebook/imagepipeline/producers/PostprocessorProducer;)Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;
    .registers 1

    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer;->mBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExecutor(Lcom/facebook/imagepipeline/producers/PostprocessorProducer;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;Ljava/util/concurrent/Executor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;",
            "Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/producers/Producer;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer;->mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    .line 49
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer;->mBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    .line 50
    invoke-static {p3}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .registers 14
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

    .line 56
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getProducerListener()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v3

    .line 57
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getPostprocessor()Lcom/facebook/imagepipeline/request/Postprocessor;

    move-result-object v4

    .line 58
    invoke-static {v4}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;-><init>(Lcom/facebook/imagepipeline/producers/PostprocessorProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerListener2;Lcom/facebook/imagepipeline/request/Postprocessor;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 62
    instance-of p1, v4, Lcom/facebook/imagepipeline/request/RepeatedPostprocessor;

    if-eqz p1, :cond_29

    move-object v9, v5

    .line 63
    new-instance v5, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer;

    move-object v8, v4

    check-cast v8, Lcom/facebook/imagepipeline/request/RepeatedPostprocessor;

    const/4 v10, 0x0

    move-object v6, p0

    move-object v7, v0

    invoke-direct/range {v5 .. v10}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer;-><init>(Lcom/facebook/imagepipeline/producers/PostprocessorProducer;Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;Lcom/facebook/imagepipeline/request/RepeatedPostprocessor;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/producers/PostprocessorProducer-IA;)V

    move-object v1, v6

    goto :goto_31

    :cond_29
    move-object v1, p0

    move-object v9, v5

    .line 67
    new-instance v5, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$SingleUsePostprocessorConsumer;

    const/4 p1, 0x0

    invoke-direct {v5, p0, v0, p1}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$SingleUsePostprocessorConsumer;-><init>(Lcom/facebook/imagepipeline/producers/PostprocessorProducer;Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;Lcom/facebook/imagepipeline/producers/PostprocessorProducer-IA;)V

    .line 69
    :goto_31
    iget-object p1, v1, Lcom/facebook/imagepipeline/producers/PostprocessorProducer;->mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    invoke-interface {p1, v5, v9}, Lcom/facebook/imagepipeline/producers/Producer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    return-void
.end method

###### Class com.facebook.imagepipeline.producers.PostprocessorProducer.PostprocessorConsumer (com.facebook.imagepipeline.producers.PostprocessorProducer$PostprocessorConsumer)
.class Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;
.super Lcom/facebook/imagepipeline/producers/DelegatingConsumer;
.source "PostprocessorProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/PostprocessorProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostprocessorConsumer"
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
.field private mIsClosed:Z

.field private mIsDirty:Z

.field private mIsPostProcessingRunning:Z

.field private final mListener:Lcom/facebook/imagepipeline/producers/ProducerListener2;

.field private final mPostprocessor:Lcom/facebook/imagepipeline/request/Postprocessor;

.field private final mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

.field private mSourceImageRef:Lcom/facebook/common/references/CloseableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mStatus:I

.field final synthetic this$0:Lcom/facebook/imagepipeline/producers/PostprocessorProducer;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSourceImageRef(Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;)Lcom/facebook/common/references/CloseableReference;
    .registers 1

    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mSourceImageRef:Lcom/facebook/common/references/CloseableReference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStatus(Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;)I
    .registers 1

    iget p0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mStatus:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsDirty(Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mIsDirty:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSourceImageRef(Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;Lcom/facebook/common/references/CloseableReference;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mSourceImageRef:Lcom/facebook/common/references/CloseableReference;

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearRunningAndStartIfDirty(Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->clearRunningAndStartIfDirty()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoPostprocessing(Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;Lcom/facebook/common/references/CloseableReference;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->doPostprocessing(Lcom/facebook/common/references/CloseableReference;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmaybeNotifyOnCancellation(Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->maybeNotifyOnCancellation()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/producers/PostprocessorProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerListener2;Lcom/facebook/imagepipeline/request/Postprocessor;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/ProducerListener2;",
            "Lcom/facebook/imagepipeline/request/Postprocessor;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")V"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->this$0:Lcom/facebook/imagepipeline/producers/PostprocessorProducer;

    .line 102
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    const/4 p2, 0x0

    .line 84
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mSourceImageRef:Lcom/facebook/common/references/CloseableReference;

    const/4 p2, 0x0

    .line 88
    iput p2, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mStatus:I

    .line 91
    iput-boolean p2, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mIsDirty:Z

    .line 94
    iput-boolean p2, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mIsPostProcessingRunning:Z

    .line 103
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mListener:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    .line 104
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mPostprocessor:Lcom/facebook/imagepipeline/request/Postprocessor;

    .line 105
    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 106
    new-instance p2, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer$1;

    invoke-direct {p2, p0, p1}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer$1;-><init>(Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;Lcom/facebook/imagepipeline/producers/PostprocessorProducer;)V

    invoke-interface {p5, p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->addCallbacks(Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;)V

    return-void
.end method

.method private clearRunningAndStartIfDirty()V
    .registers 2

    .line 188
    monitor-enter p0

    const/4 v0, 0x0

    .line 189
    :try_start_2
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mIsPostProcessingRunning:Z

    .line 190
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->setRunningIfDirtyAndNotRunning()Z

    move-result v0

    .line 191
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_f

    if-eqz v0, :cond_e

    .line 193
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->submitPostprocessing()V

    :cond_e
    return-void

    :catchall_f
    move-exception v0

    .line 191
    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private close()Z
    .registers 3

    .line 288
    monitor-enter p0

    .line 289
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mIsClosed:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 290
    monitor-exit p0

    return v0

    .line 292
    :cond_8
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mSourceImageRef:Lcom/facebook/common/references/CloseableReference;

    const/4 v1, 0x0

    .line 293
    iput-object v1, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mSourceImageRef:Lcom/facebook/common/references/CloseableReference;

    const/4 v1, 0x1

    .line 294
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mIsClosed:Z

    .line 295
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_15

    .line 296
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    return v1

    :catchall_15
    move-exception v0

    .line 295
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method private doPostprocessing(Lcom/facebook/common/references/CloseableReference;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;I)V"
        }
    .end annotation

    .line 209
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->isValid(Lcom/facebook/common/references/CloseableReference;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 210
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/image/CloseableImage;

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->shouldPostprocess(Lcom/facebook/imagepipeline/image/CloseableImage;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 211
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->maybeNotifyOnNewResult(Lcom/facebook/common/references/CloseableReference;I)V

    return-void

    .line 214
    :cond_1b
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mListener:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v2, "PostprocessorProducer"

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerStart(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 218
    :try_start_25
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/image/CloseableImage;

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->postprocessInternal(Lcom/facebook/imagepipeline/image/CloseableImage;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2f} :catch_45
    .catchall {:try_start_25 .. :try_end_2f} :catchall_43

    .line 225
    :try_start_2f
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mListener:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mPostprocessor:Lcom/facebook/imagepipeline/request/Postprocessor;

    .line 226
    invoke-direct {p0, p1, v1, v3}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->getExtraMap(Lcom/facebook/imagepipeline/producers/ProducerListener2;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/request/Postprocessor;)Ljava/util/Map;

    move-result-object v3

    .line 225
    invoke-interface {p1, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerFinishWithSuccess(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    .line 227
    invoke-direct {p0, v0, p2}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->maybeNotifyOnNewResult(Lcom/facebook/common/references/CloseableReference;I)V
    :try_end_3f
    .catchall {:try_start_2f .. :try_end_3f} :catchall_43

    .line 229
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    return-void

    :catchall_43
    move-exception p1

    goto :goto_5a

    :catch_45
    move-exception p1

    .line 220
    :try_start_46
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mListener:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mPostprocessor:Lcom/facebook/imagepipeline/request/Postprocessor;

    .line 221
    invoke-direct {p0, p2, v1, v3}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->getExtraMap(Lcom/facebook/imagepipeline/producers/ProducerListener2;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/request/Postprocessor;)Ljava/util/Map;

    move-result-object v3

    .line 220
    invoke-interface {p2, v1, v2, p1, v3}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerFinishWithFailure(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 222
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->maybeNotifyOnFailure(Ljava/lang/Throwable;)V
    :try_end_56
    .catchall {:try_start_46 .. :try_end_56} :catchall_43

    .line 229
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    return-void

    :goto_5a
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 230
    throw p1
.end method

.method private getExtraMap(Lcom/facebook/imagepipeline/producers/ProducerListener2;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/request/Postprocessor;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/ProducerListener2;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            "Lcom/facebook/imagepipeline/request/Postprocessor;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 235
    const-string v0, "PostprocessorProducer"

    invoke-interface {p1, p2, v0}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->requiresExtraMap(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    const/4 p1, 0x0

    return-object p1

    .line 238
    :cond_a
    const-string p1, "Postprocessor"

    invoke-interface {p3}, Lcom/facebook/imagepipeline/request/Postprocessor;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized isClosed()Z
    .registers 2

    monitor-enter p0

    .line 283
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mIsClosed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method private maybeNotifyOnCancellation()V
    .registers 2

    .line 277
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->close()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 278
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/Consumer;->onCancellation()V

    :cond_d
    return-void
.end method

.method private maybeNotifyOnFailure(Ljava/lang/Throwable;)V
    .registers 3

    .line 271
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->close()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 272
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/Consumer;->onFailure(Ljava/lang/Throwable;)V

    :cond_d
    return-void
.end method

.method private maybeNotifyOnNewResult(Lcom/facebook/common/references/CloseableReference;I)V
    .registers 5
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

    .line 264
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->isLast(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 265
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_c
    if-eqz v0, :cond_1b

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->close()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 266
    :cond_14
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V

    :cond_1b
    return-void
.end method

.method private postprocessInternal(Lcom/facebook/imagepipeline/image/CloseableImage;)Lcom/facebook/common/references/CloseableReference;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ")",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation

    .line 246
    move-object v0, p1

    check-cast v0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    .line 247
    invoke-interface {v0}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->getUnderlyingBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 248
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mPostprocessor:Lcom/facebook/imagepipeline/request/Postprocessor;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->this$0:Lcom/facebook/imagepipeline/producers/PostprocessorProducer;

    invoke-static {v3}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer;->-$$Nest$fgetmBitmapFactory(Lcom/facebook/imagepipeline/producers/PostprocessorProducer;)Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/facebook/imagepipeline/request/Postprocessor;->process(Landroid/graphics/Bitmap;Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v1

    .line 249
    invoke-interface {v0}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->getRotationAngle()I

    move-result v2

    .line 250
    invoke-interface {v0}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->getExifOrientation()I

    move-result v3

    .line 254
    :try_start_1b
    invoke-interface {p1}, Lcom/facebook/imagepipeline/image/CloseableImage;->getQualityInfo()Lcom/facebook/imagepipeline/image/QualityInfo;

    move-result-object p1

    .line 253
    invoke-static {v1, p1, v2, v3}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap$-CC;->of(Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/image/QualityInfo;II)Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    move-result-object p1

    .line 255
    invoke-interface {v0}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->getExtras()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->putExtras(Ljava/util/Map;)V

    .line 256
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->of(Ljava/io/Closeable;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1
    :try_end_2e
    .catchall {:try_start_1b .. :try_end_2e} :catchall_32

    .line 258
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    return-object p1

    :catchall_32
    move-exception p1

    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 259
    throw p1
.end method

.method private declared-synchronized setRunningIfDirtyAndNotRunning()Z
    .registers 2

    monitor-enter p0

    .line 198
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mIsClosed:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mIsDirty:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mIsPostProcessingRunning:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mSourceImageRef:Lcom/facebook/common/references/CloseableReference;

    .line 201
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->isValid(Lcom/facebook/common/references/CloseableReference;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    .line 202
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mIsPostProcessingRunning:Z
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1d

    .line 203
    monitor-exit p0

    return v0

    .line 205
    :cond_1a
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method private shouldPostprocess(Lcom/facebook/imagepipeline/image/CloseableImage;)Z
    .registers 2

    .line 242
    instance-of p1, p1, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    return p1
.end method

.method private submitPostprocessing()V
    .registers 3

    .line 160
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->this$0:Lcom/facebook/imagepipeline/producers/PostprocessorProducer;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer;->-$$Nest$fgetmExecutor(Lcom/facebook/imagepipeline/producers/PostprocessorProducer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer$2;

    invoke-direct {v1, p0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer$2;-><init>(Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateSourceImageRef(Lcom/facebook/common/references/CloseableReference;I)V
    .registers 4
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

    .line 143
    monitor-enter p0

    .line 144
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mIsClosed:Z

    if-eqz v0, :cond_7

    .line 145
    monitor-exit p0

    return-void

    .line 147
    :cond_7
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mSourceImageRef:Lcom/facebook/common/references/CloseableReference;

    .line 148
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->cloneOrNull(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mSourceImageRef:Lcom/facebook/common/references/CloseableReference;

    .line 149
    iput p2, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mStatus:I

    const/4 p1, 0x1

    .line 150
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->mIsDirty:Z

    .line 151
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->setRunningIfDirtyAndNotRunning()Z

    move-result p1

    .line 152
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_22

    .line 153
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    if-eqz p1, :cond_21

    .line 155
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->submitPostprocessing()V

    :cond_21
    return-void

    :catchall_22
    move-exception p1

    .line 152
    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p1
.end method


# virtual methods
.method protected onCancellationImpl()V
    .registers 1

    .line 136
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->maybeNotifyOnCancellation()V

    return-void
.end method

.method protected onFailureImpl(Ljava/lang/Throwable;)V
    .registers 2

    .line 131
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->maybeNotifyOnFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onNewResultImpl(Lcom/facebook/common/references/CloseableReference;I)V
    .registers 4
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

    .line 118
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->isValid(Lcom/facebook/common/references/CloseableReference;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 120
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->isLast(I)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x0

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->maybeNotifyOnNewResult(Lcom/facebook/common/references/CloseableReference;I)V

    :cond_10
    return-void

    .line 126
    :cond_11
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->updateSourceImageRef(Lcom/facebook/common/references/CloseableReference;I)V

    return-void
.end method

.method protected bridge synthetic onNewResultImpl(Ljava/lang/Object;I)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 73
    check-cast p1, Lcom/facebook/common/references/CloseableReference;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->onNewResultImpl(Lcom/facebook/common/references/CloseableReference;I)V

    return-void
.end method

###### Class com.facebook.imagepipeline.producers.PostprocessorProducer.PostprocessorConsumer.AnonymousClass1 (com.facebook.imagepipeline.producers.PostprocessorProducer$PostprocessorConsumer$1)
.class Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer$1;
.super Lcom/facebook/imagepipeline/producers/BaseProducerContextCallbacks;
.source "PostprocessorProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;-><init>(Lcom/facebook/imagepipeline/producers/PostprocessorProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerListener2;Lcom/facebook/imagepipeline/request/Postprocessor;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;

.field final synthetic val$this$0:Lcom/facebook/imagepipeline/producers/PostprocessorProducer;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;Lcom/facebook/imagepipeline/producers/PostprocessorProducer;)V
    .registers 3

    .line 107
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer$1;->this$1:Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer$1;->val$this$0:Lcom/facebook/imagepipeline/producers/PostprocessorProducer;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/BaseProducerContextCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancellationRequested()V
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer$1;->this$1:Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->-$$Nest$mmaybeNotifyOnCancellation(Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;)V

    return-void
.end method

###### Class com.facebook.imagepipeline.producers.PostprocessorProducer.PostprocessorConsumer.AnonymousClass2 (com.facebook.imagepipeline.producers.PostprocessorProducer$PostprocessorConsumer$2)
.class Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer$2;
.super Ljava/lang/Object;
.source "PostprocessorProducer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->submitPostprocessing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer$2;->this$1:Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 166
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer$2;->this$1:Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;

    monitor-enter v0

    .line 168
    :try_start_3
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer$2;->this$1:Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;

    invoke-static {v1}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->-$$Nest$fgetmSourceImageRef(Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v1

    .line 169
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer$2;->this$1:Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;

    invoke-static {v2}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->-$$Nest$fgetmStatus(Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;)I

    move-result v2

    .line 170
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer$2;->this$1:Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->-$$Nest$fputmSourceImageRef(Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;Lcom/facebook/common/references/CloseableReference;)V

    .line 171
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer$2;->this$1:Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->-$$Nest$fputmIsDirty(Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;Z)V

    .line 172
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_36

    .line 174
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->isValid(Lcom/facebook/common/references/CloseableReference;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 176
    :try_start_22
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer$2;->this$1:Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;

    invoke-static {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->-$$Nest$mdoPostprocessing(Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;Lcom/facebook/common/references/CloseableReference;I)V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_2b

    .line 178
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    goto :goto_30

    :catchall_2b
    move-exception v0

    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 179
    throw v0

    .line 181
    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer$2;->this$1:Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;->-$$Nest$mclearRunningAndStartIfDirty(Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;)V

    return-void

    :catchall_36
    move-exception v1

    .line 172
    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v1
.end method

###### Class com.facebook.imagepipeline.producers.PostprocessorProducer.RepeatedPostprocessorConsumer (com.facebook.imagepipeline.producers.PostprocessorProducer$RepeatedPostprocessorConsumer)
.class Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer;
.super Lcom/facebook/imagepipeline/producers/DelegatingConsumer;
.source "PostprocessorProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/request/RepeatedPostprocessorRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/PostprocessorProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RepeatedPostprocessorConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/DelegatingConsumer<",
        "Lcom/facebook/common/references/CloseableReference<",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        ">;",
        "Lcom/facebook/common/references/CloseableReference<",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        ">;>;",
        "Lcom/facebook/imagepipeline/request/RepeatedPostprocessorRunner;"
    }
.end annotation


# instance fields
.field private mIsClosed:Z

.field private mSourceImageRef:Lcom/facebook/common/references/CloseableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lcom/facebook/imagepipeline/producers/PostprocessorProducer;


# direct methods
.method static bridge synthetic -$$Nest$mclose(Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer;)Z
    .registers 1

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer;->close()Z

    move-result p0

    return p0
.end method

.method private constructor <init>(Lcom/facebook/imagepipeline/producers/PostprocessorProducer;Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;Lcom/facebook/imagepipeline/request/RepeatedPostprocessor;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .registers 5

    .line 345
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer;->this$0:Lcom/facebook/imagepipeline/producers/PostprocessorProducer;

    .line 346
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    const/4 p2, 0x0

    .line 335
    iput-boolean p2, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer;->mIsClosed:Z

    const/4 p2, 0x0

    .line 338
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer;->mSourceImageRef:Lcom/facebook/common/references/CloseableReference;

    .line 347
    invoke-interface {p3, p0}, Lcom/facebook/imagepipeline/request/RepeatedPostprocessor;->setCallback(Lcom/facebook/imagepipeline/request/RepeatedPostprocessorRunner;)V

    .line 348
    new-instance p2, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer$1;

    invoke-direct {p2, p0, p1}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer$1;-><init>(Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer;Lcom/facebook/imagepipeline/producers/PostprocessorProducer;)V

    invoke-interface {p4, p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->addCallbacks(Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/producers/PostprocessorProducer;Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;Lcom/facebook/imagepipeline/request/RepeatedPostprocessor;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/producers/PostprocessorProducer-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer;-><init>(Lcom/facebook/imagepipeline/producers/PostprocessorProducer;Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;Lcom/facebook/imagepipeline/request/RepeatedPostprocessor;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    return-void
.end method

.method private close()Z
    .registers 3

    .line 420
    monitor-enter p0

    .line 421
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer;->mIsClosed:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 422
    monitor-exit p0

    return v0

    .line 424
    :cond_8
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer;->mSourceImageRef:Lcom/facebook/common/references/CloseableReference;

    const/4 v1, 0x0

    .line 425
    iput-object v1, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer;->mSourceImageRef:Lcom/facebook/common/references/CloseableReference;

    const/4 v1, 0x1

    .line 426
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer;->mIsClosed:Z

    .line 427
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_15

    .line 428
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    return v1

    :catchall_15
    move-exception v0

    .line 427
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method private setSourceImageRef(Lcom/facebook/common/references/CloseableReference;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;)V"
        }
    .end annotation

    .line 408
    monitor-enter p0

    .line 409
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer;->mIsClosed:Z

    if-eqz v0, :cond_7

    .line 410
    monitor-exit p0

    return-void

    .line 412
    :cond_7
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer;->mSourceImageRef:Lcom/facebook/common/references/CloseableReference;

    .line 413
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->cloneOrNull(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer;->mSourceImageRef:Lcom/facebook/common/references/CloseableReference;

    .line 414
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_14

    .line 415
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    return-void

    :catchall_14
    move-exception p1

    .line 414
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method private updateInternal()V
    .registers 4

    .line 393
    monitor-enter p0

    .line 394
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer;->mIsClosed:Z

    if-eqz v0, :cond_7

    .line 395
    monitor-exit p0

    return-void

    .line 397
    :cond_7
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer;->mSourceImageRef:Lcom/facebook/common/references/CloseableReference;

    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->cloneOrNull(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    .line 398
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1f

    .line 400
    :try_start_e
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_1a

    .line 402
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    return-void

    :catchall_1a
    move-exception v1

    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 403
    throw v1

    :catchall_1f
    move-exception v0

    .line 398
    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method


# virtual methods
.method protected onCancellationImpl()V
    .registers 2

    .line 380
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer;->close()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 381
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/Consumer;->onCancellation()V

    :cond_d
    return-void
.end method

.method protected onFailureImpl(Ljava/lang/Throwable;)V
    .registers 3

    .line 373
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer;->close()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 374
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/Consumer;->onFailure(Ljava/lang/Throwable;)V

    :cond_d
    return-void
.end method

.method protected onNewResultImpl(Lcom/facebook/common/references/CloseableReference;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;I)V"
        }
    .end annotation

    .line 364
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer;->isNotLast(I)Z

    move-result p2

    if-eqz p2, :cond_7

    return-void

    .line 367
    :cond_7
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer;->setSourceImageRef(Lcom/facebook/common/references/CloseableReference;)V

    .line 368
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer;->updateInternal()V

    return-void
.end method

.method protected bridge synthetic onNewResultImpl(Ljava/lang/Object;I)V
    .registers 3

    .line 330
    check-cast p1, Lcom/facebook/common/references/CloseableReference;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer;->onNewResultImpl(Lcom/facebook/common/references/CloseableReference;I)V

    return-void
.end method

.method public declared-synchronized update()V
    .registers 2

    monitor-enter p0

    .line 387
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer;->updateInternal()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 388
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw v0
.end method

###### Class com.facebook.imagepipeline.producers.PostprocessorProducer.RepeatedPostprocessorConsumer.AnonymousClass1 (com.facebook.imagepipeline.producers.PostprocessorProducer$RepeatedPostprocessorConsumer$1)
.class Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer$1;
.super Lcom/facebook/imagepipeline/producers/BaseProducerContextCallbacks;
.source "PostprocessorProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer;-><init>(Lcom/facebook/imagepipeline/producers/PostprocessorProducer;Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;Lcom/facebook/imagepipeline/request/RepeatedPostprocessor;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer;

.field final synthetic val$this$0:Lcom/facebook/imagepipeline/producers/PostprocessorProducer;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer;Lcom/facebook/imagepipeline/producers/PostprocessorProducer;)V
    .registers 3

    .line 349
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer$1;->this$1:Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer$1;->val$this$0:Lcom/facebook/imagepipeline/producers/PostprocessorProducer;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/BaseProducerContextCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancellationRequested()V
    .registers 2

    .line 352
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer$1;->this$1:Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer;->-$$Nest$mclose(Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 353
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer$1;->this$1:Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$RepeatedPostprocessorConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/Consumer;->onCancellation()V

    :cond_11
    return-void
.end method

###### Class com.facebook.imagepipeline.producers.PostprocessorProducer.SingleUsePostprocessorConsumer (com.facebook.imagepipeline.producers.PostprocessorProducer$SingleUsePostprocessorConsumer)
.class Lcom/facebook/imagepipeline/producers/PostprocessorProducer$SingleUsePostprocessorConsumer;
.super Lcom/facebook/imagepipeline/producers/DelegatingConsumer;
.source "PostprocessorProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/PostprocessorProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SingleUsePostprocessorConsumer"
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
.field final synthetic this$0:Lcom/facebook/imagepipeline/producers/PostprocessorProducer;


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/producers/PostprocessorProducer;Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;)V
    .registers 3

    .line 306
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$SingleUsePostprocessorConsumer;->this$0:Lcom/facebook/imagepipeline/producers/PostprocessorProducer;

    .line 307
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/producers/PostprocessorProducer;Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;Lcom/facebook/imagepipeline/producers/PostprocessorProducer-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$SingleUsePostprocessorConsumer;-><init>(Lcom/facebook/imagepipeline/producers/PostprocessorProducer;Lcom/facebook/imagepipeline/producers/PostprocessorProducer$PostprocessorConsumer;)V

    return-void
.end method


# virtual methods
.method protected onNewResultImpl(Lcom/facebook/common/references/CloseableReference;I)V
    .registers 4
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

    .line 314
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$SingleUsePostprocessorConsumer;->isNotLast(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 317
    :cond_7
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$SingleUsePostprocessorConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V

    return-void
.end method

.method protected bridge synthetic onNewResultImpl(Ljava/lang/Object;I)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 302
    check-cast p1, Lcom/facebook/common/references/CloseableReference;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/PostprocessorProducer$SingleUsePostprocessorConsumer;->onNewResultImpl(Lcom/facebook/common/references/CloseableReference;I)V

    return-void
.end method
