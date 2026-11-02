###### Class com.facebook.drawee.generic.WrappingUtils (com.facebook.drawee.generic.WrappingUtils)
.class public Lcom/facebook/drawee/generic/WrappingUtils;
.super Ljava/lang/Object;
.source "WrappingUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WrappingUtils"

.field private static final sEmptyDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 54
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/facebook/drawee/generic/WrappingUtils;->sEmptyDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyLeafRounding(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 295
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1b

    .line 296
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 297
    new-instance v0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;

    .line 300
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 301
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    .line 302
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->getRepeatEdgePixels()Z

    move-result v2

    invoke-direct {v0, p2, v1, p0, v2}, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Paint;Z)V

    .line 303
    invoke-static {v0, p1}, Lcom/facebook/drawee/generic/WrappingUtils;->applyRoundingParams(Lcom/facebook/drawee/drawable/Rounded;Lcom/facebook/drawee/generic/RoundingParams;)V

    return-object v0

    .line 305
    :cond_1b
    instance-of p2, p0, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz p2, :cond_2a

    .line 306
    check-cast p0, Landroid/graphics/drawable/NinePatchDrawable;

    .line 307
    new-instance p2, Lcom/facebook/drawee/drawable/RoundedNinePatchDrawable;

    invoke-direct {p2, p0}, Lcom/facebook/drawee/drawable/RoundedNinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable;)V

    .line 309
    invoke-static {p2, p1}, Lcom/facebook/drawee/generic/WrappingUtils;->applyRoundingParams(Lcom/facebook/drawee/drawable/Rounded;Lcom/facebook/drawee/generic/RoundingParams;)V

    return-object p2

    .line 311
    :cond_2a
    instance-of p2, p0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz p2, :cond_38

    .line 312
    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    .line 313
    invoke-static {p0}, Lcom/facebook/drawee/drawable/RoundedColorDrawable;->fromColorDrawable(Landroid/graphics/drawable/ColorDrawable;)Lcom/facebook/drawee/drawable/RoundedColorDrawable;

    move-result-object p0

    .line 314
    invoke-static {p0, p1}, Lcom/facebook/drawee/generic/WrappingUtils;->applyRoundingParams(Lcom/facebook/drawee/drawable/Rounded;Lcom/facebook/drawee/generic/RoundingParams;)V

    return-object p0

    :cond_38
    const/4 p1, 0x1

    .line 317
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    const-string p2, "WrappingUtils"

    const-string v0, "Don\'t know how to round that drawable: %s"

    invoke-static {p2, v0, p1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method static applyRoundingParams(Lcom/facebook/drawee/drawable/Rounded;Lcom/facebook/drawee/generic/RoundingParams;)V
    .registers 4

    .line 324
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->getRoundAsCircle()Z

    move-result v0

    invoke-interface {p0, v0}, Lcom/facebook/drawee/drawable/Rounded;->setCircle(Z)V

    .line 325
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->getCornersRadii()[F

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/facebook/drawee/drawable/Rounded;->setRadii([F)V

    .line 326
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->getBorderColor()I

    move-result v0

    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->getBorderWidth()F

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/facebook/drawee/drawable/Rounded;->setBorder(IF)V

    .line 327
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->getPadding()F

    move-result v0

    invoke-interface {p0, v0}, Lcom/facebook/drawee/drawable/Rounded;->setPadding(F)V

    .line 328
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->getScaleDownInsideBorders()Z

    move-result v0

    invoke-interface {p0, v0}, Lcom/facebook/drawee/drawable/Rounded;->setScaleDownInsideBorders(Z)V

    .line 329
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->getPaintFilterBitmap()Z

    move-result v0

    invoke-interface {p0, v0}, Lcom/facebook/drawee/drawable/Rounded;->setPaintFilterBitmap(Z)V

    .line 330
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->getRepeatEdgePixels()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/facebook/drawee/drawable/Rounded;->setRepeatEdgePixels(Z)V

    return-void
.end method

.method static findDrawableParentForLeaf(Lcom/facebook/drawee/drawable/DrawableParent;)Lcom/facebook/drawee/drawable/DrawableParent;
    .registers 3

    .line 347
    :goto_0
    invoke-interface {p0}, Lcom/facebook/drawee/drawable/DrawableParent;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p0, :cond_f

    .line 348
    instance-of v1, v0, Lcom/facebook/drawee/drawable/DrawableParent;

    if-nez v1, :cond_b

    goto :goto_f

    .line 351
    :cond_b
    move-object p0, v0

    check-cast p0, Lcom/facebook/drawee/drawable/DrawableParent;

    goto :goto_0

    :cond_f
    :goto_f
    return-object p0
.end method

.method static maybeApplyLeafRounding(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/facebook/drawee/generic/RoundingParams;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 260
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 261
    const-string v0, "WrappingUtils#maybeApplyLeafRounding"

    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    :cond_b
    if-eqz p0, :cond_48

    if-eqz p1, :cond_48

    .line 265
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->getRoundingMethod()Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    move-result-object v0

    sget-object v1, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;->BITMAP_ONLY:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    if-eq v0, v1, :cond_18

    goto :goto_48

    .line 268
    :cond_18
    instance-of v0, p0, Lcom/facebook/drawee/drawable/ForwardingDrawable;

    if-eqz v0, :cond_3a

    .line 269
    move-object v0, p0

    check-cast v0, Lcom/facebook/drawee/drawable/ForwardingDrawable;

    invoke-static {v0}, Lcom/facebook/drawee/generic/WrappingUtils;->findDrawableParentForLeaf(Lcom/facebook/drawee/drawable/DrawableParent;)Lcom/facebook/drawee/drawable/DrawableParent;

    move-result-object v0

    .line 270
    sget-object v1, Lcom/facebook/drawee/generic/WrappingUtils;->sEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Lcom/facebook/drawee/drawable/DrawableParent;->setDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 272
    invoke-static {v1, p1, p2}, Lcom/facebook/drawee/generic/WrappingUtils;->applyLeafRounding(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 273
    invoke-interface {v0, p1}, Lcom/facebook/drawee/drawable/DrawableParent;->setDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_30
    .catchall {:try_start_0 .. :try_end_30} :catchall_52

    .line 279
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_51

    .line 280
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    return-object p0

    .line 276
    :cond_3a
    :try_start_3a
    invoke-static {p0, p1, p2}, Lcom/facebook/drawee/generic/WrappingUtils;->applyLeafRounding(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_52

    .line 279
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_47

    .line 280
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_47
    return-object p0

    .line 279
    :cond_48
    :goto_48
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_51

    .line 280
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_51
    return-object p0

    :catchall_52
    move-exception p0

    .line 279
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 280
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 282
    :cond_5c
    throw p0
.end method

.method static maybeWrapWithMatrix(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Matrix;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_b

    if-nez p1, :cond_5

    goto :goto_b

    .line 118
    :cond_5
    new-instance v0, Lcom/facebook/drawee/drawable/MatrixDrawable;

    invoke-direct {v0, p0, p1}, Lcom/facebook/drawee/drawable/MatrixDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;)V

    return-object v0

    :cond_b
    :goto_b
    return-object p0
.end method

.method static maybeWrapWithRoundedOverlayColor(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/facebook/drawee/generic/RoundingParams;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 220
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 221
    const-string v0, "WrappingUtils#maybeWrapWithRoundedOverlayColor"

    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    :cond_b
    if-eqz p0, :cond_31

    if-eqz p1, :cond_31

    .line 225
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->getRoundingMethod()Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    move-result-object v0

    sget-object v1, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;->OVERLAY_COLOR:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    if-eq v0, v1, :cond_18

    goto :goto_31

    .line 228
    :cond_18
    new-instance v0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;

    invoke-direct {v0, p0}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 229
    invoke-static {v0, p1}, Lcom/facebook/drawee/generic/WrappingUtils;->applyRoundingParams(Lcom/facebook/drawee/drawable/Rounded;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 230
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->getOverlayColor()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->setOverlayColor(I)V
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_3b

    .line 233
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p0

    if-eqz p0, :cond_30

    .line 234
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_30
    return-object v0

    .line 233
    :cond_31
    :goto_31
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 234
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_3a
    return-object p0

    :catchall_3b
    move-exception p0

    .line 233
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_45

    .line 234
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 236
    :cond_45
    throw p0
.end method

.method static maybeWrapWithScaleType(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 68
    invoke-static {p0, p1, v0}, Lcom/facebook/drawee/generic/WrappingUtils;->maybeWrapWithScaleType(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Landroid/graphics/PointF;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static maybeWrapWithScaleType(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Landroid/graphics/PointF;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/PointF;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 85
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 86
    const-string v0, "WrappingUtils#maybeWrapWithScaleType"

    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    :cond_b
    if-eqz p0, :cond_24

    if-nez p1, :cond_10

    goto :goto_24

    .line 94
    :cond_10
    new-instance v0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;

    invoke-direct {v0, p0, p1}, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;-><init>(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V

    if-eqz p2, :cond_1a

    .line 96
    invoke-virtual {v0, p2}, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->setFocusPoint(Landroid/graphics/PointF;)V

    .line 98
    :cond_1a
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p0

    if-eqz p0, :cond_23

    .line 99
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_23
    return-object v0

    .line 89
    :cond_24
    :goto_24
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 90
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_2d
    return-object p0
.end method

.method static resetRoundingParams(Lcom/facebook/drawee/drawable/Rounded;)V
    .registers 3

    const/4 v0, 0x0

    .line 335
    invoke-interface {p0, v0}, Lcom/facebook/drawee/drawable/Rounded;->setCircle(Z)V

    const/4 v1, 0x0

    .line 336
    invoke-interface {p0, v1}, Lcom/facebook/drawee/drawable/Rounded;->setRadius(F)V

    .line 337
    invoke-interface {p0, v0, v1}, Lcom/facebook/drawee/drawable/Rounded;->setBorder(IF)V

    .line 338
    invoke-interface {p0, v1}, Lcom/facebook/drawee/drawable/Rounded;->setPadding(F)V

    .line 339
    invoke-interface {p0, v0}, Lcom/facebook/drawee/drawable/Rounded;->setScaleDownInsideBorders(Z)V

    .line 340
    invoke-interface {p0, v0}, Lcom/facebook/drawee/drawable/Rounded;->setPaintFilterBitmap(Z)V

    .line 341
    invoke-static {}, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->getDefaultRepeatEdgePixels()Z

    move-result v0

    invoke-interface {p0, v0}, Lcom/facebook/drawee/drawable/Rounded;->setRepeatEdgePixels(Z)V

    return-void
.end method

.method static updateLeafRounding(Lcom/facebook/drawee/drawable/DrawableParent;Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;)V
    .registers 6
    .param p1    # Lcom/facebook/drawee/generic/RoundingParams;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 186
    invoke-static {p0}, Lcom/facebook/drawee/generic/WrappingUtils;->findDrawableParentForLeaf(Lcom/facebook/drawee/drawable/DrawableParent;)Lcom/facebook/drawee/drawable/DrawableParent;

    move-result-object p0

    .line 187
    invoke-interface {p0}, Lcom/facebook/drawee/drawable/DrawableParent;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p1, :cond_2b

    .line 189
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->getRoundingMethod()Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    move-result-object v1

    sget-object v2, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;->BITMAP_ONLY:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    if-ne v1, v2, :cond_2b

    .line 192
    instance-of v1, v0, Lcom/facebook/drawee/drawable/Rounded;

    if-eqz v1, :cond_1c

    .line 193
    check-cast v0, Lcom/facebook/drawee/drawable/Rounded;

    .line 194
    invoke-static {v0, p1}, Lcom/facebook/drawee/generic/WrappingUtils;->applyRoundingParams(Lcom/facebook/drawee/drawable/Rounded;Lcom/facebook/drawee/generic/RoundingParams;)V

    return-void

    :cond_1c
    if-eqz v0, :cond_34

    .line 197
    sget-object v1, Lcom/facebook/drawee/generic/WrappingUtils;->sEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {p0, v1}, Lcom/facebook/drawee/drawable/DrawableParent;->setDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 198
    invoke-static {v0, p1, p2}, Lcom/facebook/drawee/generic/WrappingUtils;->applyLeafRounding(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 199
    invoke-interface {p0, p1}, Lcom/facebook/drawee/drawable/DrawableParent;->setDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    return-void

    .line 201
    :cond_2b
    instance-of p0, v0, Lcom/facebook/drawee/drawable/Rounded;

    if-eqz p0, :cond_34

    .line 203
    check-cast v0, Lcom/facebook/drawee/drawable/Rounded;

    invoke-static {v0}, Lcom/facebook/drawee/generic/WrappingUtils;->resetRoundingParams(Lcom/facebook/drawee/drawable/Rounded;)V

    :cond_34
    return-void
.end method

.method static updateOverlayColorRounding(Lcom/facebook/drawee/drawable/DrawableParent;Lcom/facebook/drawee/generic/RoundingParams;)V
    .registers 5
    .param p1    # Lcom/facebook/drawee/generic/RoundingParams;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 146
    invoke-interface {p0}, Lcom/facebook/drawee/drawable/DrawableParent;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p1, :cond_2d

    .line 148
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->getRoundingMethod()Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    move-result-object v1

    sget-object v2, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;->OVERLAY_COLOR:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    if-ne v1, v2, :cond_2d

    .line 151
    instance-of v1, v0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;

    if-eqz v1, :cond_1f

    .line 152
    check-cast v0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;

    .line 153
    invoke-static {v0, p1}, Lcom/facebook/drawee/generic/WrappingUtils;->applyRoundingParams(Lcom/facebook/drawee/drawable/Rounded;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 154
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->getOverlayColor()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->setOverlayColor(I)V

    return-void

    .line 157
    :cond_1f
    sget-object v0, Lcom/facebook/drawee/generic/WrappingUtils;->sEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {p0, v0}, Lcom/facebook/drawee/drawable/DrawableParent;->setDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 158
    invoke-static {v0, p1}, Lcom/facebook/drawee/generic/WrappingUtils;->maybeWrapWithRoundedOverlayColor(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 159
    invoke-interface {p0, p1}, Lcom/facebook/drawee/drawable/DrawableParent;->setDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    return-void

    .line 161
    :cond_2d
    instance-of p1, v0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;

    if-eqz p1, :cond_40

    .line 163
    check-cast v0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;

    .line 165
    sget-object p1, Lcom/facebook/drawee/generic/WrappingUtils;->sEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->setCurrent(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 166
    invoke-interface {p0, v0}, Lcom/facebook/drawee/drawable/DrawableParent;->setDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    const/4 p0, 0x0

    .line 168
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_40
    return-void
.end method

.method static wrapChildWithScaleType(Lcom/facebook/drawee/drawable/DrawableParent;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/drawee/drawable/ScaleTypeDrawable;
    .registers 3

    .line 124
    sget-object v0, Lcom/facebook/drawee/generic/WrappingUtils;->sEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {p0, v0}, Lcom/facebook/drawee/drawable/DrawableParent;->setDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 125
    invoke-static {v0, p1}, Lcom/facebook/drawee/generic/WrappingUtils;->maybeWrapWithScaleType(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 126
    invoke-interface {p0, p1}, Lcom/facebook/drawee/drawable/DrawableParent;->setDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 127
    const-string p0, "Parent has no child drawable!"

    invoke-static {p1, p0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    check-cast p1, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;

    return-object p1
.end method
