###### Class com.taobao.weex.common.WXThread (com.taobao.weex.common.WXThread)
.class public Lcom/taobao/weex/common/WXThread;
.super Landroid/os/HandlerThread;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/common/WXThread$SafeRunnable;,
        Lcom/taobao/weex/common/WXThread$SafeCallback;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/taobao/weex/common/WXThread;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 10
    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 11
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 12
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/taobao/weex/common/WXThread;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/os/Handler$Callback;)V
    .registers 4

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 8
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 9
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {p3}, Lcom/taobao/weex/common/WXThread;->secure(Landroid/os/Handler$Callback;)Landroid/os/Handler$Callback;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/taobao/weex/common/WXThread;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler$Callback;)V
    .registers 4

    .line 4
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 6
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p2}, Lcom/taobao/weex/common/WXThread;->secure(Landroid/os/Handler$Callback;)Landroid/os/Handler$Callback;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/taobao/weex/common/WXThread;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static secure(Landroid/os/Handler$Callback;)Landroid/os/Handler$Callback;
    .registers 2

    if-eqz p0, :cond_d

    .line 6
    instance-of v0, p0, Lcom/taobao/weex/common/WXThread$SafeCallback;

    if-eqz v0, :cond_7

    goto :goto_d

    .line 10
    :cond_7
    new-instance v0, Lcom/taobao/weex/common/WXThread$SafeCallback;

    invoke-direct {v0, p0}, Lcom/taobao/weex/common/WXThread$SafeCallback;-><init>(Landroid/os/Handler$Callback;)V

    return-object v0

    :cond_d
    :goto_d
    return-object p0
.end method

.method public static secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, v0}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static secure(Ljava/lang/Runnable;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)Ljava/lang/Runnable;
    .registers 4

    if-eqz p0, :cond_d

    .line 2
    instance-of v0, p0, Lcom/taobao/weex/common/WXThread$SafeRunnable;

    if-eqz v0, :cond_7

    goto :goto_d

    .line 5
    :cond_7
    new-instance v0, Lcom/taobao/weex/common/WXThread$SafeRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/weex/common/WXThread$SafeRunnable;-><init>(Ljava/lang/Runnable;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    return-object v0

    :cond_d
    :goto_d
    return-object p0
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/common/WXThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public isWXThreadAlive()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/common/WXThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public quit()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/common/WXThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4
    :cond_8
    invoke-super {p0}, Landroid/os/HandlerThread;->quit()Z

    move-result v0

    return v0
.end method

###### Class com.taobao.weex.common.WXThread.SafeCallback (com.taobao.weex.common.WXThread$SafeCallback)
.class Lcom/taobao/weex/common/WXThread$SafeCallback;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/common/WXThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SafeCallback"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "SafeCallback"


# instance fields
.field final mCallback:Landroid/os/Handler$Callback;


# direct methods
.method constructor <init>(Landroid/os/Handler$Callback;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/taobao/weex/common/WXThread$SafeCallback;->mCallback:Landroid/os/Handler$Callback;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/common/WXThread$SafeCallback;->mCallback:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_10

    .line 2
    invoke-interface {v0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result p1
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return p1

    :catchall_9
    move-exception p1

    .line 6
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 p1, 0x0

    return p1

    .line 7
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SafeCallback handleMessage throw expection:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SafeCallback"

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    throw p1
.end method

###### Class com.taobao.weex.common.WXThread.SafeRunnable (com.taobao.weex.common.WXThread$SafeRunnable)
.class Lcom/taobao/weex/common/WXThread$SafeRunnable;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/common/WXThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SafeRunnable"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "SafeRunnable"


# instance fields
.field private mInstance:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taobao/weex/WXSDKInstance;",
            ">;"
        }
    .end annotation
.end field

.field final mTask:Ljava/lang/Runnable;

.field private mTimelineLog:Lcom/taobao/weex/utils/tools/LogDetail;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/common/WXThread$SafeRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Runnable;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V
    .registers 6

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/taobao/weex/common/WXThread$SafeRunnable;->mTimelineLog:Lcom/taobao/weex/utils/tools/LogDetail;

    .line 16
    iput-object p1, p0, Lcom/taobao/weex/common/WXThread$SafeRunnable;->mTask:Ljava/lang/Runnable;

    if-eqz p3, :cond_21

    .line 18
    new-instance p1, Lcom/taobao/weex/utils/tools/LogDetail;

    invoke-direct {p1}, Lcom/taobao/weex/utils/tools/LogDetail;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/common/WXThread$SafeRunnable;->mTimelineLog:Lcom/taobao/weex/utils/tools/LogDetail;

    .line 19
    iget-object v0, p1, Lcom/taobao/weex/utils/tools/LogDetail;->info:Lcom/taobao/weex/utils/tools/Info;

    const-string v1, "Android"

    iput-object v1, v0, Lcom/taobao/weex/utils/tools/Info;->platform:Ljava/lang/String;

    .line 20
    invoke-virtual {p1, p3}, Lcom/taobao/weex/utils/tools/LogDetail;->name(Ljava/lang/String;)V

    .line 21
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/taobao/weex/common/WXThread$SafeRunnable;->mInstance:Ljava/lang/ref/WeakReference;

    :cond_21
    return-void
.end method

.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lcom/taobao/weex/common/WXThread$SafeRunnable;-><init>(Ljava/lang/Runnable;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/common/WXThread$SafeRunnable;->mTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_24

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/common/WXThread$SafeRunnable;->mTimelineLog:Lcom/taobao/weex/utils/tools/LogDetail;

    if-eqz v0, :cond_b

    .line 3
    invoke-virtual {v0}, Lcom/taobao/weex/utils/tools/LogDetail;->taskStart()V

    .line 4
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/common/WXThread$SafeRunnable;->mTask:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 5
    iget-object v0, p0, Lcom/taobao/weex/common/WXThread$SafeRunnable;->mTimelineLog:Lcom/taobao/weex/utils/tools/LogDetail;

    if-eqz v0, :cond_24

    .line 6
    invoke-virtual {v0}, Lcom/taobao/weex/utils/tools/LogDetail;->taskEnd()V
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_18

    goto :goto_24

    :catchall_18
    move-exception v0

    .line 10
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v1

    const-string v2, "SafeRunnable"

    if-nez v1, :cond_3e

    .line 14
    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/taobao/weex/common/WXThread$SafeRunnable;->mTimelineLog:Lcom/taobao/weex/utils/tools/LogDetail;

    if-eqz v0, :cond_3d

    .line 18
    iget-object v0, p0, Lcom/taobao/weex/common/WXThread$SafeRunnable;->mInstance:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3d

    .line 19
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_3d

    .line 20
    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->mTimeCalculator:Lcom/taobao/weex/utils/tools/TimeCalculator;

    if-eqz v0, :cond_3d

    .line 21
    iget-object v1, p0, Lcom/taobao/weex/common/WXThread$SafeRunnable;->mTimelineLog:Lcom/taobao/weex/utils/tools/LogDetail;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/utils/tools/TimeCalculator;->addLog(Lcom/taobao/weex/utils/tools/LogDetail;)V

    :cond_3d
    return-void

    .line 22
    :cond_3e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SafeRunnable run throw expection:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    throw v0
.end method
