###### Class com.facebook.datasource.IncreasingQualityDataSourceSupplier (com.facebook.datasource.IncreasingQualityDataSourceSupplier)
.class public Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;
.super Ljava/lang/Object;
.source "IncreasingQualityDataSourceSupplier.java"

# interfaces
.implements Lcom/facebook/common/internal/Supplier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;
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
.field private final mDataSourceLazy:Z

.field private final mDataSourceSuppliers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmDataSourceLazy(Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;->mDataSourceLazy:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDataSourceSuppliers(Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;->mDataSourceSuppliers:Ljava/util/List;

    return-object p0
.end method

.method private constructor <init>(Ljava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;>;>;Z)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "List of suppliers is empty!"

    invoke-static {v0, v1}, Lcom/facebook/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 46
    iput-object p1, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;->mDataSourceSuppliers:Ljava/util/List;

    .line 47
    iput-boolean p2, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;->mDataSourceLazy:Z

    return-void
.end method

.method public static create(Ljava/util/List;)Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;>;>;)",
            "Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 60
    invoke-static {p0, v0}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;->create(Ljava/util/List;Z)Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/util/List;Z)Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;>;>;Z)",
            "Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier<",
            "TT;>;"
        }
    .end annotation

    .line 75
    new-instance v0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;

    invoke-direct {v0, p0, p1}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;-><init>(Ljava/util/List;Z)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    return p1

    .line 93
    :cond_4
    instance-of v0, p1, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 96
    :cond_a
    check-cast p1, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;

    .line 97
    iget-object v0, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;->mDataSourceSuppliers:Ljava/util/List;

    iget-object p1, p1, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;->mDataSourceSuppliers:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get()Lcom/facebook/datasource/DataSource;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;"
        }
    .end annotation

    .line 80
    new-instance v0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;

    invoke-direct {v0, p0}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;-><init>(Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 36
    invoke-virtual {p0}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;->get()Lcom/facebook/datasource/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;->mDataSourceSuppliers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 102
    invoke-static {p0}, Lcom/facebook/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "list"

    iget-object v2, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;->mDataSourceSuppliers:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.datasource.IncreasingQualityDataSourceSupplier.IncreasingQualityDataSource (com.facebook.datasource.IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource)
.class Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;
.super Lcom/facebook/datasource/AbstractDataSource;
.source "IncreasingQualityDataSourceSupplier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncreasingQualityDataSource"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource$InternalDataSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/datasource/AbstractDataSource<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mDataSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mDelayedError:Ljava/lang/Throwable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mDelayedExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mFinishedDataSources:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mIndexOfDataSourceWithResult:I

.field private mNumberOfDataSources:I

.field final synthetic this$0:Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;


# direct methods
.method static bridge synthetic -$$Nest$monDataSourceFailed(Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;ILcom/facebook/datasource/DataSource;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->onDataSourceFailed(ILcom/facebook/datasource/DataSource;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monDataSourceNewResult(Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;ILcom/facebook/datasource/DataSource;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->onDataSourceNewResult(ILcom/facebook/datasource/DataSource;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->this$0:Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;

    invoke-direct {p0}, Lcom/facebook/datasource/AbstractDataSource;-><init>()V

    .line 121
    invoke-static {p1}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;->-$$Nest$fgetmDataSourceLazy(Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 122
    invoke-direct {p0}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->ensureDataSourceInitialized()V

    :cond_e
    return-void
.end method

.method private closeSafely(Lcom/facebook/datasource/DataSource;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 280
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->close()Z

    :cond_5
    return-void
.end method

.method private ensureDataSourceInitialized()V
    .registers 6

    .line 127
    iget-object v0, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->mFinishedDataSources:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_5

    return-void

    .line 131
    :cond_5
    monitor-enter p0

    .line 132
    :try_start_6
    iget-object v0, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->mFinishedDataSources:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_56

    .line 133
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->mFinishedDataSources:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 134
    iget-object v0, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->this$0:Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;

    invoke-static {v0}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;->-$$Nest$fgetmDataSourceSuppliers(Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 135
    iput v0, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->mNumberOfDataSources:I

    .line 136
    iput v0, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->mIndexOfDataSourceWithResult:I

    .line 137
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->mDataSources:Ljava/util/ArrayList;

    :goto_27
    if-ge v1, v0, :cond_56

    .line 139
    iget-object v2, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->this$0:Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;

    invoke-static {v2}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;->-$$Nest$fgetmDataSourceSuppliers(Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/common/internal/Supplier;

    invoke-interface {v2}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/datasource/DataSource;

    .line 140
    iget-object v3, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->mDataSources:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v3, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource$InternalDataSubscriber;

    invoke-direct {v3, p0, v1}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource$InternalDataSubscriber;-><init>(Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;I)V

    invoke-static {}, Lcom/facebook/common/executors/CallerThreadExecutor;->getInstance()Lcom/facebook/common/executors/CallerThreadExecutor;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/facebook/datasource/DataSource;->subscribe(Lcom/facebook/datasource/DataSubscriber;Ljava/util/concurrent/Executor;)V

    .line 144
    invoke-interface {v2}, Lcom/facebook/datasource/DataSource;->hasResult()Z

    move-result v2

    if-eqz v2, :cond_53

    goto :goto_56

    :cond_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 149
    :cond_56
    :goto_56
    monitor-exit p0

    return-void

    :catchall_58
    move-exception v0

    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_6 .. :try_end_5a} :catchall_58

    throw v0
.end method

.method private declared-synchronized getAndClearDataSource(I)Lcom/facebook/datasource/DataSource;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 159
    :try_start_1
    iget-object v0, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->mDataSources:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_15

    iget-object v0, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->mDataSources:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/facebook/datasource/DataSource;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    :cond_15
    monitor-exit p0

    return-object v1

    :catchall_17
    move-exception p1

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p1
.end method

.method private declared-synchronized getDataSource(I)Lcom/facebook/datasource/DataSource;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 154
    :try_start_1
    iget-object v0, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->mDataSources:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_14

    iget-object v0, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->mDataSources:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/datasource/DataSource;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_17

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    monitor-exit p0

    return-object p1

    :catchall_17
    move-exception p1

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p1
.end method

.method private declared-synchronized getDataSourceWithResult()Lcom/facebook/datasource/DataSource;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 164
    :try_start_1
    iget v0, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->mIndexOfDataSourceWithResult:I

    invoke-direct {p0, v0}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->getDataSource(I)Lcom/facebook/datasource/DataSource;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method private maybeSetFailure()V
    .registers 3

    .line 233
    iget-object v0, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->mFinishedDataSources:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 234
    iget v1, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->mNumberOfDataSources:I

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->mDelayedError:Ljava/lang/Throwable;

    if-eqz v0, :cond_13

    .line 235
    iget-object v1, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->mDelayedExtras:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->setFailure(Ljava/lang/Throwable;Ljava/util/Map;)Z

    :cond_13
    return-void
.end method

.method private maybeSetIndexOfDataSourceWithResult(ILcom/facebook/datasource/DataSource;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 243
    monitor-enter p0

    .line 244
    :try_start_1
    iget v0, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->mIndexOfDataSourceWithResult:I

    .line 246
    invoke-direct {p0, p1}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->getDataSource(I)Lcom/facebook/datasource/DataSource;

    move-result-object v1

    if-ne p2, v1, :cond_2d

    iget p2, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->mIndexOfDataSourceWithResult:I

    if-ne p1, p2, :cond_e

    goto :goto_2d

    .line 254
    :cond_e
    invoke-direct {p0}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->getDataSourceWithResult()Lcom/facebook/datasource/DataSource;

    move-result-object p2

    if-eqz p2, :cond_1d

    if-eqz p3, :cond_1b

    iget p2, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->mIndexOfDataSourceWithResult:I

    if-ge p1, p2, :cond_1b

    goto :goto_1d

    :cond_1b
    move p1, v0

    goto :goto_1f

    .line 257
    :cond_1d
    :goto_1d
    iput p1, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->mIndexOfDataSourceWithResult:I

    .line 259
    :goto_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_2f

    :goto_20
    if-le v0, p1, :cond_2c

    .line 263
    invoke-direct {p0, v0}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->getAndClearDataSource(I)Lcom/facebook/datasource/DataSource;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->closeSafely(Lcom/facebook/datasource/DataSource;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    :cond_2c
    return-void

    .line 247
    :cond_2d
    :goto_2d
    :try_start_2d
    monitor-exit p0

    return-void

    :catchall_2f
    move-exception p1

    .line 259
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_2f

    throw p1
.end method

.method private onDataSourceFailed(ILcom/facebook/datasource/DataSource;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;)V"
        }
    .end annotation

    .line 224
    invoke-direct {p0, p1, p2}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->tryGetAndClearDataSource(ILcom/facebook/datasource/DataSource;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->closeSafely(Lcom/facebook/datasource/DataSource;)V

    if-nez p1, :cond_15

    .line 226
    invoke-interface {p2}, Lcom/facebook/datasource/DataSource;->getFailureCause()Ljava/lang/Throwable;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->mDelayedError:Ljava/lang/Throwable;

    .line 227
    invoke-interface {p2}, Lcom/facebook/datasource/DataSource;->getExtras()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->mDelayedExtras:Ljava/util/Map;

    .line 229
    :cond_15
    invoke-direct {p0}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->maybeSetFailure()V

    return-void
.end method

.method private onDataSourceNewResult(ILcom/facebook/datasource/DataSource;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;)V"
        }
    .end annotation

    .line 213
    invoke-interface {p2}, Lcom/facebook/datasource/DataSource;->isFinished()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->maybeSetIndexOfDataSourceWithResult(ILcom/facebook/datasource/DataSource;Z)V

    .line 216
    invoke-direct {p0}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->getDataSourceWithResult()Lcom/facebook/datasource/DataSource;

    move-result-object v0

    if-ne p2, v0, :cond_20

    if-nez p1, :cond_17

    .line 217
    invoke-interface {p2}, Lcom/facebook/datasource/DataSource;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    invoke-interface {p2}, Lcom/facebook/datasource/DataSource;->getExtras()Ljava/util/Map;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->setResult(Ljava/lang/Object;ZLjava/util/Map;)Z

    .line 219
    :cond_20
    invoke-direct {p0}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->maybeSetFailure()V

    return-void
.end method

.method private declared-synchronized tryGetAndClearDataSource(ILcom/facebook/datasource/DataSource;)Lcom/facebook/datasource/DataSource;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;)",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 269
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->getDataSourceWithResult()Lcom/facebook/datasource/DataSource;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_18

    if-ne p2, v0, :cond_a

    .line 270
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    .line 272
    :cond_a
    :try_start_a
    invoke-direct {p0, p1}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->getDataSource(I)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    if-ne p2, v0, :cond_16

    .line 273
    invoke-direct {p0, p1}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->getAndClearDataSource(I)Lcom/facebook/datasource/DataSource;

    move-result-object p1
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_18

    monitor-exit p0

    return-object p1

    .line 275
    :cond_16
    monitor-exit p0

    return-object p2

    :catchall_18
    move-exception p1

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p1
.end method


# virtual methods
.method public close()Z
    .registers 4

    .line 190
    iget-object v0, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->this$0:Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;

    invoke-static {v0}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;->-$$Nest$fgetmDataSourceLazy(Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 191
    invoke-direct {p0}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->ensureDataSourceInitialized()V

    .line 195
    :cond_b
    monitor-enter p0

    .line 198
    :try_start_c
    invoke-super {p0}, Lcom/facebook/datasource/AbstractDataSource;->close()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 199
    monitor-exit p0

    return v1

    .line 201
    :cond_15
    iget-object v0, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->mDataSources:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 202
    iput-object v2, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->mDataSources:Ljava/util/ArrayList;

    .line 203
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_31

    if-eqz v0, :cond_2f

    .line 205
    :goto_1d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 206
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/datasource/DataSource;

    invoke-direct {p0, v2}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->closeSafely(Lcom/facebook/datasource/DataSource;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_2f
    const/4 v0, 0x1

    return v0

    :catchall_31
    move-exception v0

    .line 203
    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

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

    .line 170
    :try_start_1
    iget-object v0, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->this$0:Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;

    invoke-static {v0}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;->-$$Nest$fgetmDataSourceLazy(Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 171
    invoke-direct {p0}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->ensureDataSourceInitialized()V

    .line 174
    :cond_c
    invoke-direct {p0}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->getDataSourceWithResult()Lcom/facebook/datasource/DataSource;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 175
    invoke-interface {v0}, Lcom/facebook/datasource/DataSource;->getResult()Ljava/lang/Object;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1a

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    monitor-exit p0

    return-object v0

    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public declared-synchronized hasResult()Z
    .registers 2

    monitor-enter p0

    .line 180
    :try_start_1
    iget-object v0, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->this$0:Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;

    invoke-static {v0}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;->-$$Nest$fgetmDataSourceLazy(Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 181
    invoke-direct {p0}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->ensureDataSourceInitialized()V

    .line 184
    :cond_c
    invoke-direct {p0}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->getDataSourceWithResult()Lcom/facebook/datasource/DataSource;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 185
    invoke-interface {v0}, Lcom/facebook/datasource/DataSource;->hasResult()Z

    move-result v0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1d

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    monitor-exit p0

    return v0

    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

###### Class com.facebook.datasource.IncreasingQualityDataSourceSupplier.IncreasingQualityDataSource.InternalDataSubscriber (com.facebook.datasource.IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource$InternalDataSubscriber)
.class Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource$InternalDataSubscriber;
.super Ljava/lang/Object;
.source "IncreasingQualityDataSourceSupplier.java"

# interfaces
.implements Lcom/facebook/datasource/DataSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;
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
.field private mIndex:I

.field final synthetic this$1:Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;


# direct methods
.method public constructor <init>(Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;I)V
    .registers 3

    .line 287
    iput-object p1, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource$InternalDataSubscriber;->this$1:Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput p2, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource$InternalDataSubscriber;->mIndex:I

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
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;)V"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource$InternalDataSubscriber;->this$1:Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;

    iget v1, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource$InternalDataSubscriber;->mIndex:I

    invoke-static {v0, v1, p1}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->-$$Nest$monDataSourceFailed(Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;ILcom/facebook/datasource/DataSource;)V

    return-void
.end method

.method public onNewResult(Lcom/facebook/datasource/DataSource;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;)V"
        }
    .end annotation

    .line 293
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 294
    iget-object v0, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource$InternalDataSubscriber;->this$1:Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;

    iget v1, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource$InternalDataSubscriber;->mIndex:I

    invoke-static {v0, v1, p1}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->-$$Nest$monDataSourceNewResult(Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;ILcom/facebook/datasource/DataSource;)V

    return-void

    .line 295
    :cond_e
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 296
    iget-object v0, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource$InternalDataSubscriber;->this$1:Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;

    iget v1, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource$InternalDataSubscriber;->mIndex:I

    invoke-static {v0, v1, p1}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->-$$Nest$monDataSourceFailed(Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;ILcom/facebook/datasource/DataSource;)V

    :cond_1b
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

    .line 310
    iget v0, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource$InternalDataSubscriber;->mIndex:I

    if-nez v0, :cond_d

    .line 311
    iget-object v0, p0, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource$InternalDataSubscriber;->this$1:Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;

    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->getProgress()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/facebook/datasource/IncreasingQualityDataSourceSupplier$IncreasingQualityDataSource;->setProgress(F)Z

    :cond_d
    return-void
.end method
