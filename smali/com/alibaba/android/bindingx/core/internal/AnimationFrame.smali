###### Class com.alibaba.android.bindingx.core.internal.AnimationFrame (com.alibaba.android.bindingx.core.internal.AnimationFrame)
.class abstract Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;
.super Ljava/lang/Object;
.source "AnimationFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;,
        Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$ChoreographerAnimationFrameImpl;,
        Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$Callback;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static newInstance()Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;
    .registers 1

    .line 44
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$ChoreographerAnimationFrameImpl;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$ChoreographerAnimationFrameImpl;-><init>()V

    return-object v0
.end method


# virtual methods
.method abstract clear()V
.end method

.method abstract requestAnimationFrame(Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$Callback;)V
.end method

.method abstract terminate()V
.end method

###### Class com.alibaba.android.bindingx.core.internal.AnimationFrame.Callback (com.alibaba.android.bindingx.core.internal.AnimationFrame$Callback)
.class interface abstract Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$Callback;
.super Ljava/lang/Object;
.source "AnimationFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callback"
.end annotation


# virtual methods
.method public abstract doFrame()V
.end method

###### Class com.alibaba.android.bindingx.core.internal.AnimationFrame.ChoreographerAnimationFrameImpl (com.alibaba.android.bindingx.core.internal.AnimationFrame$ChoreographerAnimationFrameImpl)
.class Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$ChoreographerAnimationFrameImpl;
.super Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;
.source "AnimationFrame.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChoreographerAnimationFrameImpl"
.end annotation


# instance fields
.field private callback:Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$Callback;

.field private choreographer:Landroid/view/Choreographer;

.field private isRunning:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 69
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;-><init>()V

    .line 70
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_c

    .line 71
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 73
    :cond_c
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$ChoreographerAnimationFrameImpl;->choreographer:Landroid/view/Choreographer;

    return-void
.end method


# virtual methods
.method clear()V
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$ChoreographerAnimationFrameImpl;->choreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_7

    .line 79
    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_7
    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$ChoreographerAnimationFrameImpl;->isRunning:Z

    return-void
.end method

.method public doFrame(J)V
    .registers 3

    .line 101
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$ChoreographerAnimationFrameImpl;->callback:Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$Callback;

    if-eqz p1, :cond_7

    .line 102
    invoke-interface {p1}, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$Callback;->doFrame()V

    .line 104
    :cond_7
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$ChoreographerAnimationFrameImpl;->choreographer:Landroid/view/Choreographer;

    if-eqz p1, :cond_12

    iget-boolean p2, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$ChoreographerAnimationFrameImpl;->isRunning:Z

    if-eqz p2, :cond_12

    .line 105
    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_12
    return-void
.end method

.method requestAnimationFrame(Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$Callback;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$ChoreographerAnimationFrameImpl;->callback:Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$Callback;

    const/4 p1, 0x1

    .line 93
    iput-boolean p1, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$ChoreographerAnimationFrameImpl;->isRunning:Z

    .line 94
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$ChoreographerAnimationFrameImpl;->choreographer:Landroid/view/Choreographer;

    if-eqz p1, :cond_c

    .line 95
    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_c
    return-void
.end method

.method terminate()V
    .registers 2

    .line 86
    invoke-virtual {p0}, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$ChoreographerAnimationFrameImpl;->clear()V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$ChoreographerAnimationFrameImpl;->choreographer:Landroid/view/Choreographer;

    return-void
.end method

###### Class com.alibaba.android.bindingx.core.internal.AnimationFrame.HandlerAnimationFrameImpl (com.alibaba.android.bindingx.core.internal.AnimationFrame$HandlerAnimationFrameImpl)
.class Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;
.super Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;
.source "AnimationFrame.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandlerAnimationFrameImpl"
.end annotation


# static fields
.field private static final DEFAULT_DELAY_MILLIS:J = 0x10L

.field private static final MSG_FRAME_CALLBACK:I = 0x64


# instance fields
.field private callback:Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$Callback;

.field private isRunning:Z

.field private mInnerHandler:Landroid/os/Handler;

.field private mInnerHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 121
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame;-><init>()V

    .line 122
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->mInnerHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_a

    .line 123
    invoke-virtual {p0}, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->terminate()V

    .line 125
    :cond_a
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "expression-timing-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->mInnerHandlerThread:Landroid/os/HandlerThread;

    .line 126
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 127
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->mInnerHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->mInnerHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method clear()V
    .registers 3

    .line 132
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->mInnerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 133
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_8
    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->isRunning:Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    if-eqz p1, :cond_20

    .line 161
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_20

    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->mInnerHandler:Landroid/os/Handler;

    if-eqz p1, :cond_20

    .line 162
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->callback:Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$Callback;

    if-eqz p1, :cond_13

    .line 163
    invoke-interface {p1}, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$Callback;->doFrame()V

    .line 165
    :cond_13
    iget-boolean p1, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->isRunning:Z

    if-eqz p1, :cond_1e

    .line 166
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->mInnerHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1e
    const/4 p1, 0x1

    return p1

    :cond_20
    const/4 p1, 0x0

    return p1
.end method

.method requestAnimationFrame(Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$Callback;)V
    .registers 3

    .line 152
    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->callback:Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$Callback;

    const/4 p1, 0x1

    .line 153
    iput-boolean p1, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->isRunning:Z

    .line 154
    iget-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->mInnerHandler:Landroid/os/Handler;

    if-eqz p1, :cond_e

    const/16 v0, 0x64

    .line 155
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_e
    return-void
.end method

.method terminate()V
    .registers 2

    .line 140
    invoke-virtual {p0}, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->clear()V

    .line 142
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->mInnerHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->mInnerHandler:Landroid/os/Handler;

    .line 147
    iput-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/AnimationFrame$HandlerAnimationFrameImpl;->mInnerHandlerThread:Landroid/os/HandlerThread;

    return-void
.end method
