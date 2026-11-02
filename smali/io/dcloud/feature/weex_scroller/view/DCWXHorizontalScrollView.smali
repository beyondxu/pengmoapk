###### Class io.dcloud.feature.weex_scroller.view.DCWXHorizontalScrollView (io.dcloud.feature.weex_scroller.view.DCWXHorizontalScrollView)
.class public Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/ui/view/IWXScroller;
.implements Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;
    }
.end annotation


# instance fields
.field private isTouch:Z

.field private lowwer:F

.field private mScrollViewListener:Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;

.field private mScrollViewListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;",
            ">;"
        }
    .end annotation
.end field

.field mScrollX:I

.field mScrollY:I

.field private scrollable:Z

.field private scroller:Ljava/lang/reflect/Field;

.field private shouldBeTriggerLower:Z

.field private shouldBeTriggerUpper:Z

.field private upper:F

.field private wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->scrollable:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->scroller:Ljava/lang/reflect/Field;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->isTouch:Z

    .line 28
    iput-boolean p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->shouldBeTriggerUpper:Z

    .line 29
    iput-boolean p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->shouldBeTriggerLower:Z

    const/high16 p1, 0x42480000    # 50.0f

    .line 89
    iput p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->upper:F

    .line 90
    iput p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->lowwer:F

    .line 91
    invoke-direct {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 92
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 93
    iput-boolean p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->scrollable:Z

    const/4 p2, 0x0

    .line 94
    iput-object p2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->scroller:Ljava/lang/reflect/Field;

    const/4 p2, 0x0

    .line 95
    iput-boolean p2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->isTouch:Z

    .line 119
    iput-boolean p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->shouldBeTriggerUpper:Z

    .line 120
    iput-boolean p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->shouldBeTriggerLower:Z

    const/high16 p1, 0x42480000    # 50.0f

    .line 180
    iput p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->upper:F

    .line 181
    iput p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->lowwer:F

    .line 182
    invoke-direct {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->init()V

    return-void
.end method

.method private init()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setWillNotDraw(Z)V

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 4
    :try_start_8
    const-class v0, Landroid/widget/HorizontalScrollView;

    const-string v1, "mScroller"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->scroller:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_16} :catch_16

    :catch_16
    return-void
.end method

.method private scrollToBottom()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->mScrollViewListener:Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;->onScrollToBottom()V

    .line 4
    :cond_7
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->mScrollViewListeners:Ljava/util/List;

    if-eqz v0, :cond_1f

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;

    .line 6
    invoke-interface {v1}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;->onScrollToBottom()V

    goto :goto_f

    :cond_1f
    return-void
.end method

.method private scrollToTop()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->mScrollViewListener:Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;->onScrolltoTop()V

    .line 4
    :cond_7
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->mScrollViewListeners:Ljava/util/List;

    if-eqz v0, :cond_1f

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;

    .line 6
    invoke-interface {v1}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;->onScrolltoTop()V

    goto :goto_f

    :cond_1f
    return-void
.end method


# virtual methods
.method public addScrollViewListener(Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->mScrollViewListeners:Ljava/util/List;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->mScrollViewListeners:Ljava/util/List;

    .line 4
    :cond_b
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    return-void
.end method

.method public destroy()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->mScrollViewListeners:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_7
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz v1, :cond_e

    .line 3
    invoke-virtual {v1, p0, p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr p1, v0

    return p1

    :cond_e
    return v0
.end method

.method public getContentFrame()Landroid/graphics/Rect;
    .registers 5

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->computeHorizontalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->computeVerticalScrollRange()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getGestureListener()Lcom/taobao/weex/ui/view/gesture/WXGesture;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    return-object v0
.end method

.method public isScrollable()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->scrollable:Z

    return v0
.end method

.method protected onScrollChanged(IIII)V
    .registers 12

    .line 1
    invoke-super/range {p0 .. p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 2
    invoke-static/range {p1 .. p2}, Lio/dcloud/common/ui/blur/AppEventForBlurManager;->onScrollChanged(II)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->mScrollX:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollY()I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->mScrollY:I

    .line 6
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->upper:F

    const/4 v3, 0x0

    const/4 v4, 0x1

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_29

    iget-boolean v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->shouldBeTriggerUpper:Z

    if-nez v0, :cond_29

    .line 7
    invoke-direct {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->scrollToTop()V

    .line 8
    iput-boolean v4, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->shouldBeTriggerUpper:Z

    goto :goto_36

    .line 9
    :cond_29
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->upper:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_36

    .line 10
    iput-boolean v3, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->shouldBeTriggerUpper:Z

    .line 12
    :cond_36
    :goto_36
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_42

    goto :goto_92

    .line 16
    :cond_42
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 17
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    iget v5, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->mScrollX:I

    add-int/2addr v2, v5

    sub-int/2addr v0, v2

    int-to-float v0, v0

    .line 18
    iget v2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->lowwer:F

    cmpg-float v5, v0, v2

    if-gtz v5, :cond_5f

    iget-boolean v5, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->shouldBeTriggerLower:Z

    if-nez v5, :cond_5f

    .line 19
    invoke-direct {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->scrollToBottom()V

    .line 20
    iput-boolean v4, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->shouldBeTriggerLower:Z

    goto :goto_65

    :cond_5f
    cmpl-float v0, v0, v2

    if-lez v0, :cond_65

    .line 22
    iput-boolean v3, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->shouldBeTriggerLower:Z

    .line 24
    :cond_65
    :goto_65
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->mScrollViewListener:Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;

    if-eqz v0, :cond_73

    sub-int v4, p3, p1

    sub-int v5, p4, p2

    move-object v1, p0

    move v2, p1

    move v3, p2

    .line 25
    invoke-interface/range {v0 .. v5}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;->onScrollChanged(Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;IIII)V

    .line 27
    :cond_73
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->mScrollViewListeners:Ljava/util/List;

    if-eqz v0, :cond_92

    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_92

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;

    sub-int v4, p3, p1

    sub-int v5, p4, p2

    move-object v1, p0

    move v2, p1

    move v3, p2

    .line 29
    invoke-interface/range {v0 .. v5}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;->onScrollChanged(Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;IIII)V

    goto :goto_7b

    :cond_92
    :goto_92
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    const/4 v2, 0x0

    if-eq v0, v1, :cond_11

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    goto :goto_16

    .line 10
    :cond_e
    iput-boolean v2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->isTouch:Z

    goto :goto_16

    .line 11
    :cond_11
    iput-boolean v2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->isTouch:Z

    goto :goto_16

    .line 12
    :cond_14
    iput-boolean v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->isTouch:Z

    .line 22
    :goto_16
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public registerGestureListener(Lcom/taobao/weex/ui/view/gesture/WXGesture;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    return-void
.end method

.method public removeScrollViewListener(Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setLowwerLength(F)V
    .registers 2

    .line 1
    iput p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->lowwer:F

    return-void
.end method

.method public setScrollViewListener(Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->mScrollViewListener:Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;

    return-void
.end method

.method public setScrollable(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->scrollable:Z

    return-void
.end method

.method public setUpperLength(F)V
    .registers 2

    .line 1
    iput p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->upper:F

    return-void
.end method

.method public setWAScroller(Lcom/taobao/weex/ui/component/DCWXScroller;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getViewPortWidth()I

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v0

    iput v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->upper:F

    .line 2
    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getViewPortWidth()I

    move-result p1

    invoke-static {v1, p1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result p1

    iput p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->lowwer:F

    return-void
.end method

.method public stopScroll()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->scroller:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_22

    iget-boolean v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->isTouch:Z

    if-nez v1, :cond_22

    .line 3
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 4
    const-string v1, "abortAnimation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_22

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 7
    iget-object v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->scroller:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_22} :catch_22

    :catch_22
    :cond_22
    return-void
.end method

###### Class io.dcloud.feature.weex_scroller.view.DCWXHorizontalScrollView.ScrollViewListener (io.dcloud.feature.weex_scroller.view.DCWXHorizontalScrollView$ScrollViewListener)
.class public interface abstract Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ScrollViewListener"
.end annotation


# virtual methods
.method public abstract onScrollChanged(Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;IIII)V
.end method

.method public abstract onScrollToBottom()V
.end method

.method public abstract onScrolltoTop()V
.end method
