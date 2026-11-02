###### Class io.dcloud.feature.weex.adapter.ScalableView (io.dcloud.feature.weex.adapter.ScalableView)
.class public Lio/dcloud/feature/weex/adapter/ScalableView;
.super Lcom/taobao/weex/ui/view/WXFrameLayout;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# instance fields
.field mHeight:I

.field mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/WXFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lio/dcloud/feature/weex/adapter/ScalableView;->mWidth:I

    .line 3
    iput p1, p0, Lio/dcloud/feature/weex/adapter/ScalableView;->mHeight:I

    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 3
    :try_start_3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXFrameLayout;->getComponent()Lcom/taobao/weex/ui/component/WXDiv;

    move-result-object p3

    instance-of p3, p3, Lio/dcloud/feature/weex/adapter/ScalableViewComponent;

    if-eqz p3, :cond_2b

    .line 4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXFrameLayout;->getComponent()Lcom/taobao/weex/ui/component/WXDiv;

    move-result-object p3

    check-cast p3, Lio/dcloud/feature/weex/adapter/ScalableViewComponent;

    invoke-virtual {p3}, Lio/dcloud/feature/weex/adapter/ScalableViewComponent;->isScalable()Z

    move-result p3

    if-eqz p3, :cond_2b

    .line 5
    iget p3, p0, Lio/dcloud/feature/weex/adapter/ScalableView;->mHeight:I

    if-ne p3, p2, :cond_1f

    iget p3, p0, Lio/dcloud/feature/weex/adapter/ScalableView;->mWidth:I

    if-eq p3, p1, :cond_2b

    .line 6
    :cond_1f
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p3

    new-instance p4, Lio/dcloud/feature/weex/adapter/ScalableView$1;

    invoke-direct {p4, p0, p2, p1}, Lio/dcloud/feature/weex/adapter/ScalableView$1;-><init>(Lio/dcloud/feature/weex/adapter/ScalableView;II)V

    invoke-virtual {p3, p4}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2b} :catch_2b

    :catch_2b
    :cond_2b
    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.ScalableView.AnonymousClass1 (io.dcloud.feature.weex.adapter.ScalableView$1)
.class Lio/dcloud/feature/weex/adapter/ScalableView$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/ScalableView;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/ScalableView;

.field final synthetic val$h:I

.field final synthetic val$w:I


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/ScalableView;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/ScalableView$1;->this$0:Lio/dcloud/feature/weex/adapter/ScalableView;

    iput p2, p0, Lio/dcloud/feature/weex/adapter/ScalableView$1;->val$h:I

    iput p3, p0, Lio/dcloud/feature/weex/adapter/ScalableView$1;->val$w:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/ScalableView$1;->this$0:Lio/dcloud/feature/weex/adapter/ScalableView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXFrameLayout;->getComponent()Lcom/taobao/weex/ui/component/WXDiv;

    move-result-object v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/ScalableView$1;->this$0:Lio/dcloud/feature/weex/adapter/ScalableView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXFrameLayout;->getComponent()Lcom/taobao/weex/ui/component/WXDiv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 2
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/ScalableView$1;->this$0:Lio/dcloud/feature/weex/adapter/ScalableView;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXFrameLayout;->getComponent()Lcom/taobao/weex/ui/component/WXDiv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/feature/weex/adapter/ScalableView$1;->this$0:Lio/dcloud/feature/weex/adapter/ScalableView;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/view/WXFrameLayout;->getComponent()Lcom/taobao/weex/ui/component/WXDiv;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lio/dcloud/feature/weex/adapter/ScalableView$1;->val$h:I

    int-to-float v3, v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleHeight(Ljava/lang/String;Ljava/lang/String;FZ)V

    .line 3
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/ScalableView$1;->this$0:Lio/dcloud/feature/weex/adapter/ScalableView;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXFrameLayout;->getComponent()Lcom/taobao/weex/ui/component/WXDiv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/feature/weex/adapter/ScalableView$1;->this$0:Lio/dcloud/feature/weex/adapter/ScalableView;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/view/WXFrameLayout;->getComponent()Lcom/taobao/weex/ui/component/WXDiv;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lio/dcloud/feature/weex/adapter/ScalableView$1;->val$w:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleWidth(Ljava/lang/String;Ljava/lang/String;FZ)V

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/ScalableView$1;->this$0:Lio/dcloud/feature/weex/adapter/ScalableView;

    iget v1, p0, Lio/dcloud/feature/weex/adapter/ScalableView$1;->val$w:I

    iput v1, v0, Lio/dcloud/feature/weex/adapter/ScalableView;->mWidth:I

    .line 5
    iget v1, p0, Lio/dcloud/feature/weex/adapter/ScalableView$1;->val$h:I

    iput v1, v0, Lio/dcloud/feature/weex/adapter/ScalableView;->mHeight:I

    :cond_5b
    return-void
.end method
