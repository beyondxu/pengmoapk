###### Class com.facebook.imagepipeline.producers.ThreadHandoffProducer (com.facebook.imagepipeline.producers.ThreadHandoffProducer)
.class public final Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;
.super Ljava/lang/Object;
.source "ThreadHandoffProducer.kt"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/Producer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/Producer<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nThreadHandoffProducer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThreadHandoffProducer.kt\ncom/facebook/imagepipeline/producers/ThreadHandoffProducer\n+ 2 FrescoSystrace.kt\ncom/facebook/imagepipeline/systrace/FrescoSystrace\n*L\n1#1,72:1\n40#2,9:73\n*S KotlinDebug\n*F\n+ 1 ThreadHandoffProducer.kt\ncom/facebook/imagepipeline/producers/ThreadHandoffProducer\n*L\n22#1:73,9\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u0012*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001\u0012B\u001d\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001e\u0010\u000c\u001a\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016R\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;",
        "T",
        "Lcom/facebook/imagepipeline/producers/Producer;",
        "inputProducer",
        "threadHandoffProducerQueue",
        "Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;",
        "<init>",
        "(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;)V",
        "getInputProducer",
        "()Lcom/facebook/imagepipeline/producers/Producer;",
        "getThreadHandoffProducerQueue",
        "()Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;",
        "produceResults",
        "",
        "consumer",
        "Lcom/facebook/imagepipeline/producers/Consumer;",
        "context",
        "Lcom/facebook/imagepipeline/producers/ProducerContext;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;

.field public static final PRODUCER_NAME:Ljava/lang/String; = "BackgroundThreadHandoffProducer"


# instance fields
.field private final inputProducer:Lcom/facebook/imagepipeline/producers/Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final threadHandoffProducerQueue:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;->Companion:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;",
            ")V"
        }
    .end annotation

    const-string v0, "inputProducer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "threadHandoffProducerQueue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;->inputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    .line 18
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;->threadHandoffProducerQueue:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;

    return-void
.end method


# virtual methods
.method public final getInputProducer()Lcom/facebook/imagepipeline/producers/Producer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "TT;>;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;->inputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    return-object v0
.end method

.method public final getThreadHandoffProducerQueue()Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;->threadHandoffProducerQueue:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;

    return-object v0
.end method

.method public produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")V"
        }
    .end annotation

    const-string v0, "consumer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    .line 73
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "BackgroundThreadHandoffProducer"

    if-nez v0, :cond_4e

    .line 23
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getProducerListener()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v0

    .line 24
    sget-object v3, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;->Companion:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;

    invoke-static {v3, p2}, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;->access$shouldRunImmediately(Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;Lcom/facebook/imagepipeline/producers/ProducerContext;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 25
    invoke-interface {v0, p2, v2}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerStart(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V

    .line 26
    invoke-interface {v0, p2, v2, v1}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerFinishWithSuccess(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    .line 27
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;->inputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Producer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    return-void

    .line 31
    :cond_2d
    new-instance v1, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$produceResults$1$statefulRunnable$1;

    invoke-direct {v1, p1, v0, p2, p0}, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$produceResults$1$statefulRunnable$1;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerListener2;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;)V

    check-cast v1, Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;

    .line 45
    new-instance p1, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$produceResults$1$1;

    invoke-direct {p1, v1, p0}, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$produceResults$1$1;-><init>(Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;)V

    check-cast p1, Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;

    .line 44
    invoke-interface {p2, p1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->addCallbacks(Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;)V

    .line 51
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;->threadHandoffProducerQueue:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;

    .line 52
    check-cast v1, Ljava/lang/Runnable;

    invoke-static {v3, p2}, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;->access$getInstrumentationTag(Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;Lcom/facebook/imagepipeline/producers/ProducerContext;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->decorateRunnable(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p2

    .line 51
    invoke-interface {p1, p2}, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;->addToQueueOrExecute(Ljava/lang/Runnable;)V

    return-void

    .line 77
    :cond_4e
    const-string v0, "ThreadHandoffProducer#produceResults"

    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 23
    :try_start_53
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getProducerListener()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v0

    .line 24
    sget-object v3, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;->Companion:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;

    invoke-static {v3, p2}, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;->access$shouldRunImmediately(Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;Lcom/facebook/imagepipeline/producers/ProducerContext;)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 25
    invoke-interface {v0, p2, v2}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerStart(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V

    .line 26
    invoke-interface {v0, p2, v2, v1}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerFinishWithSuccess(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    .line 27
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;->inputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Producer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    :try_end_6a
    .catchall {:try_start_53 .. :try_end_6a} :catchall_94

    .line 81
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    return-void

    .line 31
    :cond_6e
    :try_start_6e
    new-instance v1, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$produceResults$1$statefulRunnable$1;

    invoke-direct {v1, p1, v0, p2, p0}, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$produceResults$1$statefulRunnable$1;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerListener2;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;)V

    check-cast v1, Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;

    .line 45
    new-instance p1, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$produceResults$1$1;

    invoke-direct {p1, v1, p0}, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$produceResults$1$1;-><init>(Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;)V

    check-cast p1, Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;

    .line 44
    invoke-interface {p2, p1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->addCallbacks(Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;)V

    .line 51
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;->threadHandoffProducerQueue:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;

    .line 52
    check-cast v1, Ljava/lang/Runnable;

    invoke-static {v3, p2}, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;->access$getInstrumentationTag(Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;Lcom/facebook/imagepipeline/producers/ProducerContext;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->decorateRunnable(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p2

    .line 51
    invoke-interface {p1, p2}, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;->addToQueueOrExecute(Ljava/lang/Runnable;)V

    .line 53
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_90
    .catchall {:try_start_6e .. :try_end_90} :catchall_94

    .line 81
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    return-void

    :catchall_94
    move-exception p1

    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    throw p1
.end method

###### Class com.facebook.imagepipeline.producers.ThreadHandoffProducer.Companion (com.facebook.imagepipeline.producers.ThreadHandoffProducer$Companion)
.class public final Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;
.super Ljava/lang/Object;
.source "ThreadHandoffProducer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0008H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;",
        "",
        "<init>",
        "()V",
        "PRODUCER_NAME",
        "",
        "getInstrumentationTag",
        "context",
        "Lcom/facebook/imagepipeline/producers/ProducerContext;",
        "shouldRunImmediately",
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


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstrumentationTag(Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;Lcom/facebook/imagepipeline/producers/ProducerContext;)Ljava/lang/String;
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;->getInstrumentationTag(Lcom/facebook/imagepipeline/producers/ProducerContext;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$shouldRunImmediately(Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;Lcom/facebook/imagepipeline/producers/ProducerContext;)Z
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;->shouldRunImmediately(Lcom/facebook/imagepipeline/producers/ProducerContext;)Z

    move-result p0

    return p0
.end method

.method private final getInstrumentationTag(Lcom/facebook/imagepipeline/producers/ProducerContext;)Ljava/lang/String;
    .registers 4

    .line 60
    invoke-static {}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getId()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ThreadHandoffProducer_produceResults_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method private final shouldRunImmediately(Lcom/facebook/imagepipeline/producers/ProducerContext;)Z
    .registers 4

    .line 65
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImagePipelineConfig()Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->getExperiments()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->getHandOffOnUiThreadOnly()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_10

    return v0

    .line 68
    :cond_10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq p1, v1, :cond_20

    const/4 p1, 0x1

    return p1

    :cond_20
    return v0
.end method

###### Class com.facebook.imagepipeline.producers.ThreadHandoffProducer$produceResults$1$1 (com.facebook.imagepipeline.producers.ThreadHandoffProducer$produceResults$1$1)
.class public final Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$produceResults$1$1;
.super Lcom/facebook/imagepipeline/producers/BaseProducerContextCallbacks;
.source "ThreadHandoffProducer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/facebook/imagepipeline/producers/ThreadHandoffProducer$produceResults$1$1",
        "Lcom/facebook/imagepipeline/producers/BaseProducerContextCallbacks;",
        "onCancellationRequested",
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
.field final synthetic $statefulRunnable:Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$produceResults$1$1;->$statefulRunnable:Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$produceResults$1$1;->this$0:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;

    .line 45
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/BaseProducerContextCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancellationRequested()V
    .registers 3

    .line 47
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$produceResults$1$1;->$statefulRunnable:Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;->cancel()V

    .line 48
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$produceResults$1$1;->this$0:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;->getThreadHandoffProducerQueue()Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$produceResults$1$1;->$statefulRunnable:Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;->remove(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.facebook.imagepipeline.producers.ThreadHandoffProducer$produceResults$1$statefulRunnable$1 (com.facebook.imagepipeline.producers.ThreadHandoffProducer$produceResults$1$statefulRunnable$1)
.class public final Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$produceResults$1$statefulRunnable$1;
.super Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;
.source "ThreadHandoffProducer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u0017\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00018\u0000H\u0014\u00a2\u0006\u0002\u0010\u0005J\u0017\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00018\u0000H\u0014\u00a2\u0006\u0002\u0010\u0005J\u000f\u0010\u0007\u001a\u0004\u0018\u00018\u0000H\u0014\u00a2\u0006\u0002\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "com/facebook/imagepipeline/producers/ThreadHandoffProducer$produceResults$1$statefulRunnable$1",
        "Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;",
        "onSuccess",
        "",
        "ignored",
        "(Ljava/lang/Object;)V",
        "disposeResult",
        "getResult",
        "()Ljava/lang/Object;",
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
.field final synthetic $consumer:Lcom/facebook/imagepipeline/producers/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $context:Lcom/facebook/imagepipeline/producers/ProducerContext;

.field final synthetic $producerListener:Lcom/facebook/imagepipeline/producers/ProducerListener2;

.field final synthetic this$0:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerListener2;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/ProducerListener2;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            "Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$produceResults$1$statefulRunnable$1;->$consumer:Lcom/facebook/imagepipeline/producers/Consumer;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$produceResults$1$statefulRunnable$1;->$producerListener:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$produceResults$1$statefulRunnable$1;->$context:Lcom/facebook/imagepipeline/producers/ProducerContext;

    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$produceResults$1$statefulRunnable$1;->this$0:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;

    .line 31
    const-string p4, "BackgroundThreadHandoffProducer"

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/producers/StatefulProducerRunnable;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerListener2;Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected disposeResult(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method protected getResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onSuccess(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 33
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$produceResults$1$statefulRunnable$1;->$producerListener:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$produceResults$1$statefulRunnable$1;->$context:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v1, "BackgroundThreadHandoffProducer"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerFinishWithSuccess(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    .line 34
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$produceResults$1$statefulRunnable$1;->this$0:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;->getInputProducer()Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$produceResults$1$statefulRunnable$1;->$consumer:Lcom/facebook/imagepipeline/producers/Consumer;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$produceResults$1$statefulRunnable$1;->$context:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {p1, v0, v1}, Lcom/facebook/imagepipeline/producers/Producer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    return-void
.end method
