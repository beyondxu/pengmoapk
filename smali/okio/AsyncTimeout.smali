###### Class okio.AsyncTimeout (okio.AsyncTimeout)
.class public Lokio/AsyncTimeout;
.super Lokio/Timeout;
.source "AsyncTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/AsyncTimeout$Watchdog;
    }
.end annotation


# static fields
.field private static final IDLE_TIMEOUT_MILLIS:J

.field private static final IDLE_TIMEOUT_NANOS:J

.field private static final TIMEOUT_WRITE_SIZE:I = 0x10000

.field static head:Lokio/AsyncTimeout;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private inQueue:Z

.field private next:Lokio/AsyncTimeout;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private timeoutAt:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lokio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    .line 51
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lokio/AsyncTimeout;->IDLE_TIMEOUT_NANOS:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Lokio/Timeout;-><init>()V

    return-void
.end method

.method static awaitTimeout()Lokio/AsyncTimeout;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 342
    sget-object v0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    iget-object v0, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    .line 345
    const-class v1, Lokio/AsyncTimeout;

    const/4 v2, 0x0

    if-nez v0, :cond_27

    .line 346
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 347
    sget-wide v5, Lokio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 348
    sget-object v0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    iget-object v0, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    if-nez v0, :cond_26

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v3

    sget-wide v3, Lokio/AsyncTimeout;->IDLE_TIMEOUT_NANOS:J

    cmp-long v5, v0, v3

    if-ltz v5, :cond_26

    .line 349
    sget-object v0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    return-object v0

    :cond_26
    return-object v2

    .line 353
    :cond_27
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Lokio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_42

    const-wide/32 v5, 0xf4240

    .line 359
    div-long v7, v3, v5

    mul-long v5, v5, v7

    sub-long/2addr v3, v5

    long-to-int v0, v3

    .line 361
    invoke-virtual {v1, v7, v8, v0}, Ljava/lang/Object;->wait(JI)V

    return-object v2

    .line 366
    :cond_42
    sget-object v1, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    iget-object v3, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    iput-object v3, v1, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    .line 367
    iput-object v2, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    return-object v0
.end method

.method private static declared-synchronized cancelScheduledTimeout(Lokio/AsyncTimeout;)Z
    .registers 4

    const-class v0, Lokio/AsyncTimeout;

    monitor-enter v0

    .line 128
    :try_start_3
    sget-object v1, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    :goto_5
    if-eqz v1, :cond_17

    .line 129
    iget-object v2, v1, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    if-ne v2, p0, :cond_15

    .line 130
    iget-object v2, p0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    iput-object v2, v1, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    const/4 v1, 0x0

    .line 131
    iput-object v1, p0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1a

    .line 132
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :cond_15
    move-object v1, v2

    goto :goto_5

    .line 137
    :cond_17
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_1a
    move-exception p0

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method private remainingNanos(J)J
    .registers 5

    .line 145
    iget-wide v0, p0, Lokio/AsyncTimeout;->timeoutAt:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method private static declared-synchronized scheduleTimeout(Lokio/AsyncTimeout;JZ)V
    .registers 10

    const-class v0, Lokio/AsyncTimeout;

    monitor-enter v0

    .line 86
    :try_start_3
    sget-object v1, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    if-nez v1, :cond_16

    .line 87
    new-instance v1, Lokio/AsyncTimeout;

    invoke-direct {v1}, Lokio/AsyncTimeout;-><init>()V

    sput-object v1, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    .line 88
    new-instance v1, Lokio/AsyncTimeout$Watchdog;

    invoke-direct {v1}, Lokio/AsyncTimeout$Watchdog;-><init>()V

    invoke-virtual {v1}, Lokio/AsyncTimeout$Watchdog;->start()V

    .line 91
    :cond_16
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-eqz v5, :cond_2f

    if-eqz p3, :cond_2f

    .line 95
    invoke-virtual {p0}, Lokio/AsyncTimeout;->deadlineNanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    add-long/2addr p1, v1

    iput-wide p1, p0, Lokio/AsyncTimeout;->timeoutAt:J

    goto :goto_3d

    :cond_2f
    if-eqz v5, :cond_35

    add-long/2addr p1, v1

    .line 97
    iput-wide p1, p0, Lokio/AsyncTimeout;->timeoutAt:J

    goto :goto_3d

    :cond_35
    if-eqz p3, :cond_64

    .line 99
    invoke-virtual {p0}, Lokio/AsyncTimeout;->deadlineNanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lokio/AsyncTimeout;->timeoutAt:J

    .line 105
    :goto_3d
    invoke-direct {p0, v1, v2}, Lokio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide p1

    .line 106
    sget-object p3, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    .line 107
    :goto_43
    iget-object v3, p3, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    if-eqz v3, :cond_53

    invoke-direct {v3, v1, v2}, Lokio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v3

    cmp-long v5, p1, v3

    if-gez v5, :cond_50

    goto :goto_53

    .line 106
    :cond_50
    iget-object p3, p3, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    goto :goto_43

    .line 108
    :cond_53
    :goto_53
    iget-object p1, p3, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    iput-object p1, p0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    .line 109
    iput-object p0, p3, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    .line 110
    sget-object p0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    if-ne p3, p0, :cond_62

    .line 111
    const-class p0, Lokio/AsyncTimeout;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_6a

    .line 116
    :cond_62
    monitor-exit v0

    return-void

    .line 101
    :cond_64
    :try_start_64
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :catchall_6a
    move-exception p0

    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_64 .. :try_end_6c} :catchall_6a

    throw p0
.end method


# virtual methods
.method public final enter()V
    .registers 7

    .line 73
    iget-boolean v0, p0, Lokio/AsyncTimeout;->inQueue:Z

    if-nez v0, :cond_1c

    .line 74
    invoke-virtual {p0}, Lokio/AsyncTimeout;->timeoutNanos()J

    move-result-wide v0

    .line 75
    invoke-virtual {p0}, Lokio/AsyncTimeout;->hasDeadline()Z

    move-result v2

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_15

    if-nez v2, :cond_15

    return-void

    :cond_15
    const/4 v3, 0x1

    .line 79
    iput-boolean v3, p0, Lokio/AsyncTimeout;->inQueue:Z

    .line 80
    invoke-static {p0, v0, v1, v2}, Lokio/AsyncTimeout;->scheduleTimeout(Lokio/AsyncTimeout;JZ)V

    return-void

    .line 73
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unbalanced enter/exit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final exit(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    invoke-virtual {p0}, Lokio/AsyncTimeout;->exit()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p1

    .line 285
    :cond_7
    invoke-virtual {p0, p1}, Lokio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method final exit(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    invoke-virtual {p0}, Lokio/AsyncTimeout;->exit()Z

    move-result v0

    if-eqz v0, :cond_f

    if-nez p1, :cond_9

    goto :goto_f

    :cond_9
    const/4 p1, 0x0

    .line 275
    invoke-virtual {p0, p1}, Lokio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_f
    :goto_f
    return-void
.end method

.method public final exit()Z
    .registers 3

    .line 120
    iget-boolean v0, p0, Lokio/AsyncTimeout;->inQueue:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 121
    :cond_6
    iput-boolean v1, p0, Lokio/AsyncTimeout;->inQueue:Z

    .line 122
    invoke-static {p0}, Lokio/AsyncTimeout;->cancelScheduledTimeout(Lokio/AsyncTimeout;)Z

    move-result v0

    return v0
.end method

.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4
    .param p1    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 294
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_c

    .line 296
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_c
    return-object v0
.end method

.method public final sink(Lokio/Sink;)Lokio/Sink;
    .registers 3

    .line 160
    new-instance v0, Lokio/AsyncTimeout$1;

    invoke-direct {v0, p0, p1}, Lokio/AsyncTimeout$1;-><init>(Lokio/AsyncTimeout;Lokio/Sink;)V

    return-object v0
.end method

.method public final source(Lokio/Source;)Lokio/Source;
    .registers 3

    .line 232
    new-instance v0, Lokio/AsyncTimeout$2;

    invoke-direct {v0, p0, p1}, Lokio/AsyncTimeout$2;-><init>(Lokio/AsyncTimeout;Lokio/Source;)V

    return-object v0
.end method

.method protected timedOut()V
    .registers 1

    return-void
.end method

###### Class okio.AsyncTimeout.AnonymousClass1 (okio.AsyncTimeout$1)
.class Lokio/AsyncTimeout$1;
.super Ljava/lang/Object;
.source "AsyncTimeout.java"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/AsyncTimeout;->sink(Lokio/Sink;)Lokio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokio/AsyncTimeout;

.field final synthetic val$sink:Lokio/Sink;


# direct methods
.method constructor <init>(Lokio/AsyncTimeout;Lokio/Sink;)V
    .registers 3

    .line 160
    iput-object p1, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    iput-object p2, p0, Lokio/AsyncTimeout$1;->val$sink:Lokio/Sink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    .line 208
    :try_start_5
    iget-object v0, p0, Lokio/AsyncTimeout$1;->val$sink:Lokio/Sink;

    invoke-interface {v0}, Lokio/Sink;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_13
    .catchall {:try_start_5 .. :try_end_a} :catchall_11

    const/4 v0, 0x1

    .line 213
    iget-object v1, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lokio/AsyncTimeout;->exit(Z)V

    return-void

    :catchall_11
    move-exception v0

    goto :goto_1b

    :catch_13
    move-exception v0

    .line 211
    :try_start_14
    iget-object v1, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lokio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_11

    .line 213
    :goto_1b
    iget-object v1, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lokio/AsyncTimeout;->exit(Z)V

    throw v0
.end method

.method public flush()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    .line 195
    :try_start_5
    iget-object v0, p0, Lokio/AsyncTimeout$1;->val$sink:Lokio/Sink;

    invoke-interface {v0}, Lokio/Sink;->flush()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_13
    .catchall {:try_start_5 .. :try_end_a} :catchall_11

    const/4 v0, 0x1

    .line 200
    iget-object v1, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lokio/AsyncTimeout;->exit(Z)V

    return-void

    :catchall_11
    move-exception v0

    goto :goto_1b

    :catch_13
    move-exception v0

    .line 198
    :try_start_14
    iget-object v1, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lokio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_11

    .line 200
    :goto_1b
    iget-object v1, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lokio/AsyncTimeout;->exit(Z)V

    throw v0
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .line 218
    iget-object v0, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsyncTimeout.sink("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lokio/AsyncTimeout$1;->val$sink:Lokio/Sink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    iget-wide v0, p1, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    :goto_8
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_4c

    .line 167
    iget-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    :goto_10
    const-wide/32 v3, 0x10000

    cmp-long v5, v0, v3

    if-gez v5, :cond_27

    .line 168
    iget v3, v2, Lokio/Segment;->limit:I

    iget v4, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v0, v3

    cmp-long v3, v0, p2

    if-ltz v3, :cond_24

    move-wide v0, p2

    goto :goto_27

    .line 167
    :cond_24
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_10

    .line 178
    :cond_27
    :goto_27
    iget-object v2, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v2}, Lokio/AsyncTimeout;->enter()V

    .line 180
    :try_start_2c
    iget-object v2, p0, Lokio/AsyncTimeout$1;->val$sink:Lokio/Sink;

    invoke-interface {v2, p1, v0, v1}, Lokio/Sink;->write(Lokio/Buffer;J)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_31} :catch_3c
    .catchall {:try_start_2c .. :try_end_31} :catchall_39

    sub-long/2addr p2, v0

    const/4 v0, 0x1

    .line 186
    iget-object v1, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lokio/AsyncTimeout;->exit(Z)V

    goto :goto_8

    :catchall_39
    move-exception v0

    move-object p1, v0

    goto :goto_45

    :catch_3c
    move-exception v0

    move-object p1, v0

    .line 184
    :try_start_3e
    iget-object p2, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {p2, p1}, Lokio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_39

    .line 186
    :goto_45
    iget-object p2, p0, Lokio/AsyncTimeout$1;->this$0:Lokio/AsyncTimeout;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lokio/AsyncTimeout;->exit(Z)V

    throw p1

    :cond_4c
    return-void
.end method

###### Class okio.AsyncTimeout.AnonymousClass2 (okio.AsyncTimeout$2)
.class Lokio/AsyncTimeout$2;
.super Ljava/lang/Object;
.source "AsyncTimeout.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/AsyncTimeout;->source(Lokio/Source;)Lokio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokio/AsyncTimeout;

.field final synthetic val$source:Lokio/Source;


# direct methods
.method constructor <init>(Lokio/AsyncTimeout;Lokio/Source;)V
    .registers 3

    .line 232
    iput-object p1, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    iput-object p2, p0, Lokio/AsyncTimeout$2;->val$source:Lokio/Source;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    :try_start_0
    iget-object v0, p0, Lokio/AsyncTimeout$2;->val$source:Lokio/Source;

    invoke-interface {v0}, Lokio/Source;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_e
    .catchall {:try_start_0 .. :try_end_5} :catchall_c

    const/4 v0, 0x1

    .line 255
    iget-object v1, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lokio/AsyncTimeout;->exit(Z)V

    return-void

    :catchall_c
    move-exception v0

    goto :goto_16

    :catch_e
    move-exception v0

    .line 253
    :try_start_f
    iget-object v1, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lokio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_c

    .line 255
    :goto_16
    iget-object v1, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lokio/AsyncTimeout;->exit(Z)V

    throw v0
.end method

.method public read(Lokio/Buffer;J)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    .line 237
    :try_start_5
    iget-object v0, p0, Lokio/AsyncTimeout$2;->val$source:Lokio/Source;

    invoke-interface {v0, p1, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide p1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_14
    .catchall {:try_start_5 .. :try_end_b} :catchall_12

    const/4 p3, 0x1

    .line 243
    iget-object v0, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {v0, p3}, Lokio/AsyncTimeout;->exit(Z)V

    return-wide p1

    :catchall_12
    move-exception p1

    goto :goto_1c

    :catch_14
    move-exception p1

    .line 241
    :try_start_15
    iget-object p2, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    invoke-virtual {p2, p1}, Lokio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_12

    .line 243
    :goto_1c
    iget-object p2, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lokio/AsyncTimeout;->exit(Z)V

    throw p1
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .line 260
    iget-object v0, p0, Lokio/AsyncTimeout$2;->this$0:Lokio/AsyncTimeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsyncTimeout.source("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lokio/AsyncTimeout$2;->val$source:Lokio/Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class okio.AsyncTimeout.Watchdog (okio.AsyncTimeout$Watchdog)
.class final Lokio/AsyncTimeout$Watchdog;
.super Ljava/lang/Thread;
.source "AsyncTimeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/AsyncTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Watchdog"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .line 303
    const-string v0, "Okio Watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 304
    invoke-virtual {p0, v0}, Lokio/AsyncTimeout$Watchdog;->setDaemon(Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 311
    :catch_0
    :goto_0
    :try_start_0
    const-class v0, Lokio/AsyncTimeout;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_0

    .line 312
    :try_start_3
    invoke-static {}, Lokio/AsyncTimeout;->awaitTimeout()Lokio/AsyncTimeout;

    move-result-object v1

    if-nez v1, :cond_b

    .line 315
    monitor-exit v0

    goto :goto_0

    .line 319
    :cond_b
    sget-object v2, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    if-ne v1, v2, :cond_14

    const/4 v1, 0x0

    .line 320
    sput-object v1, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    .line 321
    monitor-exit v0

    return-void

    .line 323
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_19

    .line 326
    :try_start_15
    invoke-virtual {v1}, Lokio/AsyncTimeout;->timedOut()V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_0

    goto :goto_0

    :catchall_19
    move-exception v1

    .line 323
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    :try_start_1b
    throw v1
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1c} :catch_0
.end method
