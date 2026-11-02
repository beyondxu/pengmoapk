###### Class com.facebook.drawee.view.MultiDraweeHolder (com.facebook.drawee.view.MultiDraweeHolder)
.class public Lcom/facebook/drawee/view/MultiDraweeHolder;
.super Ljava/lang/Object;
.source "MultiDraweeHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DH::",
        "Lcom/facebook/drawee/interfaces/DraweeHierarchy;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field mHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/drawee/view/DraweeHolder<",
            "TDH;>;>;"
        }
    .end annotation
.end field

.field mIsAttached:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mIsAttached:Z

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mHolders:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(ILcom/facebook/drawee/view/DraweeHolder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/drawee/view/DraweeHolder<",
            "TDH;>;)V"
        }
    .end annotation

    .line 95
    invoke-static {p2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/facebook/common/internal/Preconditions;->checkElementIndex(II)I

    .line 97
    iget-object v0, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 98
    iget-boolean p1, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mIsAttached:Z

    if-eqz p1, :cond_1a

    .line 99
    invoke-virtual {p2}, Lcom/facebook/drawee/view/DraweeHolder;->onAttach()V

    :cond_1a
    return-void
.end method

.method public add(Lcom/facebook/drawee/view/DraweeHolder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/view/DraweeHolder<",
            "TDH;>;)V"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/facebook/drawee/view/MultiDraweeHolder;->add(ILcom/facebook/drawee/view/DraweeHolder;)V

    return-void
.end method

.method public clear()V
    .registers 3

    .line 82
    iget-boolean v0, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mIsAttached:Z

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    .line 83
    :goto_5
    iget-object v1, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 84
    iget-object v1, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/DraweeHolder;

    invoke-virtual {v1}, Lcom/facebook/drawee/view/DraweeHolder;->onDetach()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 87
    :cond_1b
    iget-object v0, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 4

    const/4 v0, 0x0

    .line 121
    :goto_1
    iget-object v1, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 122
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/view/MultiDraweeHolder;->get(I)Lcom/facebook/drawee/view/DraweeHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/drawee/view/DraweeHolder;->getTopLevelDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 124
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method public get(I)Lcom/facebook/drawee/view/DraweeHolder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/drawee/view/DraweeHolder<",
            "TDH;>;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/DraweeHolder;

    return-object p1
.end method

.method public onAttach()V
    .registers 3

    .line 47
    iget-boolean v0, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mIsAttached:Z

    if-eqz v0, :cond_5

    goto :goto_1f

    :cond_5
    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mIsAttached:Z

    const/4 v0, 0x0

    .line 51
    :goto_9
    iget-object v1, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 52
    iget-object v1, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/DraweeHolder;

    invoke-virtual {v1}, Lcom/facebook/drawee/view/DraweeHolder;->onAttach()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1f
    :goto_1f
    return-void
.end method

.method public onDetach()V
    .registers 3

    .line 63
    iget-boolean v0, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mIsAttached:Z

    if-nez v0, :cond_5

    goto :goto_1e

    :cond_5
    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mIsAttached:Z

    .line 67
    :goto_8
    iget-object v1, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 68
    iget-object v1, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/DraweeHolder;

    invoke-virtual {v1}, Lcom/facebook/drawee/view/DraweeHolder;->onDetach()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1e
    :goto_1e
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 73
    :goto_2
    iget-object v2, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 74
    iget-object v2, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/view/DraweeHolder;

    invoke-virtual {v2, p1}, Lcom/facebook/drawee/view/DraweeHolder;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1d
    return v0
.end method

.method public remove(I)V
    .registers 4

    .line 104
    iget-object v0, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/DraweeHolder;

    .line 105
    iget-boolean v1, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mIsAttached:Z

    if-eqz v1, :cond_f

    .line 106
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeHolder;->onDetach()V

    .line 108
    :cond_f
    iget-object v0, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 131
    :goto_2
    iget-object v2, p0, Lcom/facebook/drawee/view/MultiDraweeHolder;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 132
    invoke-virtual {p0, v1}, Lcom/facebook/drawee/view/MultiDraweeHolder;->get(I)Lcom/facebook/drawee/view/DraweeHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/drawee/view/DraweeHolder;->getTopLevelDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-ne p1, v2, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_19
    return v0
.end method
