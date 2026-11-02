###### Class pl.droidsonroids.gif.ConditionVariable (pl.droidsonroids.gif.ConditionVariable)
.class Lpl/droidsonroids/gif/ConditionVariable;
.super Ljava/lang/Object;
.source "ConditionVariable.java"


# instance fields
.field private volatile mCondition:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized block()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 43
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lpl/droidsonroids/gif/ConditionVariable;->mCondition:Z

    if-nez v0, :cond_9

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    goto :goto_1

    .line 46
    :cond_9
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method declared-synchronized close()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 39
    :try_start_2
    iput-boolean v0, p0, Lpl/droidsonroids/gif/ConditionVariable;->mCondition:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 40
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

.method declared-synchronized open()V
    .registers 3

    monitor-enter p0

    .line 31
    :try_start_1
    iget-boolean v0, p0, Lpl/droidsonroids/gif/ConditionVariable;->mCondition:Z

    const/4 v1, 0x1

    .line 32
    iput-boolean v1, p0, Lpl/droidsonroids/gif/ConditionVariable;->mCondition:Z

    if-nez v0, :cond_b

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 36
    :cond_b
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method declared-synchronized set(Z)V
    .registers 2

    monitor-enter p0

    if-eqz p1, :cond_7

    .line 24
    :try_start_3
    invoke-virtual {p0}, Lpl/droidsonroids/gif/ConditionVariable;->open()V

    goto :goto_a

    .line 26
    :cond_7
    invoke-virtual {p0}, Lpl/droidsonroids/gif/ConditionVariable;->close()V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 28
    :goto_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method
