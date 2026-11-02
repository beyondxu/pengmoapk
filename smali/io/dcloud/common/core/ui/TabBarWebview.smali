###### Class io.dcloud.common.core.ui.TabBarWebview (io.dcloud.common.core.ui.TabBarWebview)
.class public Lio/dcloud/common/core/ui/TabBarWebview;
.super Lio/dcloud/common/adapter/ui/AdaWebview;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# instance fields
.field private isVisible:Z

.field private mApp:Lio/dcloud/common/DHInterface/IApp;

.field private mChildJson:Lcom/alibaba/fastjson/JSONArray;

.field private mPagePaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mRoot:Landroid/view/ViewGroup;

.field mScale:F

.field private mSelectIndex:I

.field private mTabBar:Lcom/dcloud/android/widget/TabView;

.field private mTabBarJson:Lcom/alibaba/fastjson/JSONObject;

.field private mTabItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/common/core/ui/b;",
            ">;"
        }
    .end annotation
.end field

.field private mTabLayout:Landroid/widget/FrameLayout;

.field private mWindowMgr:Lio/dcloud/common/core/ui/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/c;Lorg/json/JSONObject;)V
    .registers 12

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/common/adapter/ui/AdaWebview;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x40400000    # 3.0f

    .line 2
    iput v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mScale:F

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mSelectIndex:I

    .line 8
    iput-object p4, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    .line 9
    iput-object p3, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mWindowMgr:Lio/dcloud/common/core/ui/l;

    .line 10
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabItems:Ljava/util/ArrayList;

    .line 11
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mPagePaths:Ljava/util/ArrayList;

    .line 12
    const-string p3, "TabBar"

    invoke-virtual {p0, p3}, Lio/dcloud/common/adapter/ui/AdaWebview;->initWebviewUUID(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p3

    invoke-direct {p0, p3}, Lio/dcloud/common/core/ui/TabBarWebview;->initPagePaths(Lcom/alibaba/fastjson/JSONObject;)V

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    iput p3, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mScale:F

    .line 15
    iput-object p2, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mApp:Lio/dcloud/common/DHInterface/IApp;

    .line 16
    invoke-virtual {p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p3

    iput-object p3, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBarJson:Lcom/alibaba/fastjson/JSONObject;

    .line 17
    const-string p5, "child"

    invoke-virtual {p3, p5}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p3

    iput-object p3, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mChildJson:Lcom/alibaba/fastjson/JSONArray;

    .line 18
    new-instance p3, Landroid/widget/FrameLayout;

    invoke-direct {p3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabLayout:Landroid/widget/FrameLayout;

    .line 19
    iget-object p3, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBarJson:Lcom/alibaba/fastjson/JSONObject;

    const-string p5, "selected"

    invoke-virtual {p3, p5}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_73

    .line 20
    iget-object p3, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBarJson:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p3, p5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 21
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_73

    .line 22
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mSelectIndex:I

    .line 26
    :cond_73
    invoke-virtual {p4}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    iput-object p3, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mRoot:Landroid/view/ViewGroup;

    .line 27
    new-instance v0, Lcom/dcloud/android/widget/TabView;

    iget-object v2, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mRoot:Landroid/view/ViewGroup;

    iget-object v3, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBarJson:Lcom/alibaba/fastjson/JSONObject;

    iget v4, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mScale:F

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/dcloud/android/widget/TabView;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/alibaba/fastjson/JSONObject;FLio/dcloud/common/DHInterface/IApp;)V

    iput-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    .line 28
    invoke-virtual {p0, v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setMainView(Landroid/view/View;)V

    .line 29
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 30
    iget-object p3, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {p3}, Lcom/dcloud/android/widget/TabView;->getTabHeight()I

    move-result p3

    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 31
    iget-object p3, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mRoot:Landroid/view/ViewGroup;

    iget-object p5, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3, p5, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    invoke-static {}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->getInstance()Lio/dcloud/common/core/ui/TabBarWebviewMgr;

    move-result-object p1

    invoke-virtual {p1, p0}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->setLancheTabBar(Lio/dcloud/common/core/ui/TabBarWebview;)V

    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lio/dcloud/common/core/ui/TabBarWebview;->isVisible:Z

    .line 34
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p1, p2, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p4, p0, p1}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->addFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/common/core/ui/TabBarWebview;)Lcom/dcloud/android/widget/TabView;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    return-object p0
.end method

.method private initPagePaths(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 5

    .line 1
    const-string v0, "list"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 2
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    :goto_d
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_38

    .line 4
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 5
    const-string v2, "pagePath"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 7
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    const/4 v2, 0x1

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 10
    :cond_30
    iget-object v2, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mPagePaths:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_38
    return-void
.end method


# virtual methods
.method public append(Lio/dcloud/common/core/ui/b;)V
    .registers 11

    const-string v0, "0px"

    if-eqz p1, :cond_f5

    .line 17
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_53

    .line 20
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->p()V

    .line 21
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object v2

    iput-byte v5, v2, Lio/dcloud/common/adapter/util/AnimOptions;->mOption:B

    .line 22
    iget-object v2, p1, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v2, p1}, Lio/dcloud/common/core/ui/a;->b(Lio/dcloud/common/core/ui/b;)V

    .line 23
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->e()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 24
    iget-object v2, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mWindowMgr:Lio/dcloud/common/core/ui/l;

    sget-object v6, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v7, p1, Lio/dcloud/common/core/ui/b;->b:Ljava/util/ArrayList;

    const/16 v8, 0x1c

    invoke-virtual {v2, v6, v8, v7}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 25
    iput-object v2, p1, Lio/dcloud/common/core/ui/b;->b:Ljava/util/ArrayList;

    .line 27
    :cond_33
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->r()V

    .line 28
    invoke-virtual {p1, v4}, Lio/dcloud/common/core/ui/b;->b(Z)V

    .line 29
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object v2

    iput-byte v4, v2, Lio/dcloud/common/adapter/util/AnimOptions;->mOption:B

    .line 31
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 32
    iget-object v6, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabLayout:Landroid/widget/FrameLayout;

    if-ne v2, v6, :cond_4e

    .line 33
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    goto :goto_4f

    :cond_4e
    const/4 v6, -0x1

    .line 35
    :goto_4f
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_54

    :cond_53
    const/4 v6, -0x1

    .line 37
    :goto_54
    invoke-virtual {p1, v5}, Lio/dcloud/common/adapter/ui/AdaFrameView;->setTabItem(Z)V

    .line 39
    iget-object v2, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mWindowMgr:Lio/dcloud/common/core/ui/l;

    sget-object v7, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v8, 0x16

    invoke-virtual {v2, v7, v8, p1}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 46
    :try_start_65
    const-string/jumbo v7, "top"

    invoke-virtual {v2, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    const-string v7, "bottom"

    iget-boolean v8, p0, Lio/dcloud/common/core/ui/TabBarWebview;->isVisible:Z

    if-eqz v8, :cond_77

    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0}, Lcom/dcloud/android/widget/TabView;->getTabHeightStr()Ljava/lang/String;

    move-result-object v0

    .line 48
    :cond_77
    invoke-virtual {v2, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string v0, "isTab"

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_7f
    .catch Lorg/json/JSONException; {:try_start_65 .. :try_end_7f} :catch_80

    goto :goto_84

    :catch_80
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    :goto_84
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget-object v7, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v7}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v7

    invoke-virtual {v0, v7}, Lio/dcloud/common/adapter/util/ViewRect;->setParentViewRect(Lio/dcloud/common/adapter/util/ViewRect;)V

    .line 54
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/dcloud/common/adapter/util/ViewOptions;->updateViewData(Lorg/json/JSONObject;)Z

    .line 57
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p1, v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setParentFrameItem(Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;)V

    .line 59
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->mChildArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iput-boolean v5, p1, Lio/dcloud/common/adapter/ui/AdaFrameView;->inStack:Z

    .line 61
    iput-boolean v5, p1, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    .line 62
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 63
    iget-object v2, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1, v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 64
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    invoke-interface {v0, v5}, Lio/dcloud/common/DHInterface/IWebview;->setIWebViewFocusable(Z)V

    .line 65
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c6

    .line 66
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_c6
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_df

    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_df

    iget-boolean v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->isVisible:Z

    if-eqz v0, :cond_df

    .line 69
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 71
    :cond_df
    invoke-virtual {v1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_e9

    .line 72
    invoke-virtual {v1, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 74
    :cond_e9
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lio/dcloud/common/core/ui/TabBarWebview$a;

    invoke-direct {v1, p0, p1}, Lio/dcloud/common/core/ui/TabBarWebview$a;-><init>(Lio/dcloud/common/core/ui/TabBarWebview;Lio/dcloud/common/core/ui/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_f5
    return-void
.end method

.method public append(Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 11

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_4f

    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mWindowMgr:Lio/dcloud/common/core/ui/l;

    if-eqz v0, :cond_4f

    .line 2
    sget-object v3, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v4, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mApp:Lio/dcloud/common/DHInterface/IApp;

    .line 3
    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5, p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const-string/jumbo v4, "ui"

    const/4 v7, 0x1

    aput-object v4, v5, v7

    const-string v4, "findWebview"

    const/4 v7, 0x2

    aput-object v4, v5, v7

    const/4 v4, 0x3

    aput-object p1, v5, v4

    const/16 p1, 0xa

    .line 4
    invoke-virtual {v0, v3, p1, v5}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4b

    .line 6
    instance-of v0, p1, Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v0, :cond_4b

    .line 7
    check-cast p1, Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    .line 8
    instance-of v0, p1, Lio/dcloud/common/core/ui/b;

    if-eqz v0, :cond_4a

    .line 9
    check-cast p1, Lio/dcloud/common/core/ui/b;

    invoke-virtual {p0, p1}, Lio/dcloud/common/core/ui/TabBarWebview;->append(Lio/dcloud/common/core/ui/b;)V

    .line 10
    invoke-interface {p2, v6, v2}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4a
    return-void

    .line 13
    :cond_4b
    invoke-interface {p2, v1, v2}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 16
    :cond_4f
    invoke-interface {p2, v1, v2}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public checkPagePathIsTab(Ljava/lang/String;)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mPagePaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_8
    if-ge v3, v1, :cond_1a

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/lang/String;

    .line 2
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_1a
    return v2
.end method

.method public checkUrlToReload(Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    .line 1
    :try_start_1
    iget-object v1, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_8
    if-ge v3, v2, :cond_56

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lio/dcloud/common/core/ui/b;

    .line 2
    const-string v5, ".js"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_40

    .line 3
    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 4
    iget-object p1, v4, Lio/dcloud/common/adapter/ui/AdaFrameView;->mWindowMgr:Lio/dcloud/common/core/ui/l;

    sget-object v2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    invoke-virtual {v4}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v0

    const-string/jumbo v3, "weex,io.dcloud.feature.weex.WeexFeature"

    aput-object v3, v4, v6

    const-string/jumbo v3, "updateReload"

    const/4 v5, 0x2

    aput-object v3, v4, v5

    const/4 v3, 0x3

    aput-object v1, v4, v3

    const/16 v1, 0xa

    invoke-virtual {p1, v2, v1, v4}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return v6

    .line 6
    :cond_40
    invoke-virtual {v4}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IWebview;->obtainUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 7
    invoke-virtual {v4}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->reload()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_55} :catch_56

    return v6

    :catch_56
    :cond_56
    return v0
.end method

.method public dispose()V
    .registers 2

    .line 1
    invoke-super {p0}, Lio/dcloud/common/adapter/ui/AdaWebview;->dispose()V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {v0}, Lcom/dcloud/android/widget/TabView;->dispose()V

    .line 5
    :cond_a
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mPagePaths:Ljava/util/ArrayList;

    if-eqz v0, :cond_16

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_16
    return-void
.end method

.method public evalJS(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public evalJS(Ljava/lang/String;Lio/dcloud/common/adapter/ui/ReceiveJSValue$ReceiveJSValueCallback;)V
    .registers 3

    return-void
.end method

.method public executeScript(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public getScale()F
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mScale:F

    return v0
.end method

.method public getSelectIndex()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mSelectIndex:I

    return v0
.end method

.method public getTabBarHeight()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0}, Lcom/dcloud/android/widget/TabView;->getTabHeightStr()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v1}, Lcom/dcloud/android/widget/TabView;->getTabHeightStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideTabBar(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->isVisible:Z

    if-nez v0, :cond_5

    return-void

    .line 5
    :cond_5
    const-string v0, "animation"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    .line 6
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    .line 8
    :goto_18
    invoke-virtual {p0, v2}, Lio/dcloud/common/core/ui/TabBarWebview;->setTabItemsBottomMargin(I)V

    .line 9
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 10
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0}, Lcom/dcloud/android/widget/TabView;->bringMaskToFront()V

    if-eqz p1, :cond_4e

    .line 12
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0}, Lcom/dcloud/android/widget/TabView;->getTabHeight()I

    move-result v0

    iget-object v1, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v1}, Lcom/dcloud/android/widget/TabView;->getMidHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v1, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v0, 0x64

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 14
    new-instance v0, Lio/dcloud/common/core/ui/TabBarWebview$b;

    invoke-direct {v0, p0}, Lio/dcloud/common/core/ui/TabBarWebview$b;-><init>(Lio/dcloud/common/core/ui/TabBarWebview;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 31
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_5a

    .line 33
    :cond_4e
    iget-object p1, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    new-instance v0, Lio/dcloud/common/core/ui/TabBarWebview$c;

    invoke-direct {v0, p0}, Lio/dcloud/common/core/ui/TabBarWebview$c;-><init>(Lio/dcloud/common/core/ui/TabBarWebview;)V

    const-wide/16 v3, 0x96

    invoke-virtual {p1, v0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    :goto_5a
    iput-boolean v2, p0, Lio/dcloud/common/core/ui/TabBarWebview;->isVisible:Z

    return-void
.end method

.method public hideTabBarRedDot(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/widget/TabView;->hideTabBarRedDot(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public isInsertLauch()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mChildJson:Lcom/alibaba/fastjson/JSONArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    .line 2
    :goto_6
    iget-object v2, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mChildJson:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 3
    iget-object v2, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mChildJson:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lauchwebview"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v0, 0x1

    return v0

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_21
    return v1
.end method

.method public isVisible()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->isVisible:Z

    return v0
.end method

.method public obtainApp()Lio/dcloud/common/DHInterface/IApp;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mApp:Lio/dcloud/common/DHInterface/IApp;

    return-object v0
.end method

.method public obtainWindowView()Landroid/view/ViewGroup;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected onResize()V
    .registers 1

    .line 1
    invoke-super {p0}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->onResize()V

    return-void
.end method

.method public popFrame(Ljava/lang/String;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_41

    .line 2
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mWindowMgr:Lio/dcloud/common/core/ui/l;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v2, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mApp:Lio/dcloud/common/DHInterface/IApp;

    .line 3
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3, p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string/jumbo v2, "ui"

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const-string v2, "findWebview"

    const/4 v4, 0x2

    aput-object v2, v3, v4

    const/4 v2, 0x3

    aput-object p1, v3, v2

    const/16 p1, 0xa

    .line 4
    invoke-virtual {v0, v1, p1, v3}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_41

    .line 6
    instance-of v0, p1, Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v0, :cond_41

    .line 7
    check-cast p1, Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainMainView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_41
    return-void
.end method

.method public pushFrame(Ljava/lang/String;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3f

    .line 2
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mWindowMgr:Lio/dcloud/common/core/ui/l;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v2, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mApp:Lio/dcloud/common/DHInterface/IApp;

    .line 3
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3, p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string/jumbo v2, "ui"

    const/4 v5, 0x1

    aput-object v2, v3, v5

    const-string v2, "findWebview"

    const/4 v5, 0x2

    aput-object v2, v3, v5

    const/4 v2, 0x3

    aput-object p1, v3, v2

    const/16 p1, 0xa

    .line 4
    invoke-virtual {v0, v1, p1, v3}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3f

    .line 6
    instance-of v0, p1, Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v0, :cond_3f

    .line 7
    check-cast p1, Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainMainView()Landroid/view/View;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3f
    return-void
.end method

.method public removeFrameView(Lio/dcloud/common/core/ui/b;)V
    .registers 4

    if-eqz p1, :cond_30

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_30

    .line 2
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    :cond_1a
    iget-object p1, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_30

    iget-object p1, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_30

    .line 7
    iget-object p1, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_30
    return-void
.end method

.method public removeTabBarBadge(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/widget/TabView;->removeTabBarBadge(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public setClickCallBack(Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/widget/TabView;->setSingleCallbackListener(Lio/dcloud/common/DHInterface/ICallBack;)V

    return-void
.end method

.method public setDoubleClickCallBack(Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/widget/TabView;->setDoubleCallbackListener(Lio/dcloud/common/DHInterface/ICallBack;)V

    return-void
.end method

.method public setIWebViewFocusable(Z)V
    .registers 7

    .line 1
    invoke-super {p0, p1}, Lio/dcloud/common/adapter/ui/AdaWebview;->setIWebViewFocusable(Z)V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_26

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_c
    :goto_c
    if-ge v2, v1, :cond_26

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lio/dcloud/common/core/ui/b;

    if-eqz v3, :cond_c

    .line 4
    invoke-virtual {v3}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 5
    invoke-virtual {v3}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    invoke-interface {v3, p1}, Lio/dcloud/common/DHInterface/IWebview;->setIWebViewFocusable(Z)V

    goto :goto_c

    .line 9
    :cond_26
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    if-eqz v0, :cond_2d

    .line 10
    invoke-virtual {v0, p1}, Lcom/dcloud/android/widget/TabView;->setIWebViewFocusable(Z)V

    :cond_2d
    return-void
.end method

.method public setItem(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/widget/TabView;->setTabBarItem(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public setMask(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/widget/TabView;->setMask(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public setMaskButtonClickCallBack(Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/widget/TabView;->setMaskCallbackListener(Lio/dcloud/common/DHInterface/ICallBack;)V

    return-void
.end method

.method public setMidButtonClickCallBack(Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/widget/TabView;->setMidCallbackListener(Lio/dcloud/common/DHInterface/ICallBack;)V

    return-void
.end method

.method public setStyle(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 3

    if-eqz p1, :cond_1e

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/widget/TabView;->setTabBarStyle(Lcom/alibaba/fastjson/JSONObject;)V

    .line 2
    const-string v0, "height"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 3
    iget-boolean p1, p0, Lio/dcloud/common/core/ui/TabBarWebview;->isVisible:Z

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {p1}, Lcom/dcloud/android/widget/TabView;->getTabHeight()I

    move-result p1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    invoke-virtual {p0, p1}, Lio/dcloud/common/core/ui/TabBarWebview;->setTabItemsBottomMargin(I)V

    :cond_1e
    return-void
.end method

.method public setTabBarBadge(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/widget/TabView;->setTabBarBadge(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public setTabItemsBottomMargin(I)V
    .registers 10

    const-string v0, "0px"

    .line 1
    iget-object v1, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_6d

    .line 2
    iget-object v1, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 3
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 4
    iget-object v2, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object v1, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_1c
    :goto_1c
    if-ge v3, v2, :cond_68

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lio/dcloud/common/core/ui/b;

    if-eqz v4, :cond_1c

    .line 6
    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_2f

    goto :goto_1c

    .line 9
    :cond_2f
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 11
    :try_start_34
    const-string/jumbo v6, "top"

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    const-string v6, "bottom"

    if-lez p1, :cond_45

    iget-object v7, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v7}, Lcom/dcloud/android/widget/TabView;->getTabHeightStr()Ljava/lang/String;

    move-result-object v7

    goto :goto_46

    :cond_45
    move-object v7, v0

    .line 13
    :goto_46
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    const-string v6, "isTab"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_4f
    .catch Lorg/json/JSONException; {:try_start_34 .. :try_end_4f} :catch_50

    goto :goto_54

    :catch_50
    move-exception v6

    .line 16
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    :goto_54
    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v6

    invoke-virtual {v6, v5}, Lio/dcloud/common/adapter/util/ViewOptions;->updateViewData(Lorg/json/JSONObject;)Z

    .line 19
    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v5

    new-instance v6, Lio/dcloud/common/core/ui/TabBarWebview$e;

    invoke-direct {v6, p0, v4}, Lio/dcloud/common/core/ui/TabBarWebview$e;-><init>(Lio/dcloud/common/core/ui/TabBarWebview;Lio/dcloud/common/core/ui/b;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1c

    .line 30
    :cond_68
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->resize()V

    :cond_6d
    return-void
.end method

.method public show(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public showTabBar(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->isVisible:Z

    if-eqz v0, :cond_5

    return-void

    .line 5
    :cond_5
    const-string v0, "animation"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    .line 6
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    if-eqz p1, :cond_41

    .line 9
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0}, Lcom/dcloud/android/widget/TabView;->getTabHeight()I

    move-result v0

    iget-object v1, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v1}, Lcom/dcloud/android/widget/TabView;->getMidHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v0, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v0, 0x64

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 11
    new-instance v0, Lio/dcloud/common/core/ui/TabBarWebview$d;

    invoke-direct {v0, p0}, Lio/dcloud/common/core/ui/TabBarWebview$d;-><init>(Lio/dcloud/common/core/ui/TabBarWebview;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 27
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_4a

    .line 29
    :cond_41
    iget-object p1, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {p1}, Lcom/dcloud/android/widget/TabView;->getTabHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/dcloud/common/core/ui/TabBarWebview;->setTabItemsBottomMargin(I)V

    .line 31
    :goto_4a
    iget-object p1, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lio/dcloud/common/core/ui/TabBarWebview;->isVisible:Z

    return-void
.end method

.method public showTabBarRedDot(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/widget/TabView;->showTabBarRedDot(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public switchSelect(I)V
    .registers 3

    .line 1
    iput p1, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mSelectIndex:I

    .line 2
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/widget/TabView;->switchTab(I)V

    return-void
.end method

.method public tabItemActive(Lio/dcloud/common/core/ui/b;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_2
    iget-object v2, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 2
    iget-object v2, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/core/ui/b;

    if-eqz p1, :cond_1e

    if-ne v2, p1, :cond_1e

    .line 4
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_35

    .line 6
    :cond_1e
    iget-object v3, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/common/core/ui/b;

    invoke-virtual {v3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 7
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_38
    return-void
.end method

.method public updateMidButton(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/widget/TabView;->updateMidButton(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

###### Class io.dcloud.common.core.ui.TabBarWebview.a (io.dcloud.common.core.ui.TabBarWebview$a)
.class Lio/dcloud/common/core/ui/TabBarWebview$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/TabBarWebview;->append(Lio/dcloud/common/core/ui/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/b;

.field final synthetic b:Lio/dcloud/common/core/ui/TabBarWebview;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/TabBarWebview;Lio/dcloud/common/core/ui/b;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/TabBarWebview$a;->b:Lio/dcloud/common/core/ui/TabBarWebview;

    iput-object p2, p0, Lio/dcloud/common/core/ui/TabBarWebview$a;->a:Lio/dcloud/common/core/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview$a;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->resize()V

    return-void
.end method

###### Class io.dcloud.common.core.ui.TabBarWebview.b (io.dcloud.common.core.ui.TabBarWebview$b)
.class Lio/dcloud/common/core/ui/TabBarWebview$b;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/TabBarWebview;->hideTabBar(Lcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/TabBarWebview;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/TabBarWebview;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/TabBarWebview$b;->a:Lio/dcloud/common/core/ui/TabBarWebview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/common/core/ui/TabBarWebview$b;->a:Lio/dcloud/common/core/ui/TabBarWebview;

    invoke-static {p1}, Lio/dcloud/common/core/ui/TabBarWebview;->access$000(Lio/dcloud/common/core/ui/TabBarWebview;)Lcom/dcloud/android/widget/TabView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

###### Class io.dcloud.common.core.ui.TabBarWebview.c (io.dcloud.common.core.ui.TabBarWebview$c)
.class Lio/dcloud/common/core/ui/TabBarWebview$c;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/TabBarWebview;->hideTabBar(Lcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/TabBarWebview;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/TabBarWebview;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/TabBarWebview$c;->a:Lio/dcloud/common/core/ui/TabBarWebview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview$c;->a:Lio/dcloud/common/core/ui/TabBarWebview;

    invoke-static {v0}, Lio/dcloud/common/core/ui/TabBarWebview;->access$000(Lio/dcloud/common/core/ui/TabBarWebview;)Lcom/dcloud/android/widget/TabView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

###### Class io.dcloud.common.core.ui.TabBarWebview.d (io.dcloud.common.core.ui.TabBarWebview$d)
.class Lio/dcloud/common/core/ui/TabBarWebview$d;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/TabBarWebview;->showTabBar(Lcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/TabBarWebview;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/TabBarWebview;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/TabBarWebview$d;->a:Lio/dcloud/common/core/ui/TabBarWebview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/common/core/ui/TabBarWebview$d;->a:Lio/dcloud/common/core/ui/TabBarWebview;

    invoke-static {p1}, Lio/dcloud/common/core/ui/TabBarWebview;->access$000(Lio/dcloud/common/core/ui/TabBarWebview;)Lcom/dcloud/android/widget/TabView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dcloud/android/widget/TabView;->getTabHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Lio/dcloud/common/core/ui/TabBarWebview;->setTabItemsBottomMargin(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

###### Class io.dcloud.common.core.ui.TabBarWebview.e (io.dcloud.common.core.ui.TabBarWebview$e)
.class Lio/dcloud/common/core/ui/TabBarWebview$e;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/TabBarWebview;->setTabItemsBottomMargin(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/b;

.field final synthetic b:Lio/dcloud/common/core/ui/TabBarWebview;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/TabBarWebview;Lio/dcloud/common/core/ui/b;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/TabBarWebview$e;->b:Lio/dcloud/common/core/ui/TabBarWebview;

    iput-object p2, p0, Lio/dcloud/common/core/ui/TabBarWebview$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_23

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lio/dcloud/common/core/ui/TabBarWebview$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_23

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 3
    invoke-static {v0, v1, v1, v2, v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil;->setViewLayoutParams(Landroid/view/View;IIII)V

    .line 5
    :cond_23
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->resize()V

    return-void
.end method
