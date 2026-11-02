###### Class com.taobao.weex.ui.view.listview.adapter.RecyclerViewBaseAdapter (com.taobao.weex.ui.view.listview.adapter.RecyclerViewBaseAdapter)
.class public Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private iRecyclerAdapterListener:Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->iRecyclerAdapterListener:Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->iRecyclerAdapterListener:Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0}, Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;->getItemCount()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getItemId(I)J
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->iRecyclerAdapterListener:Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;

    invoke-interface {v0, p1}, Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->iRecyclerAdapterListener:Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;

    if-eqz v0, :cond_8

    .line 2
    invoke-interface {v0, p1}, Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;->getItemViewType(I)I

    move-result p1

    :cond_8
    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 1
    check-cast p1, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->onBindViewHolder(Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->iRecyclerAdapterListener:Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;

    if-eqz v0, :cond_7

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_7
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->iRecyclerAdapterListener:Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;

    if-eqz v0, :cond_b

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 2

    .line 1
    check-cast p1, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->onFailedToRecycleView(Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;)Z

    move-result p1

    return p1
.end method

.method public onFailedToRecycleView(Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->iRecyclerAdapterListener:Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;

    if-eqz v0, :cond_9

    .line 3
    invoke-interface {v0, p1}, Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;->onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    return p1

    .line 5
    :cond_9
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->onViewAttachedToWindow(Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    if-eqz p1, :cond_1d

    .line 3
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->isFullSpan()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 5
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v0, :cond_1d

    .line 8
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    :cond_1d
    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->onViewDetachedFromWindow(Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->setComponentUsing(Z)V

    :cond_9
    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->onViewRecycled(Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->iRecyclerAdapterListener:Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;

    if-eqz v0, :cond_7

    .line 3
    invoke-interface {v0, p1}, Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 5
    :cond_7
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
