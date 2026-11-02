###### Class com.taobao.weex.ui.view.refresh.wrapper.BounceRecyclerView (com.taobao.weex.ui.view.refresh.wrapper.BounceRecyclerView)
.class public Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;
.super Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/ui/component/list/ListComponentView;
.implements Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView<",
        "Lcom/taobao/weex/ui/view/listview/WXRecyclerView;",
        ">;",
        "Lcom/taobao/weex/ui/component/list/ListComponentView;",
        "Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;"
    }
.end annotation


# static fields
.field public static final DEFAULT_COLUMN_COUNT:I = 0x1

.field public static final DEFAULT_COLUMN_GAP:I = 0x1


# instance fields
.field private adapter:Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

.field private mColumnCount:I

.field private mColumnGap:F

.field private mLayoutType:I

.field private mOrientation:I

.field private mStickyHeaderHelper:Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 10

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    .line 19
    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;-><init>(Landroid/content/Context;IIFI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIFI)V
    .registers 7

    .line 1
    invoke-direct {p0, p1, p5}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->adapter:Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    .line 13
    iput p2, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mLayoutType:I

    .line 14
    iput p3, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mColumnCount:I

    .line 15
    iput p4, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mColumnGap:F

    .line 16
    iput p5, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mOrientation:I

    .line 17
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->init(Landroid/content/Context;)V

    .line 18
    new-instance p1, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mStickyHeaderHelper:Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getGestureListener()Lcom/taobao/weex/ui/view/gesture/WXGesture;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getGestureListener()Lcom/taobao/weex/ui/view/gesture/WXGesture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    return-object v0
.end method

.method public getRecyclerViewBaseAdapter()Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->adapter:Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    return-object v0
.end method

.method public getStickyHeaderHelper()Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mStickyHeaderHelper:Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;

    return-object v0
.end method

.method public notifyStickyRemove(Lcom/taobao/weex/ui/component/list/WXCell;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mStickyHeaderHelper:Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->notifyStickyRemove(Lcom/taobao/weex/ui/component/list/WXCell;)V

    return-void
.end method

.method public notifyStickyShow(Lcom/taobao/weex/ui/component/list/WXCell;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mStickyHeaderHelper:Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->notifyStickyShow(Lcom/taobao/weex/ui/component/list/WXCell;)V

    return-void
.end method

.method public onLoadmoreComplete()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->adapter:Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_7
    return-void
.end method

.method public onRefreshingComplete()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->adapter:Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_7
    return-void
.end method

.method public registerGestureListener(Lcom/taobao/weex/ui/view/gesture/WXGesture;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->registerGestureListener(Lcom/taobao/weex/ui/view/gesture/WXGesture;)V

    return-void
.end method

.method public bridge synthetic setInnerView(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->setInnerView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object p1

    return-object p1
.end method

.method public setInnerView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    .registers 13

    .line 2
    sget v0, Lcom/taobao/weex/R$layout;->weex_recycler_layout:I

    const/4 v1, 0x0

    if-eqz v0, :cond_56

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/taobao/weex/R$layout;->weex_recycler_layout:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    :goto_13
    const/4 v3, 0x1

    .line 8
    :try_start_14
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_18} :catch_1e

    const/4 v5, 0x2

    if-eq v4, v5, :cond_22

    if-eq v4, v3, :cond_22

    goto :goto_13

    :catch_1e
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    :cond_22
    new-instance v4, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-direct {v4, p1, v2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x2000000

    .line 20
    invoke-virtual {v4, v0}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 23
    :try_start_2c
    const-class v0, Landroid/view/View;

    const-string v2, "initializeScrollbars"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Landroid/content/res/TypedArray;

    aput-object v6, v5, v1

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 24
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 25
    new-array v2, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v5, v2, v1

    invoke-virtual {v0, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_45} :catch_46

    goto :goto_4a

    :catch_46
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    :goto_4a
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mOrientation:I

    if-ne v0, v3, :cond_52

    .line 30
    invoke-virtual {v4, v3}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    goto :goto_5b

    .line 32
    :cond_52
    invoke-virtual {v4, v3}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    goto :goto_5b

    .line 35
    :cond_56
    new-instance v4, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-direct {v4, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;-><init>(Landroid/content/Context;)V

    :goto_5b
    move-object v5, v4

    .line 37
    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/RecyclerView;->setOverScrollMode(I)V

    .line 38
    iget v7, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mLayoutType:I

    iget v8, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mColumnCount:I

    iget v9, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mColumnGap:F

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getOrientation()I

    move-result v10

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->initView(Landroid/content/Context;IIFI)V

    return-object v5
.end method

.method public setRecyclerViewBaseAdapter(Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->adapter:Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_11
    return-void
.end method

.method public updateStickyView(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->mStickyHeaderHelper:Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->updateStickyView(I)V

    return-void
.end method
