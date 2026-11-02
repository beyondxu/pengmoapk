###### Class com.dcloud.zxing2.pdf417.decoder.DetectionResult (com.dcloud.zxing2.pdf417.decoder.DetectionResult)
.class final Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# static fields
.field private static final ADJUST_ROW_NUMBER_SKIP:I = 0x2


# instance fields
.field private final barcodeColumnCount:I

.field private final barcodeMetadata:Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;

.field private boundingBox:Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;

.field private final detectionResultColumns:[Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;


# direct methods
.method constructor <init>(Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;

    .line 3
    invoke-virtual {p1}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result p1

    iput p1, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    .line 4
    iput-object p2, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->boundingBox:Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;

    add-int/lit8 p1, p1, 0x2

    .line 5
    new-array p1, p1, [Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;

    iput-object p1, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;

    return-void
.end method

.method private adjustIndicatorColumnRowNumbers(Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;)V
    .registers 3

    if-eqz p1, :cond_9

    .line 1
    check-cast p1, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultRowIndicatorColumn;

    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;

    .line 2
    invoke-virtual {p1, v0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultRowIndicatorColumn;->adjustCompleteIndicatorColumnRowNumbers(Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;)I

    :cond_9
    return-void
.end method

.method private static adjustRowNumber(Lcom/dcloud/zxing2/pdf417/decoder/Codeword;Lcom/dcloud/zxing2/pdf417/decoder/Codeword;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1
    :cond_4
    invoke-virtual {p1}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {p1}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->getBucket()I

    move-result v1

    invoke-virtual {p0}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->getBucket()I

    move-result v2

    if-ne v1, v2, :cond_1d

    .line 2
    invoke-virtual {p1}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->getRowNumber()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->setRowNumber(I)V

    const/4 p0, 0x1

    return p0

    :cond_1d
    return v0
.end method

.method private static adjustRowNumberIfValid(IILcom/dcloud/zxing2/pdf417/decoder/Codeword;)I
    .registers 4

    if-nez p2, :cond_3

    goto :goto_16

    .line 1
    :cond_3
    invoke-virtual {p2}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v0

    if-nez v0, :cond_16

    .line 2
    invoke-virtual {p2, p0}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->isValidRowNumber(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3
    invoke-virtual {p2, p0}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->setRowNumber(I)V

    const/4 p0, 0x0

    return p0

    :cond_14
    add-int/lit8 p1, p1, 0x1

    :cond_16
    :goto_16
    return p1
.end method

.method private adjustRowNumbers()I
    .registers 8

    .line 1
    invoke-direct {p0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->adjustRowNumbersByRow()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 5
    :goto_a
    iget v4, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/2addr v4, v2

    if-ge v3, v4, :cond_2f

    .line 6
    iget-object v4, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/dcloud/zxing2/pdf417/decoder/Codeword;

    move-result-object v4

    const/4 v5, 0x0

    .line 7
    :goto_18
    array-length v6, v4

    if-ge v5, v6, :cond_2c

    .line 8
    aget-object v6, v4, v5

    if-nez v6, :cond_20

    goto :goto_29

    .line 11
    :cond_20
    invoke-virtual {v6}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v6

    if-nez v6, :cond_29

    .line 12
    invoke-direct {p0, v3, v5, v4}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->adjustRowNumbers(II[Lcom/dcloud/zxing2/pdf417/decoder/Codeword;)V

    :cond_29
    :goto_29
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_2f
    return v0
.end method

.method private adjustRowNumbers(II[Lcom/dcloud/zxing2/pdf417/decoder/Codeword;)V
    .registers 14

    .line 13
    aget-object v0, p3, p2

    .line 14
    iget-object v1, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/dcloud/zxing2/pdf417/decoder/Codeword;

    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;

    const/4 v3, 0x1

    add-int/2addr p1, v3

    aget-object p1, v2, p1

    if-eqz p1, :cond_19

    .line 17
    invoke-virtual {p1}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/dcloud/zxing2/pdf417/decoder/Codeword;

    move-result-object p1

    goto :goto_1a

    :cond_19
    move-object p1, v1

    :goto_1a
    const/16 v2, 0xe

    .line 20
    new-array v4, v2, [Lcom/dcloud/zxing2/pdf417/decoder/Codeword;

    .line 22
    aget-object v5, v1, p2

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 23
    aget-object v5, p1, p2

    const/4 v7, 0x3

    aput-object v5, v4, v7

    const/4 v5, 0x0

    if-lez p2, :cond_3b

    add-int/lit8 v7, p2, -0x1

    .line 26
    aget-object v8, p3, v7

    aput-object v8, v4, v5

    .line 27
    aget-object v8, v1, v7

    const/4 v9, 0x4

    aput-object v8, v4, v9

    .line 28
    aget-object v7, p1, v7

    const/4 v8, 0x5

    aput-object v7, v4, v8

    :cond_3b
    if-le p2, v3, :cond_51

    add-int/lit8 v7, p2, -0x2

    .line 31
    aget-object v8, p3, v7

    const/16 v9, 0x8

    aput-object v8, v4, v9

    .line 32
    aget-object v8, v1, v7

    const/16 v9, 0xa

    aput-object v8, v4, v9

    .line 33
    aget-object v7, p1, v7

    const/16 v8, 0xb

    aput-object v7, v4, v8

    .line 35
    :cond_51
    array-length v7, p3

    sub-int/2addr v7, v3

    if-ge p2, v7, :cond_65

    add-int/lit8 v7, p2, 0x1

    .line 36
    aget-object v8, p3, v7

    aput-object v8, v4, v3

    .line 37
    aget-object v3, v1, v7

    const/4 v8, 0x6

    aput-object v3, v4, v8

    .line 38
    aget-object v3, p1, v7

    const/4 v7, 0x7

    aput-object v3, v4, v7

    .line 40
    :cond_65
    array-length v3, p3

    sub-int/2addr v3, v6

    if-ge p2, v3, :cond_7c

    add-int/2addr p2, v6

    .line 41
    aget-object p3, p3, p2

    const/16 v3, 0x9

    aput-object p3, v4, v3

    .line 42
    aget-object p3, v1, p2

    const/16 v1, 0xc

    aput-object p3, v4, v1

    .line 43
    aget-object p1, p1, p2

    const/16 p2, 0xd

    aput-object p1, v4, p2

    :cond_7c
    :goto_7c
    if-ge v5, v2, :cond_8a

    .line 45
    aget-object p1, v4, v5

    .line 46
    invoke-static {v0, p1}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->adjustRowNumber(Lcom/dcloud/zxing2/pdf417/decoder/Codeword;Lcom/dcloud/zxing2/pdf417/decoder/Codeword;)Z

    move-result p1

    if-eqz p1, :cond_87

    goto :goto_8a

    :cond_87
    add-int/lit8 v5, v5, 0x1

    goto :goto_7c

    :cond_8a
    :goto_8a
    return-void
.end method

.method private adjustRowNumbersByRow()I
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->adjustRowNumbersFromBothRI()V

    .line 6
    invoke-direct {p0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->adjustRowNumbersFromLRI()I

    move-result v0

    .line 7
    invoke-direct {p0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->adjustRowNumbersFromRRI()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private adjustRowNumbersFromBothRI()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_68

    iget v3, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    aget-object v0, v0, v3

    if-nez v0, :cond_10

    goto :goto_68

    .line 4
    :cond_10
    invoke-virtual {v2}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/dcloud/zxing2/pdf417/decoder/Codeword;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;

    iget v3, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/2addr v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/dcloud/zxing2/pdf417/decoder/Codeword;

    move-result-object v2

    .line 6
    :goto_1f
    array-length v3, v0

    if-ge v1, v3, :cond_68

    .line 7
    aget-object v3, v0, v1

    if-eqz v3, :cond_65

    aget-object v5, v2, v1

    if-eqz v5, :cond_65

    .line 9
    invoke-virtual {v3}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v3

    aget-object v5, v2, v1

    invoke-virtual {v5}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v5

    if-ne v3, v5, :cond_65

    const/4 v3, 0x1

    .line 10
    :goto_37
    iget v5, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    if-gt v3, v5, :cond_65

    .line 11
    iget-object v5, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/dcloud/zxing2/pdf417/decoder/Codeword;

    move-result-object v5

    aget-object v5, v5, v1

    if-nez v5, :cond_48

    goto :goto_62

    .line 15
    :cond_48
    aget-object v6, v0, v1

    invoke-virtual {v6}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->setRowNumber(I)V

    .line 16
    invoke-virtual {v5}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v5

    if-nez v5, :cond_62

    .line 17
    iget-object v5, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/dcloud/zxing2/pdf417/decoder/Codeword;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v6, v5, v1

    :cond_62
    :goto_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    :cond_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_68
    :goto_68
    return-void
.end method

.method private adjustRowNumbersFromLRI()I
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_8

    return v1

    .line 5
    :cond_8
    invoke-virtual {v0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/dcloud/zxing2/pdf417/decoder/Codeword;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 6
    :goto_e
    array-length v4, v0

    if-ge v2, v4, :cond_43

    .line 7
    aget-object v4, v0, v2

    if-nez v4, :cond_16

    goto :goto_40

    .line 10
    :cond_16
    invoke-virtual {v4}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 12
    :goto_1d
    iget v8, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/2addr v8, v5

    if-ge v6, v8, :cond_40

    const/4 v8, 0x2

    if-ge v7, v8, :cond_40

    .line 13
    iget-object v8, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;

    aget-object v8, v8, v6

    invoke-virtual {v8}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/dcloud/zxing2/pdf417/decoder/Codeword;

    move-result-object v8

    aget-object v8, v8, v2

    if-eqz v8, :cond_3d

    .line 15
    invoke-static {v4, v7, v8}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->adjustRowNumberIfValid(IILcom/dcloud/zxing2/pdf417/decoder/Codeword;)I

    move-result v7

    .line 16
    invoke-virtual {v8}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v8

    if-nez v8, :cond_3d

    add-int/lit8 v3, v3, 0x1

    :cond_3d
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :cond_40
    :goto_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_43
    return v3
.end method

.method private adjustRowNumbersFromRRI()I
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;

    iget v1, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 5
    :cond_c
    invoke-virtual {v0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/dcloud/zxing2/pdf417/decoder/Codeword;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 6
    :goto_12
    array-length v4, v0

    if-ge v2, v4, :cond_46

    .line 7
    aget-object v4, v0, v2

    if-nez v4, :cond_1a

    goto :goto_43

    .line 10
    :cond_1a
    invoke-virtual {v4}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v4

    .line 12
    iget v5, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    :goto_23
    if-lez v5, :cond_43

    const/4 v7, 0x2

    if-ge v6, v7, :cond_43

    .line 13
    iget-object v7, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/dcloud/zxing2/pdf417/decoder/Codeword;

    move-result-object v7

    aget-object v7, v7, v2

    if-eqz v7, :cond_40

    .line 15
    invoke-static {v4, v6, v7}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->adjustRowNumberIfValid(IILcom/dcloud/zxing2/pdf417/decoder/Codeword;)I

    move-result v6

    .line 16
    invoke-virtual {v7}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v7

    if-nez v7, :cond_40

    add-int/lit8 v3, v3, 0x1

    :cond_40
    add-int/lit8 v5, v5, -0x1

    goto :goto_23

    :cond_43
    :goto_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_46
    return v3
.end method


# virtual methods
.method getBarcodeColumnCount()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    return v0
.end method

.method getBarcodeECLevel()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v0

    return v0
.end method

.method getBarcodeRowCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->barcodeMetadata:Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v0

    return v0
.end method

.method getBoundingBox()Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->boundingBox:Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;

    return-object v0
.end method

.method getDetectionResultColumn(I)Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;

    aget-object p1, v0, p1

    return-object p1
.end method

.method getDetectionResultColumns()[Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->adjustIndicatorColumnRowNumbers(Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;)V

    .line 2
    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;

    iget v1, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->adjustIndicatorColumnRowNumbers(Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;)V

    const/16 v0, 0x3a0

    .line 7
    :goto_15
    invoke-direct {p0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->adjustRowNumbers()I

    move-result v1

    if-lez v1, :cond_20

    if-lt v1, v0, :cond_1e

    goto :goto_20

    :cond_1e
    move v0, v1

    goto :goto_15

    .line 9
    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;

    return-object v0
.end method

.method public setBoundingBox(Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->boundingBox:Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;

    return-void
.end method

.method setDetectionResultColumn(ILcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;

    aput-object p2, v0, p1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_d

    .line 3
    iget v2, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    add-int/2addr v2, v3

    aget-object v2, v0, v2

    .line 5
    :cond_d
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    const/4 v4, 0x0

    .line 6
    :goto_13
    invoke-virtual {v2}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/dcloud/zxing2/pdf417/decoder/Codeword;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_72

    .line 7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v5, v6, v1

    const-string v5, "CW %3d:"

    invoke-virtual {v0, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const/4 v5, 0x0

    .line 8
    :goto_28
    iget v6, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->barcodeColumnCount:I

    const/4 v7, 0x2

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_68

    .line 9
    iget-object v6, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->detectionResultColumns:[Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;

    aget-object v6, v6, v5

    const-string v8, "    |   "

    if-nez v6, :cond_3c

    .line 10
    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v8, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_65

    .line 13
    :cond_3c
    invoke-virtual {v6}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/dcloud/zxing2/pdf417/decoder/Codeword;

    move-result-object v6

    aget-object v6, v6, v4

    if-nez v6, :cond_4a

    .line 15
    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v8, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_65

    .line 18
    :cond_4a
    invoke-virtual {v6}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->getValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v8, v7, v1

    aput-object v6, v7, v3

    const-string v6, " %3d|%3d"

    invoke-virtual {v0, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    :goto_65
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 20
    :cond_68
    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "%n"

    invoke-virtual {v0, v6, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 22
    :cond_72
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    return-object v1
.end method
