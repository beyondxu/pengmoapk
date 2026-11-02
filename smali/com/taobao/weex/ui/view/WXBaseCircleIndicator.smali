###### Class com.taobao.weex.ui.view.WXBaseCircleIndicator (com.taobao.weex.ui.view.WXBaseCircleIndicator)
.class public Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;


# instance fields
.field private circlePadding:F

.field private fillColor:I

.field private mCircleViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

.field private mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private final mPaintFill:Landroid/graphics/Paint;

.field private final mPaintPage:Landroid/graphics/Paint;

.field private pageColor:I

.field private radius:F

.field private realCurrentItem:I

.field private wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->mPaintPage:Landroid/graphics/Paint;

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->mPaintFill:Landroid/graphics/Paint;

    const p1, -0x333334

    .line 18
    iput p1, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->pageColor:I

    const p1, -0xbbbbbc

    .line 22
    iput p1, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->fillColor:I

    .line 30
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->mPaintPage:Landroid/graphics/Paint;

    .line 33
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->mPaintFill:Landroid/graphics/Paint;

    const p1, -0x333334

    .line 48
    iput p1, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->pageColor:I

    const p1, -0xbbbbbc

    .line 52
    iput p1, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->fillColor:I

    .line 85
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->init()V

    return-void
.end method

.method static synthetic access$002(Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->realCurrentItem:I

    return p1
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;)Lcom/taobao/weex/ui/view/WXCircleViewPager;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->mCircleViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    return-object p0
.end method

.method private init()V
    .registers 4

    const/high16 v0, 0x40a00000    # 5.0f

    .line 1
    invoke-static {v0}, Lcom/taobao/weex/utils/WXViewUtils;->dip2px(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->radius:F

    .line 2
    invoke-static {v0}, Lcom/taobao/weex/utils/WXViewUtils;->dip2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->circlePadding:F

    const v0, -0x333334

    .line 3
    iput v0, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->pageColor:I

    const v0, -0xbbbbbc

    .line 4
    iput v0, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->fillColor:I

    .line 6
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->mPaintFill:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->mPaintFill:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 8
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->mPaintPage:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 9
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->mPaintPage:Landroid/graphics/Paint;

    iget v2, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->pageColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 11
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->mPaintFill:Landroid/graphics/Paint;

    iget v1, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->fillColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz v1, :cond_e

    .line 3
    invoke-virtual {v1, p0, p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr p1, v0

    return p1

    :cond_e
    return v0
.end method

.method public getCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->mCircleViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_12

    .line 4
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->mCircleViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getRealCount()I

    move-result v0

    return v0

    :cond_12
    :goto_12
    const/4 v0, 0x0

    return v0
.end method

.method public getGestureListener()Lcom/taobao/weex/ui/view/gesture/WXGesture;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    return-object v0
.end method

.method public getRealCurrentItem()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->realCurrentItem:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 3
    iget v0, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->circlePadding:F

    iget v1, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->radius:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    mul-float v3, v3, v0

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    const/4 v3, 0x0

    .line 8
    :goto_2b
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_4b

    int-to-float v4, v3

    mul-float v4, v4, v0

    add-float/2addr v4, v2

    .line 11
    iget v5, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->realCurrentItem:I

    if-eq v3, v5, :cond_41

    .line 12
    iget v5, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->radius:F

    iget-object v6, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->mPaintPage:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v1, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_48

    .line 14
    :cond_41
    iget v5, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->radius:F

    iget-object v6, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v1, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :cond_4b
    return-void
.end method

.method protected onMeasure(II)V
    .registers 8

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_17

    goto :goto_3d

    .line 9
    :cond_17
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->radius:F

    mul-float v0, v0, v2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->getCount()I

    move-result v4

    int-to-float v4, v4

    mul-float v0, v0, v4

    add-float/2addr p1, v0

    iget v0, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->circlePadding:F

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    mul-float v0, v0, v4

    add-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    float-to-int p1, p1

    add-int/lit8 p1, p1, 0x1

    :goto_3d
    if-ne v1, v3, :cond_40

    goto :goto_53

    .line 15
    :cond_40
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->radius:F

    mul-float v0, v0, v2

    add-float/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    float-to-int p2, p2

    add-int/lit8 p2, p2, 0x1

    .line 17
    :goto_53
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public registerGestureListener(Lcom/taobao/weex/ui/view/gesture/WXGesture;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    return-void
.end method

.method public setCircleViewPager(Lcom/taobao/weex/ui/view/WXCircleViewPager;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->mCircleViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    if-eqz p1, :cond_23

    .line 3
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-nez p1, :cond_f

    .line 4
    new-instance p1, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator$1;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator$1;-><init>(Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 12
    :cond_f
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->mCircleViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 13
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->mCircleViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getRealCurrentItem()I

    move-result p1

    iput p1, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->realCurrentItem:I

    if-gez p1, :cond_23

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->realCurrentItem:I

    .line 18
    :cond_23
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setFillColor(I)V
    .registers 3

    .line 1
    iput p1, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->fillColor:I

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setPageColor(I)V
    .registers 3

    .line 1
    iput p1, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->pageColor:I

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->mPaintPage:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setRadius(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->radius:F

    return-void
.end method

.method public setRealCurrentItem(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->realCurrentItem:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

###### Class com.taobao.weex.ui.view.WXBaseCircleIndicator.AnonymousClass1 (com.taobao.weex.ui.view.WXBaseCircleIndicator$1)
.class Lcom/taobao/weex/ui/view/WXBaseCircleIndicator$1;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->setCircleViewPager(Lcom/taobao/weex/ui/view/WXCircleViewPager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator$1;->this$0:Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator$1;->this$0:Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->access$100(Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;)Lcom/taobao/weex/ui/view/WXCircleViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getRealCurrentItem()I

    move-result v0

    invoke-static {p1, v0}, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->access$002(Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;I)I

    .line 2
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator$1;->this$0:Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
