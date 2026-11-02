###### Class io.dcloud.p.z0 (io.dcloud.p.z0)
.class public Lio/dcloud/p/z0;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# static fields
.field private static a:Lio/dcloud/p/z0;

.field private static b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/dcloud/p/z0;->b:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lio/dcloud/p/z0;
    .registers 2

    .line 1
    sget-object p0, Lio/dcloud/p/z0;->a:Lio/dcloud/p/z0;

    if-nez p0, :cond_17

    .line 2
    const-class p0, Lio/dcloud/p/z0;

    monitor-enter p0

    .line 3
    :try_start_7
    sget-object v0, Lio/dcloud/p/z0;->a:Lio/dcloud/p/z0;

    if-nez v0, :cond_12

    .line 4
    new-instance v0, Lio/dcloud/p/z0;

    invoke-direct {v0}, Lio/dcloud/p/z0;-><init>()V

    sput-object v0, Lio/dcloud/p/z0;->a:Lio/dcloud/p/z0;

    .line 6
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v0

    .line 8
    :cond_17
    :goto_17
    sget-object p0, Lio/dcloud/p/z0;->a:Lio/dcloud/p/z0;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2

    .line 11
    sget-object v0, Lio/dcloud/p/z0;->b:Ljava/util/List;

    return-object v0
.end method

.method public a(Lio/dcloud/p/y0;)V
    .registers 3

    .line 9
    sget-object v0, Lio/dcloud/p/z0;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-static {}, Lio/dcloud/p/x4;->a()Lio/dcloud/p/x4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/dcloud/p/x4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lio/dcloud/p/y0;)V
    .registers 3

    .line 1
    sget-object v0, Lio/dcloud/p/z0;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
