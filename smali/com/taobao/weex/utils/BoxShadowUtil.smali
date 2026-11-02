###### Class com.taobao.weex.utils.BoxShadowUtil (com.taobao.weex.utils.BoxShadowUtil)
.class public Lcom/taobao/weex/utils/BoxShadowUtil;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;,
        Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;,
        Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BoxShadowUtil"

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

.method static synthetic access$000(Landroid/view/View;Ljava/util/List;F[F)V
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/taobao/weex/utils/BoxShadowUtil;->setNormalBoxShadow(Landroid/view/View;Ljava/util/List;F[F)V

    return-void
.end method

.method static synthetic access$100(Landroid/view/View;Ljava/util/List;F[F)V
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/taobao/weex/utils/BoxShadowUtil;->setInsetBoxShadow(Landroid/view/View;Ljava/util/List;F[F)V

    return-void
.end method

.method private static drawShadow(Landroid/graphics/Canvas;Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;)V
    .registers 10

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewWidth:I

    int-to-float v1, v1

    iget v2, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->spread:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iget v4, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewHeight:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 6
    iget-object v1, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->topLeft:Landroid/graphics/PointF;

    if-eqz v1, :cond_1f

    .line 7
    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v4, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 10
    :cond_1f
    iget v1, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    .line 12
    iget v4, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->hShadow:F

    cmpl-float v5, v4, v2

    if-lez v5, :cond_2b

    mul-float v4, v4, v3

    add-float/2addr v4, v1

    goto :goto_2c

    :cond_2b
    move v4, v1

    .line 15
    :goto_2c
    iget v5, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->vShadow:F

    cmpl-float v6, v5, v2

    if-lez v6, :cond_35

    mul-float v5, v5, v3

    add-float/2addr v1, v5

    .line 18
    :cond_35
    invoke-virtual {v0, v4, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 20
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    .line 21
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 22
    iget v3, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->color:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    iget v3, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    cmpl-float v3, v3, v2

    if-lez v3, :cond_5d

    .line 26
    new-instance v3, Landroid/graphics/BlurMaskFilter;

    iget v4, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    sget-object v5, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v3, v4, v5}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 29
    :cond_5d
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    const/16 v4, 0x8

    .line 30
    new-array v4, v4, [F

    const/4 v5, 0x0

    .line 31
    :goto_67
    iget-object v6, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    array-length v7, v6

    if-ge v5, v7, :cond_7d

    .line 32
    aget v6, v6, v5

    cmpl-float v7, v6, v2

    if-nez v7, :cond_75

    .line 34
    aput v2, v4, v5

    goto :goto_7a

    .line 36
    :cond_75
    iget v7, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->spread:F

    add-float/2addr v6, v7

    aput v6, v4, v5

    :goto_7a
    add-int/lit8 v5, v5, 0x1

    goto :goto_67

    .line 39
    :cond_7d
    sget-object p1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v0, v4, p1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 40
    invoke-virtual {p0, v3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public static isBoxShadowEnabled()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/taobao/weex/utils/BoxShadowUtil;->sBoxShadowEnabled:Z

    return v0
.end method

.method private static parseBoxShadow(Ljava/lang/String;F)Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;
    .registers 8

    .line 1
    new-instance v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;-><init>(FLcom/taobao/weex/utils/BoxShadowUtil$1;)V

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    return-object v1

    .line 9
    :cond_d
    const-string v2, "\\s*,\\s+"

    const-string v3, ","

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 12
    const-string v2, "inset"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_26

    .line 13
    iput-boolean v4, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->isInset:Z

    .line 14
    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 17
    :cond_26
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 18
    new-instance v2, Ljava/util/ArrayList;

    const-string v3, "\\s+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v4

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 22
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_70

    .line 23
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

    .line 24
    invoke-static {p0, v3}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->color:I

    .line 25
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v4

    invoke-interface {v2, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 30
    :cond_70
    :try_start_70
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    const/4 v3, 0x2

    if-ge p0, v3, :cond_78

    return-object v1

    :cond_78
    const/4 p0, 0x0

    .line 34
    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v5, 0x0

    if-nez v1, :cond_a2

    .line 35
    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 36
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result p0

    iput p0, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->hShadow:F

    .line 39
    :cond_a2
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_ca

    .line 40
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 41
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p0

    iput p0, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->vShadow:F

    .line 44
    :cond_ca
    :goto_ca
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-ge v3, p0, :cond_e8

    add-int/lit8 p0, v3, -0x2

    .line 46
    invoke-static {v0}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->access$500(Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$IParser;

    .line 47
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$IParser;->parse(Ljava/lang/String;)V
    :try_end_e5
    .catchall {:try_start_70 .. :try_end_e5} :catchall_e9

    add-int/lit8 v3, v3, 0x1

    goto :goto_ca

    :cond_e8
    return-object v0

    :catchall_e9
    move-exception p0

    .line 51
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static parseBoxShadows(Ljava/lang/String;F)[Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;
    .registers 8

    .line 1
    sget-object v0, Lcom/taobao/weex/utils/BoxShadowUtil;->sColorPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_c

    .line 2
    const-string v0, "([rR][gG][bB][aA]?)\\((\\d+\\s*),\\s*(\\d+\\s*),\\s*(\\d+\\s*)(?:,\\s*(\\d+(?:\\.\\d+)?))?\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/utils/BoxShadowUtil;->sColorPattern:Ljava/util/regex/Pattern;

    .line 5
    :cond_c
    sget-object v0, Lcom/taobao/weex/utils/BoxShadowUtil;->sColorPattern:Ljava/util/regex/Pattern;

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

    new-array v0, v0, [Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    .line 16
    :goto_5b
    array-length v1, p0

    if-ge v2, v1, :cond_69

    .line 17
    aget-object v1, p0, v2

    invoke-static {v1, p1}, Lcom/taobao/weex/utils/BoxShadowUtil;->parseBoxShadow(Ljava/lang/String;F)Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

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

.method public static setBoxShadow(Landroid/view/View;Ljava/lang/String;[FFF)V
    .registers 14

    .line 1
    sget-boolean v0, Lcom/taobao/weex/utils/BoxShadowUtil;->sBoxShadowEnabled:Z

    const-string v1, "BoxShadowUtil"

    if-nez v0, :cond_c

    .line 2
    const-string p0, "box-shadow was disabled by config"

    invoke-static {v1, p0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    if-nez p0, :cond_14

    .line 7
    const-string p0, "Target view is null!"

    invoke-static {v1, p0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewOverlay;->clear()V

    .line 13
    const-string p0, "Remove all box-shadow"

    invoke-static {v1, p0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 17
    :cond_27
    invoke-static {p1, p3}, Lcom/taobao/weex/utils/BoxShadowUtil;->parseBoxShadows(Ljava/lang/String;F)[Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    move-result-object v0

    if-eqz v0, :cond_7d

    .line 18
    array-length v2, v0

    if-nez v2, :cond_31

    goto :goto_7d

    .line 23
    :cond_31
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 24
    array-length p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_3e
    if-ge v3, p1, :cond_52

    aget-object v4, v0, v3

    if-eqz v4, :cond_4f

    .line 26
    iget-boolean v6, v4, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->isInset:Z

    if-eqz v6, :cond_4c

    .line 27
    invoke-interface {v8, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4f

    .line 29
    :cond_4c
    invoke-interface {v5, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_4f
    :goto_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    :cond_52
    if-eqz p2, :cond_6d

    .line 35
    array-length p1, p2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_5f

    .line 36
    const-string p1, "Length of radii must be 8"

    invoke-static {v1, p1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6d

    .line 38
    :cond_5f
    :goto_5f
    array-length p1, p2

    if-ge v2, p1, :cond_6d

    .line 39
    aget p1, p2, v2

    invoke-static {p1, p3}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result p1

    .line 40
    aput p1, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    .line 45
    :cond_6d
    :goto_6d
    new-instance v3, Lcom/taobao/weex/utils/BoxShadowUtil$1;

    move-object v4, p0

    move-object v7, p2

    move v6, p4

    invoke-direct/range {v3 .. v8}, Lcom/taobao/weex/utils/BoxShadowUtil$1;-><init>(Landroid/view/View;Ljava/util/List;F[FLjava/util/List;)V

    invoke-static {v3}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 46
    :cond_7d
    :goto_7d
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Failed to parse box-shadow: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setBoxShadowEnabled(Z)V
    .registers 3

    .line 1
    sput-boolean p0, Lcom/taobao/weex/utils/BoxShadowUtil;->sBoxShadowEnabled:Z

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Switch box-shadow status: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BoxShadowUtil"

    invoke-static {v0, p0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static setInsetBoxShadow(Landroid/view/View;Ljava/util/List;F[F)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;",
            ">;F[F)V"
        }
    .end annotation

    const-string p2, "BoxShadowUtil"

    if-eqz p0, :cond_5b

    if-nez p1, :cond_7

    goto :goto_5b

    .line 1
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_55

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_14

    goto :goto_55

    .line 7
    :cond_14
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 8
    :goto_1b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_45

    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    .line 10
    new-instance v2, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, v1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->hShadow:F

    iget v6, v1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->vShadow:F

    iget v7, v1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    iget v8, v1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->spread:F

    iget v9, v1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->color:I

    const/4 v11, 0x0

    move-object v10, p3

    invoke-direct/range {v2 .. v11}, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;-><init>(IIFFFFI[FLcom/taobao/weex/utils/BoxShadowUtil$1;)V

    .line 14
    aput-object v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 17
    :cond_45
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p1, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 22
    :cond_55
    :goto_55
    const-string p0, "Target view is invisible, ignore set shadow."

    invoke-static {p2, p0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 23
    :cond_5b
    :goto_5b
    const-string p0, "Illegal arguments"

    invoke-static {p2, p0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static setNormalBoxShadow(Landroid/view/View;Ljava/util/List;F[F)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;",
            ">;F[F)V"
        }
    .end annotation

    move/from16 v0, p2

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    const-string v3, "BoxShadowUtil"

    if-eqz v1, :cond_e7

    if-nez v2, :cond_15

    goto/16 :goto_e7

    .line 13
    :cond_15
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_1c
    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_49

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    .line 14
    iput v2, v8, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewWidth:I

    .line 15
    iput v1, v8, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewHeight:I

    move-object/from16 v14, p3

    .line 16
    iput-object v14, v8, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    .line 18
    invoke-virtual {v8}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->getTargetCanvasRect()Landroid/graphics/Rect;

    move-result-object v8

    .line 19
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-ge v6, v9, :cond_3e

    .line 20
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 23
    :cond_3e
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-ge v7, v9, :cond_1c

    .line 24
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v7

    goto :goto_1c

    :cond_49
    move-object/from16 v14, p3

    int-to-float v4, v6

    mul-float v4, v4, v0

    float-to-int v4, v4

    int-to-float v8, v7

    mul-float v8, v8, v0

    float-to-int v8, v8

    .line 30
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "Allocation memory for box-shadow: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v8

    div-int/lit16 v8, v8, 0x400

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " KB"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 45
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_af

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    .line 46
    invoke-virtual {v8}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->getTargetCanvasRect()Landroid/graphics/Rect;

    move-result-object v9

    .line 47
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v10

    sub-int v10, v6, v10

    int-to-float v10, v10

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v10, v12

    .line 48
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int v9, v7, v9

    int-to-float v9, v9

    div-float/2addr v9, v12

    .line 49
    new-instance v12, Landroid/graphics/PointF;

    invoke-direct {v12, v10, v9}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v12, v8, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->topLeft:Landroid/graphics/PointF;

    .line 51
    invoke-virtual {v8, v0}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->scale(F)Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    move-result-object v8

    .line 52
    invoke-static {v3, v8}, Lcom/taobao/weex/utils/BoxShadowUtil;->drawShadow(Landroid/graphics/Canvas;Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;)V

    goto :goto_7e

    :cond_af
    sub-int/2addr v6, v2

    .line 56
    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v7, v1

    .line 57
    div-int/lit8 v7, v7, 0x2

    .line 58
    new-instance v9, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13, v5, v5, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v15}, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Point;Landroid/graphics/Rect;[FLcom/taobao/weex/utils/BoxShadowUtil$1;)V

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 63
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_e6

    .line 65
    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 66
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_e6

    .line 67
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    :cond_e6
    return-void

    .line 73
    :cond_e7
    :goto_e7
    const-string v0, "Target view is invisible, ignore set shadow."

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

###### Class com.taobao.weex.utils.BoxShadowUtil.AnonymousClass1 (com.taobao.weex.utils.BoxShadowUtil$1)
.class Lcom/taobao/weex/utils/BoxShadowUtil$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/utils/BoxShadowUtil;->setBoxShadow(Landroid/view/View;Ljava/lang/String;[FFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$insetShadows:Ljava/util/List;

.field final synthetic val$normalShadows:Ljava/util/List;

.field final synthetic val$quality:F

.field final synthetic val$radii:[F

.field final synthetic val$target:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/util/List;F[FLjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$target:Landroid/view/View;

    iput-object p2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$normalShadows:Ljava/util/List;

    iput p3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$quality:F

    iput-object p4, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$radii:[F

    iput-object p5, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$insetShadows:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$target:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewOverlay;->clear()V

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$normalShadows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1c

    .line 4
    iget-object v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$target:Landroid/view/View;

    iget-object v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$normalShadows:Ljava/util/List;

    iget v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$quality:F

    iget-object v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$radii:[F

    invoke-static {v0, v1, v2, v3}, Lcom/taobao/weex/utils/BoxShadowUtil;->access$000(Landroid/view/View;Ljava/util/List;F[F)V

    .line 7
    :cond_1c
    iget-object v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$insetShadows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2f

    .line 8
    iget-object v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$target:Landroid/view/View;

    iget-object v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$insetShadows:Ljava/util/List;

    iget v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$quality:F

    iget-object v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$radii:[F

    invoke-static {v0, v1, v2, v3}, Lcom/taobao/weex/utils/BoxShadowUtil;->access$100(Landroid/view/View;Ljava/util/List;F[F)V

    :cond_2f
    return-void
.end method

###### Class com.taobao.weex.utils.BoxShadowUtil.BoxShadowOptions (com.taobao.weex.utils.BoxShadowUtil$BoxShadowOptions)
.class public Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/BoxShadowUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BoxShadowOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$IParser;
    }
.end annotation


# instance fields
.field public blur:F

.field public color:I

.field public hShadow:F

.field public isInset:Z

.field private optionParamParsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$IParser;",
            ">;"
        }
    .end annotation
.end field

.field public radii:[F

.field public spread:F

.field public topLeft:Landroid/graphics/PointF;

.field public vShadow:F

.field public viewHeight:I

.field public viewWidth:I

.field private viewport:F


# direct methods
.method private constructor <init>(F)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    .line 8
    iput v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->spread:F

    const/16 v0, 0x8

    .line 9
    new-array v0, v0, [F

    fill-array-data v0, :array_3e

    iput-object v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    const/high16 v0, -0x1000000

    .line 10
    iput v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->color:I

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->isInset:Z

    .line 13
    iput v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewWidth:I

    .line 14
    iput v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewHeight:I

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->topLeft:Landroid/graphics/PointF;

    .line 19
    iput p1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewport:F

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->optionParamParsers:Ljava/util/List;

    .line 23
    new-instance p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$1;

    invoke-direct {p1, p0}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$1;-><init>(Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;)V

    .line 34
    new-instance v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$2;

    invoke-direct {v0, p0}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$2;-><init>(Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;)V

    .line 44
    iget-object v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->optionParamParsers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->optionParamParsers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :array_3e
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method synthetic constructor <init>(FLcom/taobao/weex/utils/BoxShadowUtil$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;-><init>(F)V

    return-void
.end method

.method static synthetic access$500(Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->optionParamParsers:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;)F
    .registers 1

    .line 1
    iget p0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewport:F

    return p0
.end method


# virtual methods
.method public getTargetCanvasRect()Landroid/graphics/Rect;
    .registers 5

    .line 1
    iget v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewWidth:I

    iget v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    iget v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->spread:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->hShadow:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 2
    iget v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewHeight:I

    iget v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    iget v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->spread:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->vShadow:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 3
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method public scale(F)Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;
    .registers 6

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_88

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_88

    .line 1
    new-instance v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    iget v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewport:F

    invoke-direct {v0, v1}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;-><init>(F)V

    .line 2
    iget v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->hShadow:F

    mul-float v1, v1, p1

    iput v1, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->hShadow:F

    .line 3
    iget v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->vShadow:F

    mul-float v1, v1, p1

    iput v1, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->vShadow:F

    .line 4
    iget v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    mul-float v1, v1, p1

    iput v1, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    .line 5
    iget v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->spread:F

    mul-float v1, v1, p1

    iput v1, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->spread:F

    const/4 v1, 0x0

    .line 6
    :goto_2b
    iget-object v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    array-length v3, v2

    if-ge v1, v3, :cond_3b

    .line 7
    iget-object v3, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    aget v2, v2, v1

    mul-float v2, v2, p1

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 9
    :cond_3b
    iget v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewHeight:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int v1, v1

    iput v1, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewHeight:I

    .line 10
    iget v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewWidth:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int v1, v1

    iput v1, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewWidth:I

    .line 12
    iget-object v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->topLeft:Landroid/graphics/PointF;

    if-eqz v1, :cond_64

    .line 13
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->topLeft:Landroid/graphics/PointF;

    .line 14
    iget-object v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->topLeft:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    mul-float v3, v3, p1

    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 15
    iget v2, v2, Landroid/graphics/PointF;->y:F

    mul-float v2, v2, p1

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 18
    :cond_64
    iget v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->color:I

    iput v1, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->color:I

    .line 19
    iget-boolean v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->isInset:Z

    iput-boolean v1, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->isInset:Z

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Scaled BoxShadowOptions: ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BoxShadowUtil"

    invoke-static {v1, p1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_88
    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "BoxShadowOptions{h-shadow="

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 4
    iget v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->hShadow:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 5
    const-string v2, ", v-shadow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->vShadow:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 6
    const-string v2, ", blur="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 7
    const-string v2, ", spread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->spread:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 8
    const-string v2, ", corner-radius="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    const-string v0, ", color=#"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->color:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10
    const-string v0, ", inset="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->isInset:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const/16 v0, 0x7d

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 12
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.taobao.weex.utils.BoxShadowUtil.BoxShadowOptions.AnonymousClass1 (com.taobao.weex.utils.BoxShadowUtil$BoxShadowOptions$1)
.class Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$IParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;-><init>(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;


# direct methods
.method constructor <init>(Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$1;->this$0:Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$1;->this$0:Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    invoke-static {v0}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->access$600(Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;)F

    move-result v1

    invoke-static {p1, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result p1

    iput p1, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->spread:F

    .line 4
    const-string p1, "BoxShadowUtil"

    const-string v0, "Experimental box-shadow attribute: spread"

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    return-void
.end method

###### Class com.taobao.weex.utils.BoxShadowUtil.BoxShadowOptions.AnonymousClass2 (com.taobao.weex.utils.BoxShadowUtil$BoxShadowOptions$2)
.class Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$2;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$IParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;-><init>(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;


# direct methods
.method constructor <init>(Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$2;->this$0:Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$2;->this$0:Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    invoke-static {v0}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->access$600(Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;)F

    move-result v1

    invoke-static {p1, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result p1

    iput p1, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    :cond_1f
    return-void
.end method

###### Class com.taobao.weex.utils.BoxShadowUtil.BoxShadowOptions.IParser (com.taobao.weex.utils.BoxShadowUtil$BoxShadowOptions$IParser)
.class interface abstract Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$IParser;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "IParser"
.end annotation


# virtual methods
.method public abstract parse(Ljava/lang/String;)V
.end method

###### Class com.taobao.weex.utils.BoxShadowUtil.InsetShadowDrawable (com.taobao.weex.utils.BoxShadowUtil$InsetShadowDrawable)
.class Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/BoxShadowUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InsetShadowDrawable"
.end annotation


# static fields
.field private static final BOTTOM_TO_TOP:I = 0x3

.field private static final LEFT_TO_RIGHT:I = 0x0

.field private static final RIGHT_TO_LEFT:I = 0x2

.field private static final TOP_TO_BOTTOM:I = 0x1


# instance fields
.field private blurRadius:F

.field private height:F

.field private paint:Landroid/graphics/Paint;

.field private paths:[Landroid/graphics/Path;

.field private radii:[F

.field private shades:[Landroid/graphics/Shader;

.field private shadowColor:I

.field private shadowXSize:F

.field private shadowYSize:F

.field private width:F


# direct methods
.method private constructor <init>(IIFFFFI[F)V
    .registers 11

    .line 2
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x4

    .line 3
    new-array v1, v0, [Landroid/graphics/Shader;

    iput-object v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shades:[Landroid/graphics/Shader;

    .line 4
    new-array v0, v0, [Landroid/graphics/Path;

    iput-object v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->paths:[Landroid/graphics/Path;

    .line 9
    iput p5, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->blurRadius:F

    .line 10
    iput p7, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowColor:I

    int-to-float p5, p1

    const/high16 p7, 0x40000000    # 2.0f

    mul-float v0, p3, p7

    add-float/2addr p5, v0

    .line 12
    iput p5, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->width:F

    int-to-float p5, p2

    mul-float p7, p7, p4

    add-float/2addr p5, p7

    .line 13
    iput p5, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->height:F

    add-float/2addr p3, p6

    .line 15
    iput p3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowXSize:F

    add-float/2addr p4, p6

    .line 16
    iput p4, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowYSize:F

    .line 18
    iput-object p8, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->radii:[F

    const/4 p3, 0x0

    .line 20
    invoke-virtual {p0, p3, p3, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 21
    invoke-direct {p0}, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->prepare()V

    return-void
.end method

.method synthetic constructor <init>(IIFFFFI[FLcom/taobao/weex/utils/BoxShadowUtil$1;)V
    .registers 10

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;-><init>(IIFFFFI[F)V

    return-void
.end method

.method private prepare()V
    .registers 24

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2
    new-instance v3, Landroid/graphics/PointF;

    iget v4, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->width:F

    invoke-direct {v3, v4, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 3
    new-instance v2, Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->height:F

    invoke-direct {v2, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 4
    new-instance v4, Landroid/graphics/PointF;

    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget v6, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 6
    new-instance v5, Landroid/graphics/PointF;

    iget v6, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowXSize:F

    iget v7, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowYSize:F

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 7
    new-instance v6, Landroid/graphics/PointF;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    iget v8, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowXSize:F

    sub-float/2addr v7, v8

    iget v8, v5, Landroid/graphics/PointF;->y:F

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 8
    new-instance v7, Landroid/graphics/PointF;

    iget v8, v6, Landroid/graphics/PointF;->x:F

    iget v9, v2, Landroid/graphics/PointF;->y:F

    iget v10, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowYSize:F

    sub-float/2addr v9, v10

    invoke-direct {v7, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 9
    new-instance v8, Landroid/graphics/PointF;

    iget v9, v5, Landroid/graphics/PointF;->x:F

    iget v10, v7, Landroid/graphics/PointF;->y:F

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 11
    new-instance v11, Landroid/graphics/LinearGradient;

    iget v14, v5, Landroid/graphics/PointF;->x:F

    iget v9, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->blurRadius:F

    sub-float v12, v14, v9

    iget v13, v5, Landroid/graphics/PointF;->y:F

    iget v9, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowColor:I

    sget-object v22, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v17, 0x0

    move v15, v13

    move/from16 v16, v9

    move-object/from16 v18, v22

    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 12
    new-instance v15, Landroid/graphics/LinearGradient;

    iget v9, v5, Landroid/graphics/PointF;->x:F

    iget v10, v5, Landroid/graphics/PointF;->y:F

    iget v12, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->blurRadius:F

    sub-float v17, v10, v12

    iget v12, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowColor:I

    const/16 v21, 0x0

    move/from16 v18, v9

    move/from16 v16, v9

    move/from16 v19, v10

    move/from16 v20, v12

    invoke-direct/range {v15 .. v22}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    move-object v9, v15

    .line 13
    new-instance v15, Landroid/graphics/LinearGradient;

    iget v10, v7, Landroid/graphics/PointF;->x:F

    iget v12, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->blurRadius:F

    add-float v16, v10, v12

    iget v12, v7, Landroid/graphics/PointF;->y:F

    iget v13, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowColor:I

    move/from16 v19, v12

    move/from16 v18, v10

    move/from16 v17, v12

    move/from16 v20, v13

    invoke-direct/range {v15 .. v22}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    move-object v10, v15

    .line 14
    new-instance v15, Landroid/graphics/LinearGradient;

    iget v12, v7, Landroid/graphics/PointF;->x:F

    iget v13, v7, Landroid/graphics/PointF;->y:F

    iget v14, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->blurRadius:F

    add-float v17, v13, v14

    iget v14, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowColor:I

    move/from16 v18, v12

    move/from16 v16, v12

    move/from16 v19, v13

    move/from16 v20, v14

    invoke-direct/range {v15 .. v22}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 16
    iget-object v12, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shades:[Landroid/graphics/Shader;

    const/4 v13, 0x0

    aput-object v11, v12, v13

    const/4 v11, 0x1

    .line 17
    aput-object v9, v12, v11

    const/4 v9, 0x2

    .line 18
    aput-object v10, v12, v9

    const/4 v10, 0x3

    .line 19
    aput-object v15, v12, v10

    .line 21
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    .line 22
    iget v14, v1, Landroid/graphics/PointF;->x:F

    iget v15, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v14, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 23
    iget v14, v5, Landroid/graphics/PointF;->x:F

    iget v15, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 24
    iget v14, v8, Landroid/graphics/PointF;->x:F

    iget v15, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 25
    iget v14, v4, Landroid/graphics/PointF;->x:F

    iget v15, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 26
    invoke-virtual {v12}, Landroid/graphics/Path;->close()V

    .line 28
    new-instance v14, Landroid/graphics/Path;

    invoke-direct {v14}, Landroid/graphics/Path;-><init>()V

    .line 29
    iget v15, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v14, v15, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 30
    iget v1, v3, Landroid/graphics/PointF;->x:F

    iget v15, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v14, v1, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 31
    iget v1, v6, Landroid/graphics/PointF;->x:F

    iget v15, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v14, v1, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 32
    iget v1, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v14, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 33
    invoke-virtual {v14}, Landroid/graphics/Path;->close()V

    .line 35
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 36
    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v5, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 37
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 38
    iget v3, v7, Landroid/graphics/PointF;->x:F

    iget v5, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 39
    iget v3, v6, Landroid/graphics/PointF;->x:F

    iget v5, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 40
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 42
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 43
    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 44
    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 45
    iget v2, v7, Landroid/graphics/PointF;->x:F

    iget v4, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 46
    iget v2, v8, Landroid/graphics/PointF;->x:F

    iget v4, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 47
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 49
    iget-object v2, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->paths:[Landroid/graphics/Path;

    aput-object v12, v2, v13

    .line 50
    aput-object v14, v2, v11

    .line 51
    aput-object v1, v2, v9

    .line 52
    aput-object v3, v2, v10

    .line 54
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->paint:Landroid/graphics/Paint;

    .line 55
    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    iget-object v1, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object v1, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->paint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 3
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 4
    iget-object v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->radii:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 5
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 9
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v0, 0x0

    :goto_22
    const/4 v1, 0x4

    if-ge v0, v1, :cond_3a

    .line 12
    iget-object v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shades:[Landroid/graphics/Shader;

    aget-object v1, v1, v0

    .line 13
    iget-object v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->paths:[Landroid/graphics/Path;

    aget-object v2, v2, v0

    .line 14
    iget-object v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 15
    iget-object v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_3a
    return-void
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .registers 2

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method

###### Class com.taobao.weex.utils.BoxShadowUtil.OverflowBitmapDrawable (com.taobao.weex.utils.BoxShadowUtil$OverflowBitmapDrawable)
.class Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/BoxShadowUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OverflowBitmapDrawable"
.end annotation


# instance fields
.field private paddingX:I

.field private paddingY:I

.field private radii:[F

.field private viewRect:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Point;Landroid/graphics/Rect;[F)V
    .registers 6

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 3
    iget p1, p3, Landroid/graphics/Point;->x:I

    iput p1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;->paddingX:I

    .line 4
    iget p2, p3, Landroid/graphics/Point;->y:I

    iput p2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;->paddingY:I

    .line 5
    iput-object p4, p0, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;->viewRect:Landroid/graphics/Rect;

    .line 6
    iput-object p5, p0, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;->radii:[F

    neg-int p1, p1

    neg-int p2, p2

    .line 8
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p3

    iget p5, p0, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;->paddingX:I

    add-int/2addr p3, p5

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    iget p5, p0, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;->paddingY:I

    add-int/2addr p4, p5

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Point;Landroid/graphics/Rect;[FLcom/taobao/weex/utils/BoxShadowUtil$1;)V
    .registers 7

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Point;Landroid/graphics/Rect;[F)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 4
    iget v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;->paddingX:I

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;->paddingY:I

    neg-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 6
    :try_start_16
    sget-object v2, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1a

    if-le v2, v3, :cond_26

    .line 7
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    goto :goto_2f

    .line 10
    :cond_26
    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z
    :try_end_2b
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_2b} :catch_2c

    goto :goto_2f

    .line 13
    :catch_2c
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 16
    :goto_2f
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 18
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 19
    iget-object v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;->radii:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 21
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 24
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 26
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
