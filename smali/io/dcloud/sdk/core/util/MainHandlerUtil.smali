###### Class io.dcloud.sdk.core.util.MainHandlerUtil (io.dcloud.sdk.core.util.MainHandlerUtil)
.class public Lio/dcloud/sdk/core/util/MainHandlerUtil;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# static fields
.field private static volatile a:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lio/dcloud/sdk/core/util/MainHandlerUtil;->a:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMainHandler()Landroid/os/Handler;
    .registers 3

    .line 1
    sget-object v0, Lio/dcloud/sdk/core/util/MainHandlerUtil;->a:Landroid/os/Handler;

    if-nez v0, :cond_1b

    .line 2
    const-class v0, Lio/dcloud/sdk/core/util/MainHandlerUtil;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lio/dcloud/sdk/core/util/MainHandlerUtil;->a:Landroid/os/Handler;

    if-nez v1, :cond_16

    .line 4
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lio/dcloud/sdk/core/util/MainHandlerUtil;->a:Landroid/os/Handler;

    .line 6
    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1

    .line 8
    :cond_1b
    :goto_1b
    sget-object v0, Lio/dcloud/sdk/core/util/MainHandlerUtil;->a:Landroid/os/Handler;

    return-object v0
.end method
