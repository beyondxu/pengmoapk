###### Class com.dcloud.zxing2.pdf417.decoder.DetectionResultRowIndicatorColumn (com.dcloud.zxing2.pdf417.decoder.DetectionResultRowIndicatorColumn)
.class final Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultRowIndicatorColumn;
.super Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# instance fields
.field private final isLeft:Z


# direct methods
.method constructor <init>(Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;Z)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;-><init>(Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;)V

    .line 2
    iput-boolean p2, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    return-void
.end method

.method private removeIncorrectCodewords([Lcom/dcloud/zxing2/pdf417/decoder/Codeword;Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;)V
    .registers 8

    const/4 v0, 0x0

    .line 1
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_5a

    .line 2
    aget-object v1, p1, v0

    if-nez v1, :cond_9

    goto :goto_57

    .line 6
    :cond_9
    invoke-virtual {v1}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->getValue()I

    move-result v2

    rem-int/lit8 v2, v2, 0x1e

    .line 7
    invoke-virtual {v1}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v1

    .line 8
    invoke-virtual {p2}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v3

    const/4 v4, 0x0

    if-le v1, v3, :cond_1d

    .line 9
    aput-object v4, p1, v0

    goto :goto_57

    .line 12
    :cond_1d
    iget-boolean v3, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-nez v3, :cond_23

    add-int/lit8 v1, v1, 0x2

    .line 15
    :cond_23
    rem-int/lit8 v1, v1, 0x3

    const/4 v3, 0x1

    if-eqz v1, :cond_4c

    if-eq v1, v3, :cond_39

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2e

    goto :goto_57

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    .line 28
    invoke-virtual {p2}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v1

    if-eq v2, v1, :cond_57

    .line 29
    aput-object v4, p1, v0

    goto :goto_57

    .line 30
    :cond_39
    div-int/lit8 v1, v2, 0x3

    invoke-virtual {p2}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v3

    if-ne v1, v3, :cond_49

    rem-int/lit8 v2, v2, 0x3

    .line 31
    invoke-virtual {p2}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;->getRowCountLowerPart()I

    move-result v1

    if-eq v2, v1, :cond_57

    .line 32
    :cond_49
    aput-object v4, p1, v0

    goto :goto_57

    :cond_4c
    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v3

    .line 33
    invoke-virtual {p2}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;->getRowCountUpperPart()I

    move-result v1

    if-eq v2, v1, :cond_57

    .line 34
    aput-object v4, p1, v0

    :cond_57
    :goto_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5a
    return-void
.end method


# virtual methods
.method adjustCompleteIndicatorColumnRowNumbers(Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;)I
    .registers 16

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/dcloud/zxing2/pdf417/decoder/Codeword;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultRowIndicatorColumn;->setRowNumbers()V

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultRowIndicatorColumn;->removeIncorrectCodewords([Lcom/dcloud/zxing2/pdf417/decoder/Codeword;Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;)V

    .line 4
    invoke-virtual {p0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->getBoundingBox()Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;

    move-result-object v1

    .line 5
    iget-boolean v2, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-eqz v2, :cond_17

    invoke-virtual {v1}, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->getTopLeft()Lcom/dcloud/zxing2/ResultPoint;

    move-result-object v2

    goto :goto_1b

    :cond_17
    invoke-virtual {v1}, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->getTopRight()Lcom/dcloud/zxing2/ResultPoint;

    move-result-object v2

    .line 6
    :goto_1b
    iget-boolean v3, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-eqz v3, :cond_24

    invoke-virtual {v1}, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->getBottomLeft()Lcom/dcloud/zxing2/ResultPoint;

    move-result-object v1

    goto :goto_28

    :cond_24
    invoke-virtual {v1}, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->getBottomRight()Lcom/dcloud/zxing2/ResultPoint;

    move-result-object v1

    .line 7
    :goto_28
    invoke-virtual {v2}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->imageRowToCodewordIndex(I)I

    move-result v2

    .line 8
    invoke-virtual {v1}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->imageRowToCodewordIndex(I)I

    move-result v1

    sub-int v3, v1, v2

    int-to-float v3, v3

    .line 11
    invoke-virtual {p1}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_48
    if-ge v2, v1, :cond_a1

    .line 16
    aget-object v9, v0, v2

    if-nez v9, :cond_4f

    goto :goto_9e

    .line 29
    :cond_4f
    invoke-virtual {v9}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v10

    sub-int/2addr v10, v6

    if-nez v10, :cond_59

    add-int/lit8 v7, v7, 0x1

    goto :goto_9e

    :cond_59
    if-ne v10, v5, :cond_65

    .line 36
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 38
    invoke-virtual {v9}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v6

    :goto_63
    const/4 v7, 0x1

    goto :goto_9e

    :cond_65
    const/4 v11, 0x0

    if-ltz v10, :cond_9c

    .line 40
    invoke-virtual {v9}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v12

    invoke-virtual {p1}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v13

    if-ge v12, v13, :cond_9c

    if-le v10, v2, :cond_75

    goto :goto_9c

    :cond_75
    const/4 v12, 0x2

    if-le v8, v12, :cond_7c

    add-int/lit8 v12, v8, -0x2

    mul-int v10, v10, v12

    :cond_7c
    if-lt v10, v2, :cond_80

    const/4 v12, 0x1

    goto :goto_81

    :cond_80
    const/4 v12, 0x0

    :goto_81
    const/4 v13, 0x1

    :goto_82
    if-gt v13, v10, :cond_92

    if-nez v12, :cond_92

    sub-int v12, v2, v13

    .line 54
    aget-object v12, v0, v12

    if-eqz v12, :cond_8e

    const/4 v12, 0x1

    goto :goto_8f

    :cond_8e
    const/4 v12, 0x0

    :goto_8f
    add-int/lit8 v13, v13, 0x1

    goto :goto_82

    :cond_92
    if-eqz v12, :cond_97

    .line 57
    aput-object v11, v0, v2

    goto :goto_9e

    .line 59
    :cond_97
    invoke-virtual {v9}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v6

    goto :goto_63

    .line 60
    :cond_9c
    :goto_9c
    aput-object v11, v0, v2

    :goto_9e
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    :cond_a1
    float-to-double v0, v3

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int p1, v0

    return p1
.end method

.method adjustIncompleteIndicatorColumnRowNumbers(Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;)I
    .registers 13

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->getBoundingBox()Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->getTopLeft()Lcom/dcloud/zxing2/ResultPoint;

    move-result-object v1

    goto :goto_11

    :cond_d
    invoke-virtual {v0}, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->getTopRight()Lcom/dcloud/zxing2/ResultPoint;

    move-result-object v1

    .line 3
    :goto_11
    iget-boolean v2, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-eqz v2, :cond_1a

    invoke-virtual {v0}, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->getBottomLeft()Lcom/dcloud/zxing2/ResultPoint;

    move-result-object v0

    goto :goto_1e

    :cond_1a
    invoke-virtual {v0}, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->getBottomRight()Lcom/dcloud/zxing2/ResultPoint;

    move-result-object v0

    .line 4
    :goto_1e
    invoke-virtual {v1}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->imageRowToCodewordIndex(I)I

    move-result v1

    .line 5
    invoke-virtual {v0}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->imageRowToCodewordIndex(I)I

    move-result v0

    sub-int v2, v0, v1

    int-to-float v2, v2

    .line 6
    invoke-virtual {p1}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 7
    invoke-virtual {p0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/dcloud/zxing2/pdf417/decoder/Codeword;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_41
    if-ge v1, v0, :cond_77

    .line 12
    aget-object v8, v3, v1

    if-nez v8, :cond_48

    goto :goto_74

    .line 17
    :cond_48
    invoke-virtual {v8}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->setRowNumberAsRowIndicatorColumn()V

    .line 19
    invoke-virtual {v8}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v9

    sub-int/2addr v9, v5

    if-nez v9, :cond_55

    add-int/lit8 v6, v6, 0x1

    goto :goto_74

    :cond_55
    if-ne v9, v4, :cond_61

    .line 26
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 28
    invoke-virtual {v8}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v5

    :goto_5f
    const/4 v6, 0x1

    goto :goto_74

    .line 29
    :cond_61
    invoke-virtual {v8}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v9

    invoke-virtual {p1}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v10

    if-lt v9, v10, :cond_6f

    const/4 v8, 0x0

    .line 30
    aput-object v8, v3, v1

    goto :goto_74

    .line 32
    :cond_6f
    invoke-virtual {v8}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v5

    goto :goto_5f

    :goto_74
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    :cond_77
    float-to-double v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int p1, v0

    return p1
.end method

.method getBarcodeMetadata()Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;
    .registers 14

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/dcloud/zxing2/pdf417/decoder/Codeword;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;

    invoke-direct {v1}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;-><init>()V

    .line 3
    new-instance v2, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;

    invoke-direct {v2}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;-><init>()V

    .line 4
    new-instance v3, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;

    invoke-direct {v3}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;-><init>()V

    .line 5
    new-instance v4, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;

    invoke-direct {v4}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;-><init>()V

    .line 6
    array-length v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1b
    const/4 v8, 0x1

    const/4 v9, 0x3

    if-ge v7, v5, :cond_5a

    aget-object v10, v0, v7

    if-nez v10, :cond_24

    goto :goto_57

    .line 10
    :cond_24
    invoke-virtual {v10}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->setRowNumberAsRowIndicatorColumn()V

    .line 11
    invoke-virtual {v10}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->getValue()I

    move-result v11

    rem-int/lit8 v11, v11, 0x1e

    .line 12
    invoke-virtual {v10}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v10

    .line 13
    iget-boolean v12, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-nez v12, :cond_37

    add-int/lit8 v10, v10, 0x2

    .line 16
    :cond_37
    rem-int/2addr v10, v9

    if-eqz v10, :cond_51

    if-eq v10, v8, :cond_46

    const/4 v8, 0x2

    if-eq v10, v8, :cond_40

    goto :goto_57

    :cond_40
    add-int/lit8 v11, v11, 0x1

    .line 25
    invoke-virtual {v1, v11}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;->setValue(I)V

    goto :goto_57

    .line 26
    :cond_46
    div-int/lit8 v8, v11, 0x3

    invoke-virtual {v4, v8}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;->setValue(I)V

    .line 27
    rem-int/lit8 v11, v11, 0x3

    invoke-virtual {v3, v11}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;->setValue(I)V

    goto :goto_57

    :cond_51
    mul-int/lit8 v11, v11, 0x3

    add-int/2addr v11, v8

    .line 28
    invoke-virtual {v2, v11}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;->setValue(I)V

    :goto_57
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    .line 40
    :cond_5a
    invoke-virtual {v1}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_c0

    .line 41
    invoke-virtual {v2}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_c0

    .line 42
    invoke-virtual {v3}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_c0

    .line 43
    invoke-virtual {v4}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_c0

    .line 44
    invoke-virtual {v1}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v5

    aget v5, v5, v6

    if-lt v5, v8, :cond_c0

    .line 45
    invoke-virtual {v2}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v5

    aget v5, v5, v6

    invoke-virtual {v3}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v7

    aget v7, v7, v6

    add-int/2addr v5, v7

    if-lt v5, v9, :cond_c0

    .line 46
    invoke-virtual {v2}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v5

    aget v5, v5, v6

    invoke-virtual {v3}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v7

    aget v7, v7, v6

    add-int/2addr v5, v7

    const/16 v7, 0x5a

    if-le v5, v7, :cond_9f

    goto :goto_c0

    .line 49
    :cond_9f
    new-instance v5, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v1

    aget v1, v1, v6

    .line 50
    invoke-virtual {v2}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v2

    aget v2, v2, v6

    invoke-virtual {v3}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v3

    aget v3, v3, v6

    invoke-virtual {v4}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v4

    aget v4, v4, v6

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;-><init>(IIII)V

    .line 51
    invoke-direct {p0, v0, v5}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultRowIndicatorColumn;->removeIncorrectCodewords([Lcom/dcloud/zxing2/pdf417/decoder/Codeword;Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;)V

    return-object v5

    :cond_c0
    :goto_c0
    const/4 v0, 0x0

    return-object v0
.end method

.method getRowHeights()[I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_8
    invoke-virtual {p0, v0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultRowIndicatorColumn;->adjustIncompleteIndicatorColumnRowNumbers(Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;)I

    .line 6
    invoke-virtual {v0}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v0

    new-array v1, v0, [I

    .line 7
    invoke-virtual {p0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/dcloud/zxing2/pdf417/decoder/Codeword;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v3, :cond_2d

    aget-object v5, v2, v4

    if-eqz v5, :cond_2a

    .line 9
    invoke-virtual {v5}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v5

    if-lt v5, v0, :cond_24

    goto :goto_2a

    .line 14
    :cond_24
    aget v6, v1, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v1, v5

    :cond_2a
    :goto_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_2d
    return-object v1
.end method

.method isLeft()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    return v0
.end method

.method setRowNumbers()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/dcloud/zxing2/pdf417/decoder/Codeword;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    if-eqz v3, :cond_f

    .line 3
    invoke-virtual {v3}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->setRowNumberAsRowIndicatorColumn()V

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IsLeft: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
