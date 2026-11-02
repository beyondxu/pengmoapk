###### Class io.dcloud.weex.ViewHover (io.dcloud.weex.ViewHover)
.class public Lio/dcloud/weex/ViewHover;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# static fields
.field public static final VIEW_HOVER_EVENT:Ljava/lang/String; = "view_hover_event"


# instance fields
.field private component:Lcom/taobao/weex/ui/component/WXComponent;

.field private handler:Landroid/os/Handler;

.field private hoverClass:Lcom/alibaba/fastjson/JSONObject;

.field private hoverStartTime:I

.field private hoverStayTime:I

.field private hoverStopPropagation:Z

.field private isHover:Z

.field private isReceiveTouch:Z

.field private originalStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public touchEndRunnable:Ljava/lang/Runnable;

.field public touchStartRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lio/dcloud/weex/ViewHover;-><init>(Lcom/taobao/weex/ui/component/WXComponent;Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;Lcom/alibaba/fastjson/JSONObject;)V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lio/dcloud/weex/ViewHover;->hoverStopPropagation:Z

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lio/dcloud/weex/ViewHover;->hoverClass:Lcom/alibaba/fastjson/JSONObject;

    const/16 v1, 0x32

    .line 5
    iput v1, p0, Lio/dcloud/weex/ViewHover;->hoverStartTime:I

    const/16 v1, 0x190

    .line 6
    iput v1, p0, Lio/dcloud/weex/ViewHover;->hoverStayTime:I

    .line 8
    iput-boolean v0, p0, Lio/dcloud/weex/ViewHover;->isHover:Z

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lio/dcloud/weex/ViewHover;->isReceiveTouch:Z

    .line 12
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lio/dcloud/weex/ViewHover;->handler:Landroid/os/Handler;

    .line 21
    new-instance v0, Lio/dcloud/weex/ViewHover$1;

    invoke-direct {v0, p0}, Lio/dcloud/weex/ViewHover$1;-><init>(Lio/dcloud/weex/ViewHover;)V

    iput-object v0, p0, Lio/dcloud/weex/ViewHover;->touchStartRunnable:Ljava/lang/Runnable;

    .line 35
    new-instance v0, Lio/dcloud/weex/ViewHover$2;

    invoke-direct {v0, p0}, Lio/dcloud/weex/ViewHover$2;-><init>(Lio/dcloud/weex/ViewHover;)V

    iput-object v0, p0, Lio/dcloud/weex/ViewHover;->touchEndRunnable:Ljava/lang/Runnable;

    .line 36
    invoke-virtual {p0, p2}, Lio/dcloud/weex/ViewHover;->update(Lcom/alibaba/fastjson/JSONObject;)V

    .line 37
    iput-object p1, p0, Lio/dcloud/weex/ViewHover;->component:Lcom/taobao/weex/ui/component/WXComponent;

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/weex/ViewHover;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/dcloud/weex/ViewHover;->isHover:Z

    return p0
.end method

.method static synthetic access$002(Lio/dcloud/weex/ViewHover;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/dcloud/weex/ViewHover;->isHover:Z

    return p1
.end method

.method static synthetic access$100(Lio/dcloud/weex/ViewHover;)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/weex/ViewHover;->component:Lcom/taobao/weex/ui/component/WXComponent;

    return-object p0
.end method

.method static synthetic access$202(Lio/dcloud/weex/ViewHover;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/weex/ViewHover;->originalStyles:Ljava/util/Map;

    return-object p1
.end method


# virtual methods
.method public destroy()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lio/dcloud/weex/ViewHover;->component:Lcom/taobao/weex/ui/component/WXComponent;

    .line 2
    iput-object v0, p0, Lio/dcloud/weex/ViewHover;->originalStyles:Ljava/util/Map;

    return-void
.end method

.method public getHoverStartTime()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/weex/ViewHover;->hoverStartTime:I

    return v0
.end method

.method public getHoverStayTime()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/weex/ViewHover;->hoverStayTime:I

    return v0
.end method

.method public handleMotionEvent(Lcom/taobao/weex/ui/view/gesture/WXGestureType;Landroid/view/MotionEvent;)V
    .registers 5

    .line 1
    iget-object p2, p0, Lio/dcloud/weex/ViewHover;->hoverClass:Lcom/alibaba/fastjson/JSONObject;

    if-eqz p2, :cond_82

    iget-boolean p2, p0, Lio/dcloud/weex/ViewHover;->isReceiveTouch:Z

    if-nez p2, :cond_a

    goto/16 :goto_82

    .line 4
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, -0x1

    sparse-switch p2, :sswitch_data_84

    goto :goto_3e

    :sswitch_1e
    const-string p2, "touchcancel"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    goto :goto_3e

    :cond_27
    const/4 v1, 0x2

    goto :goto_3e

    :sswitch_29
    const-string p2, "touchend"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_32

    goto :goto_3e

    :cond_32
    const/4 v1, 0x1

    goto :goto_3e

    :sswitch_34
    const-string p2, "touchstart"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3d

    goto :goto_3e

    :cond_3d
    const/4 v1, 0x0

    :goto_3e
    packed-switch v1, :pswitch_data_92

    goto :goto_82

    .line 21
    :pswitch_42
    iput-boolean v0, p0, Lio/dcloud/weex/ViewHover;->isHover:Z

    .line 22
    iget-object p1, p0, Lio/dcloud/weex/ViewHover;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lio/dcloud/weex/ViewHover;->touchEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 23
    iget-object p1, p0, Lio/dcloud/weex/ViewHover;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lio/dcloud/weex/ViewHover;->touchEndRunnable:Ljava/lang/Runnable;

    iget v0, p0, Lio/dcloud/weex/ViewHover;->hoverStayTime:I

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 24
    :pswitch_56
    iput-boolean v0, p0, Lio/dcloud/weex/ViewHover;->isHover:Z

    .line 25
    iget-object p1, p0, Lio/dcloud/weex/ViewHover;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lio/dcloud/weex/ViewHover;->touchEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 26
    iget-object p1, p0, Lio/dcloud/weex/ViewHover;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lio/dcloud/weex/ViewHover;->touchEndRunnable:Ljava/lang/Runnable;

    iget v0, p0, Lio/dcloud/weex/ViewHover;->hoverStayTime:I

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 27
    :pswitch_6a
    iget-object p1, p0, Lio/dcloud/weex/ViewHover;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lio/dcloud/weex/ViewHover;->touchEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 28
    iget-object p1, p0, Lio/dcloud/weex/ViewHover;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lio/dcloud/weex/ViewHover;->touchStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 29
    iget-object p1, p0, Lio/dcloud/weex/ViewHover;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lio/dcloud/weex/ViewHover;->touchStartRunnable:Ljava/lang/Runnable;

    iget v0, p0, Lio/dcloud/weex/ViewHover;->hoverStartTime:I

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_82
    :goto_82
    return-void

    nop

    :sswitch_data_84
    .sparse-switch
        -0x5e176b7d -> :sswitch_34
        -0x30d912c4 -> :sswitch_29
        0x7ed66279 -> :sswitch_1e
    .end sparse-switch

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_6a
        :pswitch_56
        :pswitch_42
    .end packed-switch
.end method

.method public isHoverStopPropagation()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/weex/ViewHover;->hoverStopPropagation:Z

    return v0
.end method

.method public setHoverStartTime(I)V
    .registers 2

    .line 1
    iput p1, p0, Lio/dcloud/weex/ViewHover;->hoverStartTime:I

    return-void
.end method

.method public setHoverStayTime(I)V
    .registers 2

    .line 1
    iput p1, p0, Lio/dcloud/weex/ViewHover;->hoverStayTime:I

    return-void
.end method

.method public setHoverStopPropagation(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/dcloud/weex/ViewHover;->hoverStopPropagation:Z

    return-void
.end method

.method public setReceiveTouch(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/dcloud/weex/ViewHover;->isReceiveTouch:Z

    return-void
.end method

.method public update(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    iget-object v0, p0, Lio/dcloud/weex/ViewHover;->hoverClass:Lcom/alibaba/fastjson/JSONObject;

    if-nez v0, :cond_a

    .line 2
    iput-object p1, p0, Lio/dcloud/weex/ViewHover;->hoverClass:Lcom/alibaba/fastjson/JSONObject;

    return-void

    .line 4
    :cond_a
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public updateStatusAndGetUpdateStyles(Z)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    if-eqz p1, :cond_a

    .line 3
    iget-object p1, p0, Lio/dcloud/weex/ViewHover;->hoverClass:Lcom/alibaba/fastjson/JSONObject;

    return-object p1

    .line 5
    :cond_a
    iget-object p1, p0, Lio/dcloud/weex/ViewHover;->originalStyles:Ljava/util/Map;

    if-eqz p1, :cond_41

    .line 6
    iget-object p1, p0, Lio/dcloud/weex/ViewHover;->hoverClass:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 7
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 8
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9
    iget-object v2, p0, Lio/dcloud/weex/ViewHover;->originalStyles:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 10
    iget-object v2, p0, Lio/dcloud/weex/ViewHover;->originalStyles:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 12
    :cond_3b
    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    :cond_41
    return-object v0
.end method

###### Class io.dcloud.weex.ViewHover.AnonymousClass1 (io.dcloud.weex.ViewHover$1)
.class Lio/dcloud/weex/ViewHover$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/weex/ViewHover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/weex/ViewHover;


# direct methods
.method constructor <init>(Lio/dcloud/weex/ViewHover;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/weex/ViewHover$1;->this$0:Lio/dcloud/weex/ViewHover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/weex/ViewHover$1;->this$0:Lio/dcloud/weex/ViewHover;

    invoke-static {v0}, Lio/dcloud/weex/ViewHover;->access$000(Lio/dcloud/weex/ViewHover;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_38

    .line 4
    :cond_9
    iget-object v0, p0, Lio/dcloud/weex/ViewHover$1;->this$0:Lio/dcloud/weex/ViewHover;

    invoke-static {v0}, Lio/dcloud/weex/ViewHover;->access$100(Lio/dcloud/weex/ViewHover;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lio/dcloud/weex/ViewHover$1;->this$0:Lio/dcloud/weex/ViewHover;

    invoke-static {v0}, Lio/dcloud/weex/ViewHover;->access$100(Lio/dcloud/weex/ViewHover;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 5
    iget-object v0, p0, Lio/dcloud/weex/ViewHover$1;->this$0:Lio/dcloud/weex/ViewHover;

    invoke-static {v0}, Lio/dcloud/weex/ViewHover;->access$100(Lio/dcloud/weex/ViewHover;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/dom/WXStyle;->clone()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/weex/ViewHover;->access$202(Lio/dcloud/weex/ViewHover;Ljava/util/Map;)Ljava/util/Map;

    .line 6
    iget-object v0, p0, Lio/dcloud/weex/ViewHover$1;->this$0:Lio/dcloud/weex/ViewHover;

    invoke-static {v0}, Lio/dcloud/weex/ViewHover;->access$100(Lio/dcloud/weex/ViewHover;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->setHoverClassStatus(Z)V

    :cond_38
    :goto_38
    return-void
.end method

###### Class io.dcloud.weex.ViewHover.AnonymousClass2 (io.dcloud.weex.ViewHover$2)
.class Lio/dcloud/weex/ViewHover$2;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/weex/ViewHover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/weex/ViewHover;


# direct methods
.method constructor <init>(Lio/dcloud/weex/ViewHover;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/weex/ViewHover$2;->this$0:Lio/dcloud/weex/ViewHover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/weex/ViewHover$2;->this$0:Lio/dcloud/weex/ViewHover;

    invoke-static {v0}, Lio/dcloud/weex/ViewHover;->access$100(Lio/dcloud/weex/ViewHover;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lio/dcloud/weex/ViewHover$2;->this$0:Lio/dcloud/weex/ViewHover;

    invoke-static {v0}, Lio/dcloud/weex/ViewHover;->access$100(Lio/dcloud/weex/ViewHover;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 2
    iget-object v0, p0, Lio/dcloud/weex/ViewHover$2;->this$0:Lio/dcloud/weex/ViewHover;

    invoke-static {v0}, Lio/dcloud/weex/ViewHover;->access$100(Lio/dcloud/weex/ViewHover;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->setHoverClassStatus(Z)V

    .line 3
    iget-object v0, p0, Lio/dcloud/weex/ViewHover$2;->this$0:Lio/dcloud/weex/ViewHover;

    invoke-static {v0, v1}, Lio/dcloud/weex/ViewHover;->access$002(Lio/dcloud/weex/ViewHover;Z)Z

    :cond_23
    return-void
.end method
