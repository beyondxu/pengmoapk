###### Class com.taobao.weex.ui.view.listview.adapter.ListBaseViewHolder (com.taobao.weex.ui.view.listview.adapter.ListBaseViewHolder)
.class public Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# instance fields
.field private isRecycled:Z

.field private mComponent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;"
        }
    .end annotation
.end field

.field private mViewType:I


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .registers 3

    .line 10
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 11
    iput p2, p0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->mViewType:I

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;I)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput p2, p0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->mViewType:I

    .line 3
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->mComponent:Ljava/lang/ref/WeakReference;

    .line 7
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->canRecycled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->isRecycled:Z

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;IZ)V
    .registers 4

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;-><init>(Lcom/taobao/weex/ui/component/WXComponent;I)V

    .line 9
    iget-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->isRecycled:Z

    if-nez p1, :cond_c

    if-eqz p3, :cond_a

    goto :goto_c

    :cond_a
    const/4 p1, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 p1, 0x1

    :goto_d
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->isRecycled:Z

    return-void
.end method


# virtual methods
.method public bindData(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->mComponent:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->mComponent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->bindData(Lcom/taobao/weex/ui/component/WXComponent;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->isRecycled:Z

    :cond_18
    return-void
.end method

.method public canRecycled()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->mComponent:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->mComponent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->canRecycled()Z

    move-result v0

    return v0

    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public getComponent()Lcom/taobao/weex/ui/component/WXComponent;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->mComponent:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent;

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v0
.end method

.method public getViewType()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->mViewType:I

    return v0
.end method

.method public isFullSpan()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->mComponent:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/weex/ui/component/WXHeader;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public isRecycled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->isRecycled:Z

    return v0
.end method

.method public recycled()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->mComponent:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->mComponent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->recycled()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->isRecycled:Z

    :cond_18
    return-void
.end method

.method public setComponentUsing(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->mComponent:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->mComponent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setUsing(Z)V

    :cond_15
    return-void
.end method
