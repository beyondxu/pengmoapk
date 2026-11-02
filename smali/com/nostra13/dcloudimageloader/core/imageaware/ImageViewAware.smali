###### Class com.nostra13.dcloudimageloader.core.imageaware.ImageViewAware (com.nostra13.dcloudimageloader.core.imageaware.ImageViewAware)
.class public Lcom/nostra13/dcloudimageloader/core/imageaware/ImageViewAware;
.super Ljava/lang/Object;
.source "ImageViewAware.java"

# interfaces
.implements Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;


# instance fields
.field protected checkActualViewSize:Z

.field protected imageViewRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .registers 3

    const/4 v0, 0x1

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Z)V
    .registers 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageViewAware;->imageViewRef:Ljava/lang/ref/Reference;

    .line 28
    iput-boolean p2, p0, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageViewAware;->checkActualViewSize:Z

    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 6

    .line 56
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageViewAware;->imageViewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    .line 58
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 60
    iget-boolean v3, p0, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageViewAware;->checkActualViewSize:Z

    if-eqz v3, :cond_1f

    if-eqz v2, :cond_1f

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_1f

    .line 61
    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    goto :goto_20

    :cond_1f
    const/4 v3, 0x0

    :goto_20
    if-gtz v3, :cond_26

    if-eqz v2, :cond_26

    .line 65
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_26
    if-gtz v3, :cond_2c

    .line 69
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMaxHeight()I

    move-result v3

    .line 72
    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "height = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/dcloudimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_40
    return v1
.end method

.method public getId()I
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageViewAware;->imageViewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_f

    .line 94
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_f
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public getScaleType()Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageViewAware;->imageViewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    .line 81
    invoke-static {v0}, Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;->fromImageView(Landroid/widget/ImageView;)Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidth()I
    .registers 6

    .line 32
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageViewAware;->imageViewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_41

    .line 34
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 36
    iget-boolean v3, p0, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageViewAware;->checkActualViewSize:Z

    if-eqz v3, :cond_1f

    if-eqz v2, :cond_1f

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_1f

    .line 37
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    goto :goto_20

    :cond_1f
    const/4 v3, 0x0

    :goto_20
    if-gtz v3, :cond_26

    if-eqz v2, :cond_26

    .line 41
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_26
    if-gtz v3, :cond_2c

    .line 45
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMaxWidth()I

    move-result v3

    .line 48
    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "width = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/dcloudimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_41
    return v1
.end method

.method public bridge synthetic getWrappedView()Landroid/view/View;
    .registers 2

    .line 18
    invoke-virtual {p0}, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageViewAware;->getWrappedView()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getWrappedView()Landroid/widget/ImageView;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageViewAware;->imageViewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public isCollected()Z
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageViewAware;->imageViewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)Z
    .registers 3

    .line 108
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageViewAware;->imageViewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    .line 110
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .line 98
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageViewAware;->imageViewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    .line 100
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method
