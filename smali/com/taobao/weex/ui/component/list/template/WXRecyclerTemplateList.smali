###### Class com.taobao.weex.ui.component.list.template.WXRecyclerTemplateList (com.taobao.weex.ui.component.list.template.WXRecyclerTemplateList)
.class public Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;
.super Lcom/taobao/weex/ui/component/WXVContainer;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;
.implements Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;
.implements Lcom/taobao/weex/ui/component/Scrollable;


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/component/WXVContainer<",
        "Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;",
        ">;",
        "Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener<",
        "Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;",
        ">;",
        "Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;",
        "Lcom/taobao/weex/ui/component/Scrollable;"
    }
.end annotation


# static fields
.field private static final APPEAR_CHANGE_RUNNABLE_DELAY:J = 0x32L

.field private static final EMPTY_HOLDER_TEMPLATE_KEY:Ljava/lang/String; = ""

.field public static final ENABLE_TRACE_LOG:Z = false

.field private static final NAME_HAS_FIXED_SIZE:Ljava/lang/String; = "hasFixedSize"

.field private static final NAME_ITEM_VIEW_CACHE_SIZE:Ljava/lang/String; = "itemViewCacheSize"

.field private static final NAME_TEMPLATE_CACHE_SIZE:Ljava/lang/String; = "templateCacheSize"

.field public static final TAG:Ljava/lang/String; = "WXRecyclerTemplateList"


# instance fields
.field private cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

.field private cellRenderContext:Lcom/taobao/weex/ui/component/list/template/CellRenderContext;

.field private defaultTemplateCell:Lcom/taobao/weex/ui/component/list/WXCell;

.field private defaultTemplateKey:Ljava/lang/String;

.field private hasAppendTreeDone:Z

.field private hasLayoutDone:Z

.field private isScrollable:Z

.field private listDataIndexKey:Ljava/lang/String;

.field private listDataItemKey:Ljava/lang/String;

.field private listDataKey:Ljava/lang/String;

.field private listDataTemplateKey:Ljava/lang/String;

.field private listUpdateRunnable:Ljava/lang/Runnable;

.field private mAppearChangeRunnable:Ljava/lang/Runnable;

.field private mAppearHelpers:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/taobao/weex/ui/component/AppearanceHelper;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mColumnCount:I

.field protected mColumnGap:F

.field protected mColumnWidth:F

.field private mDisAppearWatchList:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;>;>;"
        }
    .end annotation
.end field

.field private mForceLoadmoreNextTime:Z

.field private mHasAddScrollEvent:Z

.field private mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

.field private mLastReport:Landroid/graphics/Point;

.field protected mLayoutType:I

.field private mListCellCount:I

.field private mOffsetAccuracy:I

.field private mPaddingLeft:F

.field private mPaddingRight:F

.field private mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

.field private mStickyHelper:Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

.field private mTemplateSources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/component/list/WXCell;",
            ">;"
        }
    .end annotation
.end field

.field private mTemplateViewTypes:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTemplatesCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/component/list/template/TemplateCache;",
            ">;"
        }
    .end annotation
.end field

.field private mViewOnScrollListener:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;

.field private orientation:I

.field private templateCacheSize:I


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 7

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXVContainer;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLayoutType:I

    .line 3
    iput v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnCount:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnGap:F

    .line 5
    iput v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnWidth:F

    .line 9
    new-instance v1, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;-><init>(Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;)V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mViewOnScrollListener:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mListCellCount:I

    .line 11
    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mForceLoadmoreNextTime:Z

    .line 17
    iput v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->orientation:I

    .line 22
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->isScrollable:Z

    const/16 v0, 0xa

    .line 23
    iput v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mOffsetAccuracy:I

    .line 24
    new-instance v0, Landroid/graphics/Point;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLastReport:Landroid/graphics/Point;

    .line 25
    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mHasAddScrollEvent:Z

    .line 29
    const-string v0, "listData"

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataKey:Ljava/lang/String;

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataItemKey:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataIndexKey:Ljava/lang/String;

    .line 36
    const-string v2, "case"

    iput-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataTemplateKey:Ljava/lang/String;

    const/4 v2, 0x2

    .line 39
    iput v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->templateCacheSize:I

    .line 46
    const-string v2, "@default_template_cell"

    iput-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->defaultTemplateKey:Ljava/lang/String;

    .line 63
    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearHelpers:Landroidx/collection/ArrayMap;

    .line 71
    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mDisAppearWatchList:Landroidx/collection/ArrayMap;

    .line 73
    new-instance v2, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;

    invoke-direct {v2}, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;-><init>()V

    iput-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellRenderContext:Lcom/taobao/weex/ui/component/list/template/CellRenderContext;

    .line 75
    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    .line 81
    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->hasAppendTreeDone:Z

    .line 86
    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->hasLayoutDone:Z

    .line 90
    invoke-direct {p0, p1, p3, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->initRecyclerTemplateList(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/action/BasicComponentData;Lcom/taobao/weex/ui/component/WXVContainer;)V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mViewOnScrollListener:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mStickyHelper:Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

    return-object p0
.end method

.method static synthetic access$200(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)Lcom/taobao/weex/ui/component/list/template/CellDataManager;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)Ljava/lang/Runnable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->checkAppendDone(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;II)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->shouldReport(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->fireScrollEvent(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method private calcContentSize()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    .line 4
    :goto_9
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v2, v2, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 5
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getSourceTemplate(I)Lcom/taobao/weex/ui/component/list/WXCell;

    move-result-object v2

    if-eqz v2, :cond_20

    int-to-float v0, v0

    .line 7
    invoke-virtual {v2}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutHeight()F

    move-result v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_23
    return v0
.end method

.method private checkAppendDone(Z)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateSources:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_9

    goto :goto_36

    .line 4
    :cond_9
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateSources:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/list/WXCell;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/WXCell;->isAppendTreeDone()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_36

    :cond_2c
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->hasAppendTreeDone:Z

    .line 11
    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->hasLayoutDone:Z

    if-eqz p1, :cond_36

    .line 12
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->notifyUpdateList()V

    :cond_36
    :goto_36
    return-void
.end method

.method public static doCreateCellViewBindData(Lcom/taobao/weex/ui/component/list/WXCell;Ljava/lang/String;Z)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->isLazy()Z

    move-result p1

    if-nez p1, :cond_e

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_d

    goto :goto_e

    :cond_d
    return-void

    .line 2
    :cond_e
    :goto_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 p1, 0x0

    .line 3
    invoke-static {p0, p1}, Lcom/taobao/weex/ui/component/binding/Statements;->initLazyComponent(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/WXVContainer;)V

    .line 4
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isOpenDebugLog()Z

    return-void
.end method

.method private doRenderTemplate(Lcom/taobao/weex/ui/component/list/WXCell;I)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/list/WXCell;",
            "I)",
            "Ljava/util/List<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellRenderContext:Lcom/taobao/weex/ui/component/list/template/CellRenderContext;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->clear()V

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    invoke-virtual {v1, p2}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->getRenderState(I)Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellRenderContext:Lcom/taobao/weex/ui/component/list/template/CellRenderContext;

    iput-object v1, v2, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->renderState:Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    .line 5
    iput-object p0, v2, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->templateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    .line 6
    iput p2, v2, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->position:I

    .line 8
    iget-object v3, v2, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->stack:Lcom/taobao/weex/el/parse/ArrayStack;

    .line 9
    iget-object v2, v2, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->map:Ljava/util/Map;

    .line 10
    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v4, v4, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v4, :cond_54

    .line 11
    invoke-virtual {v3, v2}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    .line 12
    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v5, v5, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataIndexKey:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_43

    .line 14
    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataIndexKey:Ljava/lang/String;

    new-instance v5, Lcom/taobao/weex/ui/component/list/template/PositionRef;

    invoke-direct {v5, v1}, Lcom/taobao/weex/ui/component/list/template/PositionRef;-><init>(Lcom/taobao/weex/ui/component/list/template/CellRenderState;)V

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_43
    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataItemKey:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_51

    .line 17
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataItemKey:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_54

    .line 19
    :cond_51
    invoke-virtual {v3, v0}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    .line 22
    :cond_54
    :goto_54
    iget-wide v2, v1, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->itemId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_5f

    .line 23
    invoke-virtual {p0, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getItemId(I)J

    .line 25
    :cond_5f
    iget-object p2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellRenderContext:Lcom/taobao/weex/ui/component/list/template/CellRenderContext;

    invoke-static {p1, p2}, Lcom/taobao/weex/ui/component/binding/Statements;->doRender(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/list/template/CellRenderContext;)Ljava/util/List;

    move-result-object p1

    .line 26
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->isDirty()Z

    move-result p2

    if-eqz p2, :cond_6e

    .line 27
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->resetDirty()V

    :cond_6e
    return-object p1
.end method

.method private findCell(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/list/WXCell;
    .registers 3

    .line 1
    instance-of v0, p1, Lcom/taobao/weex/ui/component/list/WXCell;

    if-eqz v0, :cond_7

    .line 2
    check-cast p1, Lcom/taobao/weex/ui/component/list/WXCell;

    return-object p1

    :cond_7
    if-eqz p1, :cond_15

    .line 5
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object p1

    if-nez p1, :cond_10

    goto :goto_15

    .line 8
    :cond_10
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->findCell(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/list/WXCell;

    move-result-object p1

    return-object p1

    :cond_15
    :goto_15
    const/4 p1, 0x0

    return-object p1
.end method

.method private fireScrollEvent(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getScrollEvent(Landroidx/recyclerview/widget/RecyclerView;II)Ljava/util/Map;

    move-result-object p1

    const-string p2, "scroll"

    invoke-virtual {p0, p2, p1}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private getCellTemplateFromCache(Ljava/lang/String;)Lcom/taobao/weex/ui/component/list/WXCell;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplatesCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/list/template/TemplateCache;

    if-eqz v0, :cond_1d

    .line 3
    iget-object v1, v0, Lcom/taobao/weex/ui/component/list/template/TemplateCache;->cells:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    if-lez v1, :cond_1d

    .line 4
    iget-object v1, v0, Lcom/taobao/weex/ui/component/list/template/TemplateCache;->cells:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/list/WXCell;

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    if-eqz v0, :cond_24

    .line 6
    iget-boolean v2, v0, Lcom/taobao/weex/ui/component/list/template/TemplateCache;->isLoadIng:Z

    if-nez v2, :cond_5b

    :cond_24
    if-nez v0, :cond_30

    .line 8
    new-instance v0, Lcom/taobao/weex/ui/component/list/template/TemplateCache;

    invoke-direct {v0}, Lcom/taobao/weex/ui/component/list/template/TemplateCache;-><init>()V

    .line 9
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplatesCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    const/4 v2, 0x1

    .line 11
    iput-boolean v2, v0, Lcom/taobao/weex/ui/component/list/template/TemplateCache;->isLoadIng:Z

    .line 12
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateSources:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/list/WXCell;

    if-eqz v0, :cond_5b

    .line 14
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v2

    const-string v3, "preload"

    invoke-virtual {v2, v3}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 16
    new-instance v2, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;

    invoke-direct {v2, p1, v0, p0}, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;-><init>(Ljava/lang/String;Lcom/taobao/weex/ui/component/list/WXCell;Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V

    .line 17
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/list/template/AsyncCellLoadTask;->startTask()V

    :cond_5b
    return-object v1
.end method

.method private getCellTemplateItemType(Lcom/taobao/weex/ui/component/list/WXCell;)I
    .registers 5

    const/4 v0, -0x1

    if-nez p1, :cond_4

    return v0

    .line 1
    :cond_4
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 2
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string v2, "case"

    invoke-virtual {v1, v2}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->defaultTemplateCell:Lcom/taobao/weex/ui/component/list/WXCell;

    if-ne p1, v2, :cond_1f

    .line 5
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->defaultTemplateKey:Ljava/lang/String;

    .line 7
    :cond_1f
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateViewTypes:Landroidx/collection/ArrayMap;

    invoke-virtual {p1, v1}, Landroidx/collection/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_28

    return v0

    :cond_28
    return p1

    :cond_29
    const/4 p1, 0x0

    return p1
.end method

.method private initRecyclerTemplateList(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/action/BasicComponentData;Lcom/taobao/weex/ui/component/WXVContainer;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->updateRecyclerAttr()V

    .line 3
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateViewTypes:Landroidx/collection/ArrayMap;

    const/4 p3, 0x0

    .line 4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, ""

    invoke-virtual {p1, v0, p3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateSources:Ljava/util/Map;

    .line 6
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplatesCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    new-instance p1, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;-><init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mStickyHelper:Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

    .line 8
    invoke-virtual {p2}, Lcom/taobao/weex/ui/action/BasicComponentData;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->getOrientation()I

    move-result p1

    iput p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->orientation:I

    .line 9
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    const-string/jumbo p2, "switch"

    invoke-virtual {p1, p2}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "case"

    invoke-static {p1, p2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataTemplateKey:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    const-string p2, "alias"

    invoke-virtual {p1, p2}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataItemKey:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataItemKey:Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    const-string p2, "index"

    invoke-virtual {p1, p2}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataIndexKey:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataIndexKey:Ljava/lang/String;

    .line 12
    new-instance p1, Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;-><init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    .line 13
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p2

    const-string p3, "listData"

    invoke-virtual {p2, p3}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->parseListDataToJSONArray(Ljava/lang/Object;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p2

    iput-object p2, p1, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    return-void
.end method

.method private parseListDataToJSONArray(Ljava/lang/Object;)Lcom/alibaba/fastjson/JSONArray;
    .registers 4

    .line 1
    :try_start_0
    instance-of v0, p1, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_7

    .line 2
    check-cast p1, Lcom/alibaba/fastjson/JSONArray;

    return-object p1

    .line 4
    :cond_7
    instance-of p1, p1, Ljava/lang/String;

    if-eqz p1, :cond_36

    .line 5
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    const-string v0, "listData"

    invoke-virtual {p1, v0}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson/JSONArray;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    return-object p1

    :catch_1e
    move-exception p1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "parseListDataException"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WXRecyclerTemplateList"

    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_36
    new-instance p1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    return-object p1
.end method

.method private removeFooterOrHeader(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3

    .line 1
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXLoading;

    if-eqz v0, :cond_e

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->removeFooterView(Lcom/taobao/weex/ui/component/WXComponent;)V

    return-void

    .line 3
    :cond_e
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXRefresh;

    if-eqz v0, :cond_1b

    .line 4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->removeHeaderView(Lcom/taobao/weex/ui/component/WXComponent;)V

    :cond_1b
    return-void
.end method

.method private declared-synchronized renderTemplateCellWithData(Lcom/taobao/weex/ui/component/list/WXCell;)V
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/WXCell;->getRenderData()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_51

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_51

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-lez v0, :cond_51

    .line 3
    monitor-enter p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_53

    .line 4
    :try_start_14
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/WXCell;->getRenderData()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4b

    .line 5
    invoke-static {p1}, Lcom/taobao/weex/ui/component/binding/Statements;->parseStatementsToken(Lcom/taobao/weex/ui/component/WXComponent;)V

    const/4 v0, 0x0

    .line 6
    :goto_1e
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4b

    .line 7
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getSourceTemplate(I)Lcom/taobao/weex/ui/component/list/WXCell;

    move-result-object v1

    if-ne p1, v1, :cond_48

    .line 8
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 9
    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->doRenderTemplate(Lcom/taobao/weex/ui/component/list/WXCell;I)Ljava/util/List;

    .line 10
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutWidth()F

    move-result v0

    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutHeight()F

    move-result v2

    invoke-static {p1, v0, v2}, Lcom/taobao/weex/ui/component/binding/Layouts;->doLayoutSync(Lcom/taobao/weex/ui/component/list/WXCell;FF)V

    .line 11
    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/component/list/WXCell;->setRenderData(Ljava/lang/Object;)V

    goto :goto_4b

    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 16
    :cond_4b
    :goto_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_14 .. :try_end_4c} :catchall_4e

    monitor-exit p0

    return-void

    :catchall_4e
    move-exception p1

    .line 17
    :try_start_4f
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    :try_start_50
    throw p1
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_53

    :cond_51
    monitor-exit p0

    return-void

    :catchall_53
    move-exception p1

    :try_start_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw p1
.end method

.method private safeGetListData(I)Ljava/lang/Object;
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    .line 2
    :catch_9
    const-string/jumbo p1, "{}"

    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method private setAppearanceWatch(Lcom/taobao/weex/ui/component/WXComponent;IZ)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearHelpers:Landroidx/collection/ArrayMap;

    if-eqz v0, :cond_71

    .line 3
    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_71

    .line 6
    :cond_15
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->findCell(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/list/WXCell;

    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getCellTemplateItemType(Lcom/taobao/weex/ui/component/list/WXCell;)I

    move-result v0

    if-gez v0, :cond_20

    goto :goto_71

    .line 11
    :cond_20
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearHelpers:Landroidx/collection/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_3c

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearHelpers:Landroidx/collection/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_3c
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/ui/component/AppearanceHelper;

    .line 18
    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/AppearanceHelper;->getAwareChild()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v5

    invoke-virtual {v5}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    goto :goto_60

    :cond_5f
    const/4 v3, 0x0

    :goto_60
    if-eqz v3, :cond_66

    .line 24
    invoke-virtual {v3, p2, p3}, Lcom/taobao/weex/ui/component/AppearanceHelper;->setWatchEvent(IZ)V

    return-void

    .line 26
    :cond_66
    new-instance v2, Lcom/taobao/weex/ui/component/AppearanceHelper;

    invoke-direct {v2, p1, v0}, Lcom/taobao/weex/ui/component/AppearanceHelper;-><init>(Lcom/taobao/weex/ui/component/WXComponent;I)V

    .line 27
    invoke-virtual {v2, p2, p3}, Lcom/taobao/weex/ui/component/AppearanceHelper;->setWatchEvent(IZ)V

    .line 28
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_71
    :goto_71
    return-void
.end method

.method private setRefreshOrLoading(Lcom/taobao/weex/ui/component/WXComponent;)Z
    .registers 7

    .line 1
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXRefresh;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    move-object v4, p1

    check-cast v4, Lcom/taobao/weex/ui/component/WXRefresh;

    invoke-virtual {v0, v4}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->setOnRefreshListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnRefreshListener;)V

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    new-instance v4, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$8;

    invoke-direct {v4, p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$8;-><init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-static {v4}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return v1

    .line 12
    :cond_2c
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXLoading;

    if-eqz v0, :cond_55

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 13
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    move-object v4, p1

    check-cast v4, Lcom/taobao/weex/ui/component/WXLoading;

    invoke-virtual {v0, v4}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->setOnLoadingListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnLoadingListener;)V

    .line 14
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    new-instance v4, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$9;

    invoke-direct {v4, p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$9;-><init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-static {v4}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return v1

    :cond_55
    const/4 p1, 0x0

    return p1
.end method

.method private shouldReport(II)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLastReport:Landroid/graphics/Point;

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

    :cond_11
    sub-int/2addr v1, p1

    .line 7
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLastReport:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 10
    iget v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mOffsetAccuracy:I

    if-ge v0, v3, :cond_28

    if-lt v1, v3, :cond_26

    goto :goto_28

    :cond_26
    const/4 p1, 0x0

    return p1

    .line 11
    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLastReport:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 12
    iput p2, v0, Landroid/graphics/Point;->y:I

    return v2
.end method

.method private updateRecyclerAttr()V
    .registers 9

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->getLayoutType()I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLayoutType:I

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->getColumnCount()I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnCount:I

    if-gtz v0, :cond_67

    .line 3
    iget v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLayoutType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_67

    .line 4
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 5
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getComponentType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "componentType"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "attribute"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "stackTrace"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_LIST_INVALID_COLUMN_COUNT:Lcom/taobao/weex/common/WXErrorCode;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget v5, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnCount:I

    .line 12
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    .line 13
    const-string v5, "You are trying to set the list/recycler/vlist/waterfall\'s column to %d, which is illegal. The column count should be a positive integer"

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 14
    const-string v5, "columnCount"

    invoke-static {v2, v3, v5, v4, v0}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 20
    iput v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnCount:I

    .line 22
    :cond_67
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->getColumnGap()F

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnGap:F

    .line 23
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->getColumnWidth()F

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnWidth:F

    .line 24
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v1}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mPaddingLeft:F

    .line 25
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v1}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mPaddingRight:F

    return-void
.end method


# virtual methods
.method public addChild(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V

    return-void
.end method

.method public addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V
    .registers 6

    .line 2
    instance-of v0, p1, Lcom/taobao/weex/ui/component/list/WXCell;

    if-nez v0, :cond_7

    .line 3
    invoke-super {p0, p1, p2}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V

    .line 5
    :cond_7
    instance-of p2, p1, Lcom/taobao/weex/ui/component/WXBaseRefresh;

    if-eqz p2, :cond_d

    goto/16 :goto_9d

    :cond_d
    if-eqz v0, :cond_9d

    .line 9
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p2

    if-eqz p2, :cond_93

    .line 10
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p2

    const-string v0, "case"

    invoke-virtual {p2, v0}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 v1, 0x0

    .line 11
    invoke-static {p2, v1}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string/jumbo v2, "switch"

    invoke-virtual {v1, v2}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 13
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->defaultTemplateCell:Lcom/taobao/weex/ui/component/list/WXCell;

    if-nez v1, :cond_74

    .line 14
    move-object v1, p1

    check-cast v1, Lcom/taobao/weex/ui/component/list/WXCell;

    iput-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->defaultTemplateCell:Lcom/taobao/weex/ui/component/list/WXCell;

    .line 15
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 16
    iput-object p2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->defaultTemplateKey:Ljava/lang/String;

    goto :goto_74

    .line 18
    :cond_43
    iget-object p2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->defaultTemplateKey:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_74

    .line 23
    :cond_4d
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->defaultTemplateCell:Lcom/taobao/weex/ui/component/list/WXCell;

    if-eqz v1, :cond_5d

    .line 24
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string v2, "default"

    invoke-virtual {v1, v2}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 25
    :cond_5d
    move-object v1, p1

    check-cast v1, Lcom/taobao/weex/ui/component/list/WXCell;

    iput-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->defaultTemplateCell:Lcom/taobao/weex/ui/component/list/WXCell;

    .line 26
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6b

    .line 27
    iput-object p2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->defaultTemplateKey:Ljava/lang/String;

    goto :goto_74

    .line 29
    :cond_6b
    iget-object p2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->defaultTemplateKey:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_74
    :goto_74
    if-eqz p2, :cond_93

    .line 41
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateSources:Ljava/util/Map;

    move-object v1, p1

    check-cast v1, Lcom/taobao/weex/ui/component/list/WXCell;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateViewTypes:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_93

    .line 43
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateViewTypes:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_93
    check-cast p1, Lcom/taobao/weex/ui/component/list/WXCell;

    new-instance p2, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$6;

    invoke-direct {p2, p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$6;-><init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V

    invoke-virtual {p1, p2}, Lcom/taobao/weex/ui/component/list/WXCell;->setCellAppendTreeListener(Lcom/taobao/weex/ui/component/list/WXCell$CellAppendTreeListener;)V

    :cond_9d
    :goto_9d
    return-void
.end method

.method public addEvent(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->addEvent(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->isScrollEvent(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_36

    .line 4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_36

    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mHasAddScrollEvent:Z

    if-nez p1, :cond_36

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mHasAddScrollEvent:Z

    .line 7
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 8
    new-instance v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;-><init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_36
    return-void
.end method

.method public addSubView(Landroid/view/View;I)V
    .registers 3

    return-void
.end method

.method public appendData(Lcom/alibaba/fastjson/JSONArray;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    if-eqz p1, :cond_39

    .line 1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_39

    .line 4
    :cond_9
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v1, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-nez v1, :cond_16

    .line 5
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    iput-object v1, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    .line 7
    :cond_16
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-gez v0, :cond_21

    const/4 v0, 0x0

    .line 12
    :cond_21
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/JSONArray;->addAll(Ljava/util/Collection;)Z

    .line 14
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getRecyclerViewBaseAdapter()Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    :cond_39
    :goto_39
    return-void
.end method

.method public appendRange(ILcom/alibaba/fastjson/JSONArray;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->insertRange(ILcom/alibaba/fastjson/JSONArray;)V

    return-void
.end method

.method public bindAppearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->setAppearanceWatch(Lcom/taobao/weex/ui/component/WXComponent;IZ)V

    .line 2
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_10

    .line 3
    new-instance p1, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$4;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$4;-><init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    .line 12
    :cond_10
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 13
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 14
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2e
    return-void
.end method

.method public bindDisappearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 5

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->setAppearanceWatch(Lcom/taobao/weex/ui/component/WXComponent;IZ)V

    .line 2
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_f

    .line 3
    new-instance p1, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$5;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$5;-><init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    .line 12
    :cond_f
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 13
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 14
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2d
    return-void
.end method

.method public bindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 4

    .line 1
    const-class v0, Lcom/taobao/weex/ui/component/list/WXCell;

    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->findParentType(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/Class;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_2c

    .line 5
    :cond_9
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mStickyHelper:Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

    if-nez v0, :cond_e

    goto :goto_2c

    .line 8
    :cond_e
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->getStickyTypes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 9
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mStickyHelper:Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->getStickyTypes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->notifyUpdateList()V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public calcContentOffset(Landroidx/recyclerview/widget/RecyclerView;)I
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 2
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    .line 3
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v2, 0x0

    :goto_11
    if-ge v1, v0, :cond_24

    .line 6
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getSourceTemplate(I)Lcom/taobao/weex/ui/component/list/WXCell;

    move-result-object v3

    if-nez v3, :cond_1a

    goto :goto_21

    :cond_1a
    int-to-float v2, v2

    .line 10
    invoke-virtual {v3}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutHeight()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 13
    :cond_24
    instance-of v1, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_30

    .line 14
    move-object v1, p1

    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    .line 15
    div-int/2addr v2, v1

    .line 17
    :cond_30
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3b

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    add-int/2addr v2, p1

    :cond_3b
    return v2

    .line 22
    :cond_3c
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_6f

    .line 23
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v2

    const/4 v3, 0x0

    .line 24
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    move-result-object v0

    aget v0, v0, v1

    const/4 v3, 0x0

    :goto_4f
    if-ge v1, v0, :cond_62

    .line 27
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getSourceTemplate(I)Lcom/taobao/weex/ui/component/list/WXCell;

    move-result-object v4

    if-nez v4, :cond_58

    goto :goto_5f

    :cond_58
    int-to-float v3, v3

    .line 31
    invoke-virtual {v4}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutHeight()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    :goto_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    .line 33
    :cond_62
    div-int/2addr v3, v2

    .line 35
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6e

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    add-int/2addr v3, p1

    :cond_6e
    return v3

    :cond_6f
    const/4 p1, -0x1

    return p1
.end method

.method public closest(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 9
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    const/4 v0, 0x4

    .line 1
    :try_start_1
    const-string v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    aget-object v3, v1, v2

    const/4 v4, 0x1

    .line 3
    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/taobao/weex/ui/component/list/template/TemplateDom;->findVirtualComponentByVRef(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    if-nez p1, :cond_1c

    goto :goto_53

    .line 8
    :cond_1c
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_53

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_2f

    goto :goto_53

    .line 11
    :cond_2f
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-static {p1, p2, v4}, Lcom/taobao/weex/ui/component/list/template/Selector;->closest(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;Ljava/util/List;)V

    .line 13
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4b

    .line 14
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {v3, v1, p1}, Lcom/taobao/weex/ui/component/list/template/TemplateDom;->toMap(Ljava/lang/String;ILcom/taobao/weex/ui/component/WXComponent;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    .line 16
    :cond_4b
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p3, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_53} :catch_54

    :cond_53
    :goto_53
    return-void

    :catch_54
    move-exception p1

    .line 19
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p3, p2}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    .line 20
    const-string p2, "WXRecyclerTemplateList"

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public computeVisiblePointInViewCoordinate(Landroid/graphics/PointF;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public copyComponentFromSourceCell(Lcom/taobao/weex/ui/component/list/WXCell;)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->renderTemplateCellWithData(Lcom/taobao/weex/ui/component/list/WXCell;)V

    .line 2
    invoke-static {p1}, Lcom/taobao/weex/ui/component/binding/Statements;->copyComponentTree(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/component/list/WXCell;

    return-object p1
.end method

.method public copyStack(Lcom/taobao/weex/ui/component/list/template/CellRenderContext;Lcom/taobao/weex/el/parse/ArrayStack;)Lcom/taobao/weex/el/parse/ArrayStack;
    .registers 6

    .line 1
    new-instance p1, Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-direct {p1}, Lcom/taobao/weex/el/parse/ArrayStack;-><init>()V

    const/4 v0, 0x0

    .line 2
    :goto_6
    invoke-virtual {p2}, Lcom/taobao/weex/el/parse/ArrayStack;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 3
    invoke-virtual {p2, v0}, Lcom/taobao/weex/el/parse/ArrayStack;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 4
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_1c

    .line 5
    new-instance v2, Ljava/util/HashMap;

    check-cast v1, Ljava/util/Map;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v1, v2

    .line 7
    :cond_1c
    invoke-virtual {p1, v1}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_22
    return-object p1
.end method

.method public createChildViewAt(I)V
    .registers 3

    if-gez p1, :cond_b

    .line 1
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->childCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_b

    goto :goto_19

    .line 6
    :cond_b
    invoke-virtual {p0, p1}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    .line 7
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXBaseRefresh;

    if-eqz v0, :cond_19

    .line 8
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->createView()V

    .line 9
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->setRefreshOrLoading(Lcom/taobao/weex/ui/component/WXComponent;)Z

    :cond_19
    :goto_19
    return-void
.end method

.method public destroy()V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_19

    .line 4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5
    iput-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    .line 7
    :cond_19
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 9
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 12
    :cond_3f
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v2, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v2, :cond_48

    .line 13
    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->setListData(Lcom/alibaba/fastjson/JSONArray;)V

    .line 15
    :cond_48
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mStickyHelper:Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

    if-eqz v0, :cond_4e

    .line 16
    iput-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mStickyHelper:Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

    .line 18
    :cond_4e
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateViewTypes:Landroidx/collection/ArrayMap;

    if-eqz v0, :cond_55

    .line 19
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->clear()V

    .line 21
    :cond_55
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateSources:Ljava/util/Map;

    if-eqz v0, :cond_5c

    .line 22
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 24
    :cond_5c
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearHelpers:Landroidx/collection/ArrayMap;

    if-eqz v0, :cond_63

    .line 25
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->clear()V

    .line 27
    :cond_63
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mDisAppearWatchList:Landroidx/collection/ArrayMap;

    if-eqz v0, :cond_6a

    .line 28
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->clear()V

    .line 30
    :cond_6a
    invoke-super {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->destroy()V

    .line 31
    monitor-exit p0

    return-void

    :catchall_6f
    move-exception v0

    .line 32
    monitor-exit p0
    :try_end_71
    .catchall {:try_start_1 .. :try_end_71} :catchall_6f

    throw v0
.end method

.method public findChildByAttrsRef(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 5

    .line 1
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string v1, "ref"

    invoke-virtual {v0, v1}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    return-object p1

    .line 4
    :cond_17
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v0, :cond_32

    .line 5
    check-cast p1, Lcom/taobao/weex/ui/component/WXVContainer;

    const/4 v0, 0x0

    .line 6
    :goto_1e
    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_32

    .line 7
    invoke-virtual {p1, v0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->findChildByAttrsRef(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    if-eqz v1, :cond_2f

    return-object v1

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_32
    const/4 p1, 0x0

    return-object p1
.end method

.method public findChildByRef(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 5

    .line 1
    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p1

    .line 4
    :cond_b
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v0, :cond_26

    .line 5
    check-cast p1, Lcom/taobao/weex/ui/component/WXVContainer;

    const/4 v0, 0x0

    .line 6
    :goto_12
    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 7
    invoke-virtual {p1, v0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->findChildByRef(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    if-eqz v1, :cond_23

    return-object v1

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_26
    const/4 p1, 0x0

    return-object p1
.end method

.method public findChildListByRef(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->findChildByRef(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 7
    instance-of v2, v1, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    if-nez v2, :cond_33

    const/4 p1, 0x0

    .line 8
    :goto_18
    invoke-virtual {v1}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_32

    .line 9
    invoke-virtual {v1, p1}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 11
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2f
    add-int/lit8 p1, p1, 0x1

    goto :goto_18

    :cond_32
    return-object v0

    .line 15
    :cond_33
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public findParentType(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/Class;)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p1

    .line 4
    :cond_b
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 5
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->findTypeParent(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_18
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCellDataManager()Lcom/taobao/weex/ui/component/list/template/CellDataManager;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    return-object v0
.end method

.method public getChildLayoutParams(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;IIIIII)Landroid/view/ViewGroup$LayoutParams;
    .registers 9

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    instance-of p1, p1, Lcom/taobao/weex/ui/component/WXBaseRefresh;

    if-eqz p1, :cond_12

    if-nez p2, :cond_12

    .line 3
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object p1

    :cond_12
    if-nez p2, :cond_1a

    .line 5
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {p1, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object p1

    .line 7
    :cond_1a
    iput p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 8
    iput p4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move p7, p6

    const/4 p6, 0x0

    const/4 p8, 0x0

    move-object p3, p0

    move-object p4, p2

    .line 10
    invoke-virtual/range {p3 .. p8}, Lcom/taobao/weex/ui/component/WXComponent;->setMarginsSupportRTL(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V

    return-object p4
.end method

.method protected getChildrenLayoutTopOffset()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getItemCount()I
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->hasLayoutDone:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 4
    :cond_6
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->hasAppendTreeDone:Z

    if-nez v0, :cond_b

    return v1

    .line 7
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-nez v0, :cond_12

    return v1

    .line 10
    :cond_12
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateViewTypes:Landroidx/collection/ArrayMap;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->size()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_1e

    goto :goto_32

    .line 13
    :cond_1e
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateSources:Ljava/util/Map;

    if-eqz v0, :cond_32

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_29

    goto :goto_32

    .line 16
    :cond_29
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    return v0

    :cond_32
    :goto_32
    return v1
.end method

.method public getItemId(I)J
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->getRenderState(I)Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    move-result-object v0

    .line 2
    iget-wide v1, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->itemId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_45

    .line 3
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getTemplateKey(I)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-wide/16 v0, -0x1

    return-wide v0

    .line 7
    :cond_1b
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->safeGetListData(I)Ljava/lang/Object;

    move-result-object v1

    .line 8
    instance-of v2, v1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v2, :cond_35

    move-object v2, v1

    check-cast v2, Lcom/alibaba/fastjson/JSONObject;

    const-string v3, "keyItemId"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 9
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->itemId:J

    goto :goto_45

    .line 11
    :cond_35
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-long v1, v1

    const/16 v3, 0x18

    shl-long/2addr v1, v3

    int-to-long v3, p1

    add-long/2addr v1, v3

    .line 13
    iput-wide v1, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->itemId:J

    .line 16
    :cond_45
    :goto_45
    iget-wide v0, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->itemId:J

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getTemplateKey(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateViewTypes:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_14

    .line 4
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateViewTypes:Landroidx/collection/ArrayMap;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    :cond_14
    return p1
.end method

.method public getOrientation()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->orientation:I

    return v0
.end method

.method public getScrollEvent(Landroidx/recyclerview/widget/RecyclerView;II)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "II)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->calcContentOffset(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p3

    neg-int p3, p3

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->calcContentSize()I

    move-result v1

    .line 5
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 6
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 7
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v3}, Ljava/util/HashMap;-><init>(I)V

    int-to-float v0, v0

    .line 9
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v3

    invoke-static {v0, v3}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v3, "width"

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-float v0, v1

    .line 10
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "height"

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-float p2, p2

    .line 12
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v0

    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result p2

    neg-float p2, p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string/jumbo v0, "x"

    invoke-interface {v5, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-float p2, p3

    .line 13
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result p3

    invoke-static {p2, p3}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result p2

    neg-float p2, p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string/jumbo p3, "y"

    invoke-interface {v5, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string p2, "contentSize"

    invoke-interface {v2, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string p2, "contentOffset"

    invoke-interface {v2, p2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_91

    goto :goto_92

    :cond_91
    const/4 p2, 0x0

    :goto_92
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "isDragging"

    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public getScrollStartEndHelper()Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    .line 4
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    return-object v0
.end method

.method public getScrollX()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_a
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    return v0
.end method

.method public getScrollY()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_a
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    return v0
.end method

.method public getSourceTemplate(I)Lcom/taobao/weex/ui/component/list/WXCell;
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getTemplateKey(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateSources:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/component/list/WXCell;

    return-object p1
.end method

.method public getTemplateCacheSize()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->templateCacheSize:I

    return v0
.end method

.method public getTemplateKey(I)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->safeGetListData(I)Ljava/lang/Object;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getTemplateKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTemplateKey(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 3
    instance-of v0, p1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_d

    .line 4
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataTemplateKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    .line 6
    :goto_e
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 7
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->defaultTemplateCell:Lcom/taobao/weex/ui/component/list/WXCell;

    if-eqz p1, :cond_1b

    .line 8
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->defaultTemplateKey:Ljava/lang/String;

    return-object p1

    .line 13
    :cond_1b
    const-string p1, ""

    :cond_1d
    return-object p1
.end method

.method public getTemplatesCache()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/component/list/template/TemplateCache;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplatesCache:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplatesCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplatesCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;
    .registers 9

    .line 2
    new-instance v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    iget v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLayoutType:I

    iget v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnCount:I

    iget v4, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnGap:F

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getOrientation()I

    move-result v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;-><init>(Landroid/content/Context;IIFI)V

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    .line 4
    const-string/jumbo v1, "transform"

    invoke-virtual {p1, v1}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_30

    .line 6
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getOrientation()I

    move-result v3

    invoke-static {v3, v1}, Lcom/taobao/weex/ui/component/list/RecyclerTransform;->parseTransforms(ILjava/lang/String;)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 8
    :cond_30
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 10
    const-string/jumbo v1, "templateCacheSize"

    invoke-virtual {p1, v1}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_59

    .line 11
    invoke-virtual {p1, v1}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->templateCacheSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->templateCacheSize:I

    .line 16
    :cond_59
    const-string v1, "itemViewCacheSize"

    invoke-virtual {p1, v1}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x2

    if-eqz v2, :cond_6f

    .line 17
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/taobao/weex/utils/WXUtils;->getNumberInt(Ljava/lang/Object;I)I

    move-result v1

    goto :goto_70

    :cond_6f
    const/4 v1, 0x2

    .line 19
    :goto_70
    const-string v2, "hasFixedSize"

    invoke-virtual {p1, v2}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_87

    .line 20
    invoke-virtual {p1, v2}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_88

    :cond_87
    const/4 p1, 0x0

    .line 22
    :goto_88
    new-instance v2, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    invoke-direct {v2, p0}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;-><init>(Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;)V

    const/4 v4, 0x1

    .line 23
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 24
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    if-eq v1, v3, :cond_a6

    .line 26
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 28
    :cond_a6
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getSwipeLayout()Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    move-result-object v1

    if-eqz v1, :cond_c9

    .line 29
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string v5, "nestedScrollingEnabled"

    invoke-virtual {v1, v5}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v5}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 30
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getSwipeLayout()Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->setNestedScrollingEnabled(Z)V

    .line 33
    :cond_c9
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 34
    invoke-virtual {v0, v2}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->setRecyclerViewBaseAdapter(Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;)V

    .line 35
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    .line 36
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->clearOnScrollListeners()V

    .line 37
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mViewOnScrollListener:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 38
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    new-instance v1, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$1;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$1;-><init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 80
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v1, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$2;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$2;-><init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 95
    new-instance p1, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$3;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$3;-><init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public insertData(ILjava/lang/Object;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    if-nez p2, :cond_3

    goto :goto_29

    .line 1
    :cond_3
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-le p1, v0, :cond_10

    goto :goto_29

    .line 4
    :cond_10
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->insertData(ILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c

    .line 6
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->notifyUpdateList()V

    return-void

    .line 8
    :cond_1c
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getRecyclerViewBaseAdapter()Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_29
    :goto_29
    return-void
.end method

.method public insertRange(ILcom/alibaba/fastjson/JSONArray;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    if-eqz p2, :cond_33

    .line 1
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_33

    .line 4
    :cond_9
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-le p1, v0, :cond_16

    goto :goto_33

    .line 7
    :cond_16
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->insertRange(ILcom/alibaba/fastjson/JSONArray;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 9
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->notifyUpdateList()V

    return-void

    .line 11
    :cond_22
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getRecyclerViewBaseAdapter()Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    :cond_33
    :goto_33
    return-void
.end method

.method public isScrollable()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->isScrollable:Z

    return v0
.end method

.method protected measure(II)Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;
    .registers 5

    .line 1
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXViewUtils;->getWeexHeight(Ljava/lang/String;)I

    move-result v1

    if-lt v1, v0, :cond_11

    goto :goto_12

    :cond_11
    move v0, v1

    :goto_12
    if-le p2, v0, :cond_1a

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAbsoluteY()I

    move-result p2

    sub-int p2, v1, p2

    .line 4
    :cond_1a
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->measure(II)Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;

    move-result-object p1

    return-object p1
.end method

.method public notifyAppearStateChange(IIII)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1
    iget-object v2, v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearHelpers:Landroidx/collection/ArrayMap;

    if-eqz v2, :cond_1fd

    .line 2
    invoke-virtual {v2}, Landroidx/collection/ArrayMap;->size()I

    move-result v2

    if-gtz v2, :cond_10

    goto/16 :goto_1fd

    .line 5
    :cond_10
    iget-object v2, v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    if-eqz v2, :cond_22

    .line 6
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    iget-object v4, v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7
    iput-object v3, v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearChangeRunnable:Ljava/lang/Runnable;

    :cond_22
    if-lez p4, :cond_28

    .line 9
    const-string/jumbo v2, "up"

    goto :goto_2e

    :cond_28
    if-gez p4, :cond_2d

    .line 10
    const-string v2, "down"

    goto :goto_2e

    :cond_2d
    move-object v2, v3

    .line 11
    :goto_2e
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getOrientation()I

    move-result v4

    if-nez v4, :cond_3d

    if-eqz p3, :cond_3d

    if-lez p3, :cond_3b

    .line 12
    const-string v2, "left"

    goto :goto_3d

    :cond_3b
    const-string v2, "right"

    .line 14
    :cond_3d
    :goto_3d
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    move/from16 v5, p1

    :goto_4b
    const/4 v6, 0x0

    const-string v7, "disappear"

    if-gt v5, v1, :cond_168

    .line 16
    invoke-virtual {v0, v5}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getItemViewType(I)I

    move-result v8

    .line 17
    iget-object v9, v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mAppearHelpers:Landroidx/collection/ArrayMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-nez v8, :cond_64

    goto/16 :goto_164

    .line 21
    :cond_64
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_68
    :goto_68
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_164

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/taobao/weex/ui/component/AppearanceHelper;

    .line 22
    invoke-virtual {v9}, Lcom/taobao/weex/ui/component/AppearanceHelper;->isWatch()Z

    move-result v10

    if-nez v10, :cond_7b

    goto :goto_68

    .line 25
    :cond_7b
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v10

    check-cast v10, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    if-eqz v10, :cond_164

    .line 26
    invoke-virtual {v10}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v11

    if-nez v11, :cond_8b

    goto/16 :goto_164

    .line 29
    :cond_8b
    invoke-virtual {v10}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v10

    invoke-virtual {v9}, Lcom/taobao/weex/ui/component/AppearanceHelper;->getAwareChild()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v11

    invoke-virtual {v11}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->findChildListByRef(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_164

    .line 30
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_a5

    goto/16 :goto_164

    .line 34
    :cond_a5
    iget-object v11, v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mDisAppearWatchList:Landroidx/collection/ArrayMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    if-nez v11, :cond_c1

    .line 36
    new-instance v11, Landroidx/collection/ArrayMap;

    invoke-direct {v11}, Landroidx/collection/ArrayMap;-><init>()V

    .line 37
    iget-object v12, v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mDisAppearWatchList:Landroidx/collection/ArrayMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13, v11}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_c1
    invoke-virtual {v9}, Lcom/taobao/weex/ui/component/AppearanceHelper;->getAwareChild()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v12

    invoke-virtual {v12}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    if-nez v12, :cond_e1

    .line 42
    new-instance v12, Landroidx/collection/ArrayMap;

    invoke-direct {v12}, Landroidx/collection/ArrayMap;-><init>()V

    .line 43
    invoke-virtual {v9}, Lcom/taobao/weex/ui/component/AppearanceHelper;->getAwareChild()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v13

    invoke-virtual {v13}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e1
    const/4 v11, 0x0

    .line 46
    :goto_e2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-ge v11, v13, :cond_68

    .line 47
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/taobao/weex/ui/component/WXComponent;

    .line 48
    invoke-virtual {v13}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v14

    if-nez v14, :cond_f5

    goto :goto_160

    .line 51
    :cond_f5
    invoke-virtual {v13}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/taobao/weex/ui/component/AppearanceHelper;->isViewVisible(Landroid/view/View;)Z

    move-result v14

    .line 52
    invoke-virtual {v13}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->hashCode()I

    move-result v15

    if-eqz v14, :cond_14c

    .line 54
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_160

    .line 55
    const-string v14, "appear"

    invoke-virtual {v13, v14, v2}, Lcom/taobao/weex/ui/component/WXComponent;->notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v13}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v14

    if-eqz v14, :cond_143

    .line 58
    invoke-virtual {v13}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v14

    invoke-virtual {v14}, Lio/dcloud/feature/uniapp/dom/AbsEvent;->getEventBindingArgsValues()Landroidx/collection/ArrayMap;

    move-result-object v14

    if-eqz v14, :cond_143

    .line 59
    invoke-virtual {v13}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v14

    invoke-virtual {v14}, Lio/dcloud/feature/uniapp/dom/AbsEvent;->getEventBindingArgsValues()Landroidx/collection/ArrayMap;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_143

    .line 60
    invoke-virtual {v13}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v13

    invoke-virtual {v13}, Lio/dcloud/feature/uniapp/dom/AbsEvent;->getEventBindingArgsValues()Landroidx/collection/ArrayMap;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    goto :goto_144

    :cond_143
    move-object v13, v3

    .line 62
    :goto_144
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v12, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_160

    .line 65
    :cond_14c
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_160

    .line 66
    invoke-virtual {v13, v7, v2}, Lcom/taobao/weex/ui/component/WXComponent;->notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_160
    :goto_160
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_e2

    :cond_164
    :goto_164
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4b

    .line 75
    :cond_168
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getItemCount()I

    move-result v3

    :goto_16c
    if-ge v6, v3, :cond_1fd

    move/from16 v4, p1

    if-lt v6, v4, :cond_178

    if-gt v6, v1, :cond_178

    add-int/lit8 v6, v1, 0x1

    goto/16 :goto_1f9

    .line 81
    :cond_178
    iget-object v5, v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mDisAppearWatchList:Landroidx/collection/ArrayMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-nez v5, :cond_188

    goto/16 :goto_1f9

    .line 85
    :cond_188
    iget-object v8, v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateSources:Ljava/util/Map;

    invoke-virtual {v0, v6}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getTemplateKey(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/taobao/weex/ui/component/list/WXCell;

    if-nez v8, :cond_197

    goto :goto_1fd

    .line 89
    :cond_197
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 90
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_19f
    :goto_19f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1f0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 91
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 92
    invoke-virtual {v0, v8, v10}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->findChildByRef(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v10

    if-nez v10, :cond_1b8

    goto :goto_19f

    .line 96
    :cond_1b8
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    if-eqz v9, :cond_19f

    .line 97
    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v11

    if-nez v11, :cond_1c7

    goto :goto_19f

    .line 100
    :cond_1c7
    invoke-virtual {v10}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v11

    .line 101
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    .line 102
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1d3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1ec

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 103
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-virtual {v11, v7, v13}, Lio/dcloud/feature/uniapp/dom/AbsEvent;->putEventBindingArgsValue(Ljava/lang/String;Ljava/util/List;)V

    .line 104
    invoke-virtual {v10, v7, v2}, Lcom/taobao/weex/ui/component/WXComponent;->notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d3

    .line 106
    :cond_1ec
    invoke-interface {v9}, Ljava/util/Map;->clear()V

    goto :goto_19f

    .line 108
    :cond_1f0
    iget-object v5, v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mDisAppearWatchList:Landroidx/collection/ArrayMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1f9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_16c

    :cond_1fd
    :goto_1fd
    return-void
.end method

.method public notifyUpdateList()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listUpdateRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_17

    goto :goto_4b

    .line 6
    :cond_17
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_46

    .line 7
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 10
    :cond_46
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listUpdateRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_4b
    :goto_4b
    return-void
.end method

.method public onBeforeScroll(II)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mStickyHelper:Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->onBeforeScroll(II)V

    :cond_7
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 1
    check-cast p1, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->onBindViewHolder(Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;I)V
    .registers 7

    if-nez p1, :cond_3

    goto :goto_9

    .line 2
    :cond_3
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getTemplate()Lcom/taobao/weex/ui/component/list/WXCell;

    move-result-object v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    .line 6
    :cond_a
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getHolderPosition()I

    move-result v1

    if-ltz v1, :cond_1d

    .line 7
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2, v0}, Lcom/taobao/weex/ui/component/list/template/TemplateDom;->findAllComponentRefs(Ljava/lang/String;ILcom/taobao/weex/ui/component/WXComponent;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "_detach_slot"

    invoke-virtual {p0, v2, v1}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 9
    :cond_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    invoke-virtual {p1, p2}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->setHolderPosition(I)V

    .line 11
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    invoke-virtual {v2, p2}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->getRenderState(I)Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    move-result-object v2

    .line 13
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/WXCell;->getRenderData()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_50

    if-eqz v2, :cond_3f

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->isDirty()Z

    move-result v2

    if-nez v2, :cond_50

    .line 14
    :cond_3f
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isOpenDebugLog()Z

    .line 18
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, v0}, Lcom/taobao/weex/ui/component/list/template/TemplateDom;->findAllComponentRefs(Ljava/lang/String;ILcom/taobao/weex/ui/component/WXComponent;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "_attach_slot"

    invoke-virtual {p0, p2, p1}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 21
    :cond_50
    invoke-direct {p0, v0, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->doRenderTemplate(Lcom/taobao/weex/ui/component/list/WXCell;I)Ljava/util/List;

    move-result-object p2

    .line 22
    invoke-static {p2}, Lcom/taobao/weex/ui/component/binding/Statements;->doInitCompontent(Ljava/util/List;)V

    .line 23
    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/list/WXCell;->setRenderData(Ljava/lang/Object;)V

    const/4 p2, 0x1

    .line 24
    invoke-static {p1, p2}, Lcom/taobao/weex/ui/component/binding/Layouts;->doLayoutAsync(Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;Z)V

    .line 25
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isOpenDebugLog()Z

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;
    .registers 7

    .line 2
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateViewTypes:Landroidx/collection/ArrayMap;

    invoke-virtual {p1, p2}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mTemplateSources:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/list/WXCell;

    const/4 v1, 0x0

    if-nez v0, :cond_2a

    .line 5
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 6
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    new-instance v0, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;-><init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;Landroid/view/View;I)V

    return-object v0

    .line 9
    :cond_2a
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getCellTemplateFromCache(Ljava/lang/String;)Lcom/taobao/weex/ui/component/list/WXCell;

    move-result-object v2

    if-nez v2, :cond_41

    .line 13
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/WXCell;->isSourceUsed()Z

    move-result v3

    if-nez v3, :cond_41

    const/4 v2, 0x1

    .line 14
    invoke-virtual {v0, v2}, Lcom/taobao/weex/ui/component/list/WXCell;->setSourceUsed(Z)V

    .line 15
    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->renderTemplateCellWithData(Lcom/taobao/weex/ui/component/list/WXCell;)V

    .line 17
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isOpenDebugLog()Z

    move-object v2, v0

    :cond_41
    if-nez v2, :cond_50

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->copyComponentFromSourceCell(Lcom/taobao/weex/ui/component/list/WXCell;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/taobao/weex/ui/component/list/WXCell;

    .line 25
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isOpenDebugLog()Z

    .line 29
    :cond_50
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/list/WXCell;->isLazy()Z

    move-result v0

    if-nez v0, :cond_61

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_5d

    goto :goto_61

    .line 35
    :cond_5d
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isOpenDebugLog()Z

    goto :goto_67

    .line 36
    :cond_61
    :goto_61
    invoke-static {v2, p1, v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->doCreateCellViewBindData(Lcom/taobao/weex/ui/component/list/WXCell;Ljava/lang/String;Z)V

    .line 37
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isOpenDebugLog()Z

    .line 46
    :goto_67
    new-instance p1, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    invoke-direct {p1, p0, v2, p2}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;-><init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;Lcom/taobao/weex/ui/component/list/WXCell;I)V

    return-object p1
.end method

.method public bridge synthetic onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 2

    .line 2
    check-cast p1, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->onFailedToRecycleView(Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;)Z

    move-result p1

    return p1
.end method

.method public onFailedToRecycleView(Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method protected bridge synthetic onHostViewInitialized(Landroid/view/View;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->onHostViewInitialized(Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;)V

    return-void
.end method

.method protected onHostViewInitialized(Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;)V
    .registers 3

    .line 2
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->onHostViewInitialized(Landroid/view/View;)V

    .line 3
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    if-eqz p1, :cond_13

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-nez p1, :cond_12

    goto :goto_13

    :cond_12
    return-void

    .line 5
    :cond_13
    :goto_13
    const-string p1, "WXRecyclerTemplateList"

    const-string v0, "RecyclerView is not found or Adapter is not bound"

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLoadMore(I)V
    .registers 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->getLoadMoreOffset()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 4
    const-string v0, "0"

    .line 6
    :cond_10
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v0

    int-to-float p1, p1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_57

    .line 8
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object p1, p1, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz p1, :cond_57

    .line 9
    iget v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mListCellCount:I

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result p1

    if-ne v0, p1, :cond_38

    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mForceLoadmoreNextTime:Z

    if-eqz p1, :cond_57

    .line 11
    :cond_38
    const-string p1, "loadmore"

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object p1, p1, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result p1

    iput p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mListCellCount:I

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mForceLoadmoreNextTime:Z
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4a} :catch_4b

    return-void

    :catch_4b
    move-exception p1

    .line 17
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 18
    const-string v0, "WXRecyclerTemplateList onLoadMore : "

    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_57
    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2

    .line 2
    check-cast p1, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->onViewRecycled(Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;)V
    .registers 2

    return-void
.end method

.method public queryElement(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 9
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    const/4 v0, 0x4

    .line 1
    :try_start_1
    const-string v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    aget-object v3, v1, v2

    const/4 v4, 0x1

    .line 3
    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/taobao/weex/ui/component/list/template/TemplateDom;->findVirtualComponentByVRef(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    if-nez p1, :cond_1c

    goto :goto_53

    .line 8
    :cond_1c
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_53

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_2f

    goto :goto_53

    .line 11
    :cond_2f
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-static {p1, p2, v4}, Lcom/taobao/weex/ui/component/list/template/Selector;->queryElementAll(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;Ljava/util/List;)V

    .line 13
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4b

    .line 14
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {v3, v1, p1}, Lcom/taobao/weex/ui/component/list/template/TemplateDom;->toMap(Ljava/lang/String;ILcom/taobao/weex/ui/component/WXComponent;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    .line 16
    :cond_4b
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p3, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_53} :catch_54

    :cond_53
    :goto_53
    return-void

    :catch_54
    move-exception p1

    .line 19
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p3, p2}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    .line 20
    const-string p2, "WXRecyclerTemplateList"

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public queryElementAll(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 10
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :try_start_5
    const-string v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    aget-object v3, v1, v2

    const/4 v4, 0x1

    .line 5
    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 6
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/taobao/weex/ui/component/list/template/TemplateDom;->findVirtualComponentByVRef(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    if-nez p1, :cond_20

    goto :goto_55

    .line 10
    :cond_20
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_55

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_33

    goto :goto_55

    .line 13
    :cond_33
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    invoke-static {p1, p2, v4}, Lcom/taobao/weex/ui/component/list/template/Selector;->queryElementAll(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;Ljava/util/List;)V

    .line 15
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_40
    if-ge v2, p1, :cond_52

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    add-int/lit8 v2, v2, 0x1

    check-cast p2, Lcom/taobao/weex/ui/component/WXComponent;

    .line 16
    invoke-static {v3, v1, p2}, Lcom/taobao/weex/ui/component/list/template/TemplateDom;->toMap(Ljava/lang/String;ILcom/taobao/weex/ui/component/WXComponent;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 18
    :cond_52
    invoke-interface {p3, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_55} :catch_56

    :cond_55
    :goto_55
    return-void

    :catch_56
    move-exception p1

    .line 20
    invoke-interface {p3, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    .line 21
    const-string p2, "WXRecyclerTemplateList"

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public remove(Lcom/taobao/weex/ui/component/WXComponent;Z)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->removeFooterOrHeader(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 2
    invoke-super {p0, p1, p2}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->remove(Lcom/taobao/weex/ui/component/WXComponent;Z)V

    return-void
.end method

.method public removeData(II)V
    .registers 6
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_30

    .line 2
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_d

    goto :goto_30

    :cond_d
    if-gtz p2, :cond_10

    const/4 p2, 0x1

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-lez p2, :cond_2b

    .line 9
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-ge p1, v1, :cond_2b

    .line 10
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->removeData(Ljava/lang/Integer;)V

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_2b
    if-lez v0, :cond_30

    .line 15
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->notifyUpdateList()V

    :cond_30
    :goto_30
    return-void
.end method

.method public resetLoadmore()V
    .registers 2
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mForceLoadmoreNextTime:Z

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mListCellCount:I

    return-void
.end method

.method public scrollTo(Lcom/taobao/weex/ui/component/WXComponent;Ljava/util/Map;)V
    .registers 11
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

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz p2, :cond_67

    .line 35
    const-string v3, "offset"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_10

    const-string v3, "0"

    goto :goto_18

    :cond_10
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 36
    :goto_18
    const-string v4, "animated"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v3, :cond_51

    .line 39
    :try_start_2a
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v5

    invoke-static {v3, v5}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v0
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_3a} :catch_3b

    goto :goto_51

    :catch_3b
    move-exception v3

    .line 41
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Float parseFloat error :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 44
    :cond_51
    :goto_51
    const-string v3, "cellIndex"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/taobao/weex/utils/WXUtils;->getNumberInt(Ljava/lang/Object;I)I

    move-result v3

    .line 45
    const-string/jumbo v5, "typeIndex"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v2}, Lcom/taobao/weex/utils/WXUtils;->getNumberInt(Ljava/lang/Object;I)I

    move-result v2

    goto :goto_69

    :cond_67
    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 47
    :goto_69
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->findCell(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/list/WXCell;

    move-result-object p2

    if-ltz v2, :cond_b1

    .line 49
    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v5, v5, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v5, :cond_b1

    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b1

    const/4 p1, 0x0

    const/4 v5, 0x0

    .line 51
    :goto_7d
    iget-object v6, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v6, v6, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    if-ge p1, v6, :cond_a5

    .line 52
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getSourceTemplate(I)Lcom/taobao/weex/ui/component/list/WXCell;

    move-result-object v6

    if-nez v6, :cond_8e

    goto :goto_a2

    .line 56
    :cond_8e
    invoke-virtual {p2}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9e

    add-int/lit8 v5, v5, 0x1

    :cond_9e
    if-le v5, v2, :cond_a2

    move v3, p1

    goto :goto_a5

    :cond_a2
    :goto_a2
    add-int/lit8 p1, p1, 0x1

    goto :goto_7d

    :cond_a5
    :goto_a5
    if-gez v3, :cond_b1

    .line 65
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object p1, p1, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result p1

    add-int/lit8 v3, p1, -0x1

    :cond_b1
    float-to-int p1, v0

    .line 71
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    if-nez p2, :cond_bb

    goto :goto_ca

    :cond_bb
    if-ltz v3, :cond_ca

    .line 77
    invoke-virtual {p2}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 78
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getOrientation()I

    move-result v0

    invoke-virtual {p2, v4, v3, p1, v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollTo(ZIII)V

    :cond_ca
    :goto_ca
    return-void
.end method

.method public scrollTo(Ljava/lang/String;Ljava/util/Map;)V
    .registers 9
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "offset"

    const-string v1, "animated"

    const-string v2, "Float parseFloat error :"

    const/16 v3, 0x40

    .line 1
    :try_start_8
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_1c

    .line 2
    const-string v3, "@"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    .line 3
    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_21

    .line 5
    :cond_1c
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    :goto_21
    if-ltz p1, :cond_97

    const/4 v3, 0x0

    if-eqz p2, :cond_78

    .line 11
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3c

    const-string v0, "0"

    goto :goto_44

    .line 13
    :cond_3c
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    :goto_44
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v5}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_50} :catch_91

    if-eqz v0, :cond_79

    .line 17
    :try_start_52
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v3
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_62} :catch_63

    goto :goto_79

    :catch_63
    move-exception v0

    .line 19
    :try_start_64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_79

    :cond_78
    const/4 p2, 0x1

    :cond_79
    :goto_79
    float-to-int v0, v3

    .line 26
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    if-nez v1, :cond_83

    goto :goto_97

    .line 30
    :cond_83
    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 31
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getOrientation()I

    move-result v2

    invoke-virtual {v1, p2, p1, v0, v2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollTo(ZIII)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_90} :catch_91

    goto :goto_97

    :catch_91
    move-exception p1

    .line 34
    const-string p2, "WXRecyclerTemplateList"

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_97
    :goto_97
    return-void
.end method

.method public scrollToElement(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->scrollTo(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setColumnCount(I)V
    .registers 8
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "columnCount"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->getColumnCount()I

    move-result p1

    iget v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnCount:I

    if-eq p1, v0, :cond_2d

    .line 2
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->updateRecyclerAttr()V

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLayoutType:I

    iget v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnCount:I

    iget v4, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnGap:F

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getOrientation()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->initView(Landroid/content/Context;IIFI)V

    :cond_2d
    return-void
.end method

.method public setColumnGap(F)V
    .registers 8
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "columnGap"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->getColumnGap()F

    move-result p1

    iget v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnGap:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_2f

    .line 2
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->updateRecyclerAttr()V

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLayoutType:I

    iget v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnCount:I

    iget v4, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnGap:F

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getOrientation()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->initView(Landroid/content/Context;IIFI)V

    :cond_2f
    return-void
.end method

.method public setColumnWidth(I)V
    .registers 8
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "columnWidth"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->getColumnWidth()F

    move-result p1

    iget v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnWidth:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_2f

    .line 2
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->updateRecyclerAttr()V

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLayoutType:I

    iget v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnCount:I

    iget v4, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnGap:F

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getOrientation()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->initView(Landroid/content/Context;IIFI)V

    :cond_2f
    return-void
.end method

.method protected bridge synthetic setHostLayoutParams(Landroid/view/View;IIIIII)V
    .registers 8

    .line 1
    check-cast p1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual/range {p0 .. p7}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->setHostLayoutParams(Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;IIIIII)V

    return-void
.end method

.method protected setHostLayoutParams(Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;IIIIII)V
    .registers 8

    .line 2
    invoke-super/range {p0 .. p7}, Lcom/taobao/weex/ui/component/WXComponent;->setHostLayoutParams(Landroid/view/View;IIIIII)V

    move-object p1, p0

    .line 3
    iget-boolean p2, p1, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->hasLayoutDone:Z

    if-nez p2, :cond_10

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p1, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->hasLayoutDone:Z

    .line 5
    iput-boolean p2, p1, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->hasAppendTreeDone:Z

    .line 6
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->notifyUpdateList()V

    :cond_10
    return-void
.end method

.method public setIsLayoutRTL(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->setIsLayoutRTL(Z)V

    .line 2
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mViewOnScrollListener:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;

    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->isLayoutRTL()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->setLayoutRTL(Z)V

    return-void
.end method

.method public setListData(Ljava/lang/Object;)V
    .registers 5
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->parseListDataToJSONArray(Ljava/lang/Object;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v1, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eq v1, p1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    .line 3
    :goto_d
    instance-of v2, p1, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v2, :cond_19

    if-eqz v1, :cond_19

    .line 5
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->setListData(Lcom/alibaba/fastjson/JSONArray;)V

    .line 6
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->notifyUpdateList()V

    :cond_19
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
    iput p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mOffsetAccuracy:I

    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xa

    const-string v2, "case"

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_fe

    goto/16 :goto_a2

    :sswitch_15
    const-string v0, "scrollDirection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_a2

    :cond_1f
    const/16 v4, 0xb

    goto/16 :goto_a2

    :sswitch_23
    const-string v0, "listData"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto/16 :goto_a2

    :cond_2d
    const/16 v4, 0xa

    goto/16 :goto_a2

    :sswitch_31
    const-string v0, "index"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto/16 :goto_a2

    :cond_3b
    const/16 v4, 0x9

    goto/16 :goto_a2

    :sswitch_3f
    const-string v0, "alias"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto/16 :goto_a2

    :cond_49
    const/16 v4, 0x8

    goto :goto_a2

    :sswitch_4c
    const-string v0, "scrollable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    goto :goto_a2

    :cond_55
    const/4 v4, 0x7

    goto :goto_a2

    :sswitch_57
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    goto :goto_a2

    :cond_5e
    const/4 v4, 0x6

    goto :goto_a2

    :sswitch_60
    const-string v0, "offsetAccuracy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    goto :goto_a2

    :cond_69
    const/4 v4, 0x5

    goto :goto_a2

    :sswitch_6b
    const-string v0, "loadmoreoffset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    goto :goto_a2

    :cond_74
    const/4 v4, 0x4

    goto :goto_a2

    :sswitch_76
    const-string v0, "showScrollbar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    goto :goto_a2

    :cond_7f
    const/4 v4, 0x3

    goto :goto_a2

    :sswitch_81
    const-string v0, "hasFixedSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    goto :goto_a2

    :cond_8a
    const/4 v4, 0x2

    goto :goto_a2

    :sswitch_8c
    const-string v0, "itemViewCacheSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    goto :goto_a2

    :cond_95
    const/4 v4, 0x1

    goto :goto_a2

    :sswitch_97
    const-string/jumbo v0, "switch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a1

    goto :goto_a2

    :cond_a1
    const/4 v4, 0x0

    :goto_a2
    packed-switch v4, :pswitch_data_130

    .line 41
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_aa
    if-eqz p2, :cond_b3

    .line 42
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->setScrollDirection(Ljava/lang/String;)V

    :cond_b3
    return v3

    .line 43
    :pswitch_b4
    invoke-virtual {p0, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->setListData(Ljava/lang/Object;)V

    return v3

    .line 50
    :pswitch_b8
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataIndexKey:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataIndexKey:Ljava/lang/String;

    return v3

    .line 51
    :pswitch_c1
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataItemKey:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataItemKey:Ljava/lang/String;

    return v3

    .line 63
    :pswitch_ca
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 64
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->setScrollable(Z)V

    return v3

    .line 81
    :pswitch_d8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 82
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->setOffsetAccuracy(I)V

    :pswitch_e7
    return v3

    :pswitch_e8
    const/4 p1, 0x0

    .line 83
    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_f6

    .line 85
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->setShowScrollbar(Z)V

    :cond_f6
    :pswitch_f6
    return v3

    .line 86
    :pswitch_f7
    invoke-static {p2, v2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->listDataTemplateKey:Ljava/lang/String;

    return v3

    :sswitch_data_fe
    .sparse-switch
        -0x350448cc -> :sswitch_97
        -0x2a89f2d5 -> :sswitch_8c
        -0x142fc3e5 -> :sswitch_81
        -0xd52a857 -> :sswitch_76
        -0x6b59672 -> :sswitch_6b
        -0x55c154 -> :sswitch_60
        0x2e7b30 -> :sswitch_57
        0x3f94da7 -> :sswitch_4c
        0x5899650 -> :sswitch_3f
        0x5fb28d2 -> :sswitch_31
        0x502d9568 -> :sswitch_23
        0x603e9732 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_130
    .packed-switch 0x0
        :pswitch_f7
        :pswitch_f6
        :pswitch_f6
        :pswitch_e8
        :pswitch_e7
        :pswitch_d8
        :pswitch_f7
        :pswitch_ca
        :pswitch_c1
        :pswitch_b8
        :pswitch_b4
        :pswitch_aa
    .end packed-switch
.end method

.method public setScrollDirection(Ljava/lang/String;)V
    .registers 8
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "scrollDirection"
    .end annotation

    .line 1
    iget p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->orientation:I

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->getOrientation()I

    move-result v0

    if-eq p1, v0, :cond_44

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->getOrientation()I

    move-result p1

    iput p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->orientation:I

    .line 3
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->updateRecyclerAttr()V

    .line 4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 5
    iget p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->orientation:I

    if-nez p1, :cond_2f

    const/4 p1, 0x1

    .line 6
    invoke-virtual {v0, p1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    goto :goto_33

    :cond_2f
    const/4 p1, 0x0

    .line 8
    invoke-virtual {v0, p1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 10
    :goto_33
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLayoutType:I

    iget v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnCount:I

    iget v4, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnGap:F

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getOrientation()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->initView(Landroid/content/Context;IIFI)V

    :cond_44
    return-void
.end method

.method public setScrollLeft(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "scrollLeft"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    if-nez v0, :cond_9

    return-void

    .line 5
    :cond_9
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 6
    invoke-static {p1}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v1

    invoke-static {p1, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p1

    float-to-int p1, p1

    .line 7
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->getOrientation()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollTo(III)V

    return-void
.end method

.method public setScrollTop(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "scrollTop"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    if-nez v0, :cond_9

    return-void

    .line 5
    :cond_9
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 6
    invoke-static {p1}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v1

    invoke-static {p1, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p1

    float-to-int p1, p1

    .line 7
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->getOrientation()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollTo(III)V

    return-void
.end method

.method public setScrollable(Z)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "scrollable"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 2
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setScrollable(Z)V

    return-void
.end method

.method public setShowScrollbar(Z)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "showScrollbar"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_39

    .line 4
    :cond_13
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    .line 5
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    return-void

    .line 7
    :cond_2a
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    :cond_39
    :goto_39
    return-void
.end method

.method public unbindAppearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->setAppearanceWatch(Lcom/taobao/weex/ui/component/WXComponent;IZ)V

    return-void
.end method

.method public unbindDisappearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->setAppearanceWatch(Lcom/taobao/weex/ui/component/WXComponent;IZ)V

    return-void
.end method

.method public unbindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 4

    .line 1
    const-class v0, Lcom/taobao/weex/ui/component/list/WXCell;

    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->findParentType(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/Class;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mStickyHelper:Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

    if-nez v0, :cond_d

    goto :goto_2b

    .line 6
    :cond_d
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->getStickyTypes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 7
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mStickyHelper:Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->getStickyTypes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->notifyUpdateList()V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public updateData(ILjava/lang/Object;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    if-nez p2, :cond_3

    goto :goto_29

    .line 1
    :cond_3
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_10

    goto :goto_29

    .line 4
    :cond_10
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->cellDataManager:Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    invoke-virtual {v0, p2, p1}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->updateData(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 6
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getRecyclerViewBaseAdapter()Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void

    .line 8
    :cond_26
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->notifyUpdateList()V

    :cond_29
    :goto_29
    return-void
.end method

.method public updateProperties(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->updateProperties(Ljava/util/Map;)V

    .line 2
    const-string v0, "padding"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 3
    const-string v0, "paddingLeft"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 4
    const-string v0, "paddingRight"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 6
    :cond_1b
    iget p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mPaddingLeft:F

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v1}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_3d

    iget p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mPaddingRight:F

    .line 7
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v1}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_3c

    goto :goto_3d

    :cond_3c
    return-void

    .line 8
    :cond_3d
    :goto_3d
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->updateRecyclerAttr()V

    .line 9
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 10
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mLayoutType:I

    iget v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnCount:I

    iget v4, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->mColumnGap:F

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getOrientation()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->initView(Landroid/content/Context;IIFI)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.list.template.WXRecyclerTemplateList.AnonymousClass1 (com.taobao.weex.ui.component.list.template.WXRecyclerTemplateList$1)
.class Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$1;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 7

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$1;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getScrollStartEndHelper()Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->onScrollStateChanged(I)V

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$1;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getWXScrollListeners()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3f

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_22
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/common/OnWXScrollListener;

    if-eqz v1, :cond_22

    const/4 v2, 0x0

    .line 7
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 9
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 10
    invoke-interface {v1, p1, v2, v3, p2}, Lcom/taobao/weex/common/OnWXScrollListener;->onScrollStateChanged(Landroid/view/View;III)V

    goto :goto_22

    :cond_3f
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 9

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$1;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getWXScrollListeners()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_47

    .line 5
    :try_start_15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/common/OnWXScrollListener;

    if-eqz v1, :cond_19

    .line 7
    instance-of v2, v1, Lcom/taobao/weex/common/ICheckBindingScroller;

    if-eqz v2, :cond_3f

    .line 8
    move-object v2, v1

    check-cast v2, Lcom/taobao/weex/common/ICheckBindingScroller;

    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$1;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v3}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/taobao/weex/common/ICheckBindingScroller;->isNeedScroller(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 9
    invoke-interface {v1, p1, p2, p3}, Lcom/taobao/weex/common/OnWXScrollListener;->onScrolled(Landroid/view/View;II)V

    goto :goto_19

    .line 12
    :cond_3f
    invoke-interface {v1, p1, p2, p3}, Lcom/taobao/weex/common/OnWXScrollListener;->onScrolled(Landroid/view/View;II)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_42} :catch_43

    goto :goto_19

    :catch_43
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_47
    return-void
.end method

###### Class com.taobao.weex.ui.component.list.template.WXRecyclerTemplateList.AnonymousClass2 (com.taobao.weex.ui.component.list.template.WXRecyclerTemplateList$2)
.class Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$2;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$2;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$2;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    if-nez v0, :cond_b

    return-void

    .line 3
    :cond_b
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$2;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->access$000(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->getInnerView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.list.template.WXRecyclerTemplateList.AnonymousClass3 (com.taobao.weex.ui.component.list.template.WXRecyclerTemplateList$3)
.class Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$3;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$3;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$3;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->access$100(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$3;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->access$100(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->getStickyTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_61

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$3;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->access$100(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->getStickyPositions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$3;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->access$200(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_61

    const/4 v0, 0x0

    .line 5
    :goto_30
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$3;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->access$200(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_61

    .line 6
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$3;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v1, v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getSourceTemplate(I)Lcom/taobao/weex/ui/component/list/WXCell;

    move-result-object v1

    if-nez v1, :cond_47

    goto :goto_5e

    .line 10
    :cond_47
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->isSticky()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 11
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$3;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->access$100(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->getStickyPositions()Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5e
    :goto_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 17
    :cond_61
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$3;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$3;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getRecyclerViewBaseAdapter()Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_86

    .line 18
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$3;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getRecyclerViewBaseAdapter()Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 20
    :cond_86
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isOpenDebugLog()Z

    return-void
.end method

###### Class com.taobao.weex.ui.component.list.template.WXRecyclerTemplateList.AnonymousClass4 (com.taobao.weex.ui.component.list.template.WXRecyclerTemplateList$4)
.class Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$4;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->bindAppearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$4;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$4;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->access$300(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$4;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->notifyAppearStateChange(IIII)V

    :cond_e
    return-void
.end method

###### Class com.taobao.weex.ui.component.list.template.WXRecyclerTemplateList.AnonymousClass5 (com.taobao.weex.ui.component.list.template.WXRecyclerTemplateList$5)
.class Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$5;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->bindDisappearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$5;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$5;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->access$300(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$5;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->notifyAppearStateChange(IIII)V

    :cond_e
    return-void
.end method

###### Class com.taobao.weex.ui.component.list.template.WXRecyclerTemplateList.AnonymousClass6 (com.taobao.weex.ui.component.list.template.WXRecyclerTemplateList$6)
.class Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$6;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/ui/component/list/WXCell$CellAppendTreeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$6;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppendTreeDone()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$6;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->access$400(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;Z)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.list.template.WXRecyclerTemplateList.AnonymousClass7 (com.taobao.weex.ui.component.list.template.WXRecyclerTemplateList$7)
.class Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->addEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mFirstEvent:Z

.field private offsetXCorrection:I

.field private offsetYCorrection:I

.field final synthetic this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;->mFirstEvent:Z

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 7

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_54

    .line 6
    :cond_e
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v0

    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v1

    const/4 v2, 0x0

    if-nez p2, :cond_22

    if-nez p3, :cond_22

    .line 10
    iput v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;->offsetXCorrection:I

    .line 11
    iput v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;->offsetYCorrection:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_28

    .line 15
    :cond_22
    iget p2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;->offsetXCorrection:I

    sub-int/2addr v0, p2

    .line 16
    iget p2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;->offsetYCorrection:I

    sub-int/2addr v1, p2

    .line 18
    :goto_28
    iget-object p2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getScrollStartEndHelper()Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->onScrolled(II)V

    .line 19
    iget-object p2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object p2

    const-string p3, "scroll"

    invoke-virtual {p2, p3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_40

    goto :goto_54

    .line 22
    :cond_40
    iget-boolean p2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;->mFirstEvent:Z

    if-eqz p2, :cond_47

    .line 24
    iput-boolean v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;->mFirstEvent:Z

    return-void

    .line 28
    :cond_47
    iget-object p2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-static {p2, v0, v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->access$500(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;II)Z

    move-result p2

    if-eqz p2, :cond_54

    .line 29
    iget-object p2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-static {p2, p1, v0, v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->access$600(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;Landroidx/recyclerview/widget/RecyclerView;II)V

    :cond_54
    :goto_54
    return-void
.end method

###### Class com.taobao.weex.ui.component.list.template.WXRecyclerTemplateList.AnonymousClass8 (com.taobao.weex.ui.component.list.template.WXRecyclerTemplateList$8)
.class Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$8;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->setRefreshOrLoading(Lcom/taobao/weex/ui/component/WXComponent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

.field final synthetic val$child:Lcom/taobao/weex/ui/component/WXComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$8;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$8;->val$child:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$8;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$8;->val$child:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->setHeaderView(Lcom/taobao/weex/ui/component/WXComponent;)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.list.template.WXRecyclerTemplateList.AnonymousClass9 (com.taobao.weex.ui.component.list.template.WXRecyclerTemplateList$9)
.class Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$9;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->setRefreshOrLoading(Lcom/taobao/weex/ui/component/WXComponent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

.field final synthetic val$child:Lcom/taobao/weex/ui/component/WXComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$9;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$9;->val$child:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$9;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$9;->val$child:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->setFooterView(Lcom/taobao/weex/ui/component/WXComponent;)V

    return-void
.end method
