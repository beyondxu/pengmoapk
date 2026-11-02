###### Class io.dcloud.uts.UTSTimerKt (io.dcloud.uts.UTSTimerKt)
.class public final Lio/dcloud/uts/UTSTimerKt;
.super Ljava/lang/Object;
.source "UTSTimer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u001a\u0018\u0010\u001a\u001a\u00020\u001b2\u0010\u0010\u001c\u001a\u000c\u0012\u0004\u0012\u00020\u00020\u0001j\u0002`\u001d\u001a \u0010\u001a\u001a\u00020\u001b2\u0010\u0010\u001c\u001a\u000c\u0012\u0004\u0012\u00020\u00020\u0001j\u0002`\u001d2\u0006\u0010\u001e\u001a\u00020\u001b\u001a \u0010\u001f\u001a\u00020\u001b2\u0010\u0010\u001c\u001a\u000c\u0012\u0004\u0012\u00020\u00020\u0001j\u0002`\u001d2\u0006\u0010\u001e\u001a\u00020\u001b\u001a(\u0010\u001f\u001a\u00020\u001b2\u0010\u0010\u001c\u001a\u000c\u0012\u0004\u0012\u00020\u00020\u0001j\u0002`\u001d2\u0006\u0010 \u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001b\u001a\u000e\u0010!\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020\u001b\u001a\u000e\u0010#\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020\u001b\"\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\"Z\u0010\t\u001aB\u0012\u000c\u0012\n \u000c*\u0004\u0018\u00010\u000b0\u000b\u0012\u000c\u0012\n \u000c*\u0004\u0018\u00010\r0\r \u000c* \u0012\u000c\u0012\n \u000c*\u0004\u0018\u00010\u000b0\u000b\u0012\u000c\u0012\n \u000c*\u0004\u0018\u00010\r0\r\u0018\u00010\u000e0\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\"Z\u0010\u0013\u001aB\u0012\u000c\u0012\n \u000c*\u0004\u0018\u00010\u000b0\u000b\u0012\u000c\u0012\n \u000c*\u0004\u0018\u00010\r0\r \u000c* \u0012\u000c\u0012\n \u000c*\u0004\u0018\u00010\u000b0\u000b\u0012\u000c\u0012\n \u000c*\u0004\u0018\u00010\r0\r\u0018\u00010\u000e0\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0010\"\u0004\u0008\u0015\u0010\u0012\"\u0011\u0010\u0016\u001a\u00020\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019*\u0016\u0010\u0000\"\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006$"
    }
    d2 = {
        "TimerCallback",
        "Lkotlin/Function0;",
        "",
        "taskDynamicId",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "getTaskDynamicId",
        "()Ljava/util/concurrent/atomic/AtomicInteger;",
        "setTaskDynamicId",
        "(Ljava/util/concurrent/atomic/AtomicInteger;)V",
        "intervalTaskMap",
        "",
        "",
        "kotlin.jvm.PlatformType",
        "Lio/dcloud/uts/TaskFuture;",
        "",
        "getIntervalTaskMap",
        "()Ljava/util/Map;",
        "setIntervalTaskMap",
        "(Ljava/util/Map;)V",
        "timeoutTaskMap",
        "getTimeoutTaskMap",
        "setTimeoutTaskMap",
        "executorService",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "getExecutorService",
        "()Ljava/util/concurrent/ScheduledExecutorService;",
        "setTimeout",
        "",
        "callback",
        "Lio/dcloud/uts/TimerCallback;",
        "timeout",
        "setInterval",
        "delay",
        "clearTimeout",
        "taskId",
        "clearInterval",
        "utsplugin_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private static intervalTaskMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/dcloud/uts/TaskFuture;",
            ">;"
        }
    .end annotation
.end field

.field private static taskDynamicId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static timeoutTaskMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/dcloud/uts/TaskFuture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$5xpI_VirItYHpPfZfw4WkPuG6VE(Lkotlin/jvm/functions/Function0;)V
    .registers 1

    invoke-static {p0}, Lio/dcloud/uts/UTSTimerKt;->setInterval$lambda$4$lambda$3(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UAyJ1gnsCkiOBi4f4GjC1hFRNNA(Lkotlin/jvm/functions/Function0;I)V
    .registers 2

    invoke-static {p0, p1}, Lio/dcloud/uts/UTSTimerKt;->setTimeout$lambda$0(Lkotlin/jvm/functions/Function0;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$o09fNmoYkFpvOJ1_jvxiw65aS1M(Landroid/os/Handler;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 2

    invoke-static {p0, p1}, Lio/dcloud/uts/UTSTimerKt;->setInterval$lambda$4(Landroid/os/Handler;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wsUOnbt7jqgzfuyzeXYJswZV6-g(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .registers 1

    invoke-static {p0}, Lio/dcloud/uts/UTSTimerKt;->setInterval$lambda$2(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ziGSLP2o_E9paO-yWIFsMKV8els(Lkotlin/jvm/functions/Function0;)V
    .registers 1

    invoke-static {p0}, Lio/dcloud/uts/UTSTimerKt;->setInterval$lambda$1(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lio/dcloud/uts/UTSTimerKt;->taskDynamicId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 79
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/dcloud/uts/UTSTimerKt;->intervalTaskMap:Ljava/util/Map;

    .line 80
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/dcloud/uts/UTSTimerKt;->timeoutTaskMap:Ljava/util/Map;

    const/16 v0, 0xa

    .line 81
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    const-string v1, "newScheduledThreadPool(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lio/dcloud/uts/UTSTimerKt;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static final declared-synchronized clearInterval(Ljava/lang/Number;)V
    .registers 4

    const-class v0, Lio/dcloud/uts/UTSTimerKt;

    monitor-enter v0

    :try_start_3
    const-string v1, "taskId"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    sget-object v1, Lio/dcloud/uts/UTSTimerKt;->intervalTaskMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_3f

    if-nez v1, :cond_1a

    .line 203
    monitor-exit v0

    return-void

    .line 205
    :cond_1a
    :try_start_1a
    sget-object v1, Lio/dcloud/uts/UTSTimerKt;->intervalTaskMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/uts/TaskFuture;

    .line 206
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lio/dcloud/uts/TaskFuture;->cancel()V

    .line 207
    sget-object v1, Lio/dcloud/uts/UTSTimerKt;->intervalTaskMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catchall {:try_start_1a .. :try_end_3d} :catchall_3f

    .line 208
    monitor-exit v0

    return-void

    :catchall_3f
    move-exception p0

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw p0
.end method

.method public static final declared-synchronized clearTimeout(Ljava/lang/Number;)V
    .registers 4

    const-class v0, Lio/dcloud/uts/UTSTimerKt;

    monitor-enter v0

    :try_start_3
    const-string v1, "taskId"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    sget-object v1, Lio/dcloud/uts/UTSTimerKt;->timeoutTaskMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_3f

    if-nez v1, :cond_1a

    .line 191
    monitor-exit v0

    return-void

    .line 193
    :cond_1a
    :try_start_1a
    sget-object v1, Lio/dcloud/uts/UTSTimerKt;->timeoutTaskMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/uts/TaskFuture;

    .line 194
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lio/dcloud/uts/TaskFuture;->cancel()V

    .line 195
    sget-object v1, Lio/dcloud/uts/UTSTimerKt;->timeoutTaskMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catchall {:try_start_1a .. :try_end_3d} :catchall_3f

    .line 196
    monitor-exit v0

    return-void

    :catchall_3f
    move-exception p0

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw p0
.end method

.method public static final getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    .line 81
    sget-object v0, Lio/dcloud/uts/UTSTimerKt;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public static final getIntervalTaskMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/dcloud/uts/TaskFuture;",
            ">;"
        }
    .end annotation

    .line 79
    sget-object v0, Lio/dcloud/uts/UTSTimerKt;->intervalTaskMap:Ljava/util/Map;

    return-object v0
.end method

.method public static final getTaskDynamicId()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 78
    sget-object v0, Lio/dcloud/uts/UTSTimerKt;->taskDynamicId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static final getTimeoutTaskMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/dcloud/uts/TaskFuture;",
            ">;"
        }
    .end annotation

    .line 80
    sget-object v0, Lio/dcloud/uts/UTSTimerKt;->timeoutTaskMap:Ljava/util/Map;

    return-object v0
.end method

.method public static final declared-synchronized setInterval(Lkotlin/jvm/functions/Function0;Ljava/lang/Number;)Ljava/lang/Number;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Number;",
            ")",
            "Ljava/lang/Number;"
        }
    .end annotation

    const-class v0, Lio/dcloud/uts/UTSTimerKt;

    monitor-enter v0

    :try_start_3
    const-string v1, "callback"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "timeout"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-static {p0, p1, p1}, Lio/dcloud/uts/UTSTimerKt;->setInterval(Lkotlin/jvm/functions/Function0;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    monitor-exit v0

    return-object p0

    :catchall_13
    move-exception p0

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public static final declared-synchronized setInterval(Lkotlin/jvm/functions/Function0;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Number;",
            "Ljava/lang/Number;",
            ")",
            "Ljava/lang/Number;"
        }
    .end annotation

    const-class v1, Lio/dcloud/uts/UTSTimerKt;

    monitor-enter v1

    :try_start_3
    const-string v0, "callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delay"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 139
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-static {p1, v2}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v2

    const/4 v3, 0x1

    if-gtz v2, :cond_26

    .line 140
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    .line 144
    :cond_26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-static {p2, v0}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v0

    if-gtz v0, :cond_38

    .line 145
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    .line 149
    :cond_38
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_5c

    .line 151
    sget-object v2, Lio/dcloud/uts/UTSTimerKt;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lio/dcloud/uts/UTSTimerKt$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lio/dcloud/uts/UTSTimerKt$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 155
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 156
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    .line 157
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 151
    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    .line 159
    new-instance p1, Lio/dcloud/uts/TaskFuture;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, p0}, Lio/dcloud/uts/TaskFuture;-><init>(Ljava/util/concurrent/ScheduledFuture;)V

    goto :goto_91

    .line 163
    :cond_5c
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v2, Lio/dcloud/uts/UTSTimerKt$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lio/dcloud/uts/UTSTimerKt$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 166
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 168
    sget-object v3, Lio/dcloud/uts/UTSTimerKt;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lio/dcloud/uts/UTSTimerKt$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, v0}, Lio/dcloud/uts/UTSTimerKt$$ExternalSyntheticLambda4;-><init>(Landroid/os/Handler;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 172
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    .line 173
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    .line 174
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 168
    invoke-interface/range {v3 .. v9}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    .line 177
    new-instance p1, Lio/dcloud/uts/TaskFuture;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, p0}, Lio/dcloud/uts/TaskFuture;-><init>(Ljava/util/concurrent/ScheduledFuture;)V

    .line 181
    :goto_91
    sget-object p0, Lio/dcloud/uts/UTSTimerKt;->taskDynamicId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 182
    sget-object p0, Lio/dcloud/uts/UTSTimerKt;->intervalTaskMap:Ljava/util/Map;

    const-string p2, "intervalTaskMap"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lio/dcloud/uts/UTSTimerKt;->taskDynamicId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object p0, Lio/dcloud/uts/UTSTimerKt;->taskDynamicId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;
    :try_end_b6
    .catchall {:try_start_3 .. :try_end_b6} :catchall_b8

    monitor-exit v1

    return-object p0

    :catchall_b8
    move-exception v0

    move-object p0, v0

    :try_start_ba
    monitor-exit v1
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_b8

    throw p0
.end method

.method private static final setInterval$lambda$1(Lkotlin/jvm/functions/Function0;)V
    .registers 1

    .line 153
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final setInterval$lambda$2(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .registers 1

    .line 164
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 165
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setInterval$lambda$4(Landroid/os/Handler;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 3

    .line 170
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    new-instance v0, Lio/dcloud/uts/UTSTimerKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lio/dcloud/uts/UTSTimerKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final setInterval$lambda$4$lambda$3(Lkotlin/jvm/functions/Function0;)V
    .registers 1

    .line 170
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static final setIntervalTaskMap(Ljava/util/Map;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/dcloud/uts/TaskFuture;",
            ">;)V"
        }
    .end annotation

    .line 79
    sput-object p0, Lio/dcloud/uts/UTSTimerKt;->intervalTaskMap:Ljava/util/Map;

    return-void
.end method

.method public static final setTaskDynamicId(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .registers 2

    const-string v0, "<set-?>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    sput-object p0, Lio/dcloud/uts/UTSTimerKt;->taskDynamicId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static final declared-synchronized setTimeout(Lkotlin/jvm/functions/Function0;)Ljava/lang/Number;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Number;"
        }
    .end annotation

    const-class v0, Lio/dcloud/uts/UTSTimerKt;

    monitor-enter v0

    :try_start_3
    const-string v1, "callback"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-static {p0, v1}, Lio/dcloud/uts/UTSTimerKt;->setTimeout(Lkotlin/jvm/functions/Function0;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit v0

    return-object p0

    :catchall_15
    move-exception p0

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public static final declared-synchronized setTimeout(Lkotlin/jvm/functions/Function0;Ljava/lang/Number;)Ljava/lang/Number;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Number;",
            ")",
            "Ljava/lang/Number;"
        }
    .end annotation

    const-class v0, Lio/dcloud/uts/UTSTimerKt;

    monitor-enter v0

    :try_start_3
    const-string v1, "callback"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "timeout"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    sget-object v1, Lio/dcloud/uts/UTSTimerKt;->taskDynamicId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 96
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_33

    .line 98
    sget-object v2, Lio/dcloud/uts/UTSTimerKt;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lio/dcloud/uts/UTSTimerKt$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1}, Lio/dcloud/uts/UTSTimerKt$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function0;I)V

    .line 104
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    .line 105
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 98
    invoke-interface {v2, v3, p0, p1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    .line 108
    new-instance p1, Lio/dcloud/uts/TaskFuture;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, p0}, Lio/dcloud/uts/TaskFuture;-><init>(Ljava/util/concurrent/ScheduledFuture;)V

    goto :goto_55

    .line 112
    :cond_33
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 113
    new-instance v3, Lio/dcloud/uts/UTSTimerKt$setTimeout$runnable$1;

    invoke-direct {v3, p0, v1}, Lio/dcloud/uts/UTSTimerKt$setTimeout$runnable$1;-><init>(Lkotlin/jvm/functions/Function0;I)V

    .line 120
    move-object p0, v3

    check-cast p0, Ljava/lang/Runnable;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 122
    new-instance p1, Lio/dcloud/uts/TaskFuture;

    check-cast v3, Lio/dcloud/uts/UTSRunnable;

    invoke-direct {p1, v2, v3}, Lio/dcloud/uts/TaskFuture;-><init>(Landroid/os/Handler;Lio/dcloud/uts/UTSRunnable;)V

    .line 126
    :goto_55
    sget-object p0, Lio/dcloud/uts/UTSTimerKt;->timeoutTaskMap:Ljava/util/Map;

    const-string v2, "timeoutTaskMap"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;
    :try_end_69
    .catchall {:try_start_3 .. :try_end_69} :catchall_6b

    monitor-exit v0

    return-object p0

    :catchall_6b
    move-exception p0

    :try_start_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw p0
.end method

.method private static final setTimeout$lambda$0(Lkotlin/jvm/functions/Function0;I)V
    .registers 2

    .line 100
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-static {p0}, Lio/dcloud/uts/UTSTimerKt;->clearTimeout(Ljava/lang/Number;)V

    return-void
.end method

.method public static final setTimeoutTaskMap(Ljava/util/Map;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/dcloud/uts/TaskFuture;",
            ">;)V"
        }
    .end annotation

    .line 80
    sput-object p0, Lio/dcloud/uts/UTSTimerKt;->timeoutTaskMap:Ljava/util/Map;

    return-void
.end method

###### Class io.dcloud.uts.UTSTimerKt$$ExternalSyntheticLambda0 (io.dcloud.uts.UTSTimerKt$$ExternalSyntheticLambda0)
.class public final synthetic Lio/dcloud/uts/UTSTimerKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/uts/UTSTimerKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/dcloud/uts/UTSTimerKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lio/dcloud/uts/UTSTimerKt;->$r8$lambda$5xpI_VirItYHpPfZfw4WkPuG6VE(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

###### Class io.dcloud.uts.UTSTimerKt$$ExternalSyntheticLambda1 (io.dcloud.uts.UTSTimerKt$$ExternalSyntheticLambda1)
.class public final synthetic Lio/dcloud/uts/UTSTimerKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/uts/UTSTimerKt$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function0;

    iput p2, p0, Lio/dcloud/uts/UTSTimerKt$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/dcloud/uts/UTSTimerKt$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function0;

    iget v1, p0, Lio/dcloud/uts/UTSTimerKt$$ExternalSyntheticLambda1;->f$1:I

    invoke-static {v0, v1}, Lio/dcloud/uts/UTSTimerKt;->$r8$lambda$UAyJ1gnsCkiOBi4f4GjC1hFRNNA(Lkotlin/jvm/functions/Function0;I)V

    return-void
.end method

###### Class io.dcloud.uts.UTSTimerKt$$ExternalSyntheticLambda2 (io.dcloud.uts.UTSTimerKt$$ExternalSyntheticLambda2)
.class public final synthetic Lio/dcloud/uts/UTSTimerKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/uts/UTSTimerKt$$ExternalSyntheticLambda2;->f$0:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/dcloud/uts/UTSTimerKt$$ExternalSyntheticLambda2;->f$0:Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lio/dcloud/uts/UTSTimerKt;->$r8$lambda$ziGSLP2o_E9paO-yWIFsMKV8els(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

###### Class io.dcloud.uts.UTSTimerKt$$ExternalSyntheticLambda3 (io.dcloud.uts.UTSTimerKt$$ExternalSyntheticLambda3)
.class public final synthetic Lio/dcloud/uts/UTSTimerKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/uts/UTSTimerKt$$ExternalSyntheticLambda3;->f$0:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/dcloud/uts/UTSTimerKt$$ExternalSyntheticLambda3;->f$0:Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lio/dcloud/uts/UTSTimerKt;->$r8$lambda$wsUOnbt7jqgzfuyzeXYJswZV6-g(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class io.dcloud.uts.UTSTimerKt$$ExternalSyntheticLambda4 (io.dcloud.uts.UTSTimerKt$$ExternalSyntheticLambda4)
.class public final synthetic Lio/dcloud/uts/UTSTimerKt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/Handler;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Handler;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/uts/UTSTimerKt$$ExternalSyntheticLambda4;->f$0:Landroid/os/Handler;

    iput-object p2, p0, Lio/dcloud/uts/UTSTimerKt$$ExternalSyntheticLambda4;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/dcloud/uts/UTSTimerKt$$ExternalSyntheticLambda4;->f$0:Landroid/os/Handler;

    iget-object v1, p0, Lio/dcloud/uts/UTSTimerKt$$ExternalSyntheticLambda4;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0, v1}, Lio/dcloud/uts/UTSTimerKt;->$r8$lambda$o09fNmoYkFpvOJ1_jvxiw65aS1M(Landroid/os/Handler;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method

###### Class io.dcloud.uts.UTSTimerKt$setTimeout$runnable$1 (io.dcloud.uts.UTSTimerKt$setTimeout$runnable$1)
.class public final Lio/dcloud/uts/UTSTimerKt$setTimeout$runnable$1;
.super Lio/dcloud/uts/UTSRunnable;
.source "UTSTimer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/uts/UTSTimerKt;->setTimeout(Lkotlin/jvm/functions/Function0;Ljava/lang/Number;)Ljava/lang/Number;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "io/dcloud/uts/UTSTimerKt$setTimeout$runnable$1",
        "Lio/dcloud/uts/UTSRunnable;",
        "doSth",
        "",
        "utsplugin_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $currentTaskId:I


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Lio/dcloud/uts/UTSTimerKt$setTimeout$runnable$1;->$callback:Lkotlin/jvm/functions/Function0;

    iput p2, p0, Lio/dcloud/uts/UTSTimerKt$setTimeout$runnable$1;->$currentTaskId:I

    .line 113
    invoke-direct {p0}, Lio/dcloud/uts/UTSRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public doSth()V
    .registers 2

    .line 115
    iget-object v0, p0, Lio/dcloud/uts/UTSTimerKt$setTimeout$runnable$1;->$callback:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 117
    iget v0, p0, Lio/dcloud/uts/UTSTimerKt$setTimeout$runnable$1;->$currentTaskId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0}, Lio/dcloud/uts/UTSTimerKt;->clearTimeout(Ljava/lang/Number;)V

    return-void
.end method
