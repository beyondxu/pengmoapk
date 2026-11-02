###### Class com.taobao.weex.ui.component.list.GapItemDecoration (com.taobao.weex.ui.component.list.GapItemDecoration)
.class public Lcom/taobao/weex/ui/component/list/GapItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# instance fields
.field private listComponent:Lcom/taobao/weex/ui/component/list/WXListComponent;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/component/list/WXListComponent;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/GapItemDecoration;->listComponent:Lcom/taobao/weex/ui/component/list/WXListComponent;

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 6

    .line 1
    iget-object p4, p0, Lcom/taobao/weex/ui/component/list/GapItemDecoration;->listComponent:Lcom/taobao/weex/ui/component/list/WXListComponent;

    invoke-virtual {p4}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getSpanOffsets()[Ljava/lang/Float;

    move-result-object p4

    if-nez p4, :cond_a

    goto/16 :goto_8a

    .line 5
    :cond_a
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p3

    if-gez p3, :cond_12

    goto/16 :goto_8a

    .line 9
    :cond_12
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v0, :cond_8a

    .line 10
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 11
    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->isFullSpan()Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_8a

    .line 14
    :cond_27
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/GapItemDecoration;->listComponent:Lcom/taobao/weex/ui/component/list/WXListComponent;

    invoke-virtual {v0, p3}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getListChild(I)Lcom/taobao/weex/common/IWXObject;

    move-result-object p3

    .line 15
    instance-of v0, p3, Lcom/taobao/weex/ui/component/list/WXCell;

    if-eqz v0, :cond_8a

    .line 16
    check-cast p3, Lcom/taobao/weex/ui/component/list/WXCell;

    .line 17
    invoke-virtual {p3}, Lcom/taobao/weex/ui/component/WXComponent;->isFixed()Z

    move-result v0

    if-nez v0, :cond_8a

    invoke-virtual {p3}, Lcom/taobao/weex/ui/component/WXComponent;->isSticky()Z

    move-result p3

    if-eqz p3, :cond_40

    goto :goto_8a

    .line 21
    :cond_40
    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result p3

    array-length v0, p4

    if-lt p3, v0, :cond_48

    goto :goto_8a

    .line 25
    :cond_48
    iget-object p3, p0, Lcom/taobao/weex/ui/component/list/GapItemDecoration;->listComponent:Lcom/taobao/weex/ui/component/list/WXListComponent;

    invoke-virtual {p3}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->isLayoutRTL()Z

    move-result p3

    if-eqz p3, :cond_59

    array-length p3, p4

    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result p2

    sub-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x1

    goto :goto_5d

    :cond_59
    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result p3

    .line 26
    :goto_5d
    iget-object p2, p0, Lcom/taobao/weex/ui/component/list/GapItemDecoration;->listComponent:Lcom/taobao/weex/ui/component/list/WXListComponent;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getSpanOffsets()[Ljava/lang/Float;

    move-result-object p2

    aget-object p2, p2, p3

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 27
    iget-object p3, p0, Lcom/taobao/weex/ui/component/list/GapItemDecoration;->listComponent:Lcom/taobao/weex/ui/component/list/WXListComponent;

    invoke-virtual {p3}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result p3

    invoke-static {p2, p3}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 28
    iget-object p3, p0, Lcom/taobao/weex/ui/component/list/GapItemDecoration;->listComponent:Lcom/taobao/weex/ui/component/list/WXListComponent;

    invoke-virtual {p3}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->isLayoutRTL()Z

    move-result p3

    if-eqz p3, :cond_85

    neg-int p3, p2

    .line 29
    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 30
    iput p2, p1, Landroid/graphics/Rect;->right:I

    return-void

    .line 32
    :cond_85
    iput p2, p1, Landroid/graphics/Rect;->left:I

    neg-int p2, p2

    .line 33
    iput p2, p1, Landroid/graphics/Rect;->right:I

    :cond_8a
    :goto_8a
    return-void
.end method
