###### Class com.facebook.drawee.view.DraweeView (com.facebook.drawee.view.DraweeView)
.class public Lcom/facebook/drawee/view/DraweeView;
.super Landroid/widget/ImageView;
.source "DraweeView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DH::",
        "Lcom/facebook/drawee/interfaces/DraweeHierarchy;",
        ">",
        "Landroid/widget/ImageView;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static sGlobalLegacyVisibilityHandlingEnabled:Z = false


# instance fields
.field private mAspectRatio:F

.field private mDraweeHolder:Lcom/facebook/drawee/view/DraweeHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/drawee/view/DraweeHolder<",
            "TDH;>;"
        }
    .end annotation
.end field

.field private mExtraData:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mInitialised:Z

.field private mLegacyVisibilityHandlingEnabled:Z

.field private final mMeasureSpec:Lcom/facebook/drawee/view/AspectRatioMeasure$Spec;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Lcom/facebook/drawee/view/AspectRatioMeasure$Spec;

    invoke-direct {v0}, Lcom/facebook/drawee/view/AspectRatioMeasure$Spec;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->mMeasureSpec:Lcom/facebook/drawee/view/AspectRatioMeasure$Spec;

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/facebook/drawee/view/DraweeView;->mAspectRatio:F

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/facebook/drawee/view/DraweeView;->mInitialised:Z

    .line 51
    iput-boolean v0, p0, Lcom/facebook/drawee/view/DraweeView;->mLegacyVisibilityHandlingEnabled:Z

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->mExtraData:Ljava/lang/Object;

    .line 64
    invoke-direct {p0, p1}, Lcom/facebook/drawee/view/DraweeView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance p2, Lcom/facebook/drawee/view/AspectRatioMeasure$Spec;

    invoke-direct {p2}, Lcom/facebook/drawee/view/AspectRatioMeasure$Spec;-><init>()V

    iput-object p2, p0, Lcom/facebook/drawee/view/DraweeView;->mMeasureSpec:Lcom/facebook/drawee/view/AspectRatioMeasure$Spec;

    const/4 p2, 0x0

    .line 48
    iput p2, p0, Lcom/facebook/drawee/view/DraweeView;->mAspectRatio:F

    const/4 p2, 0x0

    .line 50
    iput-boolean p2, p0, Lcom/facebook/drawee/view/DraweeView;->mInitialised:Z

    .line 51
    iput-boolean p2, p0, Lcom/facebook/drawee/view/DraweeView;->mLegacyVisibilityHandlingEnabled:Z

    const/4 p2, 0x0

    .line 55
    iput-object p2, p0, Lcom/facebook/drawee/view/DraweeView;->mExtraData:Ljava/lang/Object;

    .line 69
    invoke-direct {p0, p1}, Lcom/facebook/drawee/view/DraweeView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance p2, Lcom/facebook/drawee/view/AspectRatioMeasure$Spec;

    invoke-direct {p2}, Lcom/facebook/drawee/view/AspectRatioMeasure$Spec;-><init>()V

    iput-object p2, p0, Lcom/facebook/drawee/view/DraweeView;->mMeasureSpec:Lcom/facebook/drawee/view/AspectRatioMeasure$Spec;

    const/4 p2, 0x0

    .line 48
    iput p2, p0, Lcom/facebook/drawee/view/DraweeView;->mAspectRatio:F

    const/4 p2, 0x0

    .line 50
    iput-boolean p2, p0, Lcom/facebook/drawee/view/DraweeView;->mInitialised:Z

    .line 51
    iput-boolean p2, p0, Lcom/facebook/drawee/view/DraweeView;->mLegacyVisibilityHandlingEnabled:Z

    const/4 p2, 0x0

    .line 55
    iput-object p2, p0, Lcom/facebook/drawee/view/DraweeView;->mExtraData:Ljava/lang/Object;

    .line 74
    invoke-direct {p0, p1}, Lcom/facebook/drawee/view/DraweeView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    new-instance p2, Lcom/facebook/drawee/view/AspectRatioMeasure$Spec;

    invoke-direct {p2}, Lcom/facebook/drawee/view/AspectRatioMeasure$Spec;-><init>()V

    iput-object p2, p0, Lcom/facebook/drawee/view/DraweeView;->mMeasureSpec:Lcom/facebook/drawee/view/AspectRatioMeasure$Spec;

    const/4 p2, 0x0

    .line 48
    iput p2, p0, Lcom/facebook/drawee/view/DraweeView;->mAspectRatio:F

    const/4 p2, 0x0

    .line 50
    iput-boolean p2, p0, Lcom/facebook/drawee/view/DraweeView;->mInitialised:Z

    .line 51
    iput-boolean p2, p0, Lcom/facebook/drawee/view/DraweeView;->mLegacyVisibilityHandlingEnabled:Z

    const/4 p2, 0x0

    .line 55
    iput-object p2, p0, Lcom/facebook/drawee/view/DraweeView;->mExtraData:Ljava/lang/Object;

    .line 80
    invoke-direct {p0, p1}, Lcom/facebook/drawee/view/DraweeView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 4

    .line 86
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 87
    const-string v0, "DraweeView#init"

    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 89
    :cond_b
    iget-boolean v0, p0, Lcom/facebook/drawee/view/DraweeView;->mInitialised:Z
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_56

    if-eqz v0, :cond_19

    .line 107
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_55

    .line 108
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    return-void

    :cond_19
    const/4 v0, 0x1

    .line 92
    :try_start_1a
    iput-boolean v0, p0, Lcom/facebook/drawee/view/DraweeView;->mInitialised:Z

    const/4 v1, 0x0

    .line 93
    invoke-static {v1, p1}, Lcom/facebook/drawee/view/DraweeHolder;->create(Lcom/facebook/drawee/interfaces/DraweeHierarchy;Landroid/content/Context;)Lcom/facebook/drawee/view/DraweeHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/drawee/view/DraweeView;->mDraweeHolder:Lcom/facebook/drawee/view/DraweeHolder;

    .line 95
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v1
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_56

    if-nez v1, :cond_33

    .line 107
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_55

    .line 108
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    return-void

    .line 99
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/facebook/drawee/view/DraweeView;->setColorFilter(I)V

    .line 103
    sget-boolean v1, Lcom/facebook/drawee/view/DraweeView;->sGlobalLegacyVisibilityHandlingEnabled:Z

    if-eqz v1, :cond_49

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x18

    if-lt p1, v1, :cond_49

    goto :goto_4a

    :cond_49
    const/4 v0, 0x0

    :goto_4a
    iput-boolean v0, p0, Lcom/facebook/drawee/view/DraweeView;->mLegacyVisibilityHandlingEnabled:Z
    :try_end_4c
    .catchall {:try_start_33 .. :try_end_4c} :catchall_56

    .line 107
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_55

    .line 108
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_55
    return-void

    :catchall_56
    move-exception p1

    .line 107
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 108
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 110
    :cond_60
    throw p1
.end method

.method private maybeOverrideVisibilityHandling()V
    .registers 4

    .line 318
    iget-boolean v0, p0, Lcom/facebook/drawee/view/DraweeView;->mLegacyVisibilityHandlingEnabled:Z

    if-eqz v0, :cond_17

    .line 319
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 321
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_17
    return-void
.end method

.method public static setGlobalLegacyVisibilityHandlingEnabled(Z)V
    .registers 1

    .line 59
    sput-boolean p0, Lcom/facebook/drawee/view/DraweeView;->sGlobalLegacyVisibilityHandlingEnabled:Z

    return-void
.end method


# virtual methods
.method protected doAttach()V
    .registers 2

    .line 208
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->mDraweeHolder:Lcom/facebook/drawee/view/DraweeHolder;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeHolder;->onAttach()V

    return-void
.end method

.method protected doDetach()V
    .registers 2

    .line 217
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->mDraweeHolder:Lcom/facebook/drawee/view/DraweeHolder;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeHolder;->onDetach()V

    return-void
.end method

.method public getAspectRatio()F
    .registers 2

    .line 291
    iget v0, p0, Lcom/facebook/drawee/view/DraweeView;->mAspectRatio:F

    return v0
.end method

.method public getController()Lcom/facebook/drawee/interfaces/DraweeController;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->mDraweeHolder:Lcom/facebook/drawee/view/DraweeHolder;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeHolder;->getController()Lcom/facebook/drawee/interfaces/DraweeController;

    move-result-object v0

    return-object v0
.end method

.method public getExtraData()Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->mExtraData:Ljava/lang/Object;

    return-object v0
.end method

.method public getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDH;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->mDraweeHolder:Lcom/facebook/drawee/view/DraweeHolder;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeHolder;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object v0

    return-object v0
.end method

.method public getTopLevelDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->mDraweeHolder:Lcom/facebook/drawee/view/DraweeHolder;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeHolder;->getTopLevelDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public hasController()Z
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->mDraweeHolder:Lcom/facebook/drawee/view/DraweeHolder;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeHolder;->getController()Lcom/facebook/drawee/interfaces/DraweeController;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public hasHierarchy()Z
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->mDraweeHolder:Lcom/facebook/drawee/view/DraweeHolder;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeHolder;->hasHierarchy()Z

    move-result v0

    return v0
.end method

.method protected onAttach()V
    .registers 1

    .line 194
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->doAttach()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .line 166
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 167
    invoke-direct {p0}, Lcom/facebook/drawee/view/DraweeView;->maybeOverrideVisibilityHandling()V

    .line 168
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->onAttach()V

    return-void
.end method

.method protected onDetach()V
    .registers 1

    .line 199
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->doDetach()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .line 173
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 174
    invoke-direct {p0}, Lcom/facebook/drawee/view/DraweeView;->maybeOverrideVisibilityHandling()V

    .line 175
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->onDetach()V

    return-void
.end method

.method public onFinishTemporaryDetach()V
    .registers 1

    .line 187
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishTemporaryDetach()V

    .line 188
    invoke-direct {p0}, Lcom/facebook/drawee/view/DraweeView;->maybeOverrideVisibilityHandling()V

    .line 189
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->onAttach()V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    .line 300
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->mMeasureSpec:Lcom/facebook/drawee/view/AspectRatioMeasure$Spec;

    iput p1, v0, Lcom/facebook/drawee/view/AspectRatioMeasure$Spec;->width:I

    .line 301
    iget-object p1, p0, Lcom/facebook/drawee/view/DraweeView;->mMeasureSpec:Lcom/facebook/drawee/view/AspectRatioMeasure$Spec;

    iput p2, p1, Lcom/facebook/drawee/view/AspectRatioMeasure$Spec;->height:I

    .line 302
    iget-object p1, p0, Lcom/facebook/drawee/view/DraweeView;->mMeasureSpec:Lcom/facebook/drawee/view/AspectRatioMeasure$Spec;

    iget p2, p0, Lcom/facebook/drawee/view/DraweeView;->mAspectRatio:F

    .line 305
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 306
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 307
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 302
    invoke-static {p1, p2, v0, v1, v2}, Lcom/facebook/drawee/view/AspectRatioMeasure;->updateMeasureSpec(Lcom/facebook/drawee/view/AspectRatioMeasure$Spec;FLandroid/view/ViewGroup$LayoutParams;II)V

    .line 308
    iget-object p1, p0, Lcom/facebook/drawee/view/DraweeView;->mMeasureSpec:Lcom/facebook/drawee/view/AspectRatioMeasure$Spec;

    iget p1, p1, Lcom/facebook/drawee/view/AspectRatioMeasure$Spec;->width:I

    iget-object p2, p0, Lcom/facebook/drawee/view/DraweeView;->mMeasureSpec:Lcom/facebook/drawee/view/AspectRatioMeasure$Spec;

    iget p2, p2, Lcom/facebook/drawee/view/AspectRatioMeasure$Spec;->height:I

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void
.end method

.method public onStartTemporaryDetach()V
    .registers 1

    .line 180
    invoke-super {p0}, Landroid/widget/ImageView;->onStartTemporaryDetach()V

    .line 181
    invoke-direct {p0}, Lcom/facebook/drawee/view/DraweeView;->maybeOverrideVisibilityHandling()V

    .line 182
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->onDetach()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 222
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->mDraweeHolder:Lcom/facebook/drawee/view/DraweeHolder;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/DraweeHolder;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x1

    return p1

    .line 225
    :cond_a
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    .line 313
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 314
    invoke-direct {p0}, Lcom/facebook/drawee/view/DraweeView;->maybeOverrideVisibilityHandling()V

    return-void
.end method

.method public resetActualImage()V
    .registers 2

    const/4 v0, 0x0

    .line 161
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/view/DraweeView;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    return-void
.end method

.method public setAspectRatio(F)V
    .registers 3

    .line 282
    iget v0, p0, Lcom/facebook/drawee/view/DraweeView;->mAspectRatio:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_7

    return-void

    .line 285
    :cond_7
    iput p1, p0, Lcom/facebook/drawee/view/DraweeView;->mAspectRatio:F

    .line 286
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->requestLayout()V

    return-void
.end method

.method public setController(Lcom/facebook/drawee/interfaces/DraweeController;)V
    .registers 3
    .param p1    # Lcom/facebook/drawee/interfaces/DraweeController;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 145
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->mDraweeHolder:Lcom/facebook/drawee/view/DraweeHolder;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/DraweeHolder;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    .line 146
    iget-object p1, p0, Lcom/facebook/drawee/view/DraweeView;->mDraweeHolder:Lcom/facebook/drawee/view/DraweeHolder;

    invoke-virtual {p1}, Lcom/facebook/drawee/view/DraweeHolder;->getTopLevelDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setExtraData(Ljava/lang/Object;)V
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 114
    iput-object p1, p0, Lcom/facebook/drawee/view/DraweeView;->mExtraData:Ljava/lang/Object;

    return-void
.end method

.method public setHierarchy(Lcom/facebook/drawee/interfaces/DraweeHierarchy;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDH;)V"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->mDraweeHolder:Lcom/facebook/drawee/view/DraweeHolder;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/DraweeHolder;->setHierarchy(Lcom/facebook/drawee/interfaces/DraweeHierarchy;)V

    .line 124
    iget-object p1, p0, Lcom/facebook/drawee/view/DraweeView;->mDraweeHolder:Lcom/facebook/drawee/view/DraweeHolder;

    invoke-virtual {p1}, Lcom/facebook/drawee/view/DraweeHolder;->getTopLevelDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 249
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/drawee/view/DraweeView;->init(Landroid/content/Context;)V

    .line 250
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->mDraweeHolder:Lcom/facebook/drawee/view/DraweeHolder;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeHolder;->resetActualImage()V

    .line 251
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 236
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/drawee/view/DraweeView;->init(Landroid/content/Context;)V

    .line 237
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->mDraweeHolder:Lcom/facebook/drawee/view/DraweeHolder;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeHolder;->resetActualImage()V

    .line 238
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 262
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/drawee/view/DraweeView;->init(Landroid/content/Context;)V

    .line 263
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->mDraweeHolder:Lcom/facebook/drawee/view/DraweeHolder;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeHolder;->resetActualImage()V

    .line 264
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 275
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/drawee/view/DraweeView;->init(Landroid/content/Context;)V

    .line 276
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->mDraweeHolder:Lcom/facebook/drawee/view/DraweeHolder;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeHolder;->resetActualImage()V

    .line 277
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setLegacyVisibilityHandlingEnabled(Z)V
    .registers 2

    .line 295
    iput-boolean p1, p0, Lcom/facebook/drawee/view/DraweeView;->mLegacyVisibilityHandlingEnabled:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 328
    invoke-static {p0}, Lcom/facebook/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 329
    iget-object v1, p0, Lcom/facebook/drawee/view/DraweeView;->mDraweeHolder:Lcom/facebook/drawee/view/DraweeHolder;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/facebook/drawee/view/DraweeHolder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    :cond_d
    const-string v1, "<no holder set>"

    :goto_f
    const-string v2, "holder"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Lcom/facebook/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
