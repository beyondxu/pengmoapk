###### Class io.dcloud.p.a3 (io.dcloud.p.a3)
.class public abstract Lio/dcloud/p/a3;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# static fields
.field private static volatile a:Landroid/os/HandlerThread;

.field private static volatile b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "dcloud_thread"

    const/16 v2, -0x13

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/p/a3;->a:Landroid/os/HandlerThread;

    .line 21
    sget-object v0, Lio/dcloud/p/a3;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 22
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lio/dcloud/p/a3;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lio/dcloud/p/a3;->b:Landroid/os/Handler;

    return-void
.end method

.method public static a()Landroid/os/Handler;
    .registers 4

    .line 1
    sget-object v0, Lio/dcloud/p/a3;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_c

    sget-object v0, Lio/dcloud/p/a3;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_39

    .line 2
    :cond_c
    const-class v0, Lio/dcloud/p/a3;

    monitor-enter v0

    .line 3
    :try_start_f
    sget-object v1, Lio/dcloud/p/a3;->a:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1b

    sget-object v1, Lio/dcloud/p/a3;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_38

    .line 4
    :cond_1b
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "dcloud_thread"

    const/16 v3, -0x13

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/dcloud/p/a3;->a:Landroid/os/HandlerThread;

    .line 5
    sget-object v1, Lio/dcloud/p/a3;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 6
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lio/dcloud/p/a3;->a:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lio/dcloud/p/a3;->b:Landroid/os/Handler;

    .line 8
    :cond_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_f .. :try_end_39} :catchall_3c

    .line 10
    :cond_39
    sget-object v0, Lio/dcloud/p/a3;->b:Landroid/os/Handler;

    return-object v0

    :catchall_3c
    move-exception v1

    .line 11
    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v1
.end method
