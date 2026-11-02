###### Class net.lingala.zip4j.progress.ProgressMonitor (net.lingala.zip4j.progress.ProgressMonitor)
.class public Lnet/lingala/zip4j/progress/ProgressMonitor;
.super Ljava/lang/Object;
.source "ProgressMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lingala/zip4j/progress/ProgressMonitor$Task;,
        Lnet/lingala/zip4j/progress/ProgressMonitor$Result;,
        Lnet/lingala/zip4j/progress/ProgressMonitor$State;
    }
.end annotation


# instance fields
.field private cancelAllTasks:Z

.field private currentTask:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

.field private exception:Ljava/lang/Exception;

.field private fileName:Ljava/lang/String;

.field private pause:Z

.field private percentDone:I

.field private result:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

.field private state:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

.field private totalWork:J

.field private workCompleted:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-direct {p0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->reset()V

    return-void
.end method

.method private reset()V
    .registers 2

    .line 83
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->NONE:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    iput-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->currentTask:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    .line 84
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->READY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    iput-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->state:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    return-void
.end method


# virtual methods
.method public endProgressMonitor()V
    .registers 2

    .line 63
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->SUCCESS:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    iput-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->result:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    const/16 v0, 0x64

    .line 64
    iput v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->percentDone:I

    .line 65
    invoke-direct {p0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->reset()V

    return-void
.end method

.method public endProgressMonitor(Ljava/lang/Exception;)V
    .registers 3

    .line 69
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->ERROR:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    iput-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->result:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    .line 70
    iput-object p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->exception:Ljava/lang/Exception;

    .line 71
    invoke-direct {p0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->reset()V

    return-void
.end method

.method public fullReset()V
    .registers 3

    .line 75
    invoke-direct {p0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->reset()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->fileName:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 77
    iput-wide v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->totalWork:J

    .line 78
    iput-wide v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->workCompleted:J

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->percentDone:I

    return-void
.end method

.method public getCurrentTask()Lnet/lingala/zip4j/progress/ProgressMonitor$Task;
    .registers 2

    .line 116
    iget-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->currentTask:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .registers 2

    .line 140
    iget-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    .line 124
    iget-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getPercentDone()I
    .registers 2

    .line 108
    iget v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->percentDone:I

    return v0
.end method

.method public getResult()Lnet/lingala/zip4j/progress/ProgressMonitor$Result;
    .registers 2

    .line 132
    iget-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->result:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    return-object v0
.end method

.method public getState()Lnet/lingala/zip4j/progress/ProgressMonitor$State;
    .registers 2

    .line 88
    iget-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->state:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    return-object v0
.end method

.method public getTotalWork()J
    .registers 3

    .line 96
    iget-wide v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->totalWork:J

    return-wide v0
.end method

.method public getWorkCompleted()J
    .registers 3

    .line 104
    iget-wide v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->workCompleted:J

    return-wide v0
.end method

.method public isCancelAllTasks()Z
    .registers 2

    .line 148
    iget-boolean v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->cancelAllTasks:Z

    return v0
.end method

.method public isPause()Z
    .registers 2

    .line 156
    iget-boolean v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->pause:Z

    return v0
.end method

.method public setCancelAllTasks(Z)V
    .registers 2

    .line 152
    iput-boolean p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->cancelAllTasks:Z

    return-void
.end method

.method public setCurrentTask(Lnet/lingala/zip4j/progress/ProgressMonitor$Task;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->currentTask:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    return-void
.end method

.method public setException(Ljava/lang/Exception;)V
    .registers 2

    .line 144
    iput-object p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->exception:Ljava/lang/Exception;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .registers 2

    .line 128
    iput-object p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setPause(Z)V
    .registers 2

    .line 160
    iput-boolean p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->pause:Z

    return-void
.end method

.method public setPercentDone(I)V
    .registers 2

    .line 112
    iput p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->percentDone:I

    return-void
.end method

.method public setResult(Lnet/lingala/zip4j/progress/ProgressMonitor$Result;)V
    .registers 2

    .line 136
    iput-object p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->result:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    return-void
.end method

.method public setState(Lnet/lingala/zip4j/progress/ProgressMonitor$State;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->state:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    return-void
.end method

.method public setTotalWork(J)V
    .registers 3

    .line 100
    iput-wide p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->totalWork:J

    return-void
.end method

.method public updateWorkCompleted(J)V
    .registers 8

    .line 44
    iget-wide v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->workCompleted:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->workCompleted:J

    .line 46
    iget-wide p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->totalWork:J

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_1b

    const-wide/16 v2, 0x64

    mul-long v0, v0, v2

    .line 47
    div-long/2addr v0, p1

    long-to-int p1, v0

    iput p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->percentDone:I

    const/16 p2, 0x64

    if-le p1, p2, :cond_1b

    .line 49
    iput p2, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->percentDone:I

    .line 53
    :cond_1b
    :goto_1b
    iget-boolean p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->pause:Z

    if-eqz p1, :cond_27

    const-wide/16 p1, 0x96

    .line 55
    :try_start_21
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_1b

    :catch_25
    nop

    goto :goto_1b

    :cond_27
    return-void
.end method

###### Class net.lingala.zip4j.progress.ProgressMonitor.Result (net.lingala.zip4j.progress.ProgressMonitor$Result)
.class public final enum Lnet/lingala/zip4j/progress/ProgressMonitor$Result;
.super Ljava/lang/Enum;
.source "ProgressMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lingala/zip4j/progress/ProgressMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/lingala/zip4j/progress/ProgressMonitor$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

.field public static final enum CANCELLED:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

.field public static final enum ERROR:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

.field public static final enum SUCCESS:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

.field public static final enum WORK_IN_PROGRESS:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 25
    new-instance v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->SUCCESS:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    new-instance v1, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    const-string v3, "WORK_IN_PROGRESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->WORK_IN_PROGRESS:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    new-instance v3, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    const-string v5, "ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->ERROR:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    new-instance v5, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    const-string v7, "CANCELLED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->CANCELLED:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    const/4 v7, 0x4

    new-array v7, v7, [Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->$VALUES:[Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/lingala/zip4j/progress/ProgressMonitor$Result;
    .registers 2

    .line 25
    const-class v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    return-object p0
.end method

.method public static values()[Lnet/lingala/zip4j/progress/ProgressMonitor$Result;
    .registers 1

    .line 25
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->$VALUES:[Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    invoke-virtual {v0}, [Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    return-object v0
.end method

###### Class net.lingala.zip4j.progress.ProgressMonitor.State (net.lingala.zip4j.progress.ProgressMonitor$State)
.class public final enum Lnet/lingala/zip4j/progress/ProgressMonitor$State;
.super Ljava/lang/Enum;
.source "ProgressMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lingala/zip4j/progress/ProgressMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/lingala/zip4j/progress/ProgressMonitor$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/lingala/zip4j/progress/ProgressMonitor$State;

.field public static final enum BUSY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

.field public static final enum READY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 24
    new-instance v0, Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/progress/ProgressMonitor$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->READY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    new-instance v1, Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    const-string v3, "BUSY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/lingala/zip4j/progress/ProgressMonitor$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->BUSY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->$VALUES:[Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/lingala/zip4j/progress/ProgressMonitor$State;
    .registers 2

    .line 24
    const-class v0, Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    return-object p0
.end method

.method public static values()[Lnet/lingala/zip4j/progress/ProgressMonitor$State;
    .registers 1

    .line 24
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->$VALUES:[Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    invoke-virtual {v0}, [Lnet/lingala/zip4j/progress/ProgressMonitor$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    return-object v0
.end method

###### Class net.lingala.zip4j.progress.ProgressMonitor.Task (net.lingala.zip4j.progress.ProgressMonitor$Task)
.class public final enum Lnet/lingala/zip4j/progress/ProgressMonitor$Task;
.super Ljava/lang/Enum;
.source "ProgressMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lingala/zip4j/progress/ProgressMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/lingala/zip4j/progress/ProgressMonitor$Task;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

.field public static final enum ADD_ENTRY:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

.field public static final enum CALCULATE_CRC:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

.field public static final enum EXTRACT_ENTRY:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

.field public static final enum MERGE_ZIP_FILES:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

.field public static final enum NONE:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

.field public static final enum REMOVE_ENTRY:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

.field public static final enum RENAME_FILE:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

.field public static final enum SET_COMMENT:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;


# direct methods
.method static constructor <clinit>()V
    .registers 17

    .line 26
    new-instance v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->NONE:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    new-instance v1, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    const-string v3, "ADD_ENTRY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->ADD_ENTRY:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    new-instance v3, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    const-string v5, "REMOVE_ENTRY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->REMOVE_ENTRY:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    new-instance v5, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    const-string v7, "CALCULATE_CRC"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->CALCULATE_CRC:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    new-instance v7, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    const-string v9, "EXTRACT_ENTRY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->EXTRACT_ENTRY:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    new-instance v9, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    const-string v11, "MERGE_ZIP_FILES"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->MERGE_ZIP_FILES:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    new-instance v11, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    const-string v13, "SET_COMMENT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->SET_COMMENT:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    new-instance v13, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    const-string v15, "RENAME_FILE"

    const/16 v16, 0x0

    const/4 v2, 0x7

    invoke-direct {v13, v15, v2}, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->RENAME_FILE:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    const/16 v15, 0x8

    new-array v15, v15, [Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    aput-object v0, v15, v16

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    aput-object v11, v15, v14

    aput-object v13, v15, v2

    sput-object v15, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->$VALUES:[Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/lingala/zip4j/progress/ProgressMonitor$Task;
    .registers 2

    .line 26
    const-class v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    return-object p0
.end method

.method public static values()[Lnet/lingala/zip4j/progress/ProgressMonitor$Task;
    .registers 1

    .line 26
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->$VALUES:[Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    invoke-virtual {v0}, [Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    return-object v0
.end method
