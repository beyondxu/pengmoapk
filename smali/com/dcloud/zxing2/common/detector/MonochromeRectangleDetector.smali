###### Class com.dcloud.zxing2.common.detector.MonochromeRectangleDetector (com.dcloud.zxing2.common.detector.MonochromeRectangleDetector)
.class public final Lcom/dcloud/zxing2/common/detector/MonochromeRectangleDetector;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# static fields
.field private static final MAX_MODULES:I = 0x20


# instance fields
.field private final image:Lcom/dcloud/zxing2/common/BitMatrix;


# direct methods
.method public constructor <init>(Lcom/dcloud/zxing2/common/BitMatrix;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/dcloud/zxing2/common/detector/MonochromeRectangleDetector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    return-void
.end method

.method private blackWhiteRange(IIIIZ)[I
    .registers 10

    add-int v0, p3, p4

    .line 1
    div-int/lit8 v0, v0, 0x2

    move v1, v0

    :goto_5
    if-lt v1, p3, :cond_3e

    if-eqz p5, :cond_12

    .line 6
    iget-object v2, p0, Lcom/dcloud/zxing2/common/detector/MonochromeRectangleDetector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v2, v1, p1}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_1a

    :cond_12
    iget-object v2, p0, Lcom/dcloud/zxing2/common/detector/MonochromeRectangleDetector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v2, p1, v1}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v2

    if-eqz v2, :cond_1d

    :goto_1a
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_1d
    move v2, v1

    :cond_1e
    add-int/lit8 v2, v2, -0x1

    if-lt v2, p3, :cond_35

    if-eqz p5, :cond_2d

    .line 12
    iget-object v3, p0, Lcom/dcloud/zxing2/common/detector/MonochromeRectangleDetector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v3, v2, p1}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_35

    :cond_2d
    iget-object v3, p0, Lcom/dcloud/zxing2/common/detector/MonochromeRectangleDetector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    .line 13
    invoke-virtual {v3, p1, v2}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_1e

    :cond_35
    :goto_35
    sub-int v3, v1, v2

    if-lt v2, p3, :cond_3e

    if-le v3, p2, :cond_3c

    goto :goto_3e

    :cond_3c
    move v1, v2

    goto :goto_5

    :cond_3e
    :goto_3e
    add-int/lit8 v1, v1, 0x1

    :goto_40
    if-ge v0, p4, :cond_79

    if-eqz p5, :cond_4d

    .line 26
    iget-object p3, p0, Lcom/dcloud/zxing2/common/detector/MonochromeRectangleDetector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {p3, v0, p1}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result p3

    if-eqz p3, :cond_58

    goto :goto_55

    :cond_4d
    iget-object p3, p0, Lcom/dcloud/zxing2/common/detector/MonochromeRectangleDetector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {p3, p1, v0}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result p3

    if-eqz p3, :cond_58

    :goto_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_58
    move p3, v0

    :cond_59
    add-int/lit8 p3, p3, 0x1

    if-ge p3, p4, :cond_70

    if-eqz p5, :cond_68

    .line 32
    iget-object v2, p0, Lcom/dcloud/zxing2/common/detector/MonochromeRectangleDetector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v2, p3, p1}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v2

    if-eqz v2, :cond_59

    goto :goto_70

    :cond_68
    iget-object v2, p0, Lcom/dcloud/zxing2/common/detector/MonochromeRectangleDetector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    .line 33
    invoke-virtual {v2, p1, p3}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v2

    if-eqz v2, :cond_59

    :cond_70
    :goto_70
    sub-int v2, p3, v0

    if-ge p3, p4, :cond_79

    if-le v2, p2, :cond_77

    goto :goto_79

    :cond_77
    move v0, p3

    goto :goto_40

    :cond_79
    :goto_79
    add-int/lit8 v0, v0, -0x1

    if-le v0, v1, :cond_82

    .line 43
    filled-new-array {v1, v0}, [I

    move-result-object p1

    return-object p1

    :cond_82
    const/4 p1, 0x0

    return-object p1
.end method

.method private findCornerFromCenter(IIIIIIIII)Lcom/dcloud/zxing2/ResultPoint;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    move/from16 v0, p5

    const/4 v1, 0x0

    move v3, p1

    move v8, v0

    :goto_5
    move/from16 v6, p8

    if-ge v8, v6, :cond_8b

    move/from16 v5, p7

    if-lt v8, v5, :cond_8b

    move/from16 v11, p4

    if-ge v3, v11, :cond_8b

    move/from16 v10, p3

    if-lt v3, v10, :cond_8b

    if-nez p2, :cond_21

    const/4 v12, 0x1

    move-object v7, p0

    move/from16 v9, p9

    .line 1
    invoke-direct/range {v7 .. v12}, Lcom/dcloud/zxing2/common/detector/MonochromeRectangleDetector;->blackWhiteRange(IIIIZ)[I

    move-result-object v2

    move-object v7, v2

    goto :goto_29

    :cond_21
    const/4 v7, 0x0

    move-object v2, p0

    move/from16 v4, p9

    .line 4
    invoke-direct/range {v2 .. v7}, Lcom/dcloud/zxing2/common/detector/MonochromeRectangleDetector;->blackWhiteRange(IIIIZ)[I

    move-result-object v7

    :goto_29
    if-nez v7, :cond_85

    if-eqz v1, :cond_80

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-nez p2, :cond_59

    sub-int v8, v8, p6

    .line 13
    aget v0, v1, v2

    if-ge v0, p1, :cond_4f

    .line 14
    aget v1, v1, v4

    if-le v1, p1, :cond_47

    .line 16
    new-instance p1, Lcom/dcloud/zxing2/ResultPoint;

    if-lez p6, :cond_41

    int-to-float v0, v0

    goto :goto_42

    :cond_41
    int-to-float v0, v1

    :goto_42
    int-to-float v1, v8

    invoke-direct {p1, v0, v1}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    return-object p1

    .line 18
    :cond_47
    new-instance p1, Lcom/dcloud/zxing2/ResultPoint;

    int-to-float v0, v0

    int-to-float v1, v8

    invoke-direct {p1, v0, v1}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    return-object p1

    .line 20
    :cond_4f
    new-instance p1, Lcom/dcloud/zxing2/ResultPoint;

    aget v0, v1, v4

    int-to-float v0, v0

    int-to-float v1, v8

    invoke-direct {p1, v0, v1}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    return-object p1

    :cond_59
    sub-int/2addr v3, p2

    .line 24
    aget p1, v1, v2

    if-ge p1, v0, :cond_76

    .line 25
    aget v1, v1, v4

    if-le v1, v0, :cond_6e

    .line 26
    new-instance v0, Lcom/dcloud/zxing2/ResultPoint;

    int-to-float v2, v3

    if-gez p2, :cond_69

    int-to-float p1, p1

    goto :goto_6a

    :cond_69
    int-to-float p1, v1

    :goto_6a
    invoke-direct {v0, v2, p1}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    return-object v0

    .line 28
    :cond_6e
    new-instance v0, Lcom/dcloud/zxing2/ResultPoint;

    int-to-float v1, v3

    int-to-float p1, p1

    invoke-direct {v0, v1, p1}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    return-object v0

    .line 30
    :cond_76
    new-instance p1, Lcom/dcloud/zxing2/ResultPoint;

    int-to-float v0, v3

    aget v1, v1, v4

    int-to-float v1, v1

    invoke-direct {p1, v0, v1}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    return-object p1

    .line 31
    :cond_80
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    :cond_85
    add-int v8, v8, p6

    add-int/2addr v3, p2

    move-object v1, v7

    goto/16 :goto_5

    .line 59
    :cond_8b
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public detect()[Lcom/dcloud/zxing2/ResultPoint;
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/dcloud/zxing2/common/detector/MonochromeRectangleDetector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/common/BitMatrix;->getHeight()I

    move-result v8

    .line 2
    iget-object v1, v0, Lcom/dcloud/zxing2/common/detector/MonochromeRectangleDetector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/common/BitMatrix;->getWidth()I

    move-result v4

    .line 3
    div-int/lit8 v5, v8, 0x2

    .line 4
    div-int/lit8 v1, v4, 0x2

    .line 5
    div-int/lit16 v2, v8, 0x100

    const/4 v10, 0x1

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 6
    div-int/lit16 v2, v4, 0x100

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v12

    neg-int v6, v11

    .line 12
    div-int/lit8 v9, v1, 0x2

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/dcloud/zxing2/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/dcloud/zxing2/ResultPoint;

    move-result-object v2

    move v13, v6

    move v14, v9

    .line 14
    invoke-virtual {v2}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v7, v0, -0x1

    neg-int v2, v12

    .line 15
    div-int/lit8 v9, v5, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/dcloud/zxing2/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/dcloud/zxing2/ResultPoint;

    move-result-object v15

    .line 17
    invoke-virtual {v15}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v3, v0, -0x1

    move-object/from16 v0, p0

    move v2, v12

    .line 18
    invoke-direct/range {v0 .. v9}, Lcom/dcloud/zxing2/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/dcloud/zxing2/ResultPoint;

    move-result-object v12

    .line 20
    invoke-virtual {v12}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v4, v0, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move v6, v11

    move v9, v14

    .line 21
    invoke-direct/range {v0 .. v9}, Lcom/dcloud/zxing2/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/dcloud/zxing2/ResultPoint;

    move-result-object v11

    .line 23
    invoke-virtual {v11}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v8, v0, 0x1

    .line 26
    div-int/lit8 v9, v1, 0x4

    move-object/from16 v0, p0

    move v6, v13

    invoke-direct/range {v0 .. v9}, Lcom/dcloud/zxing2/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/dcloud/zxing2/ResultPoint;

    move-result-object v1

    const/4 v0, 0x4

    .line 29
    new-array v0, v0, [Lcom/dcloud/zxing2/ResultPoint;

    aput-object v1, v0, v2

    aput-object v15, v0, v10

    const/4 v1, 0x2

    aput-object v12, v0, v1

    const/4 v1, 0x3

    aput-object v11, v0, v1

    return-object v0
.end method
