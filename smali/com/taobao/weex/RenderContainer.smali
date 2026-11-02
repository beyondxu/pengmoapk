###### Class com.taobao.weex.RenderContainer (com.taobao.weex.RenderContainer)
.class public Lcom/taobao/weex/RenderContainer;
.super Lcom/taobao/weex/render/WXAbstractRenderContainer;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/WeexFrameRateControl$VSyncListener;


# instance fields
.field private mFrameRateControl:Lcom/taobao/weex/WeexFrameRateControl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/render/WXAbstractRenderContainer;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/taobao/weex/WeexFrameRateControl;

    invoke-direct {p1, p0}, Lcom/taobao/weex/WeexFrameRateControl;-><init>(Lcom/taobao/weex/WeexFrameRateControl$VSyncListener;)V

    iput-object p1, p0, Lcom/taobao/weex/RenderContainer;->mFrameRateControl:Lcom/taobao/weex/WeexFrameRateControl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/render/WXAbstractRenderContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance p1, Lcom/taobao/weex/WeexFrameRateControl;

    invoke-direct {p1, p0}, Lcom/taobao/weex/WeexFrameRateControl;-><init>(Lcom/taobao/weex/WeexFrameRateControl$VSyncListener;)V

    iput-object p1, p0, Lcom/taobao/weex/RenderContainer;->mFrameRateControl:Lcom/taobao/weex/WeexFrameRateControl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/render/WXAbstractRenderContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    new-instance p1, Lcom/taobao/weex/WeexFrameRateControl;

    invoke-direct {p1, p0}, Lcom/taobao/weex/WeexFrameRateControl;-><init>(Lcom/taobao/weex/WeexFrameRateControl$VSyncListener;)V

    iput-object p1, p0, Lcom/taobao/weex/RenderContainer;->mFrameRateControl:Lcom/taobao/weex/WeexFrameRateControl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/render/WXAbstractRenderContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 8
    new-instance p1, Lcom/taobao/weex/WeexFrameRateControl;

    invoke-direct {p1, p0}, Lcom/taobao/weex/WeexFrameRateControl;-><init>(Lcom/taobao/weex/WeexFrameRateControl$VSyncListener;)V

    iput-object p1, p0, Lcom/taobao/weex/RenderContainer;->mFrameRateControl:Lcom/taobao/weex/WeexFrameRateControl;

    return-void
.end method


# virtual methods
.method public OnVSync()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/render/WXAbstractRenderContainer;->mSDKInstance:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/render/WXAbstractRenderContainer;->mSDKInstance:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->OnVSync()V

    :cond_15
    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchWindowVisibilityChanged(I)V

    const/16 v0, 0x8

    if-ne p1, v0, :cond_f

    .line 3
    iget-object p1, p0, Lcom/taobao/weex/RenderContainer;->mFrameRateControl:Lcom/taobao/weex/WeexFrameRateControl;

    if-eqz p1, :cond_18

    .line 4
    invoke-virtual {p1}, Lcom/taobao/weex/WeexFrameRateControl;->stop()V

    return-void

    :cond_f
    if-nez p1, :cond_18

    .line 7
    iget-object p1, p0, Lcom/taobao/weex/RenderContainer;->mFrameRateControl:Lcom/taobao/weex/WeexFrameRateControl;

    if-eqz p1, :cond_18

    .line 8
    invoke-virtual {p1}, Lcom/taobao/weex/WeexFrameRateControl;->start()V

    :cond_18
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/RenderContainer;->mFrameRateControl:Lcom/taobao/weex/WeexFrameRateControl;

    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {v0}, Lcom/taobao/weex/WeexFrameRateControl;->start()V

    :cond_a
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/RenderContainer;->mFrameRateControl:Lcom/taobao/weex/WeexFrameRateControl;

    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {v0}, Lcom/taobao/weex/WeexFrameRateControl;->stop()V

    :cond_a
    return-void
.end method
