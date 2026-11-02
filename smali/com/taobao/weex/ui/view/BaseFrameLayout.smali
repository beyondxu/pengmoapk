###### Class com.taobao.weex.ui.view.BaseFrameLayout (com.taobao.weex.ui.view.BaseFrameLayout)
.class public Lcom/taobao/weex/ui/view/BaseFrameLayout;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# instance fields
.field private mWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/ui/flat/widget/Widget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/BaseFrameLayout;->dispatchDrawInterval(Landroid/graphics/Canvas;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    return-void

    :catchall_4
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method protected dispatchDrawInterval(Landroid/graphics/Canvas;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/BaseFrameLayout;->mWidgets:Ljava/util/List;

    if-eqz v0, :cond_2e

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4
    iget-object v0, p0, Lcom/taobao/weex/ui/view/BaseFrameLayout;->mWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/flat/widget/Widget;

    .line 5
    invoke-interface {v1, p1}, Lcom/taobao/weex/ui/flat/widget/Widget;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1a

    .line 7
    :cond_2a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 9
    :cond_2e
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXViewUtils;->clipCanvasWithinBorderBox(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 10
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public mountFlatGUI(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/weex/ui/flat/widget/Widget;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/view/BaseFrameLayout;->mWidgets:Ljava/util/List;

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 5
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public unmountFlatGUI()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/taobao/weex/ui/view/BaseFrameLayout;->mWidgets:Ljava/util/List;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/BaseFrameLayout;->mWidgets:Ljava/util/List;

    if-nez v0, :cond_d

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    return p1

    :cond_d
    :goto_d
    const/4 p1, 0x1

    return p1
.end method
