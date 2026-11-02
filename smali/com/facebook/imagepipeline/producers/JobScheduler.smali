###### Class com.facebook.imagepipeline.producers.JobScheduler (com.facebook.imagepipeline.producers.JobScheduler)
.class public Lcom/facebook/imagepipeline/producers/JobScheduler;
.super Ljava/lang/Object;
.source "JobScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;,
        Lcom/facebook/imagepipeline/producers/JobScheduler$JobRunnable;,
        Lcom/facebook/imagepipeline/producers/JobScheduler$JobStartExecutorSupplier;
    }
.end annotation


# static fields
.field static final QUEUE_TIME_KEY:Ljava/lang/String; = "queueTime"


# instance fields
.field private final mDoJobRunnable:Ljava/lang/Runnable;

.field mEncodedImage:Lcom/facebook/imagepipeline/image/EncodedImage;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mJobRunnable:Lcom/facebook/imagepipeline/producers/JobScheduler$JobRunnable;

.field mJobStartTime:J

.field mJobState:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

.field mJobSubmitTime:J

.field private final mMinimumJobIntervalMs:I

.field mStatus:I

.field private final mSubmitJobRunnable:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$mdoJob(Lcom/facebook/imagepipeline/producers/JobScheduler;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/JobScheduler;->doJob()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msubmitJob(Lcom/facebook/imagepipeline/producers/JobScheduler;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/JobScheduler;->submitJob()V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/producers/JobScheduler$JobRunnable;I)V
    .registers 4

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->mExecutor:Ljava/util/concurrent/Executor;

    .line 91
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->mJobRunnable:Lcom/facebook/imagepipeline/producers/JobScheduler$JobRunnable;

    .line 92
    iput p3, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->mMinimumJobIntervalMs:I

    .line 93
    new-instance p1, Lcom/facebook/imagepipeline/producers/JobScheduler$1;

    invoke-direct {p1, p0}, Lcom/facebook/imagepipeline/producers/JobScheduler$1;-><init>(Lcom/facebook/imagepipeline/producers/JobScheduler;)V

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->mDoJobRunnable:Ljava/lang/Runnable;

    .line 100
    new-instance p1, Lcom/facebook/imagepipeline/producers/JobScheduler$2;

    invoke-direct {p1, p0}, Lcom/facebook/imagepipeline/producers/JobScheduler$2;-><init>(Lcom/facebook/imagepipeline/producers/JobScheduler;)V

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->mSubmitJobRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 107
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->mEncodedImage:Lcom/facebook/imagepipeline/image/EncodedImage;

    const/4 p1, 0x0

    .line 108
    iput p1, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->mStatus:I

    .line 109
    sget-object p1, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->IDLE:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->mJobState:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    const-wide/16 p1, 0x0

    .line 110
    iput-wide p1, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->mJobSubmitTime:J

    .line 111
    iput-wide p1, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->mJobStartTime:J

    return-void
.end method

.method private doJob()V
    .registers 6

    .line 216
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 219
    monitor-enter p0

    .line 220
    :try_start_5
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->mEncodedImage:Lcom/facebook/imagepipeline/image/EncodedImage;

    .line 221
    iget v3, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->mStatus:I

    const/4 v4, 0x0

    .line 222
    iput-object v4, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->mEncodedImage:Lcom/facebook/imagepipeline/image/EncodedImage;

    const/4 v4, 0x0

    .line 223
    iput v4, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->mStatus:I

    .line 224
    sget-object v4, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->RUNNING:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    iput-object v4, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->mJobState:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    .line 225
    iput-wide v0, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->mJobStartTime:J

    .line 226
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_30

    .line 230
    :try_start_16
    invoke-static {v2, v3}, Lcom/facebook/imagepipeline/producers/JobScheduler;->shouldProcess(Lcom/facebook/imagepipeline/image/EncodedImage;I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 231
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->mJobRunnable:Lcom/facebook/imagepipeline/producers/JobScheduler$JobRunnable;

    invoke-interface {v0, v2, v3}, Lcom/facebook/imagepipeline/producers/JobScheduler$JobRunnable;->run(Lcom/facebook/imagepipeline/image/EncodedImage;I)V
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_28

    .line 234
    :cond_21
    invoke-static {v2}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 235
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/JobScheduler;->onJobFinished()V

    return-void

    :catchall_28
    move-exception v0

    .line 234
    invoke-static {v2}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 235
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/JobScheduler;->onJobFinished()V

    .line 236
    throw v0

    :catchall_30
    move-exception v0

    .line 226
    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0
.end method

.method private enqueueJob(J)V
    .registers 7

    .line 201
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->mSubmitJobRunnable:Ljava/lang/Runnable;

    const-string v1, "JobScheduler_enqueueJob"

    .line 202
    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->decorateRunnable(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_18

    .line 204
    invoke-static {}, Lcom/facebook/imagepipeline/producers/JobScheduler$JobStartExecutorSupplier;->get()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v0, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 206
    :cond_18
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private onJobFinished()V
    .registers 7

    .line 240
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 243
    monitor-enter p0

    .line 244
    :try_start_5
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->mJobState:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    sget-object v3, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->RUNNING_AND_PENDING:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    if-ne v2, v3, :cond_1d

    .line 245
    iget-wide v2, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->mJobStartTime:J

    iget v4, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->mMinimumJobIntervalMs:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 247
    iput-wide v0, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->mJobSubmitTime:J

    .line 248
    sget-object v4, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->QUEUED:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    iput-object v4, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->mJobState:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    const/4 v4, 0x1

    goto :goto_24

    .line 250
    :cond_1d
    sget-object v2, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->IDLE:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    iput-object v2, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->mJobState:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 252
    :goto_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_2c

    if-eqz v4, :cond_2b

    sub-long/2addr v2, v0

    .line 254
    invoke-direct {p0, v2, v3}, Lcom/facebook/imagepipeline/producers/JobScheduler;->enqueueJob(J)V

    :cond_2b
    return-void

    :catchall_2c
    move-exception v0

    .line 252
    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method private static shouldProcess(Lcom/facebook/imagepipeline/image/EncodedImage;I)Z
    .registers 3
    .param p0    # Lcom/facebook/imagepipeline/image/EncodedImage;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 263
    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->isLast(I)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x4

    .line 264
    invoke-static {p1, v0}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->statusHasFlag(II)Z

    move-result p1

    if-nez p1, :cond_16

    .line 265
    invoke-static {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->isValid(Lcom/facebook/imagepipeline/image/EncodedImage;)Z

    move-result p0

    if-eqz p0, :cond_14

    goto :goto_16

    :cond_14
    const/4 p0, 0x0

    return p0

    :cond_16
    :goto_16
    const/4 p0, 0x1

    return p0
.end method

.method private submitJob()V
    .registers 4

    .line 211
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->mDoJobRunnable:Ljava/lang/Runnable;

    const-string v2, "JobScheduler_submitJob"

    .line 212
    invoke-static {v1, v2}, Lcom/facebook/imagepipeline/instrumentation/FrescoInstrumenter;->decorateRunnable(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    .line 211
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public clearJob()V
    .registers 3

    .line 122
    monitor-enter p0

    .line 123
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->mEncodedImage:Lcom/facebook/imagepipeline/image/EncodedImage;

    const/4 v1, 0x0

    .line 124
    iput-object v1, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->mEncodedImage:Lcom/facebook/imagepipeline/image/EncodedImage;

    const/4 v1, 0x0

    .line 125
    iput v1, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->mStatus:I

    .line 126
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_e

    .line 127
    invoke-static {v0}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    return-void

    :catchall_e
    move-exception v0

    .line 126
    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v0
.end method

.method public declared-synchronized getQueuedTime()J
    .registers 5

    monitor-enter p0

    .line 274
    :try_start_1
    iget-wide v0, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->mJobStartTime:J

    iget-wide v2, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->mJobSubmitTime:J
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_8

    sub-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public scheduleJob()Z
    .registers 8

    .line 166
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 169
    monitor-enter p0

    .line 170
    :try_start_5
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->mEncodedImage:Lcom/facebook/imagepipeline/image/EncodedImage;

    iget v3, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->mStatus:I

    invoke-static {v2, v3}, Lcom/facebook/imagepipeline/producers/JobScheduler;->shouldProcess(Lcom/facebook/imagepipeline/image/EncodedImage;I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_12

    .line 171
    monitor-exit p0

    return v3

    .line 173
    :cond_12
    sget-object v2, Lcom/facebook/imagepipeline/producers/JobScheduler$3;->$SwitchMap$com$facebook$imagepipeline$producers$JobScheduler$JobState:[I

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->mJobState:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    invoke-virtual {v4}, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->ordinal()I

    move-result v4

    aget v2, v2, v4

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2a

    const/4 v5, 0x3

    if-eq v2, v5, :cond_23

    goto :goto_27

    .line 184
    :cond_23
    sget-object v2, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->RUNNING_AND_PENDING:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    iput-object v2, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->mJobState:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    :goto_27
    const-wide/16 v5, 0x0

    goto :goto_3b

    .line 175
    :cond_2a
    iget-wide v2, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->mJobStartTime:J

    iget v5, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->mMinimumJobIntervalMs:I

    int-to-long v5, v5

    add-long/2addr v2, v5

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 177
    iput-wide v0, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->mJobSubmitTime:J

    .line 178
    sget-object v2, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->QUEUED:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    iput-object v2, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->mJobState:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    const/4 v3, 0x1

    .line 190
    :goto_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_5 .. :try_end_3c} :catchall_43

    if-eqz v3, :cond_42

    sub-long/2addr v5, v0

    .line 192
    invoke-direct {p0, v5, v6}, Lcom/facebook/imagepipeline/producers/JobScheduler;->enqueueJob(J)V

    :cond_42
    return v4

    :catchall_43
    move-exception v0

    .line 190
    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v0
.end method

.method public updateJob(Lcom/facebook/imagepipeline/image/EncodedImage;I)Z
    .registers 4
    .param p1    # Lcom/facebook/imagepipeline/image/EncodedImage;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 140
    invoke-static {p1, p2}, Lcom/facebook/imagepipeline/producers/JobScheduler;->shouldProcess(Lcom/facebook/imagepipeline/image/EncodedImage;I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 144
    :cond_8
    monitor-enter p0

    .line 145
    :try_start_9
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->mEncodedImage:Lcom/facebook/imagepipeline/image/EncodedImage;

    .line 146
    invoke-static {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->cloneOrNull(Lcom/facebook/imagepipeline/image/EncodedImage;)Lcom/facebook/imagepipeline/image/EncodedImage;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->mEncodedImage:Lcom/facebook/imagepipeline/image/EncodedImage;

    .line 147
    iput p2, p0, Lcom/facebook/imagepipeline/producers/JobScheduler;->mStatus:I

    .line 148
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_19

    .line 149
    invoke-static {v0}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    const/4 p1, 0x1

    return p1

    :catchall_19
    move-exception p1

    .line 148
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method

###### Class com.facebook.imagepipeline.producers.JobScheduler.AnonymousClass1 (com.facebook.imagepipeline.producers.JobScheduler$1)
.class Lcom/facebook/imagepipeline/producers/JobScheduler$1;
.super Ljava/lang/Object;
.source "JobScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/JobScheduler;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/producers/JobScheduler$JobRunnable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/imagepipeline/producers/JobScheduler;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/JobScheduler;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/JobScheduler$1;->this$0:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/JobScheduler$1;->this$0:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/JobScheduler;->-$$Nest$mdoJob(Lcom/facebook/imagepipeline/producers/JobScheduler;)V

    return-void
.end method

###### Class com.facebook.imagepipeline.producers.JobScheduler.AnonymousClass2 (com.facebook.imagepipeline.producers.JobScheduler$2)
.class Lcom/facebook/imagepipeline/producers/JobScheduler$2;
.super Ljava/lang/Object;
.source "JobScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/JobScheduler;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/producers/JobScheduler$JobRunnable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/imagepipeline/producers/JobScheduler;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/JobScheduler;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/JobScheduler$2;->this$0:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/JobScheduler$2;->this$0:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/JobScheduler;->-$$Nest$msubmitJob(Lcom/facebook/imagepipeline/producers/JobScheduler;)V

    return-void
.end method

###### Class com.facebook.imagepipeline.producers.JobScheduler.AnonymousClass3 (com.facebook.imagepipeline.producers.JobScheduler$3)
.class synthetic Lcom/facebook/imagepipeline/producers/JobScheduler$3;
.super Ljava/lang/Object;
.source "JobScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/JobScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$facebook$imagepipeline$producers$JobScheduler$JobState:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 173
    invoke-static {}, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->values()[Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/imagepipeline/producers/JobScheduler$3;->$SwitchMap$com$facebook$imagepipeline$producers$JobScheduler$JobState:[I

    :try_start_9
    sget-object v1, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->IDLE:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/facebook/imagepipeline/producers/JobScheduler$3;->$SwitchMap$com$facebook$imagepipeline$producers$JobScheduler$JobState:[I

    sget-object v1, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->QUEUED:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/facebook/imagepipeline/producers/JobScheduler$3;->$SwitchMap$com$facebook$imagepipeline$producers$JobScheduler$JobState:[I

    sget-object v1, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->RUNNING:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/facebook/imagepipeline/producers/JobScheduler$3;->$SwitchMap$com$facebook$imagepipeline$producers$JobScheduler$JobState:[I

    sget-object v1, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->RUNNING_AND_PENDING:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method

###### Class com.facebook.imagepipeline.producers.JobScheduler.JobRunnable (com.facebook.imagepipeline.producers.JobScheduler$JobRunnable)
.class public interface abstract Lcom/facebook/imagepipeline/producers/JobScheduler$JobRunnable;
.super Ljava/lang/Object;
.source "JobScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/JobScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "JobRunnable"
.end annotation


# virtual methods
.method public abstract run(Lcom/facebook/imagepipeline/image/EncodedImage;I)V
    .param p1    # Lcom/facebook/imagepipeline/image/EncodedImage;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

###### Class com.facebook.imagepipeline.producers.JobScheduler.JobStartExecutorSupplier (com.facebook.imagepipeline.producers.JobScheduler$JobStartExecutorSupplier)
.class Lcom/facebook/imagepipeline/producers/JobScheduler$JobStartExecutorSupplier;
.super Ljava/lang/Object;
.source "JobScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/JobScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JobStartExecutorSupplier"
.end annotation


# static fields
.field private static sJobStarterExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    .line 38
    sget-object v0, Lcom/facebook/imagepipeline/producers/JobScheduler$JobStartExecutorSupplier;->sJobStarterExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_a

    .line 39
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/facebook/imagepipeline/producers/JobScheduler$JobStartExecutorSupplier;->sJobStarterExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 41
    :cond_a
    sget-object v0, Lcom/facebook/imagepipeline/producers/JobScheduler$JobStartExecutorSupplier;->sJobStarterExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

###### Class com.facebook.imagepipeline.producers.JobScheduler.JobState (com.facebook.imagepipeline.producers.JobScheduler$JobState)
.class final enum Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;
.super Ljava/lang/Enum;
.source "JobScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/JobScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "JobState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

.field public static final enum IDLE:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

.field public static final enum QUEUED:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

.field public static final enum RUNNING:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

.field public static final enum RUNNING_AND_PENDING:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 57
    new-instance v0, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->IDLE:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    .line 58
    new-instance v1, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    const-string v3, "QUEUED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->QUEUED:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    .line 59
    new-instance v3, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    const-string v5, "RUNNING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->RUNNING:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    .line 60
    new-instance v5, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    const-string v7, "RUNNING_AND_PENDING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->RUNNING_AND_PENDING:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    const/4 v7, 0x4

    .line 55
    new-array v7, v7, [Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->$VALUES:[Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;
    .registers 2

    .line 55
    const-class v0, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    return-object p0
.end method

.method public static values()[Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;
    .registers 1

    .line 55
    sget-object v0, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->$VALUES:[Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    invoke-virtual {v0}, [Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    return-object v0
.end method
