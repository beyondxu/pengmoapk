###### Class com.facebook.datasource.RetainingDataSourceSupplier (com.facebook.datasource.RetainingDataSourceSupplier)
.class public Lcom/facebook/datasource/RetainingDataSourceSupplier;
.super Ljava/lang/Object;
.source "RetainingDataSourceSupplier.java"

# interfaces
.implements Lcom/facebook/common/internal/Supplier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/common/internal/Supplier<",
        "Lcom/facebook/datasource/DataSource<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private mCurrentDataSourceSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mDataSources:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 25
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/datasource/RetainingDataSourceSupplier;->mDataSources:Ljava/util/Set;

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/facebook/datasource/RetainingDataSourceSupplier;->mCurrentDataSourceSupplier:Lcom/facebook/common/internal/Supplier;

    return-void
.end method


# virtual methods
.method public get()Lcom/facebook/datasource/DataSource;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;-><init>(Lcom/facebook/datasource/RetainingDataSourceSupplier-IA;)V

    .line 32
    iget-object v1, p0, Lcom/facebook/datasource/RetainingDataSourceSupplier;->mCurrentDataSourceSupplier:Lcom/facebook/common/internal/Supplier;

    invoke-virtual {v0, v1}, Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;->setSupplier(Lcom/facebook/common/internal/Supplier;)V

    .line 33
    iget-object v1, p0, Lcom/facebook/datasource/RetainingDataSourceSupplier;->mDataSources:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lcom/facebook/datasource/RetainingDataSourceSupplier;->get()Lcom/facebook/datasource/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public replaceSupplier(Lcom/facebook/common/internal/Supplier;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/facebook/datasource/RetainingDataSourceSupplier;->mCurrentDataSourceSupplier:Lcom/facebook/common/internal/Supplier;

    .line 39
    iget-object v0, p0, Lcom/facebook/datasource/RetainingDataSourceSupplier;->mDataSources:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;

    .line 40
    invoke-virtual {v1}, Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;->isClosed()Z

    move-result v2

    if-nez v2, :cond_8

    .line 41
    invoke-virtual {v1, p1}, Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;->setSupplier(Lcom/facebook/common/internal/Supplier;)V

    goto :goto_8

    :cond_1e
    return-void
.end method

###### Class com.facebook.datasource.RetainingDataSourceSupplier.RetainingDataSource (com.facebook.datasource.RetainingDataSourceSupplier$RetainingDataSource)
.class Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;
.super Lcom/facebook/datasource/AbstractDataSource;
.source "RetainingDataSourceSupplier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/datasource/RetainingDataSourceSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RetainingDataSource"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource$InternalDataSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/datasource/AbstractDataSource<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mDataSource:Lcom/facebook/datasource/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$monDataSourceFailed(Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;->onDataSourceFailed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monDataSourceNewResult(Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;Lcom/facebook/datasource/DataSource;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;->onDataSourceNewResult(Lcom/facebook/datasource/DataSource;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monDatasourceProgress(Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;Lcom/facebook/datasource/DataSource;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;->onDatasourceProgress(Lcom/facebook/datasource/DataSource;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Lcom/facebook/datasource/AbstractDataSource;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;->mDataSource:Lcom/facebook/datasource/DataSource;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/datasource/RetainingDataSourceSupplier-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;-><init>()V

    return-void
.end method

.method private static closeSafely(Lcom/facebook/datasource/DataSource;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_5

    .line 121
    invoke-interface {p0}, Lcom/facebook/datasource/DataSource;->close()Z

    :cond_5
    return-void
.end method

.method private onDataSourceFailed()V
    .registers 1

    return-void
.end method

.method private onDataSourceNewResult(Lcom/facebook/datasource/DataSource;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;)V"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;->mDataSource:Lcom/facebook/datasource/DataSource;

    if-ne p1, v0, :cond_d

    const/4 v0, 0x0

    .line 105
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->getExtras()Ljava/util/Map;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;->setResult(Ljava/lang/Object;ZLjava/util/Map;)Z

    :cond_d
    return-void
.end method

.method private onDatasourceProgress(Lcom/facebook/datasource/DataSource;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;)V"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;->mDataSource:Lcom/facebook/datasource/DataSource;

    if-ne p1, v0, :cond_b

    .line 115
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->getProgress()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;->setProgress(F)Z

    :cond_b
    return-void
.end method


# virtual methods
.method public close()Z
    .registers 3

    .line 89
    monitor-enter p0

    .line 92
    :try_start_1
    invoke-super {p0}, Lcom/facebook/datasource/AbstractDataSource;->close()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    .line 93
    monitor-exit p0

    return v0

    .line 95
    :cond_a
    iget-object v0, p0, Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;->mDataSource:Lcom/facebook/datasource/DataSource;

    const/4 v1, 0x0

    .line 96
    iput-object v1, p0, Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;->mDataSource:Lcom/facebook/datasource/DataSource;

    .line 97
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_15

    .line 99
    invoke-static {v0}, Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;->closeSafely(Lcom/facebook/datasource/DataSource;)V

    const/4 v0, 0x1

    return v0

    :catchall_15
    move-exception v0

    .line 97
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public declared-synchronized getResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 78
    :try_start_1
    iget-object v0, p0, Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;->mDataSource:Lcom/facebook/datasource/DataSource;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/facebook/datasource/DataSource;->getResult()Ljava/lang/Object;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_d

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method public hasMultipleResults()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized hasResult()Z
    .registers 2

    monitor-enter p0

    .line 83
    :try_start_1
    iget-object v0, p0, Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;->mDataSource:Lcom/facebook/datasource/DataSource;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/facebook/datasource/DataSource;->hasResult()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_10

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public setSupplier(Lcom/facebook/common/internal/Supplier;)V
    .registers 5
    .param p1    # Lcom/facebook/common/internal/Supplier;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    if-eqz p1, :cond_11

    .line 57
    invoke-interface {p1}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/datasource/DataSource;

    goto :goto_12

    :cond_11
    move-object p1, v0

    .line 58
    :goto_12
    monitor-enter p0

    .line 59
    :try_start_13
    invoke-virtual {p0}, Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 61
    invoke-static {p1}, Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;->closeSafely(Lcom/facebook/datasource/DataSource;)V

    .line 62
    monitor-exit p0

    return-void

    .line 64
    :cond_1e
    iget-object v1, p0, Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;->mDataSource:Lcom/facebook/datasource/DataSource;

    .line 65
    iput-object p1, p0, Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;->mDataSource:Lcom/facebook/datasource/DataSource;

    .line 67
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_35

    if-eqz p1, :cond_31

    .line 69
    new-instance v2, Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource$InternalDataSubscriber;

    invoke-direct {v2, p0, v0}, Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource$InternalDataSubscriber;-><init>(Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;Lcom/facebook/datasource/RetainingDataSourceSupplier-IA;)V

    invoke-static {}, Lcom/facebook/common/executors/CallerThreadExecutor;->getInstance()Lcom/facebook/common/executors/CallerThreadExecutor;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/facebook/datasource/DataSource;->subscribe(Lcom/facebook/datasource/DataSubscriber;Ljava/util/concurrent/Executor;)V

    .line 72
    :cond_31
    invoke-static {v1}, Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;->closeSafely(Lcom/facebook/datasource/DataSource;)V

    return-void

    :catchall_35
    move-exception p1

    .line 67
    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw p1
.end method

###### Class com.facebook.datasource.RetainingDataSourceSupplier.RetainingDataSource.InternalDataSubscriber (com.facebook.datasource.RetainingDataSourceSupplier$RetainingDataSource$InternalDataSubscriber)
.class Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource$InternalDataSubscriber;
.super Ljava/lang/Object;
.source "RetainingDataSourceSupplier.java"

# interfaces
.implements Lcom/facebook/datasource/DataSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalDataSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/datasource/DataSubscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;


# direct methods
.method private constructor <init>(Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource$InternalDataSubscriber;->this$0:Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;Lcom/facebook/datasource/RetainingDataSourceSupplier-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource$InternalDataSubscriber;-><init>(Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;)V

    return-void
.end method


# virtual methods
.method public onCancellation(Lcom/facebook/datasource/DataSource;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method

.method public onFailure(Lcom/facebook/datasource/DataSource;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;)V"
        }
    .end annotation

    .line 137
    iget-object p1, p0, Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource$InternalDataSubscriber;->this$0:Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;

    invoke-static {p1}, Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;->-$$Nest$monDataSourceFailed(Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;)V

    return-void
.end method

.method public onNewResult(Lcom/facebook/datasource/DataSource;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;)V"
        }
    .end annotation

    .line 128
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 129
    iget-object v0, p0, Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource$InternalDataSubscriber;->this$0:Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;

    invoke-static {v0, p1}, Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;->-$$Nest$monDataSourceNewResult(Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;Lcom/facebook/datasource/DataSource;)V

    return-void

    .line 130
    :cond_c
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 131
    iget-object p1, p0, Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource$InternalDataSubscriber;->this$0:Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;

    invoke-static {p1}, Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;->-$$Nest$monDataSourceFailed(Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;)V

    :cond_17
    return-void
.end method

.method public onProgressUpdate(Lcom/facebook/datasource/DataSource;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;)V"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource$InternalDataSubscriber;->this$0:Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;

    invoke-static {v0, p1}, Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;->-$$Nest$monDatasourceProgress(Lcom/facebook/datasource/RetainingDataSourceSupplier$RetainingDataSource;Lcom/facebook/datasource/DataSource;)V

    return-void
.end method
