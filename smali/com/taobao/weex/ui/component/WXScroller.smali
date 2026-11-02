###### Class com.taobao.weex.ui.component.WXScroller (com.taobao.weex.ui.component.WXScroller)
.class public Lcom/taobao/weex/ui/component/WXScroller;
.super Lcom/taobao/weex/ui/component/WXBaseScroller;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/WXScroller$MyGestureDetector;,
        Lcom/taobao/weex/ui/component/WXScroller$Creator;
    }
.end annotation


# static fields
.field public static final DIRECTION:Ljava/lang/String; = "direction"

.field private static final SWIPE_MIN_DISTANCE:I = 0x5

.field private static final SWIPE_THRESHOLD_VELOCITY:I = 0x12c


# instance fields
.field private handler:Landroid/os/Handler;

.field private isScrollable:Z

.field private mActiveFeature:I

.field private mAppearanceComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/component/AppearanceHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenLayoutOffset:I

.field private mContentHeight:I

.field private mContentWidth:I

.field private mForceLoadmoreNextTime:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHasAddScrollEvent:Z

.field private mIsHostAttachedToWindow:Z

.field private mIslastDirectionRTL:Ljava/lang/Boolean;

.field private mLastReport:Landroid/graphics/Point;

.field private mOffsetAccuracy:I

.field private mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field protected mOrientation:I

.field private mRealView:Landroid/widget/FrameLayout;

.field private mRefreshs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

.field private mScrollerView:Landroid/widget/FrameLayout;

.field private mStickyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;>;"
        }
    .end annotation
.end field

.field private mlastDirectionRTL:Z

.field private pageEnable:Z

.field private pageSize:I

.field private stickyHelper:Lcom/taobao/weex/ui/component/helper/WXStickyHelper;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 6

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXBaseScroller;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    const/4 p2, 0x1

    .line 3
    iput p2, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    .line 4
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRefreshs:Ljava/util/List;

    const/4 p3, 0x0

    .line 6
    iput p3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mChildrenLayoutOffset:I

    .line 7
    iput-boolean p3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mForceLoadmoreNextTime:Z

    const/16 v0, 0xa

    .line 8
    iput v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOffsetAccuracy:I

    .line 9
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mLastReport:Landroid/graphics/Point;

    .line 10
    iput-boolean p3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mHasAddScrollEvent:Z

    .line 15
    iput p3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mActiveFeature:I

    .line 23
    iput p3, p0, Lcom/taobao/weex/ui/component/WXScroller;->pageSize:I

    .line 24
    iput-boolean p3, p0, Lcom/taobao/weex/ui/component/WXScroller;->pageEnable:Z

    .line 25
    iput-boolean p3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mIsHostAttachedToWindow:Z

    .line 28
    iput-boolean p3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mlastDirectionRTL:Z

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mAppearanceComponents:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mStickyMap:Ljava/util/Map;

    .line 50
    iput p3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mContentHeight:I

    .line 51
    iput p3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mContentWidth:I

    .line 54
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/taobao/weex/ui/component/WXScroller;->handler:Landroid/os/Handler;

    .line 56
    iput-boolean p2, p0, Lcom/taobao/weex/ui/component/WXScroller;->isScrollable:Z

    .line 65
    new-instance p2, Lcom/taobao/weex/ui/component/helper/WXStickyHelper;

    invoke-direct {p2, p0}, Lcom/taobao/weex/ui/component/helper/WXStickyHelper;-><init>(Lcom/taobao/weex/ui/component/Scrollable;)V

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXScroller;->stickyHelper:Lcom/taobao/weex/ui/component/helper/WXStickyHelper;

    .line 66
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object p1

    const-string/jumbo p2, "wxScrollerCount"

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, p2, v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->updateDiffStats(Ljava/lang/String;D)V

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p5}, Lcom/taobao/weex/ui/component/WXScroller;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/component/WXScroller;II)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXScroller;->shouldReport(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/component/WXScroller;Landroid/graphics/Rect;IIII)V
    .registers 6

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/taobao/weex/ui/component/WXScroller;->fireScrollEvent(Landroid/graphics/Rect;IIII)V

    return-void
.end method

.method static synthetic access$200(Lcom/taobao/weex/ui/component/WXScroller;IIII)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/component/WXScroller;->procAppear(IIII)V

    return-void
.end method

.method static synthetic access$300(Lcom/taobao/weex/ui/component/WXScroller;)Ljava/lang/Boolean;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mIslastDirectionRTL:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$302(Lcom/taobao/weex/ui/component/WXScroller;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mIslastDirectionRTL:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$400(Lcom/taobao/weex/ui/component/WXScroller;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/taobao/weex/ui/component/WXScroller;->pageSize:I

    return p0
.end method

.method static synthetic access$402(Lcom/taobao/weex/ui/component/WXScroller;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->pageSize:I

    return p1
.end method

.method static synthetic access$500(Lcom/taobao/weex/ui/component/WXScroller;)Landroid/view/GestureDetector;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mGestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$600(Lcom/taobao/weex/ui/component/WXScroller;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mActiveFeature:I

    return p0
.end method

.method static synthetic access$602(Lcom/taobao/weex/ui/component/WXScroller;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mActiveFeature:I

    return p1
.end method

.method static synthetic access$702(Lcom/taobao/weex/ui/component/WXScroller;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mIsHostAttachedToWindow:Z

    return p1
.end method

.method static synthetic access$800(Lcom/taobao/weex/ui/component/WXScroller;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXScroller;->dispatchDisappearEvent()V

    return-void
.end method

.method static synthetic access$900(Lcom/taobao/weex/ui/component/WXScroller;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->mChildren:Ljava/util/ArrayList;

    return-object p0
.end method

.method private checkItemVisibleInScroller(Lcom/taobao/weex/ui/component/WXComponent;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-eqz p1, :cond_5e

    .line 1
    instance-of v2, p1, Lcom/taobao/weex/ui/component/WXScroller;

    if-nez v2, :cond_5e

    .line 2
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v2

    instance-of v2, v2, Lcom/taobao/weex/ui/component/WXScroller;

    if-eqz v2, :cond_59

    .line 3
    iget v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    const/4 v2, 0x0

    if-nez v1, :cond_36

    .line 4
    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/action/GraphicPosition;->getLeft()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollX()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    .line 5
    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutWidth()F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v2, v1, v2

    if-lez v2, :cond_58

    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutWidth()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_58

    goto :goto_56

    .line 7
    :cond_36
    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/action/GraphicPosition;->getTop()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollY()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    .line 8
    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutHeight()F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v2, v1, v2

    if-lez v2, :cond_58

    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutHeight()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_58

    :goto_56
    const/4 v1, 0x1

    goto :goto_59

    :cond_58
    const/4 v1, 0x0

    .line 11
    :cond_59
    :goto_59
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object p1

    goto :goto_2

    :cond_5e
    return v1
.end method

.method private checkRefreshOrLoading(Lcom/taobao/weex/ui/component/WXComponent;)Z
    .registers 7

    .line 1
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXRefresh;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;

    move-object v4, p1

    check-cast v4, Lcom/taobao/weex/ui/component/WXRefresh;

    invoke-virtual {v0, v4}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->setOnRefreshListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnRefreshListener;)V

    .line 3
    new-instance v0, Lcom/taobao/weex/ui/component/WXScroller$3;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/ui/component/WXScroller$3;-><init>(Lcom/taobao/weex/ui/component/WXScroller;Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-static {v0}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    .line 9
    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXScroller;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    .line 13
    :goto_2a
    instance-of v4, p1, Lcom/taobao/weex/ui/component/WXLoading;

    if-eqz v4, :cond_4f

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4f

    .line 14
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;

    move-object v4, p1

    check-cast v4, Lcom/taobao/weex/ui/component/WXLoading;

    invoke-virtual {v0, v4}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->setOnLoadingListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnLoadingListener;)V

    .line 15
    new-instance v0, Lcom/taobao/weex/ui/component/WXScroller$4;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/ui/component/WXScroller$4;-><init>(Lcom/taobao/weex/ui/component/WXScroller;Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-static {v0}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 21
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v1

    :cond_4f
    return v0
.end method

.method private dispatchDisappearEvent()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mAppearanceComponents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/AppearanceHelper;

    .line 3
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/AppearanceHelper;->isWatch()Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_a

    :cond_23
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/component/AppearanceHelper;->setAppearStatus(Z)I

    move-result v2

    if-eqz v2, :cond_a

    .line 8
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/AppearanceHelper;->getAwareChild()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_34

    .line 9
    const-string v2, "appear"

    goto :goto_36

    :cond_34
    const-string v2, "disappear"

    .line 10
    :goto_36
    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/taobao/weex/ui/component/WXComponent;->notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_3c
    return-void
.end method

.method private fireScrollEvent(Landroid/graphics/Rect;IIII)V
    .registers 6

    .line 1
    invoke-virtual {p0, p2, p3}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollEvent(II)Ljava/util/Map;

    move-result-object p1

    const-string p2, "scroll"

    invoke-virtual {p0, p2, p1}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private procAppear(IIII)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mIsHostAttachedToWindow:Z

    if-nez v0, :cond_5

    goto :goto_61

    :cond_5
    sub-int/2addr p2, p4

    sub-int/2addr p1, p3

    if-lez p2, :cond_d

    .line 4
    const-string/jumbo p2, "up"

    goto :goto_13

    :cond_d
    if-gez p2, :cond_12

    .line 5
    const-string p2, "down"

    goto :goto_13

    :cond_12
    const/4 p2, 0x0

    .line 6
    :goto_13
    iget p3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    if-nez p3, :cond_20

    if-eqz p1, :cond_20

    if-lez p1, :cond_1e

    .line 7
    const-string p2, "right"

    goto :goto_20

    :cond_1e
    const-string p2, "left"

    .line 10
    :cond_20
    :goto_20
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mAppearanceComponents:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2a
    :goto_2a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_61

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/taobao/weex/ui/component/AppearanceHelper;

    .line 13
    invoke-virtual {p3}, Lcom/taobao/weex/ui/component/AppearanceHelper;->isWatch()Z

    move-result p4

    if-nez p4, :cond_43

    goto :goto_2a

    .line 16
    :cond_43
    invoke-virtual {p3}, Lcom/taobao/weex/ui/component/AppearanceHelper;->getAwareChild()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/taobao/weex/ui/component/WXScroller;->checkItemVisibleInScroller(Lcom/taobao/weex/ui/component/WXComponent;)Z

    move-result p4

    .line 18
    invoke-virtual {p3, p4}, Lcom/taobao/weex/ui/component/AppearanceHelper;->setAppearStatus(Z)I

    move-result p4

    if-eqz p4, :cond_2a

    .line 20
    invoke-virtual {p3}, Lcom/taobao/weex/ui/component/AppearanceHelper;->getAwareChild()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p3

    const/4 v0, 0x1

    if-ne p4, v0, :cond_5b

    const-string p4, "appear"

    goto :goto_5d

    :cond_5b
    const-string p4, "disappear"

    :goto_5d
    invoke-virtual {p3, p4, p2}, Lcom/taobao/weex/ui/component/WXComponent;->notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    :cond_61
    :goto_61
    return-void
.end method

.method private setWatch(ILcom/taobao/weex/ui/component/WXComponent;Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mAppearanceComponents:Ljava/util/Map;

    invoke-virtual {p2}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/AppearanceHelper;

    if-nez v0, :cond_1c

    .line 3
    new-instance v0, Lcom/taobao/weex/ui/component/AppearanceHelper;

    invoke-direct {v0, p2}, Lcom/taobao/weex/ui/component/AppearanceHelper;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 4
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mAppearanceComponents:Ljava/util/Map;

    invoke-virtual {p2}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_1c
    invoke-virtual {v0, p1, p3}, Lcom/taobao/weex/ui/component/AppearanceHelper;->setWatchEvent(IZ)V

    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1, p1, p1, p1}, Lcom/taobao/weex/ui/component/WXScroller;->procAppear(IIII)V

    return-void
.end method

.method private shouldReport(II)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mLastReport:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_11

    iget v4, v0, Landroid/graphics/Point;->y:I

    if-ne v4, v3, :cond_11

    .line 2
    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 3
    iput p2, v0, Landroid/graphics/Point;->y:I

    return v2

    .line 7
    :cond_11
    iget v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    if-nez v0, :cond_26

    sub-int v0, p1, v1

    .line 8
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOffsetAccuracy:I

    if-lt v0, v1, :cond_26

    .line 9
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mLastReport:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 10
    iput p2, v0, Landroid/graphics/Point;->y:I

    return v2

    .line 14
    :cond_26
    iget v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    if-ne v0, v2, :cond_3f

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mLastReport:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int v0, p2, v0

    .line 15
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOffsetAccuracy:I

    if-lt v0, v1, :cond_3f

    .line 16
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mLastReport:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 17
    iput p2, v0, Landroid/graphics/Point;->y:I

    return v2

    :cond_3f
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V
    .registers 4

    .line 1
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXBaseRefresh;

    if-eqz v0, :cond_f

    .line 2
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/WXScroller;->checkRefreshOrLoading(Lcom/taobao/weex/ui/component/WXComponent;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRefreshs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_f
    invoke-super {p0, p1, p2}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V

    return-void
.end method

.method public addEvent(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->addEvent(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->isScrollEvent(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_43

    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mHasAddScrollEvent:Z

    if-nez p1, :cond_43

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mHasAddScrollEvent:Z

    .line 5
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object p1

    instance-of p1, p1, Lcom/taobao/weex/ui/view/WXScrollView;

    if-eqz p1, :cond_2d

    .line 6
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXScrollView;

    new-instance v0, Lcom/taobao/weex/ui/component/WXScroller$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/WXScroller$1;-><init>(Lcom/taobao/weex/ui/component/WXScroller;)V

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXScrollView;->addScrollViewListener(Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;)V

    return-void

    .line 33
    :cond_2d
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object p1

    instance-of p1, p1, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    if-eqz p1, :cond_43

    .line 34
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    new-instance v0, Lcom/taobao/weex/ui/component/WXScroller$2;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/WXScroller$2;-><init>(Lcom/taobao/weex/ui/component/WXScroller;)V

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->addScrollViewListener(Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;)V

    :cond_43
    return-void
.end method

.method public addSubView(Landroid/view/View;I)V
    .registers 5

    if-eqz p1, :cond_21

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRealView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_7

    goto :goto_21

    .line 5
    :cond_7
    instance-of v1, p1, Lcom/taobao/weex/ui/view/WXBaseRefreshLayout;

    if-eqz v1, :cond_c

    goto :goto_21

    .line 9
    :cond_c
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    if-lt p2, v0, :cond_14

    const/4 p2, -0x1

    :cond_14
    if-ne p2, v1, :cond_1c

    .line 12
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRealView:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    .line 14
    :cond_1c
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRealView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_21
    :goto_21
    return-void
.end method

.method public bindAppearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, p1, v1}, Lcom/taobao/weex/ui/component/WXScroller;->setWatch(ILcom/taobao/weex/ui/component/WXComponent;Z)V

    return-void
.end method

.method public bindDisappearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p1, v0}, Lcom/taobao/weex/ui/component/WXScroller;->setWatch(ILcom/taobao/weex/ui/component/WXComponent;Z)V

    return-void
.end method

.method public bindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->stickyHelper:Lcom/taobao/weex/ui/component/helper/WXStickyHelper;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mStickyMap:Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Lcom/taobao/weex/ui/component/helper/WXStickyHelper;->bindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;Ljava/util/Map;)V

    return-void
.end method

.method public createViewImpl()V
    .registers 3

    .line 1
    invoke-super {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->createViewImpl()V

    const/4 v0, 0x0

    .line 2
    :goto_4
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRefreshs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 3
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRefreshs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/WXComponent;

    .line 4
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->createViewImpl()V

    .line 5
    invoke-direct {p0, v1}, Lcom/taobao/weex/ui/component/WXScroller;->checkRefreshOrLoading(Lcom/taobao/weex/ui/component/WXComponent;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1d
    return-void
.end method

.method public destroy()V
    .registers 3

    .line 1
    invoke-super {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->destroy()V

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mAppearanceComponents:Ljava/util/Map;

    if-eqz v0, :cond_a

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 5
    :cond_a
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mStickyMap:Ljava/util/Map;

    if-eqz v0, :cond_11

    .line 6
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 8
    :cond_11
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 9
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 11
    :cond_24
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/weex/ui/view/IWXScroller;

    if-eqz v0, :cond_3b

    .line 12
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/IWXScroller;

    invoke-interface {v0}, Lcom/taobao/weex/ui/view/IWXScroller;->destroy()V

    :cond_3b
    return-void
.end method

.method protected getChildrenLayoutTopOffset()I
    .registers 5

    .line 1
    iget v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mChildrenLayoutOffset:I

    if-nez v0, :cond_23

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRefreshs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_23

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_23

    .line 6
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRefreshs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/component/WXComponent;

    .line 7
    iget v3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mChildrenLayoutOffset:I

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutTopOffsetForSibling()I

    move-result v2

    add-int/2addr v3, v2

    iput v3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mChildrenLayoutOffset:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 11
    :cond_23
    iget v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mChildrenLayoutOffset:I

    return v0
.end method

.method public getInnerView()Landroid/view/ViewGroup;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_8
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;

    if-eqz v0, :cond_1d

    .line 5
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0

    .line 7
    :cond_1d
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getOrientation()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    return v0
.end method

.method public bridge synthetic getRealView()Landroid/view/View;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getRealView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getRealView()Landroid/view/ViewGroup;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mScrollerView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getScrollEvent(II)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v1

    instance-of v1, v1, Lcom/taobao/weex/ui/view/WXScrollView;

    if-eqz v1, :cond_18

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXScrollView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXScrollView;->getContentFrame()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_2a

    .line 4
    :cond_18
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v1

    instance-of v1, v1, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    if-eqz v1, :cond_2a

    .line 5
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->getContentFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 7
    :cond_2a
    :goto_2a
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 8
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 9
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 11
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v2

    .line 13
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string/jumbo v6, "width"

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v5, "height"

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-float p1, p1

    .line 16
    invoke-static {p1, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result p1

    neg-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string/jumbo v0, "x"

    invoke-interface {v4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-float p1, p2

    .line 17
    invoke-static {p1, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result p1

    neg-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string/jumbo p2, "y"

    invoke-interface {v4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string p1, "contentSize"

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string p1, "contentOffset"

    invoke-interface {v1, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public getScrollStartEndHelper()Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    .line 4
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    return-object v0
.end method

.method public getScrollX()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    return v0
.end method

.method public getScrollY()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    return v0
.end method

.method public getStickMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mStickyMap:Ljava/util/Map;

    return-object v0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXScroller;->initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;
    .registers 7

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    .line 3
    const-string/jumbo v0, "vertical"

    goto :goto_57

    .line 5
    :cond_10
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->getScrollDirection()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v3

    const-string v4, "pagingEnabled"

    invoke-virtual {v3, v4}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 9
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    const/4 v3, 0x1

    goto :goto_31

    :cond_30
    const/4 v3, 0x0

    :goto_31
    iput-boolean v3, p0, Lcom/taobao/weex/ui/component/WXScroller;->pageEnable:Z

    .line 11
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v3

    const-string v4, "pageSize"

    invoke-virtual {v3, v4}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_57

    .line 13
    invoke-static {v3}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result v3

    .line 16
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v4

    invoke-static {v3, v4}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_57

    float-to-int v3, v3

    .line 18
    iput v3, p0, Lcom/taobao/weex/ui/component/WXScroller;->pageSize:I

    .line 25
    :cond_57
    :goto_57
    const-string v3, "horizontal"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, -0x1

    if-eqz v0, :cond_ad

    .line 26
    iput v2, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    .line 27
    new-instance v0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRealView:Landroid/widget/FrameLayout;

    .line 29
    new-instance p1, Lcom/taobao/weex/ui/component/WXScroller$5;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/WXScroller$5;-><init>(Lcom/taobao/weex/ui/component/WXScroller;)V

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->setScrollViewListener(Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;)V

    .line 36
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 38
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRealView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, p1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 40
    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mScrollerView:Landroid/widget/FrameLayout;

    .line 42
    new-instance p1, Lcom/taobao/weex/ui/component/WXScroller$6;

    invoke-direct {p1, p0, v0, p0}, Lcom/taobao/weex/ui/component/WXScroller$6;-><init>(Lcom/taobao/weex/ui/component/WXScroller;Lcom/taobao/weex/ui/view/WXHorizontalScrollView;Lcom/taobao/weex/ui/component/WXScroller;)V

    .line 69
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRealView:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/taobao/weex/ui/component/WXScroller$7;

    invoke-direct {v2, p0, p1}, Lcom/taobao/weex/ui/component/WXScroller$7;-><init>(Lcom/taobao/weex/ui/component/WXScroller;Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 82
    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->pageEnable:Z

    if-eqz p1, :cond_f4

    .line 83
    new-instance p1, Landroid/view/GestureDetector;

    new-instance v1, Lcom/taobao/weex/ui/component/WXScroller$MyGestureDetector;

    invoke-direct {v1, p0, v0}, Lcom/taobao/weex/ui/component/WXScroller$MyGestureDetector;-><init>(Lcom/taobao/weex/ui/component/WXScroller;Lcom/taobao/weex/ui/view/WXHorizontalScrollView;)V

    invoke-direct {p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mGestureDetector:Landroid/view/GestureDetector;

    .line 84
    new-instance p1, Lcom/taobao/weex/ui/component/WXScroller$8;

    invoke-direct {p1, p0, v0}, Lcom/taobao/weex/ui/component/WXScroller$8;-><init>(Lcom/taobao/weex/ui/component/WXScroller;Lcom/taobao/weex/ui/view/WXHorizontalScrollView;)V

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_f4

    .line 112
    :cond_ad
    iput v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    .line 113
    new-instance v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;

    iget v2, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    invoke-direct {v0, p1, v2, p0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;-><init>(Landroid/content/Context;ILcom/taobao/weex/ui/component/WXBaseScroller;)V

    .line 114
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRealView:Landroid/widget/FrameLayout;

    .line 115
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXScrollView;

    .line 116
    invoke-virtual {p1, p0}, Lcom/taobao/weex/ui/view/WXScrollView;->addScrollViewListener(Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;)V

    .line 117
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 119
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mScrollerView:Landroid/widget/FrameLayout;

    .line 120
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRealView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    invoke-virtual {p1, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 122
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string v2, "nestedScrollingEnabled"

    invoke-virtual {v1, v2}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/view/WXScrollView;->setNestedScrollingEnabled(Z)V

    .line 123
    new-instance v1, Lcom/taobao/weex/ui/component/WXScroller$9;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/WXScroller$9;-><init>(Lcom/taobao/weex/ui/component/WXScroller;)V

    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/view/WXScrollView;->addScrollViewListener(Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;)V

    .line 168
    :cond_f4
    :goto_f4
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v1, Lcom/taobao/weex/ui/component/WXScroller$10;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/WXScroller$10;-><init>(Lcom/taobao/weex/ui/component/WXScroller;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 184
    new-instance p1, Lcom/taobao/weex/ui/component/WXScroller$11;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/WXScroller$11;-><init>(Lcom/taobao/weex/ui/component/WXScroller;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 197
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-object v0
.end method

.method public isScrollable()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->isScrollable:Z

    return v0
.end method

.method protected measure(II)Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;
    .registers 7

    .line 1
    new-instance v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;

    invoke-direct {v0}, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;-><init>()V

    .line 2
    iget v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    const/4 v2, -0x1

    if-nez v1, :cond_24

    .line 3
    sget-object v1, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-static {v1}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    .line 4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXViewUtils;->getWeexWidth(Ljava/lang/String;)I

    move-result v3

    if-lt v3, v1, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v3

    :goto_1c
    if-le p1, v1, :cond_1f

    const/4 p1, -0x1

    .line 6
    :cond_1f
    iput p1, v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->width:I

    .line 7
    iput p2, v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->height:I

    return-object v0

    .line 9
    :cond_24
    sget-object v1, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-static {v1}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    .line 10
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXViewUtils;->getWeexHeight(Ljava/lang/String;)I

    move-result v3

    if-lt v3, v1, :cond_35

    goto :goto_36

    :cond_35
    move v1, v3

    :goto_36
    if-le p2, v1, :cond_39

    const/4 p2, -0x1

    .line 12
    :cond_39
    iput p2, v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->height:I

    .line 13
    iput p1, v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->width:I

    return-object v0
.end method

.method public notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    const-string v0, "appear"

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->containsEvent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "disappear"

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->containsEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_12

    :cond_11
    return-void

    .line 2
    :cond_12
    :goto_12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    const-string v1, "direction"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method protected onLoadMore(Landroid/widget/FrameLayout;II)V
    .registers 9

    const-string v0, "[WXScroller-onScroll] offScreenY :"

    .line 1
    :try_start_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->getLoadMoreOffset()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 5
    :cond_15
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v1

    float-to-int v1, v1

    .line 7
    instance-of v2, p1, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_28} :catch_84

    const-string v3, "loadmore"

    const/4 v4, 0x0

    if-eqz v2, :cond_4e

    .line 8
    :try_start_2d
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    sub-int p2, p3, p2

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr p2, p1

    if-ge p2, v1, :cond_83

    .line 10
    iget p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mContentWidth:I

    if-ne p1, p3, :cond_46

    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mForceLoadmoreNextTime:Z

    if-eqz p1, :cond_83

    .line 11
    :cond_46
    invoke-virtual {p0, v3}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;)V

    .line 12
    iput p3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mContentWidth:I

    .line 13
    iput-boolean v4, p0, Lcom/taobao/weex/ui/component/WXScroller;->mForceLoadmoreNextTime:Z

    return-void

    .line 16
    :cond_4e
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int p3, p2, p3

    sub-int/2addr p3, p1

    if-ge p3, v1, :cond_83

    .line 20
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-eqz p1, :cond_74

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 23
    :cond_74
    iget p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mContentHeight:I

    if-ne p1, p2, :cond_7c

    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mForceLoadmoreNextTime:Z

    if-eqz p1, :cond_83

    .line 24
    :cond_7c
    invoke-virtual {p0, v3}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;)V

    .line 25
    iput p2, p0, Lcom/taobao/weex/ui/component/WXScroller;->mContentHeight:I

    .line 26
    iput-boolean v4, p0, Lcom/taobao/weex/ui/component/WXScroller;->mForceLoadmoreNextTime:Z
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_83} :catch_84

    :cond_83
    return-void

    :catch_84
    move-exception p1

    .line 31
    const-string p2, "[WXScroller-onScroll] "

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onScroll(Lcom/taobao/weex/ui/view/WXScrollView;II)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXScroller;->onLoadMore(Landroid/widget/FrameLayout;II)V

    return-void
.end method

.method public onScrollChanged(Lcom/taobao/weex/ui/view/WXScrollView;IIII)V
    .registers 6

    .line 1
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/taobao/weex/ui/component/WXScroller;->procAppear(IIII)V

    return-void
.end method

.method public onScrollStopped(Lcom/taobao/weex/ui/view/WXScrollView;II)V
    .registers 4

    return-void
.end method

.method public onScrollToBottom(Lcom/taobao/weex/ui/view/WXScrollView;II)V
    .registers 4

    return-void
.end method

.method public remove(Lcom/taobao/weex/ui/component/WXComponent;Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->remove(Lcom/taobao/weex/ui/component/WXComponent;Z)V

    .line 2
    instance-of p2, p1, Lcom/taobao/weex/ui/component/WXLoading;

    if-eqz p2, :cond_11

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;

    invoke-virtual {p2, p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->removeFooterView(Lcom/taobao/weex/ui/component/WXComponent;)V

    return-void

    .line 4
    :cond_11
    instance-of p2, p1, Lcom/taobao/weex/ui/component/WXRefresh;

    if-eqz p2, :cond_1e

    .line 5
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;

    invoke-virtual {p2, p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->removeHeaderView(Lcom/taobao/weex/ui/component/WXComponent;)V

    :cond_1e
    return-void
.end method

.method public resetLoadmore()V
    .registers 2
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mForceLoadmoreNextTime:Z

    return-void
.end method

.method public scrollBy(II)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/taobao/weex/ui/component/WXScroller;->scrollBy(IIZ)V

    return-void
.end method

.method public scrollBy(IIZ)V
    .registers 6

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 6
    :cond_7
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/ui/component/WXScroller$12;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/taobao/weex/ui/component/WXScroller$12;-><init>(Lcom/taobao/weex/ui/component/WXScroller;ZII)V

    const-wide/16 p1, 0x10

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public scrollTo(Lcom/taobao/weex/ui/component/WXComponent;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_50

    .line 1
    const-string v1, "offset"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_e

    const-string v1, "0"

    goto :goto_16

    :cond_e
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2
    :goto_16
    const-string v2, "animated"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, v2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz v1, :cond_51

    .line 5
    :try_start_28
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v0
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_38} :catch_39

    goto :goto_51

    :catch_39
    move-exception v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Float parseFloat error :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_51

    :cond_50
    const/4 p2, 0x1

    .line 12
    :cond_51
    :goto_51
    iget-boolean v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->pageEnable:Z

    if-eqz v1, :cond_5d

    .line 13
    iget-object v1, p0, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mActiveFeature:I

    .line 16
    :cond_5d
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAbsoluteY()I

    move-result v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAbsoluteY()I

    move-result v2

    sub-int/2addr v1, v2

    .line 18
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->isLayoutRTL()Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 20
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v2

    if-eqz v2, :cond_ae

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v2

    if-ne v2, p0, :cond_ae

    .line 21
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_a3

    .line 22
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 23
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 24
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAbsoluteX()I

    move-result p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAbsoluteX()I

    move-result v4

    sub-int/2addr p1, v4

    sub-int/2addr v2, p1

    sub-int/2addr v2, v3

    goto :goto_c7

    .line 26
    :cond_a3
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAbsoluteX()I

    move-result p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAbsoluteX()I

    move-result v2

    sub-int v2, p1, v2

    goto :goto_c7

    .line 29
    :cond_ae
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 30
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAbsoluteX()I

    move-result v3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAbsoluteX()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutWidth()F

    move-result p1

    float-to-int p1, p1

    add-int v2, v3, p1

    :goto_c7
    neg-float v0, v0

    goto :goto_d3

    .line 34
    :cond_c9
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAbsoluteX()I

    move-result p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAbsoluteX()I

    move-result v2

    sub-int v2, p1, v2

    .line 36
    :goto_d3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollX()I

    move-result p1

    sub-int/2addr v2, p1

    float-to-int p1, v0

    add-int/2addr v2, p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollY()I

    move-result v0

    sub-int/2addr v1, v0

    add-int/2addr v1, p1

    invoke-virtual {p0, v2, v1, p2}, Lcom/taobao/weex/ui/component/WXScroller;->scrollBy(IIZ)V

    return-void
.end method

.method public setLayout(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getComponentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 2
    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 3
    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v0

    if-nez v0, :cond_21

    goto :goto_35

    .line 6
    :cond_21
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 7
    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->isLayoutRTL()Z

    move-result v0

    .line 8
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->setLayoutDirection(Landroid/view/View;I)V

    .line 10
    :cond_32
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setLayout(Lcom/taobao/weex/ui/component/WXComponent;)V

    :cond_35
    :goto_35
    return-void
.end method

.method public setMarginsSupportRTL(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V
    .registers 6

    .line 2
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 4
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    return-void
.end method

.method public setOffsetAccuracy(I)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "offsetAccuracy"
    .end annotation

    int-to-float p1, p1

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v0

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p1

    float-to-int p1, p1

    .line 2
    iput p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOffsetAccuracy:I

    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_68

    goto :goto_30

    :sswitch_10
    const-string v0, "scrollable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_30

    :cond_19
    const/4 v2, 0x2

    goto :goto_30

    :sswitch_1b
    const-string v0, "offsetAccuracy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_30

    :cond_24
    const/4 v2, 0x1

    goto :goto_30

    :sswitch_26
    const-string v0, "showScrollbar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v2, 0x0

    :goto_30
    packed-switch v2, :pswitch_data_76

    .line 19
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 20
    :pswitch_38
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 21
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXScroller;->setScrollable(Z)V

    return v1

    :pswitch_46
    const/16 p1, 0xa

    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 25
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXScroller;->setOffsetAccuracy(I)V

    return v1

    :pswitch_58
    const/4 p1, 0x0

    .line 26
    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_66

    .line 28
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXScroller;->setShowScrollbar(Z)V

    :cond_66
    return v1

    nop

    :sswitch_data_68
    .sparse-switch
        -0xd52a857 -> :sswitch_26
        -0x55c154 -> :sswitch_1b
        0x3f94da7 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_58
        :pswitch_46
        :pswitch_38
    .end packed-switch
.end method

.method public setScrollable(Z)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "scrollable"
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->isScrollable:Z

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    if-eqz v1, :cond_10

    .line 4
    check-cast v0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->setScrollable(Z)V

    return-void

    .line 5
    :cond_10
    instance-of v1, v0, Lcom/taobao/weex/ui/view/WXScrollView;

    if-eqz v1, :cond_19

    .line 6
    check-cast v0, Lcom/taobao/weex/ui/view/WXScrollView;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXScrollView;->setScrollable(Z)V

    :cond_19
    return-void
.end method

.method public setShowScrollbar(Z)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "showScrollbar"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 4
    :cond_7
    iget v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 5
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    return-void

    .line 7
    :cond_14
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    return-void
.end method

.method public unbindAppearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1, v0}, Lcom/taobao/weex/ui/component/WXScroller;->setWatch(ILcom/taobao/weex/ui/component/WXComponent;Z)V

    return-void
.end method

.method public unbindDisappearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, p1, v1}, Lcom/taobao/weex/ui/component/WXScroller;->setWatch(ILcom/taobao/weex/ui/component/WXComponent;Z)V

    return-void
.end method

.method public unbindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->stickyHelper:Lcom/taobao/weex/ui/component/helper/WXStickyHelper;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mStickyMap:Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Lcom/taobao/weex/ui/component/helper/WXStickyHelper;->unbindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;Ljava/util/Map;)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXScroller.AnonymousClass1 (com.taobao.weex.ui.component.WXScroller$1)
.class Lcom/taobao/weex/ui/component/WXScroller$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXScroller;->addEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXScroller;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXScroller;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$1;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Lcom/taobao/weex/ui/view/WXScrollView;II)V
    .registers 4

    return-void
.end method

.method public onScrollChanged(Lcom/taobao/weex/ui/view/WXScrollView;IIII)V
    .registers 13

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$1;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollStartEndHelper()Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->onScrolled(II)V

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$1;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string v1, "scroll"

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_2d

    .line 5
    :cond_18
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$1;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {v0, p2, p3}, Lcom/taobao/weex/ui/component/WXScroller;->access$000(Lcom/taobao/weex/ui/component/WXScroller;II)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 6
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller$1;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXScrollView;->getContentFrame()Landroid/graphics/Rect;

    move-result-object v2

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/taobao/weex/ui/component/WXScroller;->access$100(Lcom/taobao/weex/ui/component/WXScroller;Landroid/graphics/Rect;IIII)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method public onScrollStopped(Lcom/taobao/weex/ui/view/WXScrollView;II)V
    .registers 4

    return-void
.end method

.method public onScrollToBottom(Lcom/taobao/weex/ui/view/WXScrollView;II)V
    .registers 4

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXScroller.AnonymousClass10 (com.taobao.weex.ui.component.WXScroller$10)
.class Lcom/taobao/weex/ui/component/WXScroller$10;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXScroller;->initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXScroller;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXScroller;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$10;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$10;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1, v1}, Lcom/taobao/weex/ui/component/WXScroller;->access$200(Lcom/taobao/weex/ui/component/WXScroller;IIII)V

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$10;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_f

    return-void

    .line 7
    :cond_f
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXScroller.AnonymousClass11 (com.taobao.weex.ui.component.WXScroller$11)
.class Lcom/taobao/weex/ui/component/WXScroller$11;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXScroller;->initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXScroller;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXScroller;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$11;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 6

    .line 1
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$11;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/taobao/weex/ui/component/WXScroller;->access$702(Lcom/taobao/weex/ui/component/WXScroller;Z)Z

    .line 2
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$11;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller$11;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXScroller$11;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollX()I

    move-result v2

    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXScroller$11;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollY()I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/taobao/weex/ui/component/WXScroller;->access$200(Lcom/taobao/weex/ui/component/WXScroller;IIII)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$11;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/taobao/weex/ui/component/WXScroller;->access$702(Lcom/taobao/weex/ui/component/WXScroller;Z)Z

    .line 2
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$11;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/WXScroller;->access$800(Lcom/taobao/weex/ui/component/WXScroller;)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXScroller.AnonymousClass12 (com.taobao.weex.ui.component.WXScroller$12)
.class Lcom/taobao/weex/ui/component/WXScroller$12;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXScroller;->scrollBy(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXScroller;

.field final synthetic val$smooth:Z

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXScroller;ZII)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    iput-boolean p2, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->val$smooth:Z

    iput p3, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->val$y:I

    iput p4, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->val$x:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    iget v1, v0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_24

    .line 2
    iget-boolean v1, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->val$smooth:Z

    if-eqz v1, :cond_18

    .line 3
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXScrollView;

    iget v1, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->val$y:I

    invoke-virtual {v0, v3, v1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    goto :goto_3f

    .line 5
    :cond_18
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXScrollView;

    iget v1, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->val$y:I

    invoke-virtual {v0, v3, v1}, Landroid/view/View;->scrollBy(II)V

    goto :goto_3f

    .line 8
    :cond_24
    iget-boolean v1, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->val$smooth:Z

    if-eqz v1, :cond_34

    .line 9
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    iget v1, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->val$x:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_3f

    .line 11
    :cond_34
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    iget v1, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->val$x:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 14
    :goto_3f
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXScroller.AnonymousClass2 (com.taobao.weex.ui.component.WXScroller$2)
.class Lcom/taobao/weex/ui/component/WXScroller$2;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXScroller;->addEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXScroller;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXScroller;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$2;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(Lcom/taobao/weex/ui/view/WXHorizontalScrollView;IIII)V
    .registers 13

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$2;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollStartEndHelper()Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->onScrolled(II)V

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$2;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string v1, "scroll"

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_2d

    .line 5
    :cond_18
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$2;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {v0, p2, p3}, Lcom/taobao/weex/ui/component/WXScroller;->access$000(Lcom/taobao/weex/ui/component/WXScroller;II)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 6
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller$2;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->getContentFrame()Landroid/graphics/Rect;

    move-result-object v2

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/taobao/weex/ui/component/WXScroller;->access$100(Lcom/taobao/weex/ui/component/WXScroller;Landroid/graphics/Rect;IIII)V

    :cond_2d
    :goto_2d
    return-void
.end method

###### Class com.taobao.weex.ui.component.WXScroller.AnonymousClass3 (com.taobao.weex.ui.component.WXScroller$3)
.class Lcom/taobao/weex/ui/component/WXScroller$3;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXScroller;->checkRefreshOrLoading(Lcom/taobao/weex/ui/component/WXComponent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXScroller;

.field final synthetic val$child:Lcom/taobao/weex/ui/component/WXComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXScroller;Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$3;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXScroller$3;->val$child:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$3;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller$3;->val$child:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->setHeaderView(Lcom/taobao/weex/ui/component/WXComponent;)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXScroller.AnonymousClass4 (com.taobao.weex.ui.component.WXScroller$4)
.class Lcom/taobao/weex/ui/component/WXScroller$4;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXScroller;->checkRefreshOrLoading(Lcom/taobao/weex/ui/component/WXComponent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXScroller;

.field final synthetic val$child:Lcom/taobao/weex/ui/component/WXComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXScroller;Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$4;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXScroller$4;->val$child:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$4;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller$4;->val$child:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->setFooterView(Lcom/taobao/weex/ui/component/WXComponent;)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXScroller.AnonymousClass5 (com.taobao.weex.ui.component.WXScroller$5)
.class Lcom/taobao/weex/ui/component/WXScroller$5;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXScroller;->initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXScroller;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXScroller;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$5;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(Lcom/taobao/weex/ui/view/WXHorizontalScrollView;IIII)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$5;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {v0, p2, p3, p4, p5}, Lcom/taobao/weex/ui/component/WXScroller;->access$200(Lcom/taobao/weex/ui/component/WXScroller;IIII)V

    .line 2
    iget-object p4, p0, Lcom/taobao/weex/ui/component/WXScroller$5;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {p4, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXScroller;->onLoadMore(Landroid/widget/FrameLayout;II)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXScroller.AnonymousClass6 (com.taobao.weex.ui.component.WXScroller$6)
.class Lcom/taobao/weex/ui/component/WXScroller$6;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXScroller;->initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXScroller;

.field final synthetic val$component:Lcom/taobao/weex/ui/component/WXScroller;

.field final synthetic val$scrollView:Lcom/taobao/weex/ui/view/WXHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXScroller;Lcom/taobao/weex/ui/view/WXHorizontalScrollView;Lcom/taobao/weex/ui/component/WXScroller;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$6;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXScroller$6;->val$scrollView:Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    iput-object p3, p0, Lcom/taobao/weex/ui/component/WXScroller$6;->val$component:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 1
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$6;->val$scrollView:Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    move p7, p2

    new-instance p2, Lcom/taobao/weex/ui/component/WXScroller$6$1;

    move-object p3, p0

    move p5, p6

    move p6, p4

    move p4, p8

    invoke-direct/range {p2 .. p7}, Lcom/taobao/weex/ui/component/WXScroller$6$1;-><init>(Lcom/taobao/weex/ui/component/WXScroller$6;IIII)V

    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXScroller.AnonymousClass6.AnonymousClass1 (com.taobao.weex.ui.component.WXScroller$6$1)
.class Lcom/taobao/weex/ui/component/WXScroller$6$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXScroller$6;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taobao/weex/ui/component/WXScroller$6;

.field final synthetic val$left:I

.field final synthetic val$oldLeft:I

.field final synthetic val$oldRight:I

.field final synthetic val$right:I


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXScroller$6;IIII)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$6$1;->this$1:Lcom/taobao/weex/ui/component/WXScroller$6;

    iput p2, p0, Lcom/taobao/weex/ui/component/WXScroller$6$1;->val$oldRight:I

    iput p3, p0, Lcom/taobao/weex/ui/component/WXScroller$6$1;->val$oldLeft:I

    iput p4, p0, Lcom/taobao/weex/ui/component/WXScroller$6$1;->val$right:I

    iput p5, p0, Lcom/taobao/weex/ui/component/WXScroller$6$1;->val$left:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$6$1;->this$1:Lcom/taobao/weex/ui/component/WXScroller$6;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXScroller$6;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/WXScroller;->access$300(Lcom/taobao/weex/ui/component/WXScroller;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$6$1;->this$1:Lcom/taobao/weex/ui/component/WXScroller$6;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXScroller$6;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->isLayoutRTL()Z

    move-result v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller$6$1;->this$1:Lcom/taobao/weex/ui/component/WXScroller$6;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/WXScroller$6;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/WXScroller;->access$300(Lcom/taobao/weex/ui/component/WXScroller;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_55

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$6$1;->this$1:Lcom/taobao/weex/ui/component/WXScroller$6;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXScroller$6;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollX()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller$6$1;->this$1:Lcom/taobao/weex/ui/component/WXScroller$6;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/WXScroller$6;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXScroller$6$1;->this$1:Lcom/taobao/weex/ui/component/WXScroller$6;

    iget-object v2, v2, Lcom/taobao/weex/ui/component/WXScroller$6;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 6
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXScroller$6$1;->this$1:Lcom/taobao/weex/ui/component/WXScroller$6;

    iget-object v4, v3, Lcom/taobao/weex/ui/component/WXScroller$6;->val$scrollView:Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    sub-int/2addr v1, v0

    sub-int/2addr v1, v2

    iget-object v0, v3, Lcom/taobao/weex/ui/component/WXScroller$6;->val$component:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollY()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    goto :goto_79

    .line 7
    :cond_55
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$6$1;->this$1:Lcom/taobao/weex/ui/component/WXScroller$6;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXScroller$6;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 9
    iget v0, p0, Lcom/taobao/weex/ui/component/WXScroller$6$1;->val$oldRight:I

    iget v1, p0, Lcom/taobao/weex/ui/component/WXScroller$6$1;->val$oldLeft:I

    sub-int/2addr v0, v1

    .line 10
    iget v1, p0, Lcom/taobao/weex/ui/component/WXScroller$6$1;->val$right:I

    iget v2, p0, Lcom/taobao/weex/ui/component/WXScroller$6$1;->val$left:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    if-eqz v1, :cond_79

    .line 13
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$6$1;->this$1:Lcom/taobao/weex/ui/component/WXScroller$6;

    iget-object v2, v0, Lcom/taobao/weex/ui/component/WXScroller$6;->val$scrollView:Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXScroller$6;->val$component:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollY()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 16
    :cond_79
    :goto_79
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$6$1;->this$1:Lcom/taobao/weex/ui/component/WXScroller$6;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXScroller$6;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    new-instance v1, Ljava/lang/Boolean;

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->isLayoutRTL()Z

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/component/WXScroller;->access$302(Lcom/taobao/weex/ui/component/WXScroller;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXScroller.AnonymousClass7 (com.taobao.weex.ui.component.WXScroller$7)
.class Lcom/taobao/weex/ui/component/WXScroller$7;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXScroller;->initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXScroller;

.field final synthetic val$listener:Landroid/view/View$OnLayoutChangeListener;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXScroller;Landroid/view/View$OnLayoutChangeListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$7;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXScroller$7;->val$listener:Landroid/view/View$OnLayoutChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$7;->val$listener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$7;->val$listener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXScroller.AnonymousClass8 (com.taobao.weex.ui.component.WXScroller$8)
.class Lcom/taobao/weex/ui/component/WXScroller$8;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXScroller;->initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXScroller;

.field final synthetic val$scrollView:Lcom/taobao/weex/ui/view/WXHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXScroller;Lcom/taobao/weex/ui/view/WXHorizontalScrollView;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$8;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXScroller$8;->val$scrollView:Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$8;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/WXScroller;->access$400(Lcom/taobao/weex/ui/component/WXScroller;)I

    move-result v0

    if-nez v0, :cond_11

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$8;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-static {v0, p1}, Lcom/taobao/weex/ui/component/WXScroller;->access$402(Lcom/taobao/weex/ui/component/WXScroller;I)I

    .line 5
    :cond_11
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$8;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/WXScroller;->access$500(Lcom/taobao/weex/ui/component/WXScroller;)Landroid/view/GestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1f

    return v0

    .line 8
    :cond_1f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2f

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2e

    goto :goto_2f

    :cond_2e
    return v1

    .line 9
    :cond_2f
    :goto_2f
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$8;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollX()I

    move-result p1

    .line 10
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXScroller$8;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {p2}, Lcom/taobao/weex/ui/component/WXScroller;->access$400(Lcom/taobao/weex/ui/component/WXScroller;)I

    move-result p2

    .line 11
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXScroller$8;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    div-int/lit8 v3, p2, 0x2

    add-int/2addr p1, v3

    div-int/2addr p1, p2

    invoke-static {v2, p1}, Lcom/taobao/weex/ui/component/WXScroller;->access$602(Lcom/taobao/weex/ui/component/WXScroller;I)I

    .line 12
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$8;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/WXScroller;->access$600(Lcom/taobao/weex/ui/component/WXScroller;)I

    move-result p1

    mul-int p1, p1, p2

    .line 13
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXScroller$8;->val$scrollView:Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    invoke-virtual {p2, p1, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    return v0
.end method

###### Class com.taobao.weex.ui.component.WXScroller.AnonymousClass9 (com.taobao.weex.ui.component.WXScroller$9)
.class Lcom/taobao/weex/ui/component/WXScroller$9;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXScroller;->initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXScroller;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXScroller;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$9;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Lcom/taobao/weex/ui/view/WXScrollView;II)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$9;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getWXScrollListeners()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_40

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/common/OnWXScrollListener;

    if-eqz v1, :cond_16

    .line 5
    instance-of v2, v1, Lcom/taobao/weex/common/ICheckBindingScroller;

    if-eqz v2, :cond_3c

    .line 6
    move-object v2, v1

    check-cast v2, Lcom/taobao/weex/common/ICheckBindingScroller;

    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXScroller$9;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v3}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/taobao/weex/common/ICheckBindingScroller;->isNeedScroller(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 7
    invoke-interface {v1, p1, p2, p3}, Lcom/taobao/weex/common/OnWXScrollListener;->onScrolled(Landroid/view/View;II)V

    goto :goto_16

    .line 10
    :cond_3c
    invoke-interface {v1, p1, p2, p3}, Lcom/taobao/weex/common/OnWXScrollListener;->onScrolled(Landroid/view/View;II)V

    goto :goto_16

    :cond_40
    return-void
.end method

.method public onScrollChanged(Lcom/taobao/weex/ui/view/WXScrollView;IIII)V
    .registers 6

    return-void
.end method

.method public onScrollStopped(Lcom/taobao/weex/ui/view/WXScrollView;II)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$9;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getWXScrollListeners()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_29

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/common/OnWXScrollListener;

    if-eqz v2, :cond_17

    .line 5
    invoke-interface {v2, p1, p2, p3, v1}, Lcom/taobao/weex/common/OnWXScrollListener;->onScrollStateChanged(Landroid/view/View;III)V

    goto :goto_17

    .line 9
    :cond_29
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$9;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollStartEndHelper()Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->onScrollStateChanged(I)V

    return-void
.end method

.method public onScrollToBottom(Lcom/taobao/weex/ui/view/WXScrollView;II)V
    .registers 4

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXScroller.Creator (com.taobao.weex.ui.component.WXScroller$Creator)
.class public Lcom/taobao/weex/ui/component/WXScroller$Creator;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/ui/ComponentCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Creator"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 5

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Lcom/taobao/weex/WXSDKInstance;->setUseScroller(Z)V

    .line 2
    new-instance v0, Lcom/taobao/weex/ui/component/WXScroller;

    invoke-direct {v0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXScroller;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    return-object v0
.end method

###### Class com.taobao.weex.ui.component.WXScroller.MyGestureDetector (com.taobao.weex.ui.component.WXScroller$MyGestureDetector)
.class Lcom/taobao/weex/ui/component/WXScroller$MyGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyGestureDetector"
.end annotation


# instance fields
.field private final scrollView:Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXScroller;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXScroller;Lcom/taobao/weex/ui/view/WXHorizontalScrollView;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$MyGestureDetector;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXScroller$MyGestureDetector;->scrollView:Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    return-void
.end method


# virtual methods
.method public getScrollView()Lcom/taobao/weex/ui/view/WXHorizontalScrollView;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$MyGestureDetector;->scrollView:Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    return-object v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 10

    .line 1
    iget-object p4, p0, Lcom/taobao/weex/ui/component/WXScroller$MyGestureDetector;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {p4}, Lcom/taobao/weex/ui/component/WXScroller;->access$900(Lcom/taobao/weex/ui/component/WXScroller;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    const/4 v0, 0x0

    .line 4
    :try_start_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x43960000    # 300.0f

    const/high16 v3, 0x40a00000    # 5.0f

    const/4 v4, 0x1

    cmpl-float v1, v1, v3

    if-lez v1, :cond_4d

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4d

    .line 5
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$MyGestureDetector;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/WXScroller;->access$400(Lcom/taobao/weex/ui/component/WXScroller;)I

    move-result p1

    .line 6
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXScroller$MyGestureDetector;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {p2}, Lcom/taobao/weex/ui/component/WXScroller;->access$600(Lcom/taobao/weex/ui/component/WXScroller;)I

    move-result p3

    sub-int/2addr p4, v4

    if-ge p3, p4, :cond_3c

    iget-object p3, p0, Lcom/taobao/weex/ui/component/WXScroller$MyGestureDetector;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {p3}, Lcom/taobao/weex/ui/component/WXScroller;->access$600(Lcom/taobao/weex/ui/component/WXScroller;)I

    move-result p3

    add-int/lit8 p4, p3, 0x1

    .line 7
    :cond_3c
    invoke-static {p2, p4}, Lcom/taobao/weex/ui/component/WXScroller;->access$602(Lcom/taobao/weex/ui/component/WXScroller;I)I

    .line 8
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXScroller$MyGestureDetector;->scrollView:Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    iget-object p3, p0, Lcom/taobao/weex/ui/component/WXScroller$MyGestureDetector;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {p3}, Lcom/taobao/weex/ui/component/WXScroller;->access$600(Lcom/taobao/weex/ui/component/WXScroller;)I

    move-result p3

    mul-int p3, p3, p1

    invoke-virtual {p2, p3, v0}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    return v4

    .line 12
    :cond_4d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p2, p1

    cmpl-float p1, p2, v3

    if-lez p1, :cond_a0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_a0

    .line 13
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$MyGestureDetector;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/WXScroller;->access$400(Lcom/taobao/weex/ui/component/WXScroller;)I

    move-result p1

    .line 14
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXScroller$MyGestureDetector;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {p2}, Lcom/taobao/weex/ui/component/WXScroller;->access$600(Lcom/taobao/weex/ui/component/WXScroller;)I

    move-result p3

    if-lez p3, :cond_78

    iget-object p3, p0, Lcom/taobao/weex/ui/component/WXScroller$MyGestureDetector;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {p3}, Lcom/taobao/weex/ui/component/WXScroller;->access$600(Lcom/taobao/weex/ui/component/WXScroller;)I

    move-result p3

    sub-int/2addr p3, v4

    goto :goto_79

    :cond_78
    const/4 p3, 0x0

    .line 15
    :goto_79
    invoke-static {p2, p3}, Lcom/taobao/weex/ui/component/WXScroller;->access$602(Lcom/taobao/weex/ui/component/WXScroller;I)I

    .line 16
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXScroller$MyGestureDetector;->scrollView:Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    iget-object p3, p0, Lcom/taobao/weex/ui/component/WXScroller$MyGestureDetector;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {p3}, Lcom/taobao/weex/ui/component/WXScroller;->access$600(Lcom/taobao/weex/ui/component/WXScroller;)I

    move-result p3

    mul-int p3, p3, p1

    invoke-virtual {p2, p3, v0}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_89} :catch_8a

    return v4

    :catch_8a
    move-exception p1

    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "There was an error processing the Fling event:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :cond_a0
    return v0
.end method
