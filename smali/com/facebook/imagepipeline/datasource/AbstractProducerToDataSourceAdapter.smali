###### Class com.facebook.imagepipeline.datasource.AbstractProducerToDataSourceAdapter (com.facebook.imagepipeline.datasource.AbstractProducerToDataSourceAdapter)
.class public abstract Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;
.super Lcom/facebook/datasource/AbstractDataSource;
.source "AbstractProducerToDataSourceAdapter.kt"

# interfaces
.implements Lcom/facebook/imagepipeline/request/HasImageRequest;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/datasource/AbstractDataSource<",
        "TT;>;",
        "Lcom/facebook/imagepipeline/request/HasImageRequest;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractProducerToDataSourceAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractProducerToDataSourceAdapter.kt\ncom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter\n+ 2 FrescoSystrace.kt\ncom/facebook/imagepipeline/systrace/FrescoSystrace\n*L\n1#1,106:1\n40#2,2:107\n40#2,9:109\n40#2,9:118\n44#2,3:127\n40#2,9:130\n40#2,9:139\n48#2:148\n*S KotlinDebug\n*F\n+ 1 AbstractProducerToDataSourceAdapter.kt\ncom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter\n*L\n95#1:107,2\n97#1:109,9\n100#1:118,9\n95#1:127,3\n97#1:130,9\n100#1:139,9\n95#1:148\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u0008\'\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u00020\u0003B\'\u0008\u0004\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000e\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0011H\u0002J\'\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0014\u00a2\u0006\u0002\u0010\u0019J\u001e\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u001d0\u001b2\u0006\u0010\u0017\u001a\u00020\u0018H\u0004J\u0010\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0008\u0010!\u001a\u00020\u0013H\u0002J\u0008\u0010&\u001a\u00020\'H\u0016R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\"\u001a\u0004\u0018\u00010#8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010%\u00a8\u0006("
    }
    d2 = {
        "Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;",
        "T",
        "Lcom/facebook/datasource/AbstractDataSource;",
        "Lcom/facebook/imagepipeline/request/HasImageRequest;",
        "producer",
        "Lcom/facebook/imagepipeline/producers/Producer;",
        "settableProducerContext",
        "Lcom/facebook/imagepipeline/producers/SettableProducerContext;",
        "requestListener",
        "Lcom/facebook/imagepipeline/listener/RequestListener2;",
        "<init>",
        "(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/producers/SettableProducerContext;Lcom/facebook/imagepipeline/listener/RequestListener2;)V",
        "getSettableProducerContext",
        "()Lcom/facebook/imagepipeline/producers/SettableProducerContext;",
        "getRequestListener",
        "()Lcom/facebook/imagepipeline/listener/RequestListener2;",
        "createConsumer",
        "Lcom/facebook/imagepipeline/producers/Consumer;",
        "onNewResultImpl",
        "",
        "result",
        "status",
        "",
        "producerContext",
        "Lcom/facebook/imagepipeline/producers/ProducerContext;",
        "(Ljava/lang/Object;ILcom/facebook/imagepipeline/producers/ProducerContext;)V",
        "getExtras",
        "",
        "",
        "",
        "onFailureImpl",
        "throwable",
        "",
        "onCancellationImpl",
        "imageRequest",
        "Lcom/facebook/imagepipeline/request/ImageRequest;",
        "getImageRequest",
        "()Lcom/facebook/imagepipeline/request/ImageRequest;",
        "close",
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
.field private final requestListener:Lcom/facebook/imagepipeline/listener/RequestListener2;

.field private final settableProducerContext:Lcom/facebook/imagepipeline/producers/SettableProducerContext;


# direct methods
.method protected constructor <init>(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/producers/SettableProducerContext;Lcom/facebook/imagepipeline/listener/RequestListener2;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/SettableProducerContext;",
            "Lcom/facebook/imagepipeline/listener/RequestListener2;",
            ")V"
        }
    .end annotation

    const-string v0, "producer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settableProducerContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Lcom/facebook/datasource/AbstractDataSource;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->settableProducerContext:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    .line 33
    iput-object p3, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->requestListener:Lcom/facebook/imagepipeline/listener/RequestListener2;

    .line 95
    sget-object v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    .line 107
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    const-string v1, "AbstractProducerToDataSourceAdapter()->produceResult"

    const-string v2, "AbstractProducerToDataSourceAdapter()->onRequestStart"

    if-nez v0, :cond_74

    .line 96
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/SettableProducerContext;->getExtras()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->setExtras(Ljava/util/Map;)V

    .line 97
    sget-object v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    .line 109
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-nez v0, :cond_38

    .line 98
    move-object v0, p2

    check-cast v0, Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {p3, v0}, Lcom/facebook/imagepipeline/listener/RequestListener2;->onRequestStart(Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    goto :goto_46

    .line 113
    :cond_38
    invoke-static {v2}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 98
    :try_start_3b
    move-object v0, p2

    check-cast v0, Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {p3, v0}, Lcom/facebook/imagepipeline/listener/RequestListener2;->onRequestStart(Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 99
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_6f

    .line 117
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 100
    :goto_46
    sget-object p3, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    .line 118
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p3

    if-nez p3, :cond_58

    .line 101
    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->createConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object p3

    check-cast p2, Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {p1, p3, p2}, Lcom/facebook/imagepipeline/producers/Producer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    return-void

    .line 122
    :cond_58
    invoke-static {v1}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 101
    :try_start_5b
    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->createConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object p3

    check-cast p2, Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {p1, p3, p2}, Lcom/facebook/imagepipeline/producers/Producer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 102
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_66
    .catchall {:try_start_5b .. :try_end_66} :catchall_6a

    .line 126
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    return-void

    :catchall_6a
    move-exception p1

    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    throw p1

    :catchall_6f
    move-exception p1

    .line 117
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    throw p1

    .line 127
    :cond_74
    const-string v0, "AbstractProducerToDataSourceAdapter()"

    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 96
    :try_start_79
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/SettableProducerContext;->getExtras()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->setExtras(Ljava/util/Map;)V

    .line 97
    sget-object v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    .line 130
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-nez v0, :cond_8f

    .line 98
    move-object v0, p2

    check-cast v0, Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {p3, v0}, Lcom/facebook/imagepipeline/listener/RequestListener2;->onRequestStart(Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    goto :goto_9d

    .line 134
    :cond_8f
    invoke-static {v2}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V
    :try_end_92
    .catchall {:try_start_79 .. :try_end_92} :catchall_d0

    .line 98
    :try_start_92
    move-object v0, p2

    check-cast v0, Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {p3, v0}, Lcom/facebook/imagepipeline/listener/RequestListener2;->onRequestStart(Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 99
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9a
    .catchall {:try_start_92 .. :try_end_9a} :catchall_cb

    .line 138
    :try_start_9a
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 100
    :goto_9d
    sget-object p3, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    .line 139
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p3

    if-nez p3, :cond_af

    .line 101
    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->createConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object p3

    check-cast p2, Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {p1, p3, p2}, Lcom/facebook/imagepipeline/producers/Producer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    goto :goto_c0

    .line 143
    :cond_af
    invoke-static {v1}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V
    :try_end_b2
    .catchall {:try_start_9a .. :try_end_b2} :catchall_d0

    .line 101
    :try_start_b2
    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->createConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object p3

    check-cast p2, Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {p1, p3, p2}, Lcom/facebook/imagepipeline/producers/Producer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 102
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_bd
    .catchall {:try_start_b2 .. :try_end_bd} :catchall_c6

    .line 147
    :try_start_bd
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 103
    :goto_c0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_c2
    .catchall {:try_start_bd .. :try_end_c2} :catchall_d0

    .line 148
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    return-void

    :catchall_c6
    move-exception p1

    .line 147
    :try_start_c7
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    throw p1

    :catchall_cb
    move-exception p1

    .line 138
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    throw p1
    :try_end_d0
    .catchall {:try_start_c7 .. :try_end_d0} :catchall_d0

    :catchall_d0
    move-exception p1

    .line 148
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    throw p1
.end method

.method public static final synthetic access$onCancellationImpl(Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;)V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->onCancellationImpl()V

    return-void
.end method

.method public static final synthetic access$onFailureImpl(Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;Ljava/lang/Throwable;)V
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->onFailureImpl(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$setProgress(Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;F)Z
    .registers 2

    .line 28
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->setProgress(F)Z

    move-result p0

    return p0
.end method

.method private final createConsumer()Lcom/facebook/imagepipeline/producers/Consumer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "TT;>;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter$createConsumer$1;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter$createConsumer$1;-><init>(Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;)V

    check-cast v0, Lcom/facebook/imagepipeline/producers/Consumer;

    return-object v0
.end method

.method private final declared-synchronized onCancellationImpl()V
    .registers 2

    monitor-enter p0

    .line 77
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->isClosed()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 78
    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method private final onFailureImpl(Ljava/lang/Throwable;)V
    .registers 4

    .line 70
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->settableProducerContext:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    check-cast v0, Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->getExtras(Lcom/facebook/imagepipeline/producers/ProducerContext;)Ljava/util/Map;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/facebook/datasource/AbstractDataSource;->setFailure(Ljava/lang/Throwable;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 71
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->requestListener:Lcom/facebook/imagepipeline/listener/RequestListener2;

    iget-object v1, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->settableProducerContext:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    check-cast v1, Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v0, v1, p1}, Lcom/facebook/imagepipeline/listener/RequestListener2;->onRequestFailure(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/Throwable;)V

    :cond_17
    return-void
.end method


# virtual methods
.method public close()Z
    .registers 3

    .line 84
    invoke-super {p0}, Lcom/facebook/datasource/AbstractDataSource;->close()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 87
    :cond_8
    invoke-super {p0}, Lcom/facebook/datasource/AbstractDataSource;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 88
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->requestListener:Lcom/facebook/imagepipeline/listener/RequestListener2;

    iget-object v1, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->settableProducerContext:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    check-cast v1, Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/listener/RequestListener2;->onRequestCancellation(Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 89
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->settableProducerContext:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/SettableProducerContext;->cancel()V

    :cond_1c
    const/4 v0, 0x1

    return v0
.end method

.method protected final getExtras(Lcom/facebook/imagepipeline/producers/ProducerContext;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "producerContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getExtras()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->settableProducerContext:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/SettableProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestListener()Lcom/facebook/imagepipeline/listener/RequestListener2;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->requestListener:Lcom/facebook/imagepipeline/listener/RequestListener2;

    return-object v0
.end method

.method public final getSettableProducerContext()Lcom/facebook/imagepipeline/producers/SettableProducerContext;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->settableProducerContext:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    return-object v0
.end method

.method protected onNewResultImpl(Ljava/lang/Object;ILcom/facebook/imagepipeline/producers/ProducerContext;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")V"
        }
    .end annotation

    const-string v0, "producerContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->isLast(I)Z

    move-result p2

    .line 59
    invoke-virtual {p0, p3}, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->getExtras(Lcom/facebook/imagepipeline/producers/ProducerContext;)Ljava/util/Map;

    move-result-object p3

    invoke-super {p0, p1, p2, p3}, Lcom/facebook/datasource/AbstractDataSource;->setResult(Ljava/lang/Object;ZLjava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_1e

    if-eqz p2, :cond_1e

    .line 61
    iget-object p1, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->requestListener:Lcom/facebook/imagepipeline/listener/RequestListener2;

    iget-object p2, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->settableProducerContext:Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    check-cast p2, Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {p1, p2}, Lcom/facebook/imagepipeline/listener/RequestListener2;->onRequestSuccess(Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    :cond_1e
    return-void
.end method

###### Class com.facebook.imagepipeline.datasource.AbstractProducerToDataSourceAdapter.AnonymousClass1 (com.facebook.imagepipeline.datasource.AbstractProducerToDataSourceAdapter$createConsumer$1)
.class public final Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter$createConsumer$1;
.super Lcom/facebook/imagepipeline/producers/BaseConsumer;
.source "AbstractProducerToDataSourceAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->createConsumer()Lcom/facebook/imagepipeline/producers/Consumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/BaseConsumer<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u001f\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0005\u001a\u00020\u0006H\u0014\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH\u0014J\u0008\u0010\u000b\u001a\u00020\u0003H\u0014J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH\u0014\u00a8\u0006\u000f"
    }
    d2 = {
        "com/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter$createConsumer$1",
        "Lcom/facebook/imagepipeline/producers/BaseConsumer;",
        "onNewResultImpl",
        "",
        "newResult",
        "status",
        "",
        "(Ljava/lang/Object;I)V",
        "onFailureImpl",
        "throwable",
        "",
        "onCancellationImpl",
        "onProgressUpdateImpl",
        "progress",
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
.field final synthetic this$0:Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter$createConsumer$1;->this$0:Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;

    .line 37
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/BaseConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCancellationImpl()V
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter$createConsumer$1;->this$0:Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;

    invoke-static {v0}, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->access$onCancellationImpl(Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;)V

    return-void
.end method

.method protected onFailureImpl(Ljava/lang/Throwable;)V
    .registers 3

    const-string/jumbo v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter$createConsumer$1;->this$0:Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;

    invoke-static {v0, p1}, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->access$onFailureImpl(Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onNewResultImpl(Ljava/lang/Object;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter$createConsumer$1;->this$0:Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;

    .line 40
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->getSettableProducerContext()Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 39
    invoke-virtual {v0, p1, p2, v1}, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->onNewResultImpl(Ljava/lang/Object;ILcom/facebook/imagepipeline/producers/ProducerContext;)V

    return-void
.end method

.method protected onProgressUpdateImpl(F)V
    .registers 3

    .line 52
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter$createConsumer$1;->this$0:Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;

    invoke-static {v0, p1}, Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;->access$setProgress(Lcom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter;F)Z

    return-void
.end method
