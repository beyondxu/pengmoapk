###### Class com.bumptech.glide.manager.FirstFrameWaiter (com.bumptech.glide.manager.FirstFrameWaiter)
.class final Lcom/bumptech/glide/manager/FirstFrameWaiter;
.super Ljava/lang/Object;
.source "FirstFrameWaiter.java"

# interfaces
.implements Lcom/bumptech/glide/manager/FrameWaiter;


# instance fields
.field volatile isFirstFrameSet:Z

.field final pendingActivities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 20
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/manager/FirstFrameWaiter;->pendingActivities:Ljava/util/Set;

    return-void
.end method

.method static removeListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnDrawListener;)V
    .registers 2

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    .line 66
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method


# virtual methods
.method public registerSelf(Landroid/app/Activity;)V
    .registers 4

    .line 29
    iget-boolean v0, p0, Lcom/bumptech/glide/manager/FirstFrameWaiter;->isFirstFrameSet:Z

    if-eqz v0, :cond_5

    goto :goto_d

    .line 32
    :cond_5
    iget-object v0, p0, Lcom/bumptech/glide/manager/FirstFrameWaiter;->pendingActivities:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    :goto_d
    return-void

    .line 36
    :cond_e
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 38
    new-instance v1, Lcom/bumptech/glide/manager/FirstFrameWaiter$1;

    invoke-direct {v1, p0, p1}, Lcom/bumptech/glide/manager/FirstFrameWaiter$1;-><init>(Lcom/bumptech/glide/manager/FirstFrameWaiter;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method

###### Class com.bumptech.glide.manager.FirstFrameWaiter.AnonymousClass1 (com.bumptech.glide.manager.FirstFrameWaiter$1)
.class Lcom/bumptech/glide/manager/FirstFrameWaiter$1;
.super Ljava/lang/Object;
.source "FirstFrameWaiter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/manager/FirstFrameWaiter;->registerSelf(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/manager/FirstFrameWaiter;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/manager/FirstFrameWaiter;Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/bumptech/glide/manager/FirstFrameWaiter$1;->this$0:Lcom/bumptech/glide/manager/FirstFrameWaiter;

    iput-object p2, p0, Lcom/bumptech/glide/manager/FirstFrameWaiter$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDraw()V
    .registers 2

    .line 45
    new-instance v0, Lcom/bumptech/glide/manager/FirstFrameWaiter$1$1;

    invoke-direct {v0, p0, p0}, Lcom/bumptech/glide/manager/FirstFrameWaiter$1$1;-><init>(Lcom/bumptech/glide/manager/FirstFrameWaiter$1;Landroid/view/ViewTreeObserver$OnDrawListener;)V

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.bumptech.glide.manager.FirstFrameWaiter.AnonymousClass1.RunnableC00061 (com.bumptech.glide.manager.FirstFrameWaiter$1$1)
.class Lcom/bumptech/glide/manager/FirstFrameWaiter$1$1;
.super Ljava/lang/Object;
.source "FirstFrameWaiter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/manager/FirstFrameWaiter$1;->onDraw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bumptech/glide/manager/FirstFrameWaiter$1;

.field final synthetic val$listener:Landroid/view/ViewTreeObserver$OnDrawListener;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/manager/FirstFrameWaiter$1;Landroid/view/ViewTreeObserver$OnDrawListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/bumptech/glide/manager/FirstFrameWaiter$1$1;->this$1:Lcom/bumptech/glide/manager/FirstFrameWaiter$1;

    iput-object p2, p0, Lcom/bumptech/glide/manager/FirstFrameWaiter$1$1;->val$listener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 49
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->getInstance()Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->unblockHardwareBitmaps()V

    .line 50
    iget-object v0, p0, Lcom/bumptech/glide/manager/FirstFrameWaiter$1$1;->this$1:Lcom/bumptech/glide/manager/FirstFrameWaiter$1;

    iget-object v0, v0, Lcom/bumptech/glide/manager/FirstFrameWaiter$1;->this$0:Lcom/bumptech/glide/manager/FirstFrameWaiter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bumptech/glide/manager/FirstFrameWaiter;->isFirstFrameSet:Z

    .line 51
    iget-object v0, p0, Lcom/bumptech/glide/manager/FirstFrameWaiter$1$1;->this$1:Lcom/bumptech/glide/manager/FirstFrameWaiter$1;

    iget-object v0, v0, Lcom/bumptech/glide/manager/FirstFrameWaiter$1;->val$view:Landroid/view/View;

    iget-object v1, p0, Lcom/bumptech/glide/manager/FirstFrameWaiter$1$1;->val$listener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-static {v0, v1}, Lcom/bumptech/glide/manager/FirstFrameWaiter;->removeListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 52
    iget-object v0, p0, Lcom/bumptech/glide/manager/FirstFrameWaiter$1$1;->this$1:Lcom/bumptech/glide/manager/FirstFrameWaiter$1;

    iget-object v0, v0, Lcom/bumptech/glide/manager/FirstFrameWaiter$1;->this$0:Lcom/bumptech/glide/manager/FirstFrameWaiter;

    iget-object v0, v0, Lcom/bumptech/glide/manager/FirstFrameWaiter;->pendingActivities:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method
