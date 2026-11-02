###### Class io.dcloud.feature.uniapp.utils.UniBoxShadowUtil (io.dcloud.feature.uniapp.utils.UniBoxShadowUtil)
.class public Lio/dcloud/feature/uniapp/utils/UniBoxShadowUtil;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# static fields
.field private static final TAG:Ljava/lang/String; = "UniBoxShadowUtil"

.field private static sBoxShadowEnabled:Z = true

.field private static sColorPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static drawShadow(Landroid/graphics/Canvas;Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;FFF)V
    .registers 12

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;->viewWidth:I

    int-to-float v1, v1

    iget v2, p1, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;->spread:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iget v4, p1, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;->viewHeight:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 5
    iget v1, p1, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;->blur:F

    .line 7
    iget v4, p1, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;->hShadow:F

    cmpl-float v5, v4, v2

    if-ltz v5, :cond_20

    mul-float v4, v4, v3

    add-float/2addr v4, v1

    goto :goto_21

    :cond_20
    const/4 v4, 0x0

    .line 12
    :goto_21
    iget v5, p1, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;->vShadow:F

    cmpl-float v6, v5, v2

    if-ltz v6, :cond_2b

    mul-float v5, v5, v3

    add-float/2addr v1, v5

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    .line 17
    :goto_2c
    invoke-virtual {v0, v4, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 19
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 21
    new-instance v4, Landroid/graphics/RectF;

    iget v5, p1, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;->viewWidth:I

    int-to-float v5, v5

    iget v6, p1, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;->viewHeight:I

    int-to-float v6, v6

    invoke-direct {v4, v2, v2, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    cmpl-float v5, p2, v2

    if-lez v5, :cond_47

    mul-float p2, p2, p4

    div-float/2addr p2, v3

    goto :goto_48

    :cond_47
    const/4 p2, 0x0

    :goto_48
    cmpl-float v5, p3, v2

    if-lez v5, :cond_50

    mul-float p3, p3, p4

    div-float/2addr p3, v3

    goto :goto_51

    :cond_50
    const/4 p3, 0x0

    .line 32
    :goto_51
    invoke-virtual {v4, p3, p2}, Landroid/graphics/RectF;->offset(FF)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 33
    invoke-virtual {v4, p2, p2}, Landroid/graphics/RectF;->inset(FF)V

    .line 34
    iget-object p2, p1, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;->radii:[F

    sget-object p3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v4, p2, p3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 35
    sget-object p2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p0, v1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 37
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    const/4 p3, 0x1

    .line 38
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 39
    iget p3, p1, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;->color:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    iget p3, p1, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;->blur:F

    cmpl-float p3, p3, v2

    if-lez p3, :cond_8a

    .line 42
    new-instance p3, Landroid/graphics/BlurMaskFilter;

    iget p4, p1, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;->blur:F

    sget-object v1, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {p3, p4, v1}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 44
    :cond_8a
    iget-object p3, p1, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;->radii:[F

    const/4 p4, 0x0

    aget v1, p3, p4

    const/4 v3, 0x2

    .line 45
    aget v3, p3, v3

    cmpl-float v3, v1, v3

    if-nez v3, :cond_a8

    const/4 v3, 0x4

    aget v3, p3, v3

    cmpl-float v3, v1, v3

    if-nez v3, :cond_a8

    const/4 v3, 0x6

    aget p3, p3, v3

    cmpl-float p3, v1, p3

    if-nez p3, :cond_a8

    .line 46
    invoke-virtual {p0, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void

    .line 48
    :cond_a8
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    const/16 v1, 0x8

    .line 49
    new-array v1, v1, [F

    .line 50
    :goto_b1
    iget-object v3, p1, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;->radii:[F

    array-length v4, v3

    if-ge p4, v4, :cond_c7

    .line 51
    aget v3, v3, p4

    cmpl-float v4, v3, v2

    if-nez v4, :cond_bf

    .line 53
    aput v2, v1, p4

    goto :goto_c4

    .line 55
    :cond_bf
    iget v4, p1, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;->spread:F

    add-float/2addr v3, v4

    aput v3, v1, p4

    :goto_c4
    add-int/lit8 p4, p4, 0x1

    goto :goto_b1

    .line 58
    :cond_c7
    sget-object p1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p3, v0, v1, p1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 59
    invoke-virtual {p0, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public static getInsetBoxShadowDrawable(Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;)Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowLayer;
    .registers 13

    .line 1
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getInsetShadows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_c
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getInsetShadows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    .line 7
    :goto_17
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getInsetShadows()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4b

    .line 8
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getInsetShadows()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;

    .line 9
    new-instance v3, Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowDrawable;

    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getContentWidth()I

    move-result v4

    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getContentHeight()I

    move-result v5

    iget v6, v2, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;->hShadow:F

    iget v7, v2, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;->vShadow:F

    iget v8, v2, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;->blur:F

    iget v9, v2, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;->spread:F

    iget v10, v2, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;->color:I

    .line 12
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getRadii()[F

    move-result-object v11

    invoke-direct/range {v3 .. v11}, Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowDrawable;-><init>(IIFFFFI[F)V

    .line 13
    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 15
    :cond_4b
    new-instance p0, Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowLayer;

    invoke-direct {p0, v0}, Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowLayer;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public static getNormalBoxShadowDrawable(Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;Landroid/content/res/Resources;)Lio/dcloud/feature/uniapp/ui/shadow/UniNormalBoxShadowDrawable;
    .registers 9

    .line 1
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalShadows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_c
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getCanvasWidth()I

    move-result v0

    .line 5
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getCanvasHeight()I

    move-result v1

    .line 6
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Allocation memory for box-shadow: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v2

    div-int/lit16 v2, v2, 0x400

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " KB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UniBoxShadowUtil"

    invoke-static {v2, v1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 11
    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 12
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalShadows()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_75

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;

    .line 13
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getQuality()F

    move-result v4

    invoke-virtual {v3, v4}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;->scale(F)Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;

    move-result-object v3

    .line 14
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getQuality()F

    move-result v6

    invoke-static {v1, v3, v4, v5, v6}, Lio/dcloud/feature/uniapp/utils/UniBoxShadowUtil;->drawShadow(Landroid/graphics/Canvas;Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;FFF)V

    goto :goto_4f

    .line 16
    :cond_75
    new-instance p0, Lio/dcloud/feature/uniapp/ui/shadow/UniNormalBoxShadowDrawable;

    invoke-direct {p0, p1, v0}, Lio/dcloud/feature/uniapp/ui/shadow/UniNormalBoxShadowDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method public static isBoxShadowEnabled()Z
    .registers 1

    .line 1
    sget-boolean v0, Lio/dcloud/feature/uniapp/utils/UniBoxShadowUtil;->sBoxShadowEnabled:Z

    return v0
.end method

.method public static parseBoxShadow(IILjava/lang/String;[FFF)Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;
    .registers 14

    .line 1
    sget-boolean v0, Lio/dcloud/feature/uniapp/utils/UniBoxShadowUtil;->sBoxShadowEnabled:Z

    const/4 v1, 0x0

    const-string v2, "UniBoxShadowUtil"

    if-nez v0, :cond_d

    .line 2
    const-string p0, "box-shadow was disabled by config"

    invoke-static {v2, p0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 5
    :cond_d
    invoke-static {p2, p4}, Lio/dcloud/feature/uniapp/utils/UniBoxShadowUtil;->parseBoxShadows(Ljava/lang/String;F)[Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;

    move-result-object p4

    if-eqz p4, :cond_97

    .line 6
    array-length v0, p4

    if-nez v0, :cond_18

    goto/16 :goto_97

    .line 10
    :cond_18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    array-length v3, p4

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_25
    if-ge v5, v3, :cond_39

    aget-object v6, p4, v5

    if-eqz v6, :cond_36

    .line 14
    iget-boolean v7, v6, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;->isInset:Z

    if-eqz v7, :cond_33

    .line 15
    invoke-interface {v1, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_36

    .line 17
    :cond_33
    invoke-interface {v0, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_36
    :goto_36
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    :cond_39
    if-eqz p3, :cond_45

    .line 22
    array-length p4, p3

    const/16 v3, 0x8

    if-eq p4, v3, :cond_45

    .line 23
    const-string p4, "Length of radii must be 8"

    invoke-static {v2, p4}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_45
    new-instance p4, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    invoke-direct {p4, v0, v1, p3, p5}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;-><init>(Ljava/util/List;Ljava/util/List;[FF)V

    .line 27
    invoke-virtual {p4, p2}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->setStyle(Ljava/lang/String;)V

    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_90

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p5, 0x0

    const/4 v1, 0x0

    :cond_59
    :goto_59
    if-ge v4, p2, :cond_82

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    check-cast v2, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;

    .line 31
    iput p0, v2, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;->viewWidth:I

    .line 32
    iput p1, v2, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;->viewHeight:I

    .line 33
    iput-object p3, v2, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;->radii:[F

    .line 35
    invoke-virtual {v2}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;->getTargetCanvasRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 36
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ge v1, v3, :cond_77

    .line 37
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 40
    :cond_77
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ge p5, v3, :cond_59

    .line 41
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result p5

    goto :goto_59

    .line 44
    :cond_82
    invoke-virtual {p4, v1}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->setNormalMaxWidth(I)V

    .line 45
    invoke-virtual {p4, p5}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->setNormalMaxHeight(I)V

    sub-int/2addr v1, p0

    .line 47
    invoke-virtual {p4, v1}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->setNormalLeft(I)V

    sub-int/2addr p5, p1

    .line 48
    invoke-virtual {p4, p5}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->setNormalTop(I)V

    .line 50
    :cond_90
    invoke-virtual {p4, p1}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->setContentHeight(I)V

    .line 51
    invoke-virtual {p4, p0}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->setContentWidth(I)V

    return-object p4

    .line 52
    :cond_97
    :goto_97
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Failed to parse box-shadow: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static parseBoxShadow(Ljava/lang/String;F)Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;
    .registers 8

    .line 53
    new-instance v0, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;

    invoke-direct {v0, p1}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;-><init>(F)V

    .line 54
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    return-object v2

    .line 61
    :cond_d
    const-string v1, "\\s*,\\s+"

    const-string v3, ","

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 64
    const-string v1, "inset"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_26

    .line 65
    iput-boolean v4, v0, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;->isInset:Z

    .line 66
    const-string v3, ""

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 69
    :cond_26
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    const-string v3, "\\s+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 73
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v4

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 74
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_70

    .line 75
    const-string v3, "#"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_60

    const-string v3, "rgb"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_60

    invoke-static {p0}, Lcom/taobao/weex/utils/WXResourceUtils;->isNamedColor(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_70

    :cond_60
    const/high16 v3, -0x1000000

    .line 76
    invoke-static {p0, v3}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;->color:I

    .line 77
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v4

    invoke-interface {v1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 82
    :cond_70
    :try_start_70
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v3, 0x2

    if-ge p0, v3, :cond_78

    return-object v2

    :cond_78
    const/4 p0, 0x0

    .line 86
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v5, 0x0

    if-nez v2, :cond_a2

    .line 87
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 88
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result p0

    iput p0, v0, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;->hShadow:F

    .line 91
    :cond_a2
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_ca

    .line 92
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 93
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p0

    iput p0, v0, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;->vShadow:F

    .line 96
    :cond_ca
    :goto_ca
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v3, p0, :cond_e6

    add-int/lit8 p0, v3, -0x2

    .line 98
    iget-object p1, v0, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;->optionParamParsers:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions$IParser;

    .line 99
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions$IParser;->parse(Ljava/lang/String;)V
    :try_end_e3
    .catchall {:try_start_70 .. :try_end_e3} :catchall_e7

    add-int/lit8 v3, v3, 0x1

    goto :goto_ca

    :cond_e6
    return-object v0

    :catchall_e7
    move-exception p0

    .line 103
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static parseBoxShadows(Ljava/lang/String;F)[Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;
    .registers 8

    .line 1
    sget-object v0, Lio/dcloud/feature/uniapp/utils/UniBoxShadowUtil;->sColorPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_c

    .line 2
    const-string v0, "([rR][gG][bB][aA]?)\\((\\d+\\s*),\\s*(\\d+\\s*),\\s*(\\d+\\s*)(?:,\\s*(\\d+(?:\\.\\d+)?))?\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/dcloud/feature/uniapp/utils/UniBoxShadowUtil;->sColorPattern:Ljava/util/regex/Pattern;

    .line 5
    :cond_c
    sget-object v0, Lio/dcloud/feature/uniapp/utils/UniBoxShadowUtil;->sColorPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 8
    :goto_12
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4d

    .line 9
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/high16 v4, -0x1000000

    invoke-static {v1, v4}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v2

    const-string v2, "%8s"

    invoke-static {v2, v5}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\\s"

    const-string v5, "0"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_12

    .line 13
    :cond_4d
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6a

    .line 14
    array-length v0, p0

    if-lez v0, :cond_6a

    .line 15
    array-length v0, p0

    new-array v0, v0, [Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;

    .line 16
    :goto_5b
    array-length v1, p0

    if-ge v2, v1, :cond_69

    .line 17
    aget-object v1, p0, v2

    invoke-static {v1, p1}, Lio/dcloud/feature/uniapp/utils/UniBoxShadowUtil;->parseBoxShadow(Ljava/lang/String;F)Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowOptions;

    move-result-object v1

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    :cond_69
    return-object v0

    :cond_6a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static setBoxShadowEnabled(Z)V
    .registers 3

    .line 1
    sput-boolean p0, Lio/dcloud/feature/uniapp/utils/UniBoxShadowUtil;->sBoxShadowEnabled:Z

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Switch box-shadow status: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UniBoxShadowUtil"

    invoke-static {v0, p0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
