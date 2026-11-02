###### Class net.lingala.zip4j.tasks.AsyncZipTask (net.lingala.zip4j.tasks.AsyncZipTask)
.class public abstract Lnet/lingala/zip4j/tasks/AsyncZipTask;
.super Ljava/lang/Object;
.source "AsyncZipTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;
    }
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
.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

.field private final runInThread:Z


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)Lnet/lingala/zip4j/progress/ProgressMonitor;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    .line 17
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;->access$100(Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask;->runInThread:Z

    .line 18
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;->access$200(Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$300(Lnet/lingala/zip4j/tasks/AsyncZipTask;)Lnet/lingala/zip4j/progress/ProgressMonitor;
    .registers 1

    .line 9
    iget-object p0, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    return-object p0
.end method

.method static synthetic access$400(Lnet/lingala/zip4j/tasks/AsyncZipTask;Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/tasks/AsyncZipTask;->performTaskWithErrorHandling(Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    return-void
.end method

.method static synthetic access$500(Lnet/lingala/zip4j/tasks/AsyncZipTask;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 9
    iget-object p0, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method private initProgressMonitor()V
    .registers 3

    .line 73
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-virtual {v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->fullReset()V

    .line 74
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    sget-object v1, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->BUSY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(Lnet/lingala/zip4j/progress/ProgressMonitor$State;)V

    .line 75
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-virtual {p0}, Lnet/lingala/zip4j/tasks/AsyncZipTask;->getTask()Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setCurrentTask(Lnet/lingala/zip4j/progress/ProgressMonitor$Task;)V

    return-void
.end method

.method private performTaskWithErrorHandling(Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lnet/lingala/zip4j/progress/ProgressMonitor;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 51
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lnet/lingala/zip4j/tasks/AsyncZipTask;->executeTask(Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 52
    invoke-virtual {p2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitor()V
    :try_end_6
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_6} :catch_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-void

    :catch_7
    move-exception p1

    .line 57
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitor(Ljava/lang/Exception;)V

    .line 58
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :catch_11
    move-exception p1

    .line 54
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->endProgressMonitor(Ljava/lang/Exception;)V

    .line 55
    throw p1
.end method


# virtual methods
.method protected abstract calculateTotalWork(Ljava/lang/Object;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation
.end method

.method public execute(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 22
    iget-boolean v0, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask;->runInThread:Z

    if-eqz v0, :cond_1b

    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->BUSY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    iget-object v1, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-virtual {v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->getState()Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_1b

    .line 23
    :cond_13
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "invalid operation - Zip4j is in busy state"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_1b
    :goto_1b
    invoke-direct {p0}, Lnet/lingala/zip4j/tasks/AsyncZipTask;->initProgressMonitor()V

    .line 28
    iget-boolean v0, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask;->runInThread:Z

    if-eqz v0, :cond_36

    .line 29
    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/tasks/AsyncZipTask;->calculateTotalWork(Ljava/lang/Object;)J

    move-result-wide v0

    .line 30
    iget-object v2, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-virtual {v2, v0, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setTotalWork(J)V

    .line 32
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lnet/lingala/zip4j/tasks/AsyncZipTask$1;

    invoke-direct {v1, p0, p1}, Lnet/lingala/zip4j/tasks/AsyncZipTask$1;-><init>(Lnet/lingala/zip4j/tasks/AsyncZipTask;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 45
    :cond_36
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-direct {p0, p1, v0}, Lnet/lingala/zip4j/tasks/AsyncZipTask;->performTaskWithErrorHandling(Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    return-void
.end method

.method protected abstract executeTask(Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lnet/lingala/zip4j/progress/ProgressMonitor;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract getTask()Lnet/lingala/zip4j/progress/ProgressMonitor$Task;
.end method

.method protected verifyIfTaskIsCancelled()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-virtual {v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 67
    :cond_9
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    sget-object v1, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->CANCELLED:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(Lnet/lingala/zip4j/progress/ProgressMonitor$Result;)V

    .line 68
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    sget-object v1, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->READY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(Lnet/lingala/zip4j/progress/ProgressMonitor$State;)V

    .line 69
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "Task cancelled"

    sget-object v2, Lnet/lingala/zip4j/exception/ZipException$Type;->TASK_CANCELLED_EXCEPTION:Lnet/lingala/zip4j/exception/ZipException$Type;

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$Type;)V

    throw v0
.end method

###### Class net.lingala.zip4j.tasks.AsyncZipTask.AnonymousClass1 (net.lingala.zip4j.tasks.AsyncZipTask$1)
.class Lnet/lingala/zip4j/tasks/AsyncZipTask$1;
.super Ljava/lang/Object;
.source "AsyncZipTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/lingala/zip4j/tasks/AsyncZipTask;->execute(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/lingala/zip4j/tasks/AsyncZipTask;

.field final synthetic val$taskParameters:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lnet/lingala/zip4j/tasks/AsyncZipTask;Ljava/lang/Object;)V
    .registers 3

    .line 32
    iput-object p1, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask$1;->this$0:Lnet/lingala/zip4j/tasks/AsyncZipTask;

    iput-object p2, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask$1;->val$taskParameters:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 36
    :try_start_0
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask$1;->this$0:Lnet/lingala/zip4j/tasks/AsyncZipTask;

    iget-object v1, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask$1;->val$taskParameters:Ljava/lang/Object;

    invoke-static {v0}, Lnet/lingala/zip4j/tasks/AsyncZipTask;->access$300(Lnet/lingala/zip4j/tasks/AsyncZipTask;)Lnet/lingala/zip4j/progress/ProgressMonitor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnet/lingala/zip4j/tasks/AsyncZipTask;->access$400(Lnet/lingala/zip4j/tasks/AsyncZipTask;Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    :try_end_b
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_b} :catch_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_15

    .line 40
    :catch_b
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask$1;->this$0:Lnet/lingala/zip4j/tasks/AsyncZipTask;

    invoke-static {v0}, Lnet/lingala/zip4j/tasks/AsyncZipTask;->access$500(Lnet/lingala/zip4j/tasks/AsyncZipTask;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void

    :catchall_15
    move-exception v0

    iget-object v1, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask$1;->this$0:Lnet/lingala/zip4j/tasks/AsyncZipTask;

    invoke-static {v1}, Lnet/lingala/zip4j/tasks/AsyncZipTask;->access$500(Lnet/lingala/zip4j/tasks/AsyncZipTask;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 41
    throw v0
.end method

###### Class net.lingala.zip4j.tasks.AsyncZipTask.AsyncTaskParameters (net.lingala.zip4j.tasks.AsyncZipTask$AsyncTaskParameters)
.class public Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;
.super Ljava/lang/Object;
.source "AsyncZipTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lingala/zip4j/tasks/AsyncZipTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsyncTaskParameters"
.end annotation


# instance fields
.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

.field private final runInThread:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;ZLnet/lingala/zip4j/progress/ProgressMonitor;)V
    .registers 4

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 91
    iput-boolean p2, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;->runInThread:Z

    .line 92
    iput-object p3, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    return-void
.end method

.method static synthetic access$000(Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)Lnet/lingala/zip4j/progress/ProgressMonitor;
    .registers 1

    .line 84
    iget-object p0, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;->progressMonitor:Lnet/lingala/zip4j/progress/ProgressMonitor;

    return-object p0
.end method

.method static synthetic access$100(Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)Z
    .registers 1

    .line 84
    iget-boolean p0, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;->runInThread:Z

    return p0
.end method

.method static synthetic access$200(Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 84
    iget-object p0, p0, Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method
