###### Class com.taobao.weex.ui.view.WXCircleViewPager (com.taobao.weex.ui.view.WXCircleViewPager)
.class public Lcom/taobao/weex/ui/view/WXCircleViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;


# instance fields
.field private final SCROLL_TO_NEXT:I

.field private intervalTime:J

.field private isAutoScroll:Z

.field private mAutoScrollHandler:Landroid/os/Handler;

.field private mScroller:Lcom/taobao/weex/ui/view/WXSmoothScroller;

.field private mState:I

.field private needLoop:Z

.field private scrollable:Z

.field private wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->SCROLL_TO_NEXT:I

    const-wide/16 v0, 0xbb8

    .line 5
    iput-wide v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->intervalTime:J

    .line 7
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->needLoop:Z

    .line 8
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->scrollable:Z

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mState:I

    .line 10
    new-instance p1, Lcom/taobao/weex/ui/view/WXCircleViewPager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager$1;-><init>(Lcom/taobao/weex/ui/view/WXCircleViewPager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mAutoScrollHandler:Landroid/os/Handler;

    .line 26
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 27
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 28
    iput p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->SCROLL_TO_NEXT:I

    const-wide/16 v0, 0xbb8

    .line 31
    iput-wide v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->intervalTime:J

    .line 33
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->needLoop:Z

    .line 34
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->scrollable:Z

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mState:I

    .line 36
    new-instance p1, Lcom/taobao/weex/ui/view/WXCircleViewPager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/taobao/weex/ui/view/WXCircleViewPager$1;-><init>(Lcom/taobao/weex/ui/view/WXCircleViewPager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mAutoScrollHandler:Landroid/os/Handler;

    .line 120
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/view/WXCircleViewPager;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->showNextItem()V

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/view/WXCircleViewPager;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->intervalTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/taobao/weex/ui/view/WXCircleViewPager;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mState:I

    return p1
.end method

.method static synthetic access$301(Lcom/taobao/weex/ui/view/WXCircleViewPager;)I
    .registers 1

    .line 1
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/taobao/weex/ui/view/WXCircleViewPager;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->needLoop:Z

    return p0
.end method

.method static synthetic access$500(Lcom/taobao/weex/ui/view/WXCircleViewPager;IZ)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superSetCurrentItem(IZ)V

    return-void
.end method

.method private init()V
    .registers 2

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setOverScrollMode(I)V

    .line 3
    new-instance v0, Lcom/taobao/weex/ui/view/WXCircleViewPager$2;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager$2;-><init>(Lcom/taobao/weex/ui/view/WXCircleViewPager;)V

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 36
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->postInitViewPager()V

    return-void
.end method

.method private postInitViewPager()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 5
    :cond_7
    :try_start_7
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const-string v1, "mScroller"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 7
    const-class v2, Landroidx/viewpager/widget/ViewPager;

    const-string v3, "sInterpolator"

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 9
    invoke-virtual {v2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 11
    new-instance v1, Lcom/taobao/weex/ui/view/WXSmoothScroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    .line 12
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/animation/Interpolator;

    invoke-direct {v1, v3, v2}, Lcom/taobao/weex/ui/view/WXSmoothScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mScroller:Lcom/taobao/weex/ui/view/WXSmoothScroller;

    .line 13
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_33} :catch_34

    return-void

    :catch_34
    move-exception v0

    .line 15
    const-string v1, "[CircleViewPager] postInitViewPager: "

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private setRealCurrentItem(IZ)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getFirst()I

    move-result v0

    add-int/2addr v0, p1

    invoke-direct {p0, v0, p2}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superSetCurrentItem(IZ)V

    return-void
.end method

.method private showNextItem()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getCirclePageAdapter()Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getCirclePageAdapter()Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    move-result-object v0

    iget-boolean v0, v0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->isRTL:Z

    if-eqz v0, :cond_34

    .line 2
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->needLoop:Z

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superGetCurrentItem()I

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_43

    .line 5
    :cond_1b
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getRealCount()I

    move-result v0

    if-ne v0, v1, :cond_2b

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superGetCurrentItem()I

    move-result v0

    if-nez v0, :cond_2b

    .line 6
    invoke-direct {p0, v2, v2}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superSetCurrentItem(IZ)V

    return-void

    .line 8
    :cond_2b
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superGetCurrentItem()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-direct {p0, v0, v2}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superSetCurrentItem(IZ)V

    return-void

    .line 11
    :cond_34
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->needLoop:Z

    if-nez v0, :cond_44

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superGetCurrentItem()I

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getRealCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_44

    :goto_43
    return-void

    .line 14
    :cond_44
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getRealCount()I

    move-result v0

    if-ne v0, v1, :cond_55

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superGetCurrentItem()I

    move-result v0

    if-ne v0, v2, :cond_55

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0, v2}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superSetCurrentItem(IZ)V

    return-void

    .line 17
    :cond_55
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superGetCurrentItem()I

    move-result v0

    add-int/2addr v0, v2

    invoke-direct {p0, v0, v2}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superSetCurrentItem(IZ)V

    return-void
.end method

.method private superSetCurrentItem(IZ)V
    .registers 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getRealCurrentItem()I

    move-result v0

    sub-int v0, p1, v0

    .line 2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_29

    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->needLoop:Z

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getRealCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_29

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getCirclePageAdapter()Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_29

    add-int/lit8 v0, p1, -0x2

    const/4 v1, 0x0

    .line 3
    invoke-super {p0, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_29

    .line 6
    :catch_29
    :cond_29
    :try_start_29
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V
    :try_end_2c
    .catch Ljava/lang/IllegalStateException; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_45

    :catch_2d
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 10
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 11
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_45
    :goto_45
    return-void
.end method


# virtual methods
.method public destory()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mAutoScrollHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1e

    const/4 v2, 0x3

    if-eq v0, v2, :cond_10

    goto :goto_24

    .line 8
    :cond_10
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->isAutoScroll()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 9
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mAutoScrollHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->intervalTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_24

    .line 10
    :cond_1e
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mAutoScrollHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 20
    :cond_24
    :goto_24
    :try_start_24
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 21
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz v1, :cond_32

    .line 22
    invoke-virtual {v1, p0, p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_30} :catch_33

    or-int/2addr p1, v0

    return p1

    :cond_32
    return v0

    :catch_33
    const/4 p1, 0x0

    return p1
.end method

.method public getCirclePageAdapter()Lcom/taobao/weex/ui/view/WXCirclePageAdapter;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    return-object v0
.end method

.method public getCurrentItem()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getRealCurrentItem()I

    move-result v0

    return v0
.end method

.method public getGestureListener()Lcom/taobao/weex/ui/view/gesture/WXGesture;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    return-object v0
.end method

.method public getIntervalTime()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->intervalTime:J

    return-wide v0
.end method

.method public getRealCount()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result v0

    return v0
.end method

.method public getRealCurrentItem()I
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v1, v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealPosition(I)I

    move-result v0

    return v0
.end method

.method public getmScroller()Lcom/taobao/weex/ui/view/WXSmoothScroller;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mScroller:Lcom/taobao/weex/ui/view/WXSmoothScroller;

    return-object v0
.end method

.method public isAutoScroll()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->isAutoScroll:Z

    return v0
.end method

.method public isScrollable()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->scrollable:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    const/4 v0, 0x0

    .line 1
    :try_start_1
    iget-boolean v1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->scrollable:Z

    if-eqz v1, :cond_d

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_9} :catch_13
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_9} :catch_e

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    return p1

    :cond_d
    return v0

    :catch_e
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_17

    :catch_13
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_17
    return v0
.end method

.method protected onMeasure(II)V
    .registers 4

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 5
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 6
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V

    :cond_1c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->scrollable:Z

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_6
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public pauseAutoScroll()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mAutoScrollHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public registerGestureListener(Lcom/taobao/weex/ui/view/gesture/WXGesture;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    return-void
.end method

.method public scrollTo(II)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->scrollable:Z

    if-nez v0, :cond_b

    iget v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    goto :goto_b

    :cond_a
    return-void

    .line 2
    :cond_b
    :goto_b
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    return-void
.end method

.method public setCircle(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->needLoop:Z

    return-void
.end method

.method public setCirclePageAdapter(Lcom/taobao/weex/ui/view/WXCirclePageAdapter;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    return-void
.end method

.method public setCurrentItem(I)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->setRealCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->setRealCurrentItem(IZ)V

    return-void
.end method

.method public setIntervalTime(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->intervalTime:J

    return-void
.end method

.method public setScrollable(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->scrollable:Z

    return-void
.end method

.method public startAutoScroll()V
    .registers 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->isAutoScroll:Z

    .line 2
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mAutoScrollHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mAutoScrollHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->intervalTime:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public stopAutoScroll()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->isAutoScroll:Z

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mAutoScrollHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public superGetCurrentItem()I
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

###### Class com.taobao.weex.ui.view.WXCircleViewPager.AnonymousClass1 (com.taobao.weex.ui.view.WXCircleViewPager$1)
.class Lcom/taobao/weex/ui/view/WXCircleViewPager$1;
.super Landroid/os/Handler;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/view/WXCircleViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/WXCircleViewPager;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/WXCircleViewPager;Landroid/os/Looper;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager$1;->this$0:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 2
    const-string p1, "[CircleViewPager] trigger auto play action"

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager$1;->this$0:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->access$000(Lcom/taobao/weex/ui/view/WXCircleViewPager;)V

    .line 4
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager$1;->this$0:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->access$100(Lcom/taobao/weex/ui/view/WXCircleViewPager;)J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 7
    :cond_19
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

###### Class com.taobao.weex.ui.view.WXCircleViewPager.AnonymousClass2 (com.taobao.weex.ui.view.WXCircleViewPager$2)
.class Lcom/taobao/weex/ui/view/WXCircleViewPager$2;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/WXCircleViewPager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/WXCircleViewPager;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/WXCircleViewPager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager$2;->this$0:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager$2;->this$0:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-static {v0, p1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->access$202(Lcom/taobao/weex/ui/view/WXCircleViewPager;I)I

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager$2;->this$0:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getCirclePageAdapter()Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager$2;->this$0:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-static {v1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->access$301(Lcom/taobao/weex/ui/view/WXCircleViewPager;)I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager$2;->this$0:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-static {v2}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->access$400(Lcom/taobao/weex/ui/view/WXCircleViewPager;)Z

    move-result v2

    if-eqz v2, :cond_7e

    if-nez p1, :cond_7e

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getCount()I

    move-result p1

    const/4 v2, 0x1

    if-le p1, v2, :cond_7e

    .line 5
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getCount()I

    move-result p1

    sub-int/2addr p1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v1, p1, :cond_4b

    .line 6
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager$2;->this$0:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-static {p1, v2, v4}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->access$500(Lcom/taobao/weex/ui/view/WXCircleViewPager;IZ)V

    .line 7
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getViews()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 8
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getViews()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    return-void

    :cond_4b
    if-nez v1, :cond_7e

    .line 10
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager$2;->this$0:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-static {p1, v1, v4}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->access$500(Lcom/taobao/weex/ui/view/WXCircleViewPager;IZ)V

    .line 12
    :try_start_58
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getViews()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 13
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getViews()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_7e} :catch_7e

    :catch_7e
    :cond_7e
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 2

    return-void
.end method
