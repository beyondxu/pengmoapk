###### Class com.facebook.drawee.drawable.RoundedCornersDrawable (com.facebook.drawee.drawable.RoundedCornersDrawable)
.class public Lcom/facebook/drawee/drawable/RoundedCornersDrawable;
.super Lcom/facebook/drawee/drawable/ForwardingDrawable;
.source "RoundedCornersDrawable.java"

# interfaces
.implements Lcom/facebook/drawee/drawable/Rounded;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;
    }
.end annotation


# instance fields
.field private mBorderColor:I

.field private final mBorderPath:Landroid/graphics/Path;

.field final mBorderRadii:[F

.field private mBorderWidth:F

.field private final mBounds:Landroid/graphics/RectF;

.field private mInsideBorderBounds:Landroid/graphics/RectF;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mInsideBorderTransform:Landroid/graphics/Matrix;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mIsCircle:Z

.field private mOverlayColor:I

.field private mPadding:F

.field final mPaint:Landroid/graphics/Paint;

.field private mPaintFilterBitmap:Z

.field private final mPath:Landroid/graphics/Path;

.field private final mRadii:[F

.field private mScaleDownInsideBorders:Z

.field private final mTempRectangle:Landroid/graphics/RectF;

.field mType:Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 64
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/facebook/drawee/drawable/ForwardingDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 40
    sget-object p1, Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;->OVERLAY_COLOR:Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;

    iput-object p1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mType:Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;

    .line 41
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBounds:Landroid/graphics/RectF;

    const/16 p1, 0x8

    .line 44
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mRadii:[F

    .line 45
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBorderRadii:[F

    .line 46
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 47
    iput-boolean p1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mIsCircle:Z

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBorderWidth:F

    .line 49
    iput p1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBorderColor:I

    .line 50
    iput p1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mOverlayColor:I

    .line 51
    iput v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mPadding:F

    .line 52
    iput-boolean p1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mScaleDownInsideBorders:Z

    .line 53
    iput-boolean p1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mPaintFilterBitmap:Z

    .line 54
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mPath:Landroid/graphics/Path;

    .line 55
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBorderPath:Landroid/graphics/Path;

    .line 56
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mTempRectangle:Landroid/graphics/RectF;

    return-void
.end method

.method private updatePath()V
    .registers 7

    .line 238
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 239
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBorderPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 240
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mTempRectangle:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 242
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mTempRectangle:Landroid/graphics/RectF;

    iget v1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mPadding:F

    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 243
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mType:Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;

    sget-object v1, Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;->OVERLAY_COLOR:Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;

    if-ne v0, v1, :cond_29

    .line 244
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mTempRectangle:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 246
    :cond_29
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mIsCircle:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_54

    .line 247
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mTempRectangle:Landroid/graphics/RectF;

    .line 248
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mTempRectangle:Landroid/graphics/RectF;

    .line 249
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget-object v4, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mTempRectangle:Landroid/graphics/RectF;

    .line 250
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mTempRectangle:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float/2addr v4, v1

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 247
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_5f

    .line 253
    :cond_54
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mTempRectangle:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mRadii:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 255
    :goto_5f
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mTempRectangle:Landroid/graphics/RectF;

    iget v2, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mPadding:F

    neg-float v3, v2

    neg-float v2, v2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 257
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mTempRectangle:Landroid/graphics/RectF;

    iget v2, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBorderWidth:F

    div-float v3, v2, v1

    div-float/2addr v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 258
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mIsCircle:Z

    if-eqz v0, :cond_9b

    .line 259
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mTempRectangle:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mTempRectangle:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v1

    .line 260
    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBorderPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mTempRectangle:Landroid/graphics/RectF;

    .line 261
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mTempRectangle:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 260
    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_ba

    :cond_9b
    const/4 v0, 0x0

    .line 263
    :goto_9c
    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBorderRadii:[F

    array-length v3, v2

    if-ge v0, v3, :cond_b1

    .line 264
    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mRadii:[F

    aget v3, v3, v0

    iget v4, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mPadding:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBorderWidth:F

    div-float/2addr v4, v1

    sub-float/2addr v3, v4

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9c

    .line 266
    :cond_b1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBorderPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mTempRectangle:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v2, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 268
    :goto_ba
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mTempRectangle:Landroid/graphics/RectF;

    iget v2, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBorderWidth:F

    neg-float v3, v2

    div-float/2addr v3, v1

    neg-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/graphics/RectF;->inset(FF)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 11

    .line 273
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 274
    sget-object v1, Lcom/facebook/drawee/drawable/RoundedCornersDrawable$1;->$SwitchMap$com$facebook$drawee$drawable$RoundedCornersDrawable$Type:[I

    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mType:Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;

    invoke-virtual {v2}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_122

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1b

    goto/16 :goto_131

    .line 282
    :cond_1b
    iget-boolean v1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mScaleDownInsideBorders:Z

    if-eqz v1, :cond_62

    .line 283
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mInsideBorderBounds:Landroid/graphics/RectF;

    if-nez v1, :cond_34

    .line 284
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mInsideBorderBounds:Landroid/graphics/RectF;

    .line 285
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mInsideBorderTransform:Landroid/graphics/Matrix;

    goto :goto_39

    .line 287
    :cond_34
    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 289
    :goto_39
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mInsideBorderBounds:Landroid/graphics/RectF;

    iget v2, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBorderWidth:F

    invoke-virtual {v1, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 290
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mInsideBorderTransform:Landroid/graphics/Matrix;

    if-eqz v1, :cond_4d

    .line 291
    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mInsideBorderBounds:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 295
    :cond_4d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 296
    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 297
    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mInsideBorderTransform:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 298
    invoke-super/range {p0 .. p1}, Lcom/facebook/drawee/drawable/ForwardingDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 299
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_65

    .line 301
    :cond_62
    invoke-super/range {p0 .. p1}, Lcom/facebook/drawee/drawable/ForwardingDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 304
    :goto_65
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 305
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mOverlayColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 306
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 307
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->getPaintFilterBitmap()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 308
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 309
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 311
    iget-boolean v1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mIsCircle:Z

    if-eqz v1, :cond_131

    .line 314
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBorderWidth:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v7, v1, v2

    .line 315
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBorderWidth:F

    add-float/2addr v1, v3

    div-float v8, v1, v2

    cmpl-float v1, v7, v6

    if-lez v1, :cond_ed

    .line 317
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v7

    iget-object v4, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 319
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float v1, v0, v7

    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBounds:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBounds:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_ed
    cmpl-float v0, v8, v6

    if-lez v0, :cond_131

    .line 323
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBounds:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float v4, v0, v8

    iget-object v5, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 325
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v2, v0, v8

    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBounds:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBounds:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_131

    .line 276
    :cond_122
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 277
    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 278
    invoke-super/range {p0 .. p1}, Lcom/facebook/drawee/drawable/ForwardingDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 279
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 332
    :cond_131
    :goto_131
    iget v1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBorderColor:I

    if-eqz v1, :cond_158

    .line 333
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 334
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBorderColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 335
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBorderWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 336
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 337
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBorderPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_158
    return-void
.end method

.method public getBorderColor()I
    .registers 2

    .line 164
    iget v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBorderColor:I

    return v0
.end method

.method public getBorderWidth()F
    .registers 2

    .line 170
    iget v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBorderWidth:F

    return v0
.end method

.method public getOverlayColor()I
    .registers 2

    .line 144
    iget v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mOverlayColor:I

    return v0
.end method

.method public getPadding()F
    .registers 2

    .line 183
    iget v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mPadding:F

    return v0
.end method

.method public getPaintFilterBitmap()Z
    .registers 2

    .line 223
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mPaintFilterBitmap:Z

    return v0
.end method

.method public getRadii()[F
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mRadii:[F

    return-object v0
.end method

.method public getScaleDownInsideBorders()Z
    .registers 2

    .line 201
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mScaleDownInsideBorders:Z

    return v0
.end method

.method public isCircle()Z
    .registers 2

    .line 93
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mIsCircle:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 2

    .line 233
    invoke-super {p0, p1}, Lcom/facebook/drawee/drawable/ForwardingDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 234
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->updatePath()V

    return-void
.end method

.method public setBorder(IF)V
    .registers 3

    .line 155
    iput p1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBorderColor:I

    .line 156
    iput p2, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mBorderWidth:F

    .line 157
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->updatePath()V

    .line 158
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->invalidateSelf()V

    return-void
.end method

.method public setCircle(Z)V
    .registers 2

    .line 85
    iput-boolean p1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mIsCircle:Z

    .line 86
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->updatePath()V

    .line 87
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->invalidateSelf()V

    return-void
.end method

.method public setOverlayColor(I)V
    .registers 2

    .line 138
    iput p1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mOverlayColor:I

    .line 139
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->invalidateSelf()V

    return-void
.end method

.method public setPadding(F)V
    .registers 2

    .line 175
    iput p1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mPadding:F

    .line 176
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->updatePath()V

    .line 177
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->invalidateSelf()V

    return-void
.end method

.method public setPaintFilterBitmap(Z)V
    .registers 3

    .line 214
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mPaintFilterBitmap:Z

    if-eq v0, p1, :cond_9

    .line 215
    iput-boolean p1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mPaintFilterBitmap:Z

    .line 216
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->invalidateSelf()V

    :cond_9
    return-void
.end method

.method public setRadii([F)V
    .registers 6

    if-nez p1, :cond_9

    .line 117
    iget-object p1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mRadii:[F

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([FF)V

    goto :goto_1c

    .line 119
    :cond_9
    array-length v0, p1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    const-string v3, "radii should have exactly 8 values"

    invoke-static {v0, v3}, Lcom/facebook/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mRadii:[F

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    :goto_1c
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->updatePath()V

    .line 123
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->invalidateSelf()V

    return-void
.end method

.method public setRadius(F)V
    .registers 3

    .line 103
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mRadii:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([FF)V

    .line 104
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->updatePath()V

    .line 105
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->invalidateSelf()V

    return-void
.end method

.method public setRepeatEdgePixels(Z)V
    .registers 2

    return-void
.end method

.method public setScaleDownInsideBorders(Z)V
    .registers 2

    .line 193
    iput-boolean p1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mScaleDownInsideBorders:Z

    .line 194
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->updatePath()V

    .line 195
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->invalidateSelf()V

    return-void
.end method

.method public setType(Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->mType:Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;

    .line 74
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->updatePath()V

    .line 75
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->invalidateSelf()V

    return-void
.end method

###### Class com.facebook.drawee.drawable.RoundedCornersDrawable.AnonymousClass1 (com.facebook.drawee.drawable.RoundedCornersDrawable$1)
.class synthetic Lcom/facebook/drawee/drawable/RoundedCornersDrawable$1;
.super Ljava/lang/Object;
.source "RoundedCornersDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/drawable/RoundedCornersDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$facebook$drawee$drawable$RoundedCornersDrawable$Type:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 274
    invoke-static {}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;->values()[Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable$1;->$SwitchMap$com$facebook$drawee$drawable$RoundedCornersDrawable$Type:[I

    :try_start_9
    sget-object v1, Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;->CLIPPING:Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;

    invoke-virtual {v1}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable$1;->$SwitchMap$com$facebook$drawee$drawable$RoundedCornersDrawable$Type:[I

    sget-object v1, Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;->OVERLAY_COLOR:Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;

    invoke-virtual {v1}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method

###### Class com.facebook.drawee.drawable.RoundedCornersDrawable.Type (com.facebook.drawee.drawable.RoundedCornersDrawable$Type)
.class public final enum Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;
.super Ljava/lang/Enum;
.source "RoundedCornersDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/drawable/RoundedCornersDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;

.field public static final enum CLIPPING:Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;

.field public static final enum OVERLAY_COLOR:Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 34
    new-instance v0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;

    const-string v1, "OVERLAY_COLOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;->OVERLAY_COLOR:Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;

    .line 37
    new-instance v1, Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;

    const-string v3, "CLIPPING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;->CLIPPING:Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;

    const/4 v3, 0x2

    .line 28
    new-array v3, v3, [Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;->$VALUES:[Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;
    .registers 2

    .line 28
    const-class v0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;

    return-object p0
.end method

.method public static values()[Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;
    .registers 1

    .line 28
    sget-object v0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;->$VALUES:[Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;

    invoke-virtual {v0}, [Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/drawee/drawable/RoundedCornersDrawable$Type;

    return-object v0
.end method
