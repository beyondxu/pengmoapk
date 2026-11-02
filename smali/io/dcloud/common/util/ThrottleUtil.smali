###### Class io.dcloud.common.util.ThrottleUtil (io.dcloud.common.util.ThrottleUtil)
.class public Lio/dcloud/common/util/ThrottleUtil;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# instance fields
.field private final handler:Landroid/os/Handler;

.field private readyToRun:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/dcloud/common/util/ThrottleUtil;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public throttlePost(Ljava/lang/Runnable;J)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/ThrottleUtil;->readyToRun:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    .line 2
    iget-object v1, p0, Lio/dcloud/common/util/ThrottleUtil;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    :cond_9
    new-instance v0, Lio/dcloud/common/util/ThrottleUtil$1;

    invoke-direct {v0, p0, p1}, Lio/dcloud/common/util/ThrottleUtil$1;-><init>(Lio/dcloud/common/util/ThrottleUtil;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lio/dcloud/common/util/ThrottleUtil;->readyToRun:Ljava/lang/Runnable;

    .line 10
    iget-object p1, p0, Lio/dcloud/common/util/ThrottleUtil;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

###### Class io.dcloud.common.util.ThrottleUtil.AnonymousClass1 (io.dcloud.common.util.ThrottleUtil$1)
.class Lio/dcloud/common/util/ThrottleUtil$1;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/ThrottleUtil;->throttlePost(Ljava/lang/Runnable;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/util/ThrottleUtil;

.field final synthetic val$task:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lio/dcloud/common/util/ThrottleUtil;Ljava/lang/Runnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/ThrottleUtil$1;->this$0:Lio/dcloud/common/util/ThrottleUtil;

    iput-object p2, p0, Lio/dcloud/common/util/ThrottleUtil$1;->val$task:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/ThrottleUtil$1;->val$task:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
