###### Class com.taobao.weex.ui.view.listview.WXRecyclerView (com.taobao.weex.ui.view.listview.WXRecyclerView)
.class public Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;


# static fields
.field public static final TYPE_GRID_LAYOUT:I = 0x2

.field public static final TYPE_LINEAR_LAYOUT:I = 0x1

.field public static final TYPE_STAGGERED_GRID_LAYOUT:I = 0x3


# instance fields
.field private NestInfo:Lcom/alibaba/fastjson/JSONObject;

.field private hasTouch:Z

.field private headerHeight:F

.field public isNestParent:Z

.field isStartFling:Z

.field private lastY:Ljava/lang/Float;

.field mChildScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mCurrentDy:I

.field private mFlingHelper:Lio/dcloud/weex/FlingHelper;

.field private mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

.field private mInstanceId:Ljava/lang/String;

.field mParentScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private scrollable:Z

.field private totalDy:I

.field private velocityY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollable:Z

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->hasTouch:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    .line 5
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    .line 6
    iput p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mCurrentDy:I

    const/4 v0, 0x0

    .line 13
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->lastY:Ljava/lang/Float;

    .line 14
    iput p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->totalDy:I

    .line 19
    iput p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->velocityY:I

    .line 21
    iput v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->headerHeight:F

    .line 26
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isStartFling:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 27
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollable:Z

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->hasTouch:Z

    const/4 p2, 0x0

    .line 30
    iput-object p2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    .line 31
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    .line 32
    iput p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mCurrentDy:I

    const/4 p2, 0x0

    .line 39
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->lastY:Ljava/lang/Float;

    .line 40
    iput p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->totalDy:I

    .line 45
    iput p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->velocityY:I

    .line 47
    iput p2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->headerHeight:F

    .line 52
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isStartFling:Z

    return-void
.end method

.method static synthetic access$002(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mCurrentDy:I

    return p1
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->dispatchChildFling()V

    return-void
.end method

.method static synthetic access$202(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->totalDy:I

    return p1
.end method

.method static synthetic access$212(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;I)I
    .registers 3

    .line 1
    iget v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->totalDy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->totalDy:I

    return v0
.end method

.method static synthetic access$300(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->dispatchParentFling()V

    return-void
.end method

.method static synthetic access$400(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;IZ)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->canParentScrollVertically(IZ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$501(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method private canParentScrollVertically(IZ)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_32

    if-ne p1, v0, :cond_32

    .line 1
    :try_start_5
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    if-eqz p1, :cond_32

    iget-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    if-eqz p1, :cond_32

    .line 3
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getChildRecylerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object p1

    if-nez p1, :cond_14

    return v0

    .line 8
    :cond_14
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 9
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    if-nez v2, :cond_2d

    .line 11
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isScrollTop()Z

    move-result p1
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_29} :catch_2e

    if-nez p1, :cond_2d

    const/4 p1, 0x0

    return p1

    :cond_2d
    return v0

    :catch_2e
    move-exception p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_32
    return p2
.end method

.method private childFling(I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getChildRecylerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    :cond_a
    return-void
.end method

.method private dispatchChildFling()V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isScrollEnd()Z

    move-result v0

    if-eqz v0, :cond_21

    iget v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->velocityY:I

    if-eqz v0, :cond_21

    .line 2
    iget-object v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mFlingHelper:Lio/dcloud/weex/FlingHelper;

    invoke-virtual {v1, v0}, Lio/dcloud/weex/FlingHelper;->getSplineFlingDistance(I)D

    move-result-wide v0

    .line 3
    iget v2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->totalDy:I

    int-to-double v2, v2

    cmpl-double v4, v0, v2

    if-lez v4, :cond_21

    .line 4
    iget-object v4, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mFlingHelper:Lio/dcloud/weex/FlingHelper;

    sub-double/2addr v0, v2

    invoke-virtual {v4, v0, v1}, Lio/dcloud/weex/FlingHelper;->getVelocityByDistance(D)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->childFling(I)V

    :cond_21
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->totalDy:I

    .line 8
    iput v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->velocityY:I

    return-void
.end method

.method private dispatchParentFling()V
    .registers 9

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getParentRecyclerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isScrollTop()Z

    move-result v1

    if-eqz v1, :cond_34

    iget v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->velocityY:I

    if-eqz v1, :cond_34

    .line 5
    iget-object v2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mFlingHelper:Lio/dcloud/weex/FlingHelper;

    invoke-virtual {v2, v1}, Lio/dcloud/weex/FlingHelper;->getSplineFlingDistance(I)D

    move-result-wide v1

    .line 6
    iget v3, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->totalDy:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v3, v3

    const/4 v5, 0x0

    cmpl-double v6, v1, v3

    if-lez v6, :cond_30

    .line 7
    iget-object v3, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mFlingHelper:Lio/dcloud/weex/FlingHelper;

    iget v4, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->totalDy:I

    int-to-double v6, v4

    add-double/2addr v1, v6

    invoke-virtual {v3, v1, v2}, Lio/dcloud/weex/FlingHelper;->getVelocityByDistance(D)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v5, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->fling(II)Z

    .line 9
    :cond_30
    iput v5, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->totalDy:I

    .line 10
    iput v5, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->velocityY:I

    :cond_34
    return-void
.end method

.method private getChildRecylerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_69

    iget-boolean v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    if-eqz v1, :cond_69

    .line 3
    const-string v1, "isSwipelist"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 4
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v1, "swipeId"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponentById(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 7
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getDCWXSliderComponent(Lcom/taobao/weex/ui/component/WXComponent;)Lio/dcloud/feature/weex/extend/DCWXSlider;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 9
    invoke-virtual {v0}, Lio/dcloud/feature/weex/extend/DCWXSlider;->getCurrentIndex()I

    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    goto :goto_4e

    .line 14
    :cond_38
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    const-string v1, "nestChildRef"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    :cond_4e
    :goto_4e
    if-eqz v0, :cond_69

    .line 18
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getListComponent(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/list/WXListComponent;

    move-result-object v0

    if-eqz v0, :cond_69

    .line 19
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_69

    .line 20
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    return-object v0

    :cond_69
    const/4 v0, 0x0

    return-object v0
.end method

.method private getParentRecyclerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_37

    iget-boolean v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    if-nez v1, :cond_37

    .line 2
    const-string v1, "listParentId"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponentById(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 5
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getListComponent(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/list/WXListComponent;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 6
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 7
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    return-object v0

    :cond_37
    const/4 v0, 0x0

    return-object v0
.end method

.method private isScrollEnd()Z
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public callBackNestParent(Ljava/lang/String;Ljava/lang/String;F)V
    .registers 8

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getParentRecyclerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 3
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 4
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "isNestParent"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-string v2, "instanceId"

    invoke-virtual {v1, v2, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-string p2, "nestChildRef"

    invoke-virtual {v1, p2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "headerHeight"

    invoke-virtual {v1, p2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setNestInfo(Lcom/alibaba/fastjson/JSONObject;)V

    :cond_28
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->hasTouch:Z

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_34

    .line 3
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    if-eqz p1, :cond_19

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_19

    .line 6
    iput v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->velocityY:I

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    :cond_19
    if-eqz p1, :cond_34

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_34

    const/4 v0, 0x0

    .line 11
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->lastY:Ljava/lang/Float;

    goto :goto_34

    :cond_2a
    if-eqz p1, :cond_34

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_34

    .line 15
    iput v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->velocityY:I

    .line 20
    :cond_34
    :goto_34
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 21
    iget-object v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz v1, :cond_42

    .line 22
    invoke-virtual {v1, p0, p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr p1, v0

    return p1

    :cond_42
    return v0
.end method

.method public fling(II)Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 2
    :cond_8
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_2e

    .line 4
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    if-eqz p1, :cond_1f

    if-gtz p2, :cond_1a

    goto :goto_1f

    .line 8
    :cond_1a
    iput-boolean v2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isStartFling:Z

    .line 9
    iput p2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->velocityY:I

    return p1

    .line 10
    :cond_1f
    :goto_1f
    iput v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->velocityY:I

    return p1

    :cond_22
    if-eqz p1, :cond_2c

    if-ltz p2, :cond_27

    goto :goto_2c

    .line 21
    :cond_27
    iput-boolean v2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isStartFling:Z

    .line 22
    iput p2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->velocityY:I

    return p1

    .line 23
    :cond_2c
    :goto_2c
    iput v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->velocityY:I

    :cond_2e
    return p1
.end method

.method public getCurrentDy()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mCurrentDy:I

    return v0
.end method

.method public getDCWXSliderComponent(Lcom/taobao/weex/ui/component/WXComponent;)Lio/dcloud/feature/weex/extend/DCWXSlider;
    .registers 4

    .line 1
    instance-of v0, p1, Lio/dcloud/feature/weex/extend/DCWXSlider;

    if-eqz v0, :cond_7

    .line 2
    check-cast p1, Lio/dcloud/feature/weex/extend/DCWXSlider;

    return-object p1

    .line 4
    :cond_7
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v0, :cond_28

    .line 5
    check-cast p1, Lcom/taobao/weex/ui/component/WXVContainer;

    .line 6
    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getChildCount()I

    move-result v0

    if-lez v0, :cond_28

    const/4 v0, 0x0

    .line 7
    :goto_14
    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 8
    invoke-virtual {p1, v0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getDCWXSliderComponent(Lcom/taobao/weex/ui/component/WXComponent;)Lio/dcloud/feature/weex/extend/DCWXSlider;

    move-result-object v1

    if-eqz v1, :cond_25

    return-object v1

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_28
    const/4 p1, 0x0

    return-object p1
.end method

.method public getGestureListener()Lcom/taobao/weex/ui/view/gesture/WXGesture;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    return-object v0
.end method

.method public getListComponent(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/list/WXListComponent;
    .registers 4

    .line 1
    instance-of v0, p1, Lcom/taobao/weex/ui/component/list/WXListComponent;

    if-eqz v0, :cond_7

    .line 2
    check-cast p1, Lcom/taobao/weex/ui/component/list/WXListComponent;

    return-object p1

    .line 4
    :cond_7
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v0, :cond_28

    .line 5
    check-cast p1, Lcom/taobao/weex/ui/component/WXVContainer;

    .line 6
    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getChildCount()I

    move-result v0

    if-lez v0, :cond_28

    const/4 v0, 0x0

    .line 7
    :goto_14
    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 8
    invoke-virtual {p1, v0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getListComponent(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/list/WXListComponent;

    move-result-object v1

    if-eqz v1, :cond_25

    return-object v1

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_28
    const/4 p1, 0x0

    return-object p1
.end method

.method public initView(Landroid/content/Context;II)V
    .registers 10

    const/4 v3, 0x1

    const/high16 v4, 0x42000000    # 32.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->initView(Landroid/content/Context;IIFI)V

    return-void
.end method

.method public initView(Landroid/content/Context;IIFI)V
    .registers 13

    const/4 v1, 0x2

    if-ne p2, v1, :cond_12

    .line 2
    new-instance v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$3;

    const/4 v5, 0x0

    move v6, p5

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$3;-><init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;Landroid/content/Context;IIZI)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void

    :cond_12
    const/4 v2, 0x3

    if-ne p2, v2, :cond_1e

    .line 22
    new-instance v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$4;

    invoke-direct {v0, p0, p3, p5, p5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$4;-><init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;III)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void

    :cond_1e
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2e

    .line 42
    new-instance v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$5;

    const/4 v4, 0x0

    move v5, p5

    move-object v1, p0

    move-object v2, p1

    move v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$5;-><init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;Landroid/content/Context;IZI)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_2e
    return-void
.end method

.method public isNestScroll()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isScrollTop()Z
    .registers 2

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isScrollable()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollable:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_a

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_a
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->onNestedFling(Landroid/view/View;FFZ)Z

    move-result p1

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 7

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_33

    .line 2
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getChildRecylerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    cmpl-float p2, p3, p2

    if-lez p2, :cond_1b

    .line 3
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isScrollEnd()Z

    move-result v2

    if-nez v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    if-gez p2, :cond_28

    if-eqz p1, :cond_28

    .line 4
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isScrollTop()Z

    move-result p1

    if-eqz p1, :cond_28

    const/4 p1, 0x1

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    :goto_29
    if-nez v2, :cond_2e

    if-nez p1, :cond_2e

    return v1

    :cond_2e
    float-to-int p1, p3

    .line 8
    invoke-virtual {p0, v1, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->fling(II)Z

    return v0

    .line 11
    :cond_33
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 7

    .line 1
    iget-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    if-eqz p1, :cond_2f

    .line 2
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getChildRecylerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-lez p3, :cond_18

    .line 4
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isScrollEnd()Z

    move-result v1

    if-nez v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    if-gez p3, :cond_25

    if-eqz p1, :cond_25

    .line 6
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isScrollTop()Z

    move-result p1

    if-eqz p1, :cond_25

    const/4 p1, 0x1

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    :goto_26
    if-nez v1, :cond_2a

    if-eqz p1, :cond_2f

    .line 9
    :cond_2a
    invoke-virtual {p0, v0, p3}, Landroid/view/View;->scrollBy(II)V

    .line 10
    aput p3, p4, p2

    :cond_2f
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->onScrollChanged(IIII)V

    .line 2
    invoke-static {p1, p2}, Lio/dcloud/common/ui/blur/AppEventForBlurManager;->onScrollChanged(II)V

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_17

    if-eqz p2, :cond_17

    .line 2
    instance-of v0, p2, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    if-eqz v0, :cond_17

    move-object v0, p2

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iget-boolean v0, v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    if-nez v0, :cond_17

    const/4 p1, 0x1

    return p1

    .line 6
    :cond_17
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollable:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 4
    :cond_6
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    const/4 v2, 0x0

    if-eqz v0, :cond_4b

    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    if-eqz v0, :cond_4b

    .line 5
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->lastY:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_23

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->lastY:Ljava/lang/Float;

    .line 8
    :cond_23
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isScrollEnd()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 10
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getChildRecylerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 12
    iget-object v3, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->lastY:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    if-eqz v3, :cond_41

    const/4 v4, 0x0

    .line 14
    invoke-virtual {v0, v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 18
    :cond_41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->lastY:Ljava/lang/Float;

    .line 21
    :cond_4b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_7e

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_7e

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v1

    if-eqz v1, :cond_7e

    instance-of v1, v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    if-eqz v1, :cond_7e

    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v1, v3, v2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->pointInView(FFF)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 27
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v1

    if-nez v1, :cond_7e

    .line 28
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 32
    :cond_7e
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public pointInView(FFF)Z
    .registers 6

    neg-float v0, p3

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_29

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_29

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float p1, p1, v0

    if-gez p1, :cond_29

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    add-float/2addr p1, p3

    cmpg-float p1, p2, p1

    if-gez p1, :cond_29

    const/4 p1, 0x1

    return p1

    :cond_29
    const/4 p1, 0x0

    return p1
.end method

.method public registerGestureListener(Lcom/taobao/weex/ui/view/gesture/WXGesture;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    return-void
.end method

.method public scrollTo(III)V
    .registers 5

    .line 36
    new-instance v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$7;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$7;-><init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;III)V

    invoke-static {v0}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 p2, 0x64

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public scrollTo(ZIII)V
    .registers 8

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    if-nez p1, :cond_1f

    .line 4
    instance-of p1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p1, :cond_14

    .line 6
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    neg-int p1, p3

    invoke-virtual {v0, p2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void

    .line 7
    :cond_14
    instance-of p1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p1, :cond_7b

    .line 8
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    neg-int p1, p3

    invoke-virtual {v0, p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollToPositionWithOffset(II)V

    return-void

    :cond_1f
    const/4 p1, 0x1

    if-ne p4, p1, :cond_6e

    .line 14
    instance-of p1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    if-eqz p1, :cond_46

    .line 16
    move-object p1, v0

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    .line 17
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    if-lt p2, p1, :cond_6e

    if-gt p2, v0, :cond_6e

    sub-int/2addr p2, p1

    .line 19
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    add-int/2addr p1, p3

    .line 20
    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    return-void

    .line 23
    :cond_46
    instance-of p1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p1, :cond_6e

    .line 24
    move-object p1, v0

    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    move-result-object p1

    .line 25
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastCompletelyVisibleItemPositions([I)[I

    move-result-object v0

    .line 26
    aget p1, p1, v1

    if-lt p2, p1, :cond_6e

    aget v0, v0, v1

    if-gt p2, v0, :cond_6e

    sub-int/2addr p2, p1

    .line 27
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    add-int/2addr p1, p3

    .line 28
    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    return-void

    .line 33
    :cond_6e
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    if-eqz p3, :cond_7b

    .line 35
    new-instance p1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;

    invoke-direct {p1, p0, p4, p3}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;-><init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;II)V

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setOnSmoothScrollEndListener(Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7b} :catch_7b

    :catch_7b
    :cond_7b
    return-void
.end method

.method public scrollToPosition(I)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_1c

    .line 3
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getChildRecylerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 5
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 7
    :cond_11
    new-instance v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$9;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$9;-><init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;I)V

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 14
    :cond_1c
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public setNestInfo(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    if-eqz p1, :cond_55

    .line 3
    const-string v0, "isNestParent"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    .line 4
    const-string v0, "instanceId"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mInstanceId:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mFlingHelper:Lio/dcloud/weex/FlingHelper;

    if-nez v0, :cond_23

    .line 6
    new-instance v0, Lio/dcloud/weex/FlingHelper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/dcloud/weex/FlingHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mFlingHelper:Lio/dcloud/weex/FlingHelper;

    .line 8
    :cond_23
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    if-eqz v0, :cond_47

    const/high16 v0, 0x20000

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 11
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mParentScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-nez v0, :cond_55

    .line 12
    const-string v0, "headerHeight"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->headerHeight:F

    .line 13
    new-instance p1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;-><init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mParentScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 36
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void

    .line 39
    :cond_47
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mChildScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-nez p1, :cond_55

    .line 40
    new-instance p1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$2;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$2;-><init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mChildScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 61
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_55
    return-void
.end method

.method public setOnSmoothScrollEndListener(Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;)V
    .registers 3

    .line 1
    new-instance v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$8;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$8;-><init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public setScrollable(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollable:Z

    return-void
.end method

###### Class com.taobao.weex.ui.view.listview.WXRecyclerView.AnonymousClass1 (com.taobao.weex.ui.view.listview.WXRecyclerView$1)
.class Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setNestInfo(Lcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_10

    .line 3
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->access$002(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;I)I

    .line 4
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->access$100(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;)V

    :cond_10
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-static {p1, p3}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->access$002(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;I)I

    .line 3
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iget-boolean p2, p1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isStartFling:Z

    if-eqz p2, :cond_16

    const/4 p2, 0x0

    .line 4
    invoke-static {p1, p2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->access$202(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;I)I

    .line 5
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iput-boolean p2, p1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isStartFling:Z

    .line 8
    :cond_16
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-static {p1, p3}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->access$212(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;I)I

    return-void
.end method

###### Class com.taobao.weex.ui.view.listview.WXRecyclerView.AnonymousClass2 (com.taobao.weex.ui.view.listview.WXRecyclerView$2)
.class Lcom/taobao/weex/ui/view/listview/WXRecyclerView$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setNestInfo(Lcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$2;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 5

    if-nez p2, :cond_d

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$2;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->access$002(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;I)I

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$2;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-static {v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->access$300(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;)V

    .line 4
    :cond_d
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$2;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-static {p1, p3}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->access$002(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;I)I

    .line 3
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$2;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iget-boolean p2, p1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isStartFling:Z

    if-eqz p2, :cond_16

    const/4 p2, 0x0

    .line 4
    invoke-static {p1, p2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->access$202(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;I)I

    .line 5
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$2;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iput-boolean p2, p1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isStartFling:Z

    .line 7
    :cond_16
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$2;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-static {p1, p3}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->access$212(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;I)I

    return-void
.end method

###### Class com.taobao.weex.ui.view.listview.WXRecyclerView.AnonymousClass3 (com.taobao.weex.ui.view.listview.WXRecyclerView$3)
.class Lcom/taobao/weex/ui/view/listview/WXRecyclerView$3;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->initView(Landroid/content/Context;IIFI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

.field final synthetic val$orientation:I


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;Landroid/content/Context;IIZI)V
    .registers 7

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$3;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iput p6, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$3;->val$orientation:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$3;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iget v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$3;->val$orientation:I

    invoke-super {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->canScrollVertically()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->access$400(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;IZ)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    :catch_d
    const/4 v0, 0x1

    return v0
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 3

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

###### Class com.taobao.weex.ui.view.listview.WXRecyclerView.AnonymousClass4 (com.taobao.weex.ui.view.listview.WXRecyclerView$4)
.class Lcom/taobao/weex/ui/view/listview/WXRecyclerView$4;
.super Lcom/taobao/weex/ui/view/listview/ExtendedStaggeredGridLayoutManager;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->initView(Landroid/content/Context;IIFI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

.field final synthetic val$orientation:I


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;III)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$4;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iput p4, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$4;->val$orientation:I

    invoke-direct {p0, p2, p3}, Lcom/taobao/weex/ui/view/listview/ExtendedStaggeredGridLayoutManager;-><init>(II)V

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$4;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iget v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$4;->val$orientation:I

    invoke-super {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->canScrollVertically()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->access$400(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;IZ)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    :catch_d
    const/4 v0, 0x1

    return v0
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 3

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

###### Class com.taobao.weex.ui.view.listview.WXRecyclerView.AnonymousClass5 (com.taobao.weex.ui.view.listview.WXRecyclerView$5)
.class Lcom/taobao/weex/ui/view/listview/WXRecyclerView$5;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->initView(Landroid/content/Context;IIFI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

.field final synthetic val$orientation:I


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;Landroid/content/Context;IZI)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$5;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iput p5, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$5;->val$orientation:I

    invoke-direct {p0, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$5;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iget v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$5;->val$orientation:I

    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollVertically()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->access$400(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;IZ)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    :catch_d
    const/4 v0, 0x1

    return v0
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 3

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

###### Class com.taobao.weex.ui.view.listview.WXRecyclerView.AnonymousClass6 (com.taobao.weex.ui.view.listview.WXRecyclerView$6)
.class Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollTo(ZIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

.field final synthetic val$offset:I

.field final synthetic val$orientation:I


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iput p2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;->val$orientation:I

    iput p3, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;->val$offset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    new-instance v1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6$1;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6$1;-><init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;)V

    invoke-static {v1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.taobao.weex.ui.view.listview.WXRecyclerView.AnonymousClass6.AnonymousClass1 (com.taobao.weex.ui.view.listview.WXRecyclerView$6$1)
.class Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;->onStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6$1;->this$1:Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6$1;->this$1:Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;

    iget v1, v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;->val$orientation:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_10

    .line 2
    iget-object v1, v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iget v0, v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;->val$offset:I

    invoke-virtual {v1, v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    return-void

    .line 4
    :cond_10
    iget-object v1, v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iget v0, v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;->val$offset:I

    invoke-virtual {v1, v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    return-void
.end method

###### Class com.taobao.weex.ui.view.listview.WXRecyclerView.AnonymousClass7 (com.taobao.weex.ui.view.listview.WXRecyclerView$7)
.class Lcom/taobao/weex/ui/view/listview/WXRecyclerView$7;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollTo(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

.field final synthetic val$orientation:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;III)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$7;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iput p2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$7;->val$orientation:I

    iput p3, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$7;->val$y:I

    iput p4, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$7;->val$x:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$7;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$7;->val$orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    .line 4
    iget v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$7;->val$y:I

    goto :goto_10

    .line 6
    :cond_e
    iget v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$7;->val$x:I

    .line 8
    :goto_10
    instance-of v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v3, 0x0

    if-eqz v2, :cond_1c

    .line 9
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    neg-int v1, v1

    invoke-virtual {v0, v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void

    .line 10
    :cond_1c
    instance-of v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v2, :cond_26

    .line 11
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    neg-int v1, v1

    invoke-virtual {v0, v3, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_26
    return-void
.end method

###### Class com.taobao.weex.ui.view.listview.WXRecyclerView.AnonymousClass8 (com.taobao.weex.ui.view.listview.WXRecyclerView$8)
.class Lcom/taobao/weex/ui/view/listview/WXRecyclerView$8;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setOnSmoothScrollEndListener(Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

.field final synthetic val$onSmoothScrollEndListener:Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$8;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iput-object p2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$8;->val$onSmoothScrollEndListener:Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 3

    if-nez p2, :cond_c

    .line 1
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 2
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$8;->val$onSmoothScrollEndListener:Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;

    if-eqz p1, :cond_c

    .line 3
    invoke-interface {p1}, Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;->onStop()V

    :cond_c
    return-void
.end method

###### Class com.taobao.weex.ui.view.listview.WXRecyclerView.AnonymousClass9 (com.taobao.weex.ui.view.listview.WXRecyclerView$9)
.class Lcom/taobao/weex/ui/view/listview/WXRecyclerView$9;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollToPosition(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$9;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iput p2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$9;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$9;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iget v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$9;->val$position:I

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->access$501(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;I)V

    return-void
.end method
