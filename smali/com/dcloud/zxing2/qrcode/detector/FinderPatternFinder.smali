###### Class com.dcloud.zxing2.qrcode.detector.FinderPatternFinder (com.dcloud.zxing2.qrcode.detector.FinderPatternFinder)
.class public Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;,
        Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder$CenterComparator;
    }
.end annotation


# static fields
.field private static final CENTER_QUORUM:I = 0x2

.field protected static final MAX_MODULES:I = 0x39

.field protected static final MIN_SKIP:I = 0x3


# instance fields
.field private final crossCheckStateCount:[I

.field private hasSkipped:Z

.field private final image:Lcom/dcloud/zxing2/common/BitMatrix;

.field private final possibleCenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;",
            ">;"
        }
    .end annotation
.end field

.field private final resultPointCallback:Lcom/dcloud/zxing2/ResultPointCallback;


# direct methods
.method public constructor <init>(Lcom/dcloud/zxing2/common/BitMatrix;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;-><init>(Lcom/dcloud/zxing2/common/BitMatrix;Lcom/dcloud/zxing2/ResultPointCallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/dcloud/zxing2/common/BitMatrix;Lcom/dcloud/zxing2/ResultPointCallback;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    const/4 p1, 0x5

    .line 5
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    .line 6
    iput-object p2, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/dcloud/zxing2/ResultPointCallback;

    return-void
.end method

.method private static centerFromEnd([II)F
    .registers 3

    const/4 v0, 0x4

    .line 1
    aget v0, p0, v0

    sub-int/2addr p1, v0

    const/4 v0, 0x3

    aget v0, p0, v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/4 v0, 0x2

    aget p0, p0, v0

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    sub-float/2addr p1, p0

    return p1
.end method

.method private crossCheckDiagonal(IIII)Z
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 1
    invoke-direct {v0}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_e
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-lt v1, v6, :cond_28

    if-lt v2, v6, :cond_28

    .line 5
    iget-object v9, v0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    sub-int v10, v2, v6

    sub-int v11, v1, v6

    invoke-virtual {v9, v10, v11}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v9

    if-eqz v9, :cond_28

    .line 6
    aget v9, v4, v7

    add-int/2addr v9, v8

    aput v9, v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_28
    if-lt v1, v6, :cond_104

    if-ge v2, v6, :cond_2e

    goto/16 :goto_104

    :cond_2e
    :goto_2e
    if-lt v1, v6, :cond_49

    if-lt v2, v6, :cond_49

    .line 15
    iget-object v9, v0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    sub-int v10, v2, v6

    sub-int v11, v1, v6

    invoke-virtual {v9, v10, v11}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v9

    if-nez v9, :cond_49

    aget v9, v4, v8

    if-gt v9, v3, :cond_49

    add-int/lit8 v9, v9, 0x1

    .line 17
    aput v9, v4, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_2e

    :cond_49
    if-lt v1, v6, :cond_104

    if-lt v2, v6, :cond_104

    .line 22
    aget v9, v4, v8

    if-le v9, v3, :cond_53

    goto/16 :goto_104

    :cond_53
    :goto_53
    if-lt v1, v6, :cond_6e

    if-lt v2, v6, :cond_6e

    .line 27
    iget-object v9, v0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    sub-int v10, v2, v6

    sub-int v11, v1, v6

    invoke-virtual {v9, v10, v11}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v9

    if-eqz v9, :cond_6e

    aget v9, v4, v5

    if-gt v9, v3, :cond_6e

    add-int/lit8 v9, v9, 0x1

    .line 29
    aput v9, v4, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_53

    .line 32
    :cond_6e
    aget v6, v4, v5

    if-le v6, v3, :cond_73

    return v5

    .line 36
    :cond_73
    iget-object v6, v0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v6}, Lcom/dcloud/zxing2/common/BitMatrix;->getHeight()I

    move-result v6

    .line 37
    iget-object v9, v0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v9}, Lcom/dcloud/zxing2/common/BitMatrix;->getWidth()I

    move-result v9

    const/4 v10, 0x1

    :goto_80
    add-int v11, v1, v10

    if-ge v11, v6, :cond_98

    add-int v12, v2, v10

    if-ge v12, v9, :cond_98

    .line 41
    iget-object v13, v0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v13, v12, v11}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v12

    if-eqz v12, :cond_98

    .line 42
    aget v11, v4, v7

    add-int/2addr v11, v8

    aput v11, v4, v7

    add-int/lit8 v10, v10, 0x1

    goto :goto_80

    :cond_98
    if-ge v11, v6, :cond_104

    add-int v11, v2, v10

    if-lt v11, v9, :cond_9f

    goto :goto_104

    :cond_9f
    :goto_9f
    add-int v11, v1, v10

    const/4 v12, 0x3

    if-ge v11, v6, :cond_bb

    add-int v13, v2, v10

    if-ge v13, v9, :cond_bb

    .line 51
    iget-object v14, v0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v14, v13, v11}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v13

    if-nez v13, :cond_bb

    aget v13, v4, v12

    if-ge v13, v3, :cond_bb

    add-int/lit8 v13, v13, 0x1

    .line 53
    aput v13, v4, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_9f

    :cond_bb
    if-ge v11, v6, :cond_104

    add-int v11, v2, v10

    if-ge v11, v9, :cond_104

    .line 57
    aget v11, v4, v12

    if-lt v11, v3, :cond_c6

    goto :goto_104

    :cond_c6
    :goto_c6
    add-int v11, v1, v10

    const/4 v13, 0x4

    if-ge v11, v6, :cond_e2

    add-int v14, v2, v10

    if-ge v14, v9, :cond_e2

    .line 61
    iget-object v15, v0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v15, v14, v11}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v11

    if-eqz v11, :cond_e2

    aget v11, v4, v13

    if-ge v11, v3, :cond_e2

    add-int/lit8 v11, v11, 0x1

    .line 63
    aput v11, v4, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_c6

    .line 67
    :cond_e2
    aget v1, v4, v13

    if-lt v1, v3, :cond_e7

    return v5

    .line 73
    :cond_e7
    aget v2, v4, v5

    aget v3, v4, v8

    add-int/2addr v2, v3

    aget v3, v4, v7

    add-int/2addr v2, v3

    aget v3, v4, v12

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    sub-int v2, v2, p4

    .line 75
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit8 v2, p4, 0x2

    if-ge v1, v2, :cond_104

    .line 76
    invoke-static {v4}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v1

    if-eqz v1, :cond_104

    return v8

    :cond_104
    :goto_104
    return v5
.end method

.method private crossCheckHorizontal(IIII)F
    .registers 15

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    .line 3
    invoke-virtual {v0}, Lcom/dcloud/zxing2/common/BitMatrix;->getWidth()I

    move-result v1

    .line 4
    invoke-direct {p0}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v2

    move v3, p1

    :goto_b
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ltz v3, :cond_1d

    .line 7
    invoke-virtual {v0, v3, p2}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 8
    aget v6, v2, v4

    add-int/2addr v6, v5

    aput v6, v2, v4

    add-int/lit8 v3, v3, -0x1

    goto :goto_b

    :cond_1d
    const/high16 v6, 0x7fc00000    # Float.NaN

    if-gez v3, :cond_22

    return v6

    :cond_22
    :goto_22
    if-ltz v3, :cond_35

    .line 14
    invoke-virtual {v0, v3, p2}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v7

    if-nez v7, :cond_35

    aget v7, v2, v5

    if-gt v7, p3, :cond_35

    add-int/lit8 v7, v7, 0x1

    .line 15
    aput v7, v2, v5

    add-int/lit8 v3, v3, -0x1

    goto :goto_22

    :cond_35
    if-ltz v3, :cond_bf

    .line 18
    aget v7, v2, v5

    if-le v7, p3, :cond_3d

    goto/16 :goto_bf

    :cond_3d
    :goto_3d
    const/4 v7, 0x0

    if-ltz v3, :cond_51

    .line 21
    invoke-virtual {v0, v3, p2}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_51

    aget v8, v2, v7

    if-gt v8, p3, :cond_51

    add-int/lit8 v8, v8, 0x1

    .line 22
    aput v8, v2, v7

    add-int/lit8 v3, v3, -0x1

    goto :goto_3d

    .line 25
    :cond_51
    aget v3, v2, v7

    if-le v3, p3, :cond_56

    return v6

    :cond_56
    add-int/2addr p1, v5

    :goto_57
    if-ge p1, v1, :cond_67

    .line 30
    invoke-virtual {v0, p1, p2}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 31
    aget v3, v2, v4

    add-int/2addr v3, v5

    aput v3, v2, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_57

    :cond_67
    if-ne p1, v1, :cond_6a

    return v6

    :cond_6a
    :goto_6a
    const/4 v3, 0x3

    if-ge p1, v1, :cond_7e

    .line 37
    invoke-virtual {v0, p1, p2}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v8

    if-nez v8, :cond_7e

    aget v8, v2, v3

    if-ge v8, p3, :cond_7e

    add-int/lit8 v8, v8, 0x1

    .line 38
    aput v8, v2, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_6a

    :cond_7e
    if-eq p1, v1, :cond_bf

    .line 41
    aget v8, v2, v3

    if-lt v8, p3, :cond_85

    goto :goto_bf

    :cond_85
    :goto_85
    const/4 v8, 0x4

    if-ge p1, v1, :cond_99

    .line 44
    invoke-virtual {v0, p1, p2}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v9

    if-eqz v9, :cond_99

    aget v9, v2, v8

    if-ge v9, p3, :cond_99

    add-int/lit8 v9, v9, 0x1

    .line 45
    aput v9, v2, v8

    add-int/lit8 p1, p1, 0x1

    goto :goto_85

    .line 48
    :cond_99
    aget p2, v2, v8

    if-lt p2, p3, :cond_9e

    return v6

    .line 54
    :cond_9e
    aget p3, v2, v7

    aget v0, v2, v5

    add-int/2addr p3, v0

    aget v0, v2, v4

    add-int/2addr p3, v0

    aget v0, v2, v3

    add-int/2addr p3, v0

    add-int/2addr p3, p2

    sub-int/2addr p3, p4

    .line 56
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    mul-int/lit8 p2, p2, 0x5

    if-lt p2, p4, :cond_b4

    return v6

    .line 60
    :cond_b4
    invoke-static {v2}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result p2

    if-eqz p2, :cond_bf

    invoke-static {v2, p1}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result p1

    return p1

    :cond_bf
    :goto_bf
    return v6
.end method

.method private crossCheckVertical(IIII)F
    .registers 15

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    .line 3
    invoke-virtual {v0}, Lcom/dcloud/zxing2/common/BitMatrix;->getHeight()I

    move-result v1

    .line 4
    invoke-direct {p0}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v2

    move v3, p1

    :goto_b
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ltz v3, :cond_1d

    .line 8
    invoke-virtual {v0, p2, v3}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 9
    aget v6, v2, v4

    add-int/2addr v6, v5

    aput v6, v2, v4

    add-int/lit8 v3, v3, -0x1

    goto :goto_b

    :cond_1d
    const/high16 v6, 0x7fc00000    # Float.NaN

    if-gez v3, :cond_22

    return v6

    :cond_22
    :goto_22
    if-ltz v3, :cond_35

    .line 15
    invoke-virtual {v0, p2, v3}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v7

    if-nez v7, :cond_35

    aget v7, v2, v5

    if-gt v7, p3, :cond_35

    add-int/lit8 v7, v7, 0x1

    .line 16
    aput v7, v2, v5

    add-int/lit8 v3, v3, -0x1

    goto :goto_22

    :cond_35
    if-ltz v3, :cond_c1

    .line 20
    aget v7, v2, v5

    if-le v7, p3, :cond_3d

    goto/16 :goto_c1

    :cond_3d
    :goto_3d
    const/4 v7, 0x0

    if-ltz v3, :cond_51

    .line 23
    invoke-virtual {v0, p2, v3}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_51

    aget v8, v2, v7

    if-gt v8, p3, :cond_51

    add-int/lit8 v8, v8, 0x1

    .line 24
    aput v8, v2, v7

    add-int/lit8 v3, v3, -0x1

    goto :goto_3d

    .line 27
    :cond_51
    aget v3, v2, v7

    if-le v3, p3, :cond_56

    return v6

    :cond_56
    add-int/2addr p1, v5

    :goto_57
    if-ge p1, v1, :cond_67

    .line 33
    invoke-virtual {v0, p2, p1}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 34
    aget v3, v2, v4

    add-int/2addr v3, v5

    aput v3, v2, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_57

    :cond_67
    if-ne p1, v1, :cond_6a

    return v6

    :cond_6a
    :goto_6a
    const/4 v3, 0x3

    if-ge p1, v1, :cond_7e

    .line 40
    invoke-virtual {v0, p2, p1}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v8

    if-nez v8, :cond_7e

    aget v8, v2, v3

    if-ge v8, p3, :cond_7e

    add-int/lit8 v8, v8, 0x1

    .line 41
    aput v8, v2, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_6a

    :cond_7e
    if-eq p1, v1, :cond_c1

    .line 44
    aget v8, v2, v3

    if-lt v8, p3, :cond_85

    goto :goto_c1

    :cond_85
    :goto_85
    const/4 v8, 0x4

    if-ge p1, v1, :cond_99

    .line 47
    invoke-virtual {v0, p2, p1}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v9

    if-eqz v9, :cond_99

    aget v9, v2, v8

    if-ge v9, p3, :cond_99

    add-int/lit8 v9, v9, 0x1

    .line 48
    aput v9, v2, v8

    add-int/lit8 p1, p1, 0x1

    goto :goto_85

    .line 51
    :cond_99
    aget p2, v2, v8

    if-lt p2, p3, :cond_9e

    return v6

    .line 57
    :cond_9e
    aget p3, v2, v7

    aget v0, v2, v5

    add-int/2addr p3, v0

    aget v0, v2, v4

    add-int/2addr p3, v0

    aget v0, v2, v3

    add-int/2addr p3, v0

    add-int/2addr p3, p2

    sub-int/2addr p3, p4

    .line 59
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    mul-int/lit8 p2, p2, 0x5

    mul-int/lit8 p4, p4, 0x2

    if-lt p2, p4, :cond_b6

    return v6

    .line 63
    :cond_b6
    invoke-static {v2}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result p2

    if-eqz p2, :cond_c1

    invoke-static {v2, p1}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result p1

    return p1

    :cond_c1
    :goto_c1
    return v6
.end method

.method private findRowSkip()I
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_b

    return v1

    .line 6
    :cond_b
    iget-object v0, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;

    .line 7
    invoke-virtual {v4}, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;->getCount()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_12

    if-nez v3, :cond_29

    move-object v3, v4

    goto :goto_12

    .line 16
    :cond_29
    iput-boolean v2, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    .line 17
    invoke-virtual {v3}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v0

    invoke-virtual {v4}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 18
    invoke-virtual {v3}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v1

    invoke-virtual {v4}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    div-int/2addr v0, v6

    return v0

    :cond_49
    return v1
.end method

.method protected static foundPatternCross([I)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    const/4 v3, 0x5

    if-ge v1, v3, :cond_f

    .line 1
    aget v3, p0, v1

    if-nez v3, :cond_b

    return v0

    :cond_b
    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_f
    const/4 v1, 0x7

    if-ge v2, v1, :cond_13

    return v0

    :cond_13
    int-to-float v1, v2

    const/high16 v2, 0x40e00000    # 7.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v1, v2

    .line 13
    aget v3, p0, v0

    int-to-float v3, v3

    sub-float v3, v1, v3

    .line 14
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v2

    if-gez v3, :cond_65

    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-float v4, v4

    sub-float v4, v1, v4

    .line 15
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v2

    if-gez v4, :cond_65

    const/high16 v4, 0x40400000    # 3.0f

    mul-float v5, v1, v4

    const/4 v6, 0x2

    aget v6, p0, v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 16
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float v4, v4, v2

    cmpg-float v4, v5, v4

    if-gez v4, :cond_65

    const/4 v4, 0x3

    aget v4, p0, v4

    int-to-float v4, v4

    sub-float v4, v1, v4

    .line 17
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v2

    if-gez v4, :cond_65

    const/4 v4, 0x4

    aget p0, p0, v4

    int-to-float p0, p0

    sub-float/2addr v1, p0

    .line 18
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v2

    if-gez p0, :cond_65

    return v3

    :cond_65
    return v0
.end method

.method private getCrossCheckStateCount()[I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    .line 2
    aput v1, v0, v2

    const/4 v2, 0x2

    .line 3
    aput v1, v0, v2

    const/4 v2, 0x3

    .line 4
    aput v1, v0, v2

    const/4 v2, 0x4

    .line 5
    aput v1, v0, v2

    return-object v0
.end method

.method private haveMultiplyConfirmedCenters()Z
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;

    .line 3
    invoke-virtual {v6}, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;->getCount()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_10

    add-int/lit8 v4, v4, 0x1

    .line 5
    invoke-virtual {v6}, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v6

    add-float/2addr v5, v6

    goto :goto_10

    :cond_2b
    const/4 v1, 0x3

    if-ge v4, v1, :cond_2f

    return v2

    :cond_2f
    int-to-float v0, v0

    div-float v0, v5, v0

    .line 17
    iget-object v1, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;

    .line 18
    invoke-virtual {v4}, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    goto :goto_38

    :cond_4f
    const v0, 0x3d4ccccd    # 0.05f

    mul-float v5, v5, v0

    cmpg-float v0, v3, v5

    if-gtz v0, :cond_5a

    const/4 v0, 0x1

    return v0

    :cond_5a
    return v2
.end method

.method private selectBestPatterns()[Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_db

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-le v0, v1, :cond_7a

    .line 12
    iget-object v6, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_17
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;

    .line 13
    invoke-virtual {v9}, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v9

    add-float/2addr v7, v9

    mul-float v9, v9, v9

    add-float/2addr v8, v9

    goto :goto_17

    :cond_2c
    int-to-float v0, v0

    div-float/2addr v7, v0

    div-float/2addr v8, v0

    mul-float v0, v7, v7

    sub-float/2addr v8, v0

    float-to-double v8, v8

    .line 18
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v0, v8

    .line 20
    iget-object v6, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    new-instance v8, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;

    invoke-direct {v8, v7, v2}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;-><init>(FLcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder$1;)V

    invoke-static {v6, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const v6, 0x3e4ccccd    # 0.2f

    mul-float v6, v6, v7

    .line 22
    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v6, 0x0

    .line 24
    :goto_4c
    iget-object v8, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_7a

    iget-object v8, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v1, :cond_7a

    .line 25
    iget-object v8, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;

    .line 26
    invoke-virtual {v8}, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v8

    sub-float/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v8, v8, v0

    if-lez v8, :cond_78

    .line 27
    iget-object v8, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v6, v6, -0x1

    :cond_78
    add-int/2addr v6, v3

    goto :goto_4c

    .line 33
    :cond_7a
    iget-object v0, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_b9

    .line 37
    iget-object v0, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_88
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;

    .line 38
    invoke-virtual {v6}, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v6

    add-float/2addr v5, v6

    goto :goto_88

    .line 41
    :cond_9a
    iget-object v0, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v5, v0

    .line 43
    iget-object v0, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    new-instance v6, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder$CenterComparator;

    invoke-direct {v6, v5, v2}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder$CenterComparator;-><init>(FLcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder$1;)V

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 45
    iget-object v0, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 48
    :cond_b9
    iget-object v0, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    .line 49
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;

    iget-object v2, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    .line 50
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;

    iget-object v5, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    const/4 v6, 0x2

    .line 51
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;

    new-array v1, v1, [Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;

    aput-object v0, v1, v4

    aput-object v2, v1, v3

    aput-object v5, v1, v6

    return-object v1

    .line 52
    :cond_db
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method final find(Ljava/util/Map;)Lcom/dcloud/zxing2/qrcode/detector/FinderPatternInfo;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/dcloud/zxing2/DecodeHintType;",
            "*>;)",
            "Lcom/dcloud/zxing2/qrcode/detector/FinderPatternInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_e

    .line 1
    sget-object v2, Lcom/dcloud/zxing2/DecodeHintType;->TRY_HARDER:Lcom/dcloud/zxing2/DecodeHintType;

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    if-eqz p1, :cond_1b

    .line 2
    sget-object v3, Lcom/dcloud/zxing2/DecodeHintType;->PURE_BARCODE:Lcom/dcloud/zxing2/DecodeHintType;

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    .line 3
    :goto_1c
    iget-object v3, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v3}, Lcom/dcloud/zxing2/common/BitMatrix;->getHeight()I

    move-result v3

    .line 4
    iget-object v4, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v4}, Lcom/dcloud/zxing2/common/BitMatrix;->getWidth()I

    move-result v4

    mul-int/lit8 v5, v3, 0x3

    .line 12
    div-int/lit16 v5, v5, 0xe4

    const/4 v6, 0x3

    if-lt v5, v6, :cond_31

    if-eqz v2, :cond_32

    :cond_31
    const/4 v5, 0x3

    :cond_32
    const/4 v2, 0x5

    .line 18
    new-array v2, v2, [I

    add-int/lit8 v7, v5, -0x1

    const/4 v8, 0x0

    :goto_38
    if-ge v7, v3, :cond_e1

    if-nez v8, :cond_e1

    .line 21
    aput v1, v2, v1

    .line 22
    aput v1, v2, v0

    const/4 v9, 0x2

    .line 23
    aput v1, v2, v9

    .line 24
    aput v1, v2, v6

    const/4 v10, 0x4

    .line 25
    aput v1, v2, v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_4a
    if-ge v11, v4, :cond_c8

    .line 28
    iget-object v13, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v13, v11, v7}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v13

    if-eqz v13, :cond_60

    and-int/lit8 v13, v12, 0x1

    if-ne v13, v0, :cond_5a

    add-int/lit8 v12, v12, 0x1

    .line 33
    :cond_5a
    aget v13, v2, v12

    add-int/2addr v13, v0

    aput v13, v2, v12

    goto :goto_c6

    :cond_60
    and-int/lit8 v13, v12, 0x1

    if-nez v13, :cond_c1

    if-ne v12, v10, :cond_b9

    .line 37
    invoke-static {v2}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v12

    if-eqz v12, :cond_a7

    .line 38
    invoke-virtual {p0, v2, v7, v11, p1}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([IIIZ)Z

    move-result v12

    if-eqz v12, :cond_96

    .line 43
    iget-boolean v5, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    if-eqz v5, :cond_7b

    .line 44
    invoke-direct {p0}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->haveMultiplyConfirmedCenters()Z

    move-result v8

    goto :goto_89

    .line 46
    :cond_7b
    invoke-direct {p0}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->findRowSkip()I

    move-result v5

    .line 47
    aget v12, v2, v9

    if-le v5, v12, :cond_89

    sub-int/2addr v5, v12

    sub-int/2addr v5, v9

    add-int/2addr v7, v5

    add-int/lit8 v5, v4, -0x1

    move v11, v5

    .line 71
    :cond_89
    :goto_89
    aput v1, v2, v1

    .line 72
    aput v1, v2, v0

    .line 73
    aput v1, v2, v9

    .line 74
    aput v1, v2, v6

    .line 75
    aput v1, v2, v10

    const/4 v5, 0x2

    const/4 v12, 0x0

    goto :goto_c6

    .line 76
    :cond_96
    aget v12, v2, v9

    aput v12, v2, v1

    .line 77
    aget v12, v2, v6

    aput v12, v2, v0

    .line 78
    aget v12, v2, v10

    aput v12, v2, v9

    .line 79
    aput v0, v2, v6

    .line 80
    aput v1, v2, v10

    goto :goto_b7

    .line 92
    :cond_a7
    aget v12, v2, v9

    aput v12, v2, v1

    .line 93
    aget v12, v2, v6

    aput v12, v2, v0

    .line 94
    aget v12, v2, v10

    aput v12, v2, v9

    .line 95
    aput v0, v2, v6

    .line 96
    aput v1, v2, v10

    :goto_b7
    const/4 v12, 0x3

    goto :goto_c6

    :cond_b9
    add-int/lit8 v12, v12, 0x1

    .line 100
    aget v13, v2, v12

    add-int/2addr v13, v0

    aput v13, v2, v12

    goto :goto_c6

    .line 103
    :cond_c1
    aget v13, v2, v12

    add-int/2addr v13, v0

    aput v13, v2, v12

    :goto_c6
    add-int/2addr v11, v0

    goto :goto_4a

    .line 107
    :cond_c8
    invoke-static {v2}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v9

    if-eqz v9, :cond_de

    .line 108
    invoke-virtual {p0, v2, v7, v4, p1}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([IIIZ)Z

    move-result v9

    if-eqz v9, :cond_de

    .line 110
    aget v5, v2, v1

    .line 111
    iget-boolean v9, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    if-eqz v9, :cond_de

    .line 113
    invoke-direct {p0}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->haveMultiplyConfirmedCenters()Z

    move-result v8

    :cond_de
    add-int/2addr v7, v5

    goto/16 :goto_38

    .line 119
    :cond_e1
    invoke-direct {p0}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->selectBestPatterns()[Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;

    move-result-object p1

    .line 120
    invoke-static {p1}, Lcom/dcloud/zxing2/ResultPoint;->orderBestPatterns([Lcom/dcloud/zxing2/ResultPoint;)V

    .line 122
    new-instance v0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternInfo;

    invoke-direct {v0, p1}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternInfo;-><init>([Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;)V

    return-object v0
.end method

.method protected final getImage()Lcom/dcloud/zxing2/common/BitMatrix;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    return-object v0
.end method

.method protected final getPossibleCenters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    return-object v0
.end method

.method protected final handlePossibleCenter([IIIZ)Z
    .registers 11

    const/4 v0, 0x0

    .line 1
    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    add-int/2addr v1, v3

    const/4 v3, 0x2

    aget v4, p1, v3

    add-int/2addr v1, v4

    const/4 v4, 0x3

    aget v4, p1, v4

    add-int/2addr v1, v4

    const/4 v4, 0x4

    aget v4, p1, v4

    add-int/2addr v1, v4

    .line 3
    invoke-static {p1, p3}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result p3

    float-to-int p3, p3

    .line 4
    aget v4, p1, v3

    invoke-direct {p0, p2, p3, v4, v1}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->crossCheckVertical(IIII)F

    move-result p2

    .line 5
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_75

    float-to-int v4, p2

    .line 7
    aget v5, p1, v3

    invoke-direct {p0, p3, v4, v5, v1}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->crossCheckHorizontal(IIII)F

    move-result p3

    .line 8
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_75

    if-eqz p4, :cond_3c

    float-to-int p4, p3

    aget p1, p1, v3

    .line 9
    invoke-direct {p0, v4, p4, p1, v1}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->crossCheckDiagonal(IIII)Z

    move-result p1

    if-eqz p1, :cond_75

    :cond_3c
    int-to-float p1, v1

    const/high16 p4, 0x40e00000    # 7.0f

    div-float/2addr p1, p4

    .line 12
    :goto_40
    iget-object p4, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge v0, p4, :cond_63

    .line 13
    iget-object p4, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;

    .line 15
    invoke-virtual {p4, p1, p2, p3}, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;->aboutEquals(FFF)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 16
    iget-object v1, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-virtual {p4, p2, p3, p1}, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;->combineEstimate(FFF)Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_74

    :cond_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 22
    :cond_63
    new-instance p4, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;

    invoke-direct {p4, p3, p2, p1}, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;-><init>(FFF)V

    .line 23
    iget-object p1, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object p1, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/dcloud/zxing2/ResultPointCallback;

    if-eqz p1, :cond_74

    .line 25
    invoke-interface {p1, p4}, Lcom/dcloud/zxing2/ResultPointCallback;->foundPossibleResultPoint(Lcom/dcloud/zxing2/ResultPoint;)V

    :cond_74
    :goto_74
    return v2

    :cond_75
    return v0
.end method

###### Class com.dcloud.zxing2.qrcode.detector.FinderPatternFinder.AnonymousClass1 (com.dcloud.zxing2.qrcode.detector.FinderPatternFinder$1)
.class synthetic Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder$1;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.dcloud.zxing2.qrcode.detector.FinderPatternFinder.CenterComparator (com.dcloud.zxing2.qrcode.detector.FinderPatternFinder$CenterComparator)
.class final Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder$CenterComparator;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CenterComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final average:F


# direct methods
.method private constructor <init>(F)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder$CenterComparator;->average:F

    return-void
.end method

.method synthetic constructor <init>(FLcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder$CenterComparator;-><init>(F)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;)I
    .registers 5

    .line 2
    invoke-virtual {p2}, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;->getCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_2e

    .line 3
    invoke-virtual {p2}, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result p2

    iget v0, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder$CenterComparator;->average:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 4
    invoke-virtual {p1}, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result p1

    iget v0, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder$CenterComparator;->average:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float v0, p2, p1

    if-gez v0, :cond_26

    const/4 p1, 0x1

    return p1

    :cond_26
    cmpl-float p1, p2, p1

    if-nez p1, :cond_2c

    const/4 p1, 0x0

    return p1

    :cond_2c
    const/4 p1, -0x1

    return p1

    .line 7
    :cond_2e
    invoke-virtual {p2}, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;->getCount()I

    move-result p2

    invoke-virtual {p1}, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;->getCount()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;

    check-cast p2, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;

    invoke-virtual {p0, p1, p2}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder$CenterComparator;->compare(Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;)I

    move-result p1

    return p1
.end method

###### Class com.dcloud.zxing2.qrcode.detector.FinderPatternFinder.FurthestFromAverageComparator (com.dcloud.zxing2.qrcode.detector.FinderPatternFinder$FurthestFromAverageComparator)
.class final Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FurthestFromAverageComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final average:F


# direct methods
.method private constructor <init>(F)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;->average:F

    return-void
.end method

.method synthetic constructor <init>(FLcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;-><init>(F)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;)I
    .registers 4

    .line 2
    invoke-virtual {p2}, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result p2

    iget v0, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;->average:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 3
    invoke-virtual {p1}, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result p1

    iget v0, p0, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;->average:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float v0, p2, p1

    if-gez v0, :cond_1c

    const/4 p1, -0x1

    return p1

    :cond_1c
    cmpl-float p1, p2, p1

    if-nez p1, :cond_22

    const/4 p1, 0x0

    return p1

    :cond_22
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;

    check-cast p2, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;

    invoke-virtual {p0, p1, p2}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;->compare(Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;)I

    move-result p1

    return p1
.end method
