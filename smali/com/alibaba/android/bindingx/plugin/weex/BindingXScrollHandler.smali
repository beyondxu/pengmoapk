###### Class com.alibaba.android.bindingx.plugin.weex.BindingXScrollHandler (com.alibaba.android.bindingx.plugin.weex.BindingXScrollHandler)
.class public Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;
.super Lcom/alibaba/android/bindingx/core/internal/AbstractScrollEventHandler;
.source "BindingXScrollHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$ContentOffsetHolder;,
        Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;,
        Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;,
        Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;,
        Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;
    }
.end annotation


# static fields
.field private static sOffsetHolderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$ContentOffsetHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHorizontalViewScrollListener:Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;

.field private mListOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mOnOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

.field private mRefreshOffsetChangedListener:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$OnRefreshOffsetChangedListener;

.field private mSourceRef:Ljava/lang/String;

.field private mWxScrollViewListener:Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->sOffsetHolderMap:Ljava/util/HashMap;

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Lcom/alibaba/android/bindingx/core/PlatformManager;[Ljava/lang/Object;)V
    .registers 4

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/bindingx/core/internal/AbstractScrollEventHandler;-><init>(Landroid/content/Context;Lcom/alibaba/android/bindingx/core/PlatformManager;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1101(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;IIIIII)V
    .registers 7

    .line 67
    invoke-super/range {p0 .. p6}, Lcom/alibaba/android/bindingx/core/internal/AbstractScrollEventHandler;->handleScrollEvent(IIIIII)V

    return-void
.end method

.method static synthetic access$1200(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;)Ljava/lang/String;
    .registers 1

    .line 67
    iget-object p0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mInstanceId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;)I
    .registers 1

    .line 67
    iget p0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mContentOffsetX:I

    return p0
.end method

.method static synthetic access$1401(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;Ljava/lang/String;DDDDDD[Ljava/lang/Object;)V
    .registers 15

    .line 67
    invoke-super/range {p0 .. p14}, Lcom/alibaba/android/bindingx/core/internal/AbstractScrollEventHandler;->fireEventByState(Ljava/lang/String;DDDDDD[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;)I
    .registers 1

    .line 67
    iget p0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mContentOffsetX:I

    return p0
.end method

.method static synthetic access$1701(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;IIIIII)V
    .registers 7

    .line 67
    invoke-super/range {p0 .. p6}, Lcom/alibaba/android/bindingx/core/internal/AbstractScrollEventHandler;->handleScrollEvent(IIIIII)V

    return-void
.end method

.method static synthetic access$1800(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;)Ljava/lang/String;
    .registers 1

    .line 67
    iget-object p0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mInstanceId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;)Ljava/lang/String;
    .registers 1

    .line 67
    iget-object p0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mSourceRef:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000()Ljava/util/HashMap;
    .registers 1

    .line 67
    sget-object v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->sOffsetHolderMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;Ljava/lang/String;DDDDDD[Ljava/lang/Object;)V
    .registers 15

    .line 67
    invoke-virtual/range {p0 .. p14}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->fireEventByState(Ljava/lang/String;DDDDDD[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2401(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;IIIIII)V
    .registers 7

    .line 67
    invoke-super/range {p0 .. p6}, Lcom/alibaba/android/bindingx/core/internal/AbstractScrollEventHandler;->handleScrollEvent(IIIIII)V

    return-void
.end method

.method static synthetic access$2500(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;)Ljava/lang/String;
    .registers 1

    .line 67
    iget-object p0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mInstanceId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;II)Z
    .registers 3

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->isSameDirection(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$401(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;Ljava/lang/String;DDDDDD[Ljava/lang/Object;)V
    .registers 15

    .line 67
    invoke-super/range {p0 .. p14}, Lcom/alibaba/android/bindingx/core/internal/AbstractScrollEventHandler;->fireEventByState(Ljava/lang/String;DDDDDD[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$601(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;IIIIII)V
    .registers 7

    .line 67
    invoke-super/range {p0 .. p6}, Lcom/alibaba/android/bindingx/core/internal/AbstractScrollEventHandler;->handleScrollEvent(IIIIII)V

    return-void
.end method

.method static synthetic access$700(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;)Ljava/lang/String;
    .registers 1

    .line 67
    iget-object p0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mInstanceId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$801(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;Ljava/lang/String;DDDDDD[Ljava/lang/Object;)V
    .registers 15

    .line 67
    invoke-super/range {p0 .. p14}, Lcom/alibaba/android/bindingx/core/internal/AbstractScrollEventHandler;->fireEventByState(Ljava/lang/String;DDDDDD[Ljava/lang/Object;)V

    return-void
.end method

.method private isSameDirection(II)Z
    .registers 3

    if-lez p1, :cond_4

    if-gtz p2, :cond_8

    :cond_4
    if-gez p1, :cond_a

    if-gez p2, :cond_a

    :cond_8
    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public onActivityPause()V
    .registers 1

    return-void
.end method

.method public onActivityResume()V
    .registers 1

    return-void
.end method

.method public onBindExpression(Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;Ljava/util/List;Lcom/alibaba/android/bindingx/core/BindingXCore$JavaScriptCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/alibaba/android/bindingx/core/BindingXCore$JavaScriptCallback;",
            ")V"
        }
    .end annotation

    .line 157
    invoke-super/range {p0 .. p5}, Lcom/alibaba/android/bindingx/core/internal/AbstractScrollEventHandler;->onBindExpression(Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;Ljava/util/List;Lcom/alibaba/android/bindingx/core/BindingXCore$JavaScriptCallback;)V

    return-void
.end method

.method public onCreate(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    .line 86
    iget-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mAnchorInstanceId:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mInstanceId:Ljava/lang/String;

    goto :goto_d

    :cond_b
    iget-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mAnchorInstanceId:Ljava/lang/String;

    .line 87
    :goto_d
    invoke-static {p2, p1}, Lcom/alibaba/android/bindingx/plugin/weex/WXModuleUtils;->findComponentByRef(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_1a

    .line 89
    const-string p1, "[ExpressionScrollHandler]source component not found."

    invoke-static {p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->e(Ljava/lang/String;)V

    return v0

    .line 92
    :cond_1a
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mSourceRef:Ljava/lang/String;

    .line 93
    instance-of v1, p2, Lcom/taobao/weex/ui/component/WXScroller;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_6c

    .line 94
    check-cast p2, Lcom/taobao/weex/ui/component/WXScroller;

    .line 95
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXScroller;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_42

    .line 96
    instance-of v1, p1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;

    if-eqz v1, :cond_42

    .line 97
    check-cast p1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;->getSwipeLayout()Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    move-result-object p1

    if-eqz p1, :cond_42

    .line 99
    new-instance v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;

    invoke-direct {v1, p0, v2}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$1;)V

    iput-object v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mRefreshOffsetChangedListener:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$OnRefreshOffsetChangedListener;

    .line 100
    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->addOnRefreshOffsetChangedListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$OnRefreshOffsetChangedListener;)V

    .line 103
    :cond_42
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_59

    .line 104
    instance-of p2, p1, Lcom/taobao/weex/ui/view/WXScrollView;

    if-eqz p2, :cond_59

    .line 105
    new-instance p2, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;

    invoke-direct {p2, p0, v2}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$1;)V

    iput-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mWxScrollViewListener:Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;

    .line 106
    check-cast p1, Lcom/taobao/weex/ui/view/WXScrollView;

    invoke-virtual {p1, p2}, Lcom/taobao/weex/ui/view/WXScrollView;->addScrollViewListener(Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;)V

    return v3

    :cond_59
    if-eqz p1, :cond_e0

    .line 108
    instance-of p2, p1, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    if-eqz p2, :cond_e0

    .line 109
    new-instance p2, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;

    invoke-direct {p2, p0, v2}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$1;)V

    iput-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mHorizontalViewScrollListener:Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;

    .line 110
    check-cast p1, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    invoke-virtual {p1, p2}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->addScrollViewListener(Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;)V

    return v3

    .line 114
    :cond_6c
    instance-of v1, p2, Lcom/taobao/weex/ui/component/list/WXListComponent;

    if-eqz v1, :cond_c1

    .line 115
    check-cast p2, Lcom/taobao/weex/ui/component/list/WXListComponent;

    .line 116
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    if-eqz v1, :cond_e0

    .line 118
    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getSwipeLayout()Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    move-result-object v4

    if-eqz v4, :cond_8a

    .line 120
    new-instance v5, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;

    invoke-direct {v5, p0, v2}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$1;)V

    iput-object v5, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mRefreshOffsetChangedListener:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$OnRefreshOffsetChangedListener;

    .line 121
    invoke-virtual {v4, v5}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->addOnRefreshOffsetChangedListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$OnRefreshOffsetChangedListener;)V

    .line 123
    :cond_8a
    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 124
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getOrientation()I

    move-result v2

    if-ne v2, v3, :cond_98

    const/4 v2, 0x1

    goto :goto_99

    :cond_98
    const/4 v2, 0x0

    :goto_99
    if-eqz v1, :cond_e0

    .line 126
    sget-object v4, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->sOffsetHolderMap:Ljava/util/HashMap;

    if-eqz v4, :cond_b1

    .line 127
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$ContentOffsetHolder;

    if-nez v4, :cond_b1

    .line 129
    sget-object v4, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->sOffsetHolderMap:Ljava/util/HashMap;

    new-instance v5, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$ContentOffsetHolder;

    invoke-direct {v5, v0, v0}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$ContentOffsetHolder;-><init>(II)V

    invoke-virtual {v4, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_b1
    new-instance p1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, p0, v2, v0}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;ZLjava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mListOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 133
    invoke-virtual {v1, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return v3

    .line 137
    :cond_c1
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_e0

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p1, :cond_e0

    .line 138
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    .line 139
    new-instance p2, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;

    invoke-direct {p2, p0, v2}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$1;)V

    iput-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mOnOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    .line 140
    invoke-virtual {p1, p2}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    return v3

    :cond_e0
    return v0
.end method

.method public onDestroy()V
    .registers 2

    .line 214
    invoke-super {p0}, Lcom/alibaba/android/bindingx/core/internal/AbstractScrollEventHandler;->onDestroy()V

    const/4 v0, 0x0

    .line 215
    iput-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mListOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 216
    iput-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mWxScrollViewListener:Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;

    .line 217
    iput-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mOnOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    .line 218
    sget-object v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->sOffsetHolderMap:Ljava/util/HashMap;

    if-eqz v0, :cond_11

    .line 219
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_11
    return-void
.end method

.method public onDisable(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 162
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/bindingx/core/internal/AbstractScrollEventHandler;->onDisable(Ljava/lang/String;Ljava/lang/String;)Z

    .line 163
    sget-object p2, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->sOffsetHolderMap:Ljava/util/HashMap;

    if-eqz p2, :cond_23

    iget-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mSourceRef:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_23

    .line 164
    sget-object p2, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->sOffsetHolderMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mSourceRef:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$ContentOffsetHolder;

    if-eqz p2, :cond_23

    .line 166
    iget v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mContentOffsetX:I

    iput v0, p2, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$ContentOffsetHolder;->x:I

    .line 167
    iget v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mContentOffsetY:I

    iput v0, p2, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$ContentOffsetHolder;->y:I

    .line 171
    :cond_23
    iget-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mAnchorInstanceId:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2e

    iget-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mInstanceId:Ljava/lang/String;

    goto :goto_30

    :cond_2e
    iget-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mAnchorInstanceId:Ljava/lang/String;

    .line 172
    :goto_30
    invoke-static {p2, p1}, Lcom/alibaba/android/bindingx/plugin/weex/WXModuleUtils;->findComponentByRef(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_3d

    .line 174
    const-string p1, "[ExpressionScrollHandler]source component not found."

    invoke-static {p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->e(Ljava/lang/String;)V

    return p2

    .line 177
    :cond_3d
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXScroller;

    const/4 v1, 0x1

    if-eqz v0, :cond_83

    .line 178
    check-cast p1, Lcom/taobao/weex/ui/component/WXScroller;

    .line 179
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXScroller;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5f

    .line 180
    instance-of v2, v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;

    if-eqz v2, :cond_5f

    .line 181
    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;->getSwipeLayout()Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 182
    iget-object v2, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mRefreshOffsetChangedListener:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$OnRefreshOffsetChangedListener;

    if-eqz v2, :cond_5f

    .line 183
    invoke-virtual {v0, v2}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->removeOnRefreshOffsetChangedListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$OnRefreshOffsetChangedListener;)Z

    .line 186
    :cond_5f
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_73

    .line 187
    instance-of v0, p1, Lcom/taobao/weex/ui/view/WXScrollView;

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mWxScrollViewListener:Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;

    if-eqz v0, :cond_73

    .line 188
    check-cast p1, Lcom/taobao/weex/ui/view/WXScrollView;

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXScrollView;->removeScrollViewListener(Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;)V

    return v1

    :cond_73
    if-eqz p1, :cond_b4

    .line 190
    instance-of v0, p1, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    if-eqz v0, :cond_b4

    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mHorizontalViewScrollListener:Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;

    if-eqz v0, :cond_b4

    .line 191
    check-cast p1, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->removeScrollViewListener(Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;)V

    return v1

    .line 194
    :cond_83
    instance-of v0, p1, Lcom/taobao/weex/ui/component/list/WXListComponent;

    if-eqz v0, :cond_b4

    .line 195
    check-cast p1, Lcom/taobao/weex/ui/component/list/WXListComponent;

    .line 196
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    if-eqz p1, :cond_b4

    .line 198
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getSwipeLayout()Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    move-result-object v0

    if-eqz v0, :cond_a4

    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mRefreshOffsetChangedListener:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$OnRefreshOffsetChangedListener;

    if-eqz v0, :cond_a4

    .line 199
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getSwipeLayout()Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mRefreshOffsetChangedListener:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$OnRefreshOffsetChangedListener;

    invoke-virtual {v0, v2}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->removeOnRefreshOffsetChangedListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$OnRefreshOffsetChangedListener;)Z

    .line 201
    :cond_a4
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    if-eqz p1, :cond_b4

    .line 202
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->mListOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_b4

    .line 203
    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return v1

    :cond_b4
    return p2
.end method

.method public onStart(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.BindingXScrollHandler.AnonymousClass1 (com.alibaba.android.bindingx.plugin.weex.BindingXScrollHandler$1)
.class synthetic Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$1;
.super Ljava/lang/Object;
.source "BindingXScrollHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.alibaba.android.bindingx.plugin.weex.BindingXScrollHandler.ContentOffsetHolder (com.alibaba.android.bindingx.plugin.weex.BindingXScrollHandler$ContentOffsetHolder)
.class Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$ContentOffsetHolder;
.super Ljava/lang/Object;
.source "BindingXScrollHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContentOffsetHolder"
.end annotation


# instance fields
.field x:I

.field y:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    iput p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$ContentOffsetHolder;->x:I

    .line 457
    iput p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$ContentOffsetHolder;->y:I

    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.BindingXScrollHandler.InnerAppBarOffsetChangedListener (com.alibaba.android.bindingx.plugin.weex.BindingXScrollHandler$InnerAppBarOffsetChangedListener)
.class Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;
.super Ljava/lang/Object;
.source "BindingXScrollHandler.java"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerAppBarOffsetChangedListener"
.end annotation


# instance fields
.field private mContentOffsetY:I

.field private mLastDy:I

.field private mTy:I

.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;)V
    .registers 2

    .line 224
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 225
    iput p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;->mContentOffsetY:I

    .line 227
    iput p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;->mTy:I

    .line 228
    iput p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;->mLastDy:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$1;)V
    .registers 3

    .line 224
    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;)I
    .registers 1

    .line 224
    iget p0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;->mContentOffsetY:I

    return p0
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p2

    neg-int v1, v1

    .line 232
    iget v2, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;->mContentOffsetY:I

    sub-int v2, v1, v2

    .line 233
    iput v1, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;->mContentOffsetY:I

    if-nez v2, :cond_e

    return-void

    .line 239
    :cond_e
    iget-object v1, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    iget v3, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;->mLastDy:I

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->access$300(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;II)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_1f

    .line 240
    iget v1, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;->mContentOffsetY:I

    iput v1, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;->mTy:I

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    .line 244
    :goto_20
    iget v4, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;->mContentOffsetY:I

    iget v5, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;->mTy:I

    sub-int v5, v4, v5

    .line 245
    iput v2, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;->mLastDy:I

    if-eqz v1, :cond_41

    .line 247
    iget-object v6, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    int-to-double v10, v4

    int-to-double v14, v2

    int-to-double v7, v5

    new-array v1, v3, [Ljava/lang/Object;

    move-wide/from16 v18, v7

    const-string/jumbo v7, "turn"

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v20, v1

    invoke-static/range {v6 .. v20}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->access$401(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;Ljava/lang/String;DDDDDD[Ljava/lang/Object;)V

    .line 251
    :cond_41
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    new-instance v3, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener$1;

    invoke-direct {v3, v0, v2, v5}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener$1;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;II)V

    iget-object v2, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    .line 256
    invoke-static {v2}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->access$700(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;)Ljava/lang/String;

    move-result-object v2

    .line 251
    invoke-virtual {v1, v3, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.BindingXScrollHandler.InnerAppBarOffsetChangedListener.AnonymousClass1 (com.alibaba.android.bindingx.plugin.weex.BindingXScrollHandler$InnerAppBarOffsetChangedListener$1)
.class Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener$1;
.super Ljava/lang/Object;
.source "BindingXScrollHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;->onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;

.field final synthetic val$dy:I

.field final synthetic val$tdy:I


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;II)V
    .registers 4

    .line 251
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener$1;->this$1:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;

    iput p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener$1;->val$dy:I

    iput p3, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener$1;->val$tdy:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 254
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener$1;->this$1:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;

    iget-object v1, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener$1;->this$1:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;

    invoke-static {v0}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;->access$500(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;)I

    move-result v3

    iget v5, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener$1;->val$dy:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener$1;->val$tdy:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->access$601(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;IIIIII)V

    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.BindingXScrollHandler.InnerListScrollListener (com.alibaba.android.bindingx.plugin.weex.BindingXScrollHandler$InnerListScrollListener)
.class Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "BindingXScrollHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerListScrollListener"
.end annotation


# instance fields
.field private isVertical:Z

.field private mComponentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taobao/weex/ui/component/list/WXListComponent;",
            ">;"
        }
    .end annotation
.end field

.field private mContentOffsetX:I

.field private mContentOffsetY:I

.field private mLastDx:I

.field private mLastDy:I

.field private mTx:I

.field private mTy:I

.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;ZLjava/lang/ref/WeakReference;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taobao/weex/ui/component/list/WXListComponent;",
            ">;)V"
        }
    .end annotation

    .line 381
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 v0, 0x0

    .line 372
    iput v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mContentOffsetX:I

    .line 373
    iput v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mContentOffsetY:I

    .line 375
    iput v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mTx:I

    iput v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mTy:I

    .line 376
    iput v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mLastDx:I

    iput v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mLastDy:I

    .line 382
    iput-boolean p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->isVertical:Z

    .line 383
    iput-object p3, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mComponentRef:Ljava/lang/ref/WeakReference;

    .line 384
    invoke-static {p1}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->access$1900(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3e

    invoke-static {}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->access$2000()Ljava/util/HashMap;

    move-result-object p2

    if-eqz p2, :cond_3e

    .line 385
    invoke-static {}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->access$2000()Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p1}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->access$1900(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$ContentOffsetHolder;

    if-eqz p1, :cond_3e

    .line 387
    iget p2, p1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$ContentOffsetHolder;->x:I

    iput p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mContentOffsetX:I

    .line 388
    iget p1, p1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$ContentOffsetHolder;->y:I

    iput p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mContentOffsetY:I

    :cond_3e
    return-void
.end method

.method static synthetic access$2200(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;)I
    .registers 1

    .line 371
    iget p0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mContentOffsetX:I

    return p0
.end method

.method static synthetic access$2300(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;)I
    .registers 1

    .line 371
    iget p0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mContentOffsetY:I

    return p0
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 28

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    .line 400
    invoke-static/range {p1 .. p1}, Landroidx/core/view/ViewCompat;->isInLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mComponentRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 401
    iget-object v0, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mComponentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/list/WXListComponent;

    move-object/from16 v4, p1

    invoke-virtual {v0, v4}, Lcom/taobao/weex/ui/component/list/WXListComponent;->calcContentOffset(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mContentOffsetY:I

    goto :goto_30

    .line 403
    :cond_2b
    iget v0, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mContentOffsetY:I

    add-int/2addr v0, v3

    iput v0, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mContentOffsetY:I

    .line 405
    :goto_30
    iget v0, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mContentOffsetX:I

    add-int/2addr v0, v2

    iput v0, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mContentOffsetX:I

    .line 408
    iget-object v0, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    iget v4, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mLastDx:I

    invoke-static {v0, v2, v4}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->access$300(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;II)Z

    move-result v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_4b

    iget-boolean v0, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->isVertical:Z

    if-nez v0, :cond_4b

    .line 409
    iget v0, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mContentOffsetX:I

    iput v0, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mTx:I

    const/4 v0, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v0, 0x0

    .line 413
    :goto_4c
    iget-object v6, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    iget v7, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mLastDy:I

    invoke-static {v6, v3, v7}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->access$300(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;II)Z

    move-result v6

    if-nez v6, :cond_5f

    iget-boolean v6, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->isVertical:Z

    if-eqz v6, :cond_5f

    .line 414
    iget v0, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mContentOffsetY:I

    iput v0, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mTy:I

    goto :goto_60

    :cond_5f
    move v4, v0

    .line 418
    :goto_60
    iget v0, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mContentOffsetX:I

    iget v6, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mTx:I

    sub-int v6, v0, v6

    .line 419
    iget v7, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mContentOffsetY:I

    iget v8, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mTy:I

    sub-int v8, v7, v8

    .line 421
    iput v2, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mLastDx:I

    .line 422
    iput v3, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->mLastDy:I

    if-eqz v4, :cond_8b

    .line 425
    iget-object v9, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    int-to-double v11, v0

    int-to-double v13, v7

    int-to-double v0, v2

    move-wide v15, v0

    int-to-double v0, v3

    move-wide/from16 v17, v0

    int-to-double v0, v6

    move-wide/from16 v19, v0

    int-to-double v0, v8

    new-array v4, v5, [Ljava/lang/Object;

    const-string/jumbo v10, "turn"

    move-wide/from16 v21, v0

    move-object/from16 v23, v4

    invoke-static/range {v9 .. v23}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->access$2100(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;Ljava/lang/String;DDDDDD[Ljava/lang/Object;)V

    .line 429
    :cond_8b
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v7

    new-instance v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener$1;

    move-object/from16 v1, p0

    move v4, v6

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener$1;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;IIII)V

    iget-object v2, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    .line 434
    invoke-static {v2}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->access$2500(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;)Ljava/lang/String;

    move-result-object v2

    .line 429
    invoke-virtual {v7, v0, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.BindingXScrollHandler.InnerListScrollListener.AnonymousClass1 (com.alibaba.android.bindingx.plugin.weex.BindingXScrollHandler$InnerListScrollListener$1)
.class Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener$1;
.super Ljava/lang/Object;
.source "BindingXScrollHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;

.field final synthetic val$dx:I

.field final synthetic val$dy:I

.field final synthetic val$tdx:I

.field final synthetic val$tdy:I


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;IIII)V
    .registers 6

    .line 429
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener$1;->this$1:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;

    iput p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener$1;->val$dx:I

    iput p3, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener$1;->val$dy:I

    iput p4, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener$1;->val$tdx:I

    iput p5, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener$1;->val$tdy:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 432
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener$1;->this$1:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;

    iget-object v1, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener$1;->this$1:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;

    invoke-static {v0}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->access$2200(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;)I

    move-result v2

    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener$1;->this$1:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;

    invoke-static {v0}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;->access$2300(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener;)I

    move-result v3

    iget v4, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener$1;->val$dx:I

    iget v5, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener$1;->val$dy:I

    iget v6, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener$1;->val$tdx:I

    iget v7, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerListScrollListener$1;->val$tdy:I

    invoke-static/range {v1 .. v7}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->access$2401(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;IIIIII)V

    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.BindingXScrollHandler.InnerScrollViewListener (com.alibaba.android.bindingx.plugin.weex.BindingXScrollHandler$InnerScrollViewListener)
.class Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;
.super Ljava/lang/Object;
.source "BindingXScrollHandler.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;
.implements Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerScrollViewListener"
.end annotation


# instance fields
.field private mContentOffsetX:I

.field private mContentOffsetY:I

.field private mLastDx:I

.field private mLastDy:I

.field private mTx:I

.field private mTy:I

.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;)V
    .registers 2

    .line 260
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 261
    iput p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mContentOffsetX:I

    .line 262
    iput p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mContentOffsetY:I

    .line 264
    iput p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mTx:I

    iput p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mTy:I

    .line 265
    iput p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mLastDx:I

    iput p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mLastDy:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$1;)V
    .registers 3

    .line 260
    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;)I
    .registers 1

    .line 260
    iget p0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mContentOffsetY:I

    return p0
.end method

.method static synthetic access$900(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;)I
    .registers 1

    .line 260
    iget p0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mContentOffsetX:I

    return p0
.end method

.method private onScrollInternal(II)V
    .registers 27

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    .line 293
    iget v3, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mContentOffsetX:I

    sub-int v3, v0, v3

    .line 294
    iget v4, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mContentOffsetY:I

    sub-int v4, v2, v4

    .line 296
    iput v0, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mContentOffsetX:I

    .line 297
    iput v2, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mContentOffsetY:I

    if-nez v3, :cond_17

    if-nez v4, :cond_17

    return-void

    .line 304
    :cond_17
    iget-object v0, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    iget v2, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mLastDy:I

    invoke-static {v0, v4, v2}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->access$300(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;II)Z

    move-result v0

    if-nez v0, :cond_27

    .line 305
    iget v0, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mContentOffsetY:I

    iput v0, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mTy:I

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    .line 309
    :goto_28
    iget v5, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mContentOffsetX:I

    iget v6, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mTx:I

    sub-int v6, v5, v6

    .line 310
    iget v7, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mContentOffsetY:I

    iget v8, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mTy:I

    sub-int v8, v7, v8

    .line 312
    iput v3, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mLastDx:I

    .line 313
    iput v4, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->mLastDy:I

    if-eqz v0, :cond_56

    .line 316
    iget-object v9, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    int-to-double v11, v5

    int-to-double v13, v7

    int-to-double v0, v3

    move v5, v3

    int-to-double v2, v4

    move-wide v15, v0

    int-to-double v0, v6

    move-wide/from16 v19, v0

    int-to-double v0, v8

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v10, "turn"

    move-wide/from16 v21, v0

    move-wide/from16 v17, v2

    move-object/from16 v23, v7

    invoke-static/range {v9 .. v23}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->access$801(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;Ljava/lang/String;DDDDDD[Ljava/lang/Object;)V

    goto :goto_57

    :cond_56
    move v5, v3

    .line 320
    :goto_57
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v7

    new-instance v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener$1;

    move-object/from16 v1, p0

    move v3, v4

    move v2, v5

    move v4, v6

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener$1;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;IIII)V

    iget-object v2, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    .line 325
    invoke-static {v2}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->access$1200(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;)Ljava/lang/String;

    move-result-object v2

    .line 320
    invoke-virtual {v7, v0, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onScroll(Lcom/taobao/weex/ui/view/WXScrollView;II)V
    .registers 4

    .line 269
    invoke-direct {p0, p2, p3}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->onScrollInternal(II)V

    return-void
.end method

.method public onScrollChanged(Lcom/taobao/weex/ui/view/WXHorizontalScrollView;IIII)V
    .registers 6

    .line 274
    invoke-direct {p0, p2, p3}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->onScrollInternal(II)V

    return-void
.end method

.method public onScrollChanged(Lcom/taobao/weex/ui/view/WXScrollView;IIII)V
    .registers 6

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

###### Class com.alibaba.android.bindingx.plugin.weex.BindingXScrollHandler.InnerScrollViewListener.AnonymousClass1 (com.alibaba.android.bindingx.plugin.weex.BindingXScrollHandler$InnerScrollViewListener$1)
.class Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener$1;
.super Ljava/lang/Object;
.source "BindingXScrollHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->onScrollInternal(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;

.field final synthetic val$dx:I

.field final synthetic val$dy:I

.field final synthetic val$tdx:I

.field final synthetic val$tdy:I


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;IIII)V
    .registers 6

    .line 320
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener$1;->this$1:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;

    iput p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener$1;->val$dx:I

    iput p3, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener$1;->val$dy:I

    iput p4, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener$1;->val$tdx:I

    iput p5, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener$1;->val$tdy:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 323
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener$1;->this$1:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;

    iget-object v1, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener$1;->this$1:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;

    invoke-static {v0}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->access$900(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;)I

    move-result v2

    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener$1;->this$1:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;

    invoke-static {v0}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;->access$1000(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener;)I

    move-result v3

    iget v4, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener$1;->val$dx:I

    iget v5, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener$1;->val$dy:I

    iget v6, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener$1;->val$tdx:I

    iget v7, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerScrollViewListener$1;->val$tdy:I

    invoke-static/range {v1 .. v7}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->access$1101(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;IIIIII)V

    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.BindingXScrollHandler.InnerSwipeOffsetListener (com.alibaba.android.bindingx.plugin.weex.BindingXScrollHandler$InnerSwipeOffsetListener)
.class Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;
.super Ljava/lang/Object;
.source "BindingXScrollHandler.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$OnRefreshOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerSwipeOffsetListener"
.end annotation


# instance fields
.field private mContentOffsetY:I

.field private mLastDy:I

.field private mTy:I

.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;)V
    .registers 2

    .line 330
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 331
    iput p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;->mContentOffsetY:I

    .line 333
    iput p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;->mTy:I

    .line 334
    iput p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;->mLastDy:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$1;)V
    .registers 3

    .line 330
    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;)I
    .registers 1

    .line 330
    iget p0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;->mContentOffsetY:I

    return p0
.end method


# virtual methods
.method public onOffsetChanged(I)V
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    neg-int v1, v1

    .line 339
    iget v2, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;->mContentOffsetY:I

    sub-int v2, v1, v2

    .line 341
    iput v1, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;->mContentOffsetY:I

    if-nez v2, :cond_e

    return-void

    .line 348
    :cond_e
    iget-object v1, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    iget v3, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;->mLastDy:I

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->access$300(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;II)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_1f

    .line 349
    iget v1, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;->mContentOffsetY:I

    iput v1, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;->mTy:I

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    .line 353
    :goto_20
    iget v4, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;->mContentOffsetY:I

    iget v5, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;->mTy:I

    sub-int/2addr v4, v5

    .line 355
    iput v2, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;->mLastDy:I

    if-eqz v1, :cond_45

    .line 358
    iget-object v5, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    invoke-static {v5}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->access$1300(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;)I

    move-result v1

    int-to-double v7, v1

    iget v1, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;->mContentOffsetY:I

    int-to-double v9, v1

    int-to-double v13, v2

    int-to-double v11, v4

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v6, "turn"

    move-wide/from16 v17, v11

    const-wide/16 v11, 0x0

    const-wide/16 v15, 0x0

    move-object/from16 v19, v1

    invoke-static/range {v5 .. v19}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->access$1401(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;Ljava/lang/String;DDDDDD[Ljava/lang/Object;)V

    .line 362
    :cond_45
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    new-instance v3, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener$1;

    invoke-direct {v3, v0, v2, v4}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener$1;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;II)V

    iget-object v2, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    .line 367
    invoke-static {v2}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->access$1800(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;)Ljava/lang/String;

    move-result-object v2

    .line 362
    invoke-virtual {v1, v3, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

###### Class com.alibaba.android.bindingx.plugin.weex.BindingXScrollHandler.InnerSwipeOffsetListener.AnonymousClass1 (com.alibaba.android.bindingx.plugin.weex.BindingXScrollHandler$InnerSwipeOffsetListener$1)
.class Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener$1;
.super Ljava/lang/Object;
.source "BindingXScrollHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;->onOffsetChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;

.field final synthetic val$dy:I

.field final synthetic val$tdy:I


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;II)V
    .registers 4

    .line 362
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener$1;->this$1:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;

    iput p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener$1;->val$dy:I

    iput p3, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener$1;->val$tdy:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 365
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener$1;->this$1:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;

    iget-object v1, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener$1;->this$1:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;

    iget-object v0, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    invoke-static {v0}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->access$1500(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;)I

    move-result v2

    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener$1;->this$1:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;

    invoke-static {v0}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;->access$1600(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener;)I

    move-result v3

    iget v5, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener$1;->val$dy:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerSwipeOffsetListener$1;->val$tdy:I

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->access$1701(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;IIIIII)V

    return-void
.end method
