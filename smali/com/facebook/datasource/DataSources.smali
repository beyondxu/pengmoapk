###### Class com.facebook.datasource.DataSources (com.facebook.datasource.DataSources)
.class public Lcom/facebook/datasource/DataSources;
.super Ljava/lang/Object;
.source "DataSources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/datasource/DataSources$ValueHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFailedDataSourceSupplier(Ljava/lang/Throwable;)Lcom/facebook/common/internal/Supplier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;>;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/facebook/datasource/DataSources$1;

    invoke-direct {v0, p0}, Lcom/facebook/datasource/DataSources$1;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static immediateDataSource(Ljava/lang/Object;)Lcom/facebook/datasource/DataSource;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;"
        }
    .end annotation

    .line 29
    invoke-static {}, Lcom/facebook/datasource/SimpleDataSource;->create()Lcom/facebook/datasource/SimpleDataSource;

    move-result-object v0

    .line 30
    invoke-virtual {v0, p0}, Lcom/facebook/datasource/SimpleDataSource;->setResult(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;"
        }
    .end annotation

    .line 23
    invoke-static {}, Lcom/facebook/datasource/SimpleDataSource;->create()Lcom/facebook/datasource/SimpleDataSource;

    move-result-object v0

    .line 24
    invoke-virtual {v0, p0}, Lcom/facebook/datasource/SimpleDataSource;->setFailure(Ljava/lang/Throwable;)Z

    return-object v0
.end method

.method public static immediateSuccessfulDataSource()Lcom/facebook/datasource/DataSource;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/datasource/DataSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 35
    sget-object v0, Lcom/facebook/datasource/SuccessfulVoidDataSource;->INSTANCE:Lcom/facebook/datasource/SuccessfulVoidDataSource;

    return-object v0
.end method

.method public static waitForFinalResult(Lcom/facebook/datasource/DataSource;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 60
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 61
    new-instance v1, Lcom/facebook/datasource/DataSources$ValueHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/facebook/datasource/DataSources$ValueHolder;-><init>(Lcom/facebook/datasource/DataSources-IA;)V

    .line 62
    new-instance v3, Lcom/facebook/datasource/DataSources$ValueHolder;

    invoke-direct {v3, v2}, Lcom/facebook/datasource/DataSources$ValueHolder;-><init>(Lcom/facebook/datasource/DataSources-IA;)V

    .line 64
    new-instance v2, Lcom/facebook/datasource/DataSources$2;

    invoke-direct {v2, v1, v0, v3}, Lcom/facebook/datasource/DataSources$2;-><init>(Lcom/facebook/datasource/DataSources$ValueHolder;Ljava/util/concurrent/CountDownLatch;Lcom/facebook/datasource/DataSources$ValueHolder;)V

    new-instance v4, Lcom/facebook/datasource/DataSources$3;

    invoke-direct {v4}, Lcom/facebook/datasource/DataSources$3;-><init>()V

    invoke-interface {p0, v2, v4}, Lcom/facebook/datasource/DataSource;->subscribe(Lcom/facebook/datasource/DataSubscriber;Ljava/util/concurrent/Executor;)V

    .line 110
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 113
    iget-object p0, v3, Lcom/facebook/datasource/DataSources$ValueHolder;->value:Ljava/lang/Object;

    if-nez p0, :cond_28

    .line 117
    iget-object p0, v1, Lcom/facebook/datasource/DataSources$ValueHolder;->value:Ljava/lang/Object;

    return-object p0

    .line 114
    :cond_28
    iget-object p0, v3, Lcom/facebook/datasource/DataSources$ValueHolder;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

###### Class com.facebook.datasource.DataSources.AnonymousClass1 (com.facebook.datasource.DataSources$1)
.class Lcom/facebook/datasource/DataSources$1;
.super Ljava/lang/Object;
.source "DataSources.java"

# interfaces
.implements Lcom/facebook/common/internal/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/datasource/DataSources;->getFailedDataSourceSupplier(Ljava/lang/Throwable;)Lcom/facebook/common/internal/Supplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/internal/Supplier<",
        "Lcom/facebook/datasource/DataSource<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$failure:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/facebook/datasource/DataSources$1;->val$failure:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/facebook/datasource/DataSource;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/facebook/datasource/DataSources$1;->val$failure:Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 39
    invoke-virtual {p0}, Lcom/facebook/datasource/DataSources$1;->get()Lcom/facebook/datasource/DataSource;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.datasource.DataSources.AnonymousClass2 (com.facebook.datasource.DataSources$2)
.class Lcom/facebook/datasource/DataSources$2;
.super Ljava/lang/Object;
.source "DataSources.java"

# interfaces
.implements Lcom/facebook/datasource/DataSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/datasource/DataSources;->waitForFinalResult(Lcom/facebook/datasource/DataSource;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/datasource/DataSubscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$pendingException:Lcom/facebook/datasource/DataSources$ValueHolder;

.field final synthetic val$resultHolder:Lcom/facebook/datasource/DataSources$ValueHolder;


# direct methods
.method constructor <init>(Lcom/facebook/datasource/DataSources$ValueHolder;Ljava/util/concurrent/CountDownLatch;Lcom/facebook/datasource/DataSources$ValueHolder;)V
    .registers 4

    .line 65
    iput-object p1, p0, Lcom/facebook/datasource/DataSources$2;->val$resultHolder:Lcom/facebook/datasource/DataSources$ValueHolder;

    iput-object p2, p0, Lcom/facebook/datasource/DataSources$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/facebook/datasource/DataSources$2;->val$pendingException:Lcom/facebook/datasource/DataSources$ValueHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 92
    iget-object p1, p0, Lcom/facebook/datasource/DataSources$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onFailure(Lcom/facebook/datasource/DataSource;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/DataSource<",
            "TT;>;)V"
        }
    .end annotation

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/facebook/datasource/DataSources$2;->val$pendingException:Lcom/facebook/datasource/DataSources$ValueHolder;

    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->getFailureCause()Ljava/lang/Throwable;

    move-result-object p1

    iput-object p1, v0, Lcom/facebook/datasource/DataSources$ValueHolder;->value:Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_e

    .line 85
    iget-object p1, p0, Lcom/facebook/datasource/DataSources$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_e
    move-exception p1

    iget-object v0, p0, Lcom/facebook/datasource/DataSources$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 86
    throw p1
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

    .line 69
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->isFinished()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 74
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/facebook/datasource/DataSources$2;->val$resultHolder:Lcom/facebook/datasource/DataSources$ValueHolder;

    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->getResult()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/facebook/datasource/DataSources$ValueHolder;->value:Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_15

    .line 76
    iget-object p1, p0, Lcom/facebook/datasource/DataSources$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_15
    move-exception p1

    iget-object v0, p0, Lcom/facebook/datasource/DataSources$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 77
    throw p1
.end method

.method public onProgressUpdate(Lcom/facebook/datasource/DataSource;)V
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

###### Class com.facebook.datasource.DataSources.AnonymousClass3 (com.facebook.datasource.DataSources$3)
.class Lcom/facebook/datasource/DataSources$3;
.super Ljava/lang/Object;
.source "DataSources.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/datasource/DataSources;->waitForFinalResult(Lcom/facebook/datasource/DataSource;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 2

    .line 105
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

###### Class com.facebook.datasource.DataSources.ValueHolder (com.facebook.datasource.DataSources$ValueHolder)
.class Lcom/facebook/datasource/DataSources$ValueHolder;
.super Ljava/lang/Object;
.source "DataSources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/datasource/DataSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValueHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/facebook/datasource/DataSources$ValueHolder;->value:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/datasource/DataSources-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/datasource/DataSources$ValueHolder;-><init>()V

    return-void
.end method
