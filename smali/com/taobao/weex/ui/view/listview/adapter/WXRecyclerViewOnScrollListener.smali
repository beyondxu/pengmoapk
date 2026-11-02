###### Class com.taobao.weex.ui.view.listview.adapter.WXRecyclerViewOnScrollListener (com.taobao.weex.ui.view.listview.adapter.WXRecyclerViewOnScrollListener)
.class public Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;
    }
.end annotation


# instance fields
.field private isLayoutRTL:Z

.field protected layoutManagerType:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

.field private listener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentScrollState:I

.field private mDy:I

.field private mFirstPositions:[I

.field private mFirstVisibleItemPosition:I

.field private mLastPositions:[I

.field private mLastVisibleItemPosition:I


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mCurrentScrollState:I

    .line 4
    iput v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mDy:I

    .line 12
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->isLayoutRTL:Z

    .line 14
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->listener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private findMax([I)I
    .registers 6

    const/4 v0, 0x0

    .line 1
    aget v1, p1, v0

    .line 2
    array-length v2, p1

    :goto_4
    if-ge v0, v2, :cond_e

    aget v3, p1, v0

    if-le v3, v1, :cond_b

    move v1, v3

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    return v1
.end method

.method private findMin([I)I
    .registers 6

    const/4 v0, 0x0

    .line 1
    aget v1, p1, v0

    .line 2
    array-length v2, p1

    :goto_4
    if-ge v0, v2, :cond_e

    aget v3, p1, v0

    if-ge v3, v1, :cond_b

    move v1, v3

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    return v1
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 7

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 2
    iput p2, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mCurrentScrollState:I

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 5
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v1

    if-eqz v0, :cond_bd

    .line 7
    iget v2, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastVisibleItemPosition:I

    sub-int v2, v1, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    mul-int v2, v2, v3

    div-int/2addr v2, v0

    if-lez v0, :cond_bd

    .line 8
    iget v3, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mCurrentScrollState:I

    if-nez v3, :cond_bd

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v3

    if-eqz v3, :cond_86

    .line 11
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 12
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    if-eqz v0, :cond_bd

    add-int/lit8 v1, v1, -0x1

    if-ne v3, v1, :cond_bd

    .line 14
    iget-boolean v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->isLayoutRTL:Z

    if-eqz v1, :cond_66

    .line 15
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result p1

    const/16 p2, -0x32

    if-lt p1, p2, :cond_bd

    .line 17
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->listener:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_bd

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_bd

    .line 18
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;

    invoke-interface {p1, v2}, Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;->onLoadMore(I)V

    return-void

    .line 22
    :cond_66
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result p2

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    if-gt p2, p1, :cond_bd

    .line 24
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->listener:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_bd

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_bd

    .line 25
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;

    invoke-interface {p1, v2}, Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;->onLoadMore(I)V

    return-void

    .line 32
    :cond_86
    iget v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastVisibleItemPosition:I

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9e

    .line 34
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result p2

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/lit8 v0, p2, 0x32

    if-ge v0, p1, :cond_9b

    goto :goto_bd

    :cond_9b
    if-le p2, p1, :cond_a5

    goto :goto_bd

    .line 44
    :cond_9e
    iget p1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mDy:I

    if-eqz p1, :cond_bd

    if-gez p1, :cond_a5

    goto :goto_bd

    .line 48
    :cond_a5
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->listener:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_ba

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_ba

    .line 49
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;

    invoke-interface {p1, v2}, Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;->onLoadMore(I)V

    :cond_ba
    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mDy:I

    :cond_bd
    :goto_bd
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 7

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->listener:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_d

    goto/16 :goto_a6

    .line 6
    :cond_d
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;

    if-eqz v0, :cond_a6

    .line 10
    invoke-interface {v0, p2, p3}, Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;->onBeforeScroll(II)V

    .line 11
    iput p3, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mDy:I

    .line 12
    instance-of v1, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_34

    .line 13
    sget-object v1, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;->LINEAR:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    iput-object v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->layoutManagerType:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    .line 14
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 15
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    iput v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastVisibleItemPosition:I

    .line 16
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    .line 17
    iget v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastVisibleItemPosition:I

    invoke-interface {v0, p1, v1, p2, p3}, Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;->notifyAppearStateChange(IIII)V

    return-void

    .line 21
    :cond_34
    instance-of v1, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_4e

    .line 22
    sget-object v1, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;->GRID:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    iput-object v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->layoutManagerType:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    .line 23
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 24
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    iput v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastVisibleItemPosition:I

    .line 25
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    iget v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastVisibleItemPosition:I

    invoke-interface {v0, p1, v1, p2, p3}, Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;->notifyAppearStateChange(IIII)V

    return-void

    .line 30
    :cond_4e
    instance-of v1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_9e

    .line 31
    sget-object v1, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;->STAGGERED_GRID:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    iput-object v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->layoutManagerType:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    .line 32
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 33
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v1

    .line 34
    iget-object v2, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastPositions:[I

    if-eqz v2, :cond_63

    array-length v2, v2

    if-eq v1, v2, :cond_67

    .line 35
    :cond_63
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastPositions:[I

    .line 37
    :cond_67
    iget-object v2, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mFirstPositions:[I

    if-eqz v2, :cond_6e

    array-length v2, v2

    if-eq v1, v2, :cond_72

    .line 38
    :cond_6e
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mFirstPositions:[I

    .line 42
    :cond_72
    :try_start_72
    iget-object v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mFirstPositions:[I

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    .line 43
    iget-object v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mFirstPositions:[I

    invoke-direct {p0, v1}, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->findMin([I)I

    move-result v1

    iput v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mFirstVisibleItemPosition:I

    .line 44
    iget-object v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastPositions:[I

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    .line 45
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastPositions:[I

    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->findMax([I)I

    move-result p1

    iput p1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastVisibleItemPosition:I

    .line 46
    iget v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mFirstVisibleItemPosition:I

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;->notifyAppearStateChange(IIII)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_91} :catch_92

    return-void

    :catch_92
    move-exception p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    return-void

    .line 58
    :cond_9e
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unsupported LayoutManager used. Valid ones are LinearLayoutManager, GridLayoutManager and StaggeredGridLayoutManager"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a6
    :goto_a6
    return-void
.end method

.method public setLayoutRTL(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->isLayoutRTL:Z

    return-void
.end method

###### Class com.taobao.weex.ui.view.listview.adapter.WXRecyclerViewOnScrollListener.LAYOUT_MANAGER_TYPE (com.taobao.weex.ui.view.listview.adapter.WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE)
.class public final enum Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;
.super Ljava/lang/Enum;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LAYOUT_MANAGER_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

.field public static final enum GRID:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

.field public static final enum LINEAR:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

.field public static final enum STAGGERED_GRID:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;


# direct methods
.method private static synthetic $values()[Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;
    .registers 3

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    sget-object v1, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;->LINEAR:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;->GRID:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;->STAGGERED_GRID:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    const-string v1, "LINEAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;->LINEAR:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    .line 2
    new-instance v0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    const-string v1, "GRID"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;->GRID:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    .line 3
    new-instance v0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    const-string v1, "STAGGERED_GRID"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;->STAGGERED_GRID:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    .line 4
    invoke-static {}, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;->$values()[Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;->$VALUES:[Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;
    .registers 2

    .line 1
    const-class v0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;
    .registers 1

    .line 1
    sget-object v0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;->$VALUES:[Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    invoke-virtual {v0}, [Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    return-object v0
.end method
