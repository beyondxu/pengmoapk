###### Class com.dcloud.zxing2.pdf417.decoder.PDF417ScanningDecoder (com.dcloud.zxing2.pdf417.decoder.PDF417ScanningDecoder)
.class public final Lcom/dcloud/zxing2/pdf417/decoder/PDF417ScanningDecoder;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# static fields
.field private static final CODEWORD_SKEW_SIZE:I = 0x2

.field private static final MAX_EC_CODEWORDS:I = 0x200

.field private static final MAX_ERRORS:I = 0x3

.field private static final errorCorrection:Lcom/dcloud/zxing2/pdf417/decoder/ec/ErrorCorrection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ErrorCorrection;

    invoke-direct {v0}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ErrorCorrection;-><init>()V

    sput-object v0, Lcom/dcloud/zxing2/pdf417/decoder/PDF417ScanningDecoder;->errorCorrection:Lcom/dcloud/zxing2/pdf417/decoder/ec/ErrorCorrection;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjustBoundingBox(Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;,
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1
    :cond_4
    invoke-virtual {p0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultRowIndicatorColumn;->getRowHeights()[I

    move-result-object v1

    if-nez v1, :cond_b

    return-object v0

    .line 5
    :cond_b
    invoke-static {v1}, Lcom/dcloud/zxing2/pdf417/decoder/PDF417ScanningDecoder;->getMax([I)I

    move-result v0

    .line 7
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_13
    if-ge v4, v2, :cond_20

    aget v6, v1, v4

    sub-int v7, v0, v6

    add-int/2addr v5, v7

    if-lez v6, :cond_1d

    goto :goto_20

    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 13
    :cond_20
    :goto_20
    invoke-virtual {p0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/dcloud/zxing2/pdf417/decoder/Codeword;

    move-result-object v2

    const/4 v4, 0x0

    :goto_25
    if-lez v5, :cond_30

    .line 14
    aget-object v6, v2, v4

    if-nez v6, :cond_30

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 18
    :cond_30
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    :goto_33
    if-ltz v4, :cond_40

    .line 19
    aget v6, v1, v4

    sub-int v7, v0, v6

    add-int/2addr v3, v7

    if-lez v6, :cond_3d

    goto :goto_40

    :cond_3d
    add-int/lit8 v4, v4, -0x1

    goto :goto_33

    .line 24
    :cond_40
    :goto_40
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_43
    if-lez v3, :cond_4e

    aget-object v1, v2, v0

    if-nez v1, :cond_4e

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_43

    .line 27
    :cond_4e
    invoke-virtual {p0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->getBoundingBox()Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;

    move-result-object v0

    .line 28
    invoke-virtual {p0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft()Z

    move-result p0

    .line 29
    invoke-virtual {v0, v5, v3, p0}, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->addMissingRows(IIZ)Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;

    move-result-object p0

    return-object p0
.end method

.method private static adjustCodewordCount(Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;[[Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    aget-object v1, p1, v0

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v3

    .line 3
    invoke-virtual {p0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v4

    mul-int v3, v3, v4

    .line 4
    invoke-virtual {p0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->getBarcodeECLevel()I

    move-result p0

    invoke-static {p0}, Lcom/dcloud/zxing2/pdf417/decoder/PDF417ScanningDecoder;->getNumberOfECCodeWords(I)I

    move-result p0

    sub-int/2addr v3, p0

    .line 5
    array-length p0, v1

    if-nez p0, :cond_33

    if-lt v3, v2, :cond_2e

    const/16 p0, 0x3a0

    if-gt v3, p0, :cond_2e

    .line 9
    aget-object p0, p1, v0

    aget-object p0, p0, v2

    invoke-virtual {p0, v3}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;->setValue(I)V

    return-void

    .line 10
    :cond_2e
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p0

    throw p0

    .line 13
    :cond_33
    aget p0, v1, v0

    if-eq p0, v3, :cond_3e

    .line 15
    aget-object p0, p1, v0

    aget-object p0, p0, v2

    invoke-virtual {p0, v3}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;->setValue(I)V

    :cond_3e
    return-void
.end method

.method private static adjustCodewordStartColumn(Lcom/dcloud/zxing2/common/BitMatrix;IIZII)I
    .registers 11

    if-eqz p3, :cond_4

    const/4 v0, -0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x1

    :goto_5
    const/4 v1, 0x0

    move v2, p4

    :goto_7
    const/4 v3, 0x2

    if-ge v1, v3, :cond_29

    :goto_a
    if-eqz p3, :cond_e

    if-ge v2, p1, :cond_12

    :cond_e
    if-nez p3, :cond_23

    if-ge v2, p2, :cond_23

    .line 1
    :cond_12
    invoke-virtual {p0, v2, p5}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v4

    if-ne p3, v4, :cond_23

    sub-int v4, p4, v2

    .line 2
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v4, v3, :cond_21

    return p4

    :cond_21
    add-int/2addr v2, v0

    goto :goto_a

    :cond_23
    neg-int v0, v0

    xor-int/lit8 p3, p3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_29
    return v2
.end method

.method private static checkCodewordSkew(III)Z
    .registers 3

    add-int/lit8 p1, p1, -0x2

    if-gt p1, p0, :cond_a

    add-int/lit8 p2, p2, 0x2

    if-gt p0, p2, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private static correctErrors([I[II)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/ChecksumException;
        }
    .end annotation

    if-eqz p1, :cond_9

    .line 1
    array-length v0, p1

    div-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, 0x3

    if-gt v0, v1, :cond_16

    :cond_9
    if-ltz p2, :cond_16

    const/16 v0, 0x200

    if-gt p2, v0, :cond_16

    .line 8
    sget-object v0, Lcom/dcloud/zxing2/pdf417/decoder/PDF417ScanningDecoder;->errorCorrection:Lcom/dcloud/zxing2/pdf417/decoder/ec/ErrorCorrection;

    invoke-virtual {v0, p0, p2, p1}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ErrorCorrection;->decode([II[I)I

    move-result p0

    return p0

    .line 9
    :cond_16
    invoke-static {}, Lcom/dcloud/zxing2/ChecksumException;->getChecksumInstance()Lcom/dcloud/zxing2/ChecksumException;

    move-result-object p0

    throw p0
.end method

.method private static createBarcodeMatrix(Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;)[[Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v1

    const/4 v2, 0x2

    add-int/2addr v1, v2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v0, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;

    const/4 v2, 0x0

    .line 2
    :goto_1b
    array-length v3, v0

    if-ge v2, v3, :cond_31

    const/4 v3, 0x0

    .line 3
    :goto_1f
    aget-object v4, v0, v2

    array-length v5, v4

    if-ge v3, v5, :cond_2e

    .line 4
    new-instance v5, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;

    invoke-direct {v5}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;-><init>()V

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 9
    :cond_31
    invoke-virtual {p0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->getDetectionResultColumns()[Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_38
    if-ge v3, v2, :cond_67

    aget-object v5, p0, v3

    if-eqz v5, :cond_62

    .line 11
    invoke-virtual {v5}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/dcloud/zxing2/pdf417/decoder/Codeword;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_44
    if-ge v7, v6, :cond_62

    aget-object v8, v5, v7

    if-eqz v8, :cond_5f

    .line 13
    invoke-virtual {v8}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v9

    if-ltz v9, :cond_5f

    .line 15
    array-length v10, v0

    if-lt v9, v10, :cond_54

    goto :goto_5f

    .line 19
    :cond_54
    aget-object v9, v0, v9

    aget-object v9, v9, v4

    invoke-virtual {v8}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->getValue()I

    move-result v8

    invoke-virtual {v9, v8}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;->setValue(I)V

    :cond_5f
    :goto_5f
    add-int/lit8 v7, v7, 0x1

    goto :goto_44

    :cond_62
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    :cond_67
    return-object v0
.end method

.method private static createDecoderResult(Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;)Lcom/dcloud/zxing2/common/DecoderResult;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;,
            Lcom/dcloud/zxing2/ChecksumException;,
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/dcloud/zxing2/pdf417/decoder/PDF417ScanningDecoder;->createBarcodeMatrix(Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;)[[Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lcom/dcloud/zxing2/pdf417/decoder/PDF417ScanningDecoder;->adjustCodewordCount(Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;[[Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;)V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v3

    mul-int v2, v2, v3

    new-array v2, v2, [I

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 7
    :goto_24
    invoke-virtual {p0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v7

    if-ge v6, v7, :cond_65

    const/4 v7, 0x0

    .line 8
    :goto_2b
    invoke-virtual {p0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v8

    if-ge v7, v8, :cond_62

    .line 9
    aget-object v8, v0, v6

    add-int/lit8 v9, v7, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v8

    .line 10
    invoke-virtual {p0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v10

    mul-int v10, v10, v6

    add-int/2addr v10, v7

    .line 11
    array-length v7, v8

    if-nez v7, :cond_4d

    .line 12
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_60

    .line 13
    :cond_4d
    array-length v7, v8

    const/4 v11, 0x1

    if-ne v7, v11, :cond_56

    .line 14
    aget v7, v8, v5

    aput v7, v2, v10

    goto :goto_60

    .line 16
    :cond_56
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_60
    move v7, v9

    goto :goto_2b

    :cond_62
    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    .line 21
    :cond_65
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [[I

    :goto_6b
    if-ge v5, v0, :cond_78

    .line 23
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_6b

    .line 25
    :cond_78
    invoke-virtual {p0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->getBarcodeECLevel()I

    move-result p0

    .line 26
    invoke-static {v1}, Lcom/dcloud/zxing2/pdf417/PDF417Common;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v0

    invoke-static {v4}, Lcom/dcloud/zxing2/pdf417/PDF417Common;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v1

    .line 27
    invoke-static {p0, v2, v0, v1, v6}, Lcom/dcloud/zxing2/pdf417/decoder/PDF417ScanningDecoder;->createDecoderResultFromAmbiguousValues(I[I[I[I[[I)Lcom/dcloud/zxing2/common/DecoderResult;

    move-result-object p0

    return-object p0
.end method

.method private static createDecoderResultFromAmbiguousValues(I[I[I[I[[I)Lcom/dcloud/zxing2/common/DecoderResult;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;,
            Lcom/dcloud/zxing2/ChecksumException;
        }
    .end annotation

    .line 1
    array-length v0, p3

    new-array v1, v0, [I

    const/16 v2, 0x64

    :goto_5
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_47

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v0, :cond_1a

    .line 6
    aget v5, p3, v4

    aget-object v6, p4, v4

    aget v7, v1, v4

    aget v6, v6, v7

    aput v6, p1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 9
    :cond_1a
    :try_start_1a
    invoke-static {p1, p0, p2}, Lcom/dcloud/zxing2/pdf417/decoder/PDF417ScanningDecoder;->decodeCodewords([II[I)Lcom/dcloud/zxing2/common/DecoderResult;

    move-result-object p0
    :try_end_1e
    .catch Lcom/dcloud/zxing2/ChecksumException; {:try_start_1a .. :try_end_1e} :catch_1f

    return-object p0

    :catch_1f
    if-eqz v0, :cond_42

    const/4 v4, 0x0

    :goto_22
    if-ge v4, v0, :cond_40

    .line 17
    aget v5, v1, v4

    aget-object v6, p4, v4

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_32

    add-int/lit8 v5, v5, 0x1

    .line 18
    aput v5, v1, v4

    goto :goto_40

    .line 21
    :cond_32
    aput v2, v1, v4

    add-int/lit8 v5, v0, -0x1

    if-eq v4, v5, :cond_3b

    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 23
    :cond_3b
    invoke-static {}, Lcom/dcloud/zxing2/ChecksumException;->getChecksumInstance()Lcom/dcloud/zxing2/ChecksumException;

    move-result-object p0

    throw p0

    :cond_40
    :goto_40
    move v2, v3

    goto :goto_5

    .line 24
    :cond_42
    invoke-static {}, Lcom/dcloud/zxing2/ChecksumException;->getChecksumInstance()Lcom/dcloud/zxing2/ChecksumException;

    move-result-object p0

    throw p0

    .line 38
    :cond_47
    invoke-static {}, Lcom/dcloud/zxing2/ChecksumException;->getChecksumInstance()Lcom/dcloud/zxing2/ChecksumException;

    move-result-object p0

    throw p0
.end method

.method public static decode(Lcom/dcloud/zxing2/common/BitMatrix;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;II)Lcom/dcloud/zxing2/common/DecoderResult;
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;,
            Lcom/dcloud/zxing2/FormatException;,
            Lcom/dcloud/zxing2/ChecksumException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;-><init>(Lcom/dcloud/zxing2/common/BitMatrix;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)V

    const/4 v1, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    move-object v0, v1

    move-object v3, v0

    const/4 v7, 0x0

    :goto_15
    const/4 v4, 0x2

    if-ge v7, v4, :cond_76

    if-eqz p1, :cond_29

    const/4 v4, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v5, p5

    move/from16 v6, p6

    .line 7
    invoke-static/range {v1 .. v6}, Lcom/dcloud/zxing2/pdf417/decoder/PDF417ScanningDecoder;->getRowIndicatorColumn(Lcom/dcloud/zxing2/common/BitMatrix;Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;Lcom/dcloud/zxing2/ResultPoint;ZII)Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultRowIndicatorColumn;

    move-result-object v4

    move-object v8, v4

    goto :goto_2a

    :cond_29
    move-object v8, v1

    :goto_2a
    if-eqz p3, :cond_39

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    .line 11
    invoke-static/range {v1 .. v6}, Lcom/dcloud/zxing2/pdf417/decoder/PDF417ScanningDecoder;->getRowIndicatorColumn(Lcom/dcloud/zxing2/common/BitMatrix;Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;Lcom/dcloud/zxing2/ResultPoint;ZII)Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultRowIndicatorColumn;

    move-result-object v0

    :cond_39
    move-object v10, v2

    .line 14
    invoke-static {v8, v0}, Lcom/dcloud/zxing2/pdf417/decoder/PDF417ScanningDecoder;->merge(Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;

    move-result-object v3

    if-eqz v3, :cond_71

    if-nez v7, :cond_6c

    .line 18
    invoke-virtual {v3}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;

    move-result-object v1

    if-eqz v1, :cond_6c

    .line 19
    invoke-virtual {v3}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v1

    invoke-virtual {v10}, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v2

    if-lt v1, v2, :cond_64

    invoke-virtual {v3}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;

    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v1

    invoke-virtual {v10}, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v2

    if-le v1, v2, :cond_6c

    .line 21
    :cond_64
    invoke-virtual {v3}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;

    move-result-object v2

    add-int/lit8 v7, v7, 0x1

    move-object v1, v8

    goto :goto_15

    .line 23
    :cond_6c
    invoke-virtual {v3, v10}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->setBoundingBox(Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;)V

    move-object v1, v8

    goto :goto_77

    .line 24
    :cond_71
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object v0

    throw v0

    :cond_76
    move-object v10, v2

    :goto_77
    move-object v11, v3

    .line 35
    invoke-virtual {v11}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v2

    const/4 v12, 0x1

    add-int/lit8 v13, v2, 0x1

    .line 36
    invoke-virtual {v11, v9, v1}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->setDetectionResultColumn(ILcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;)V

    .line 37
    invoke-virtual {v11, v13, v0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->setDetectionResultColumn(ILcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;)V

    if-eqz v1, :cond_89

    const/4 v4, 0x1

    goto :goto_8a

    :cond_89
    const/4 v4, 0x0

    :goto_8a
    move/from16 v0, p5

    move/from16 v1, p6

    const/4 v14, 0x1

    :goto_8f
    if-gt v14, v13, :cond_118

    if-eqz v4, :cond_95

    move v15, v14

    goto :goto_98

    :cond_95
    sub-int v2, v13, v14

    move v15, v2

    .line 42
    :goto_98
    invoke-virtual {v11, v15}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;

    move-result-object v2

    if-eqz v2, :cond_a0

    goto/16 :goto_113

    :cond_a0
    if-eqz v15, :cond_ab

    if-ne v15, v13, :cond_a5

    goto :goto_ab

    .line 50
    :cond_a5
    new-instance v2, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;

    invoke-direct {v2, v10}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;-><init>(Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;)V

    goto :goto_b5

    .line 51
    :cond_ab
    :goto_ab
    new-instance v2, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultRowIndicatorColumn;

    if-nez v15, :cond_b1

    const/4 v3, 0x1

    goto :goto_b2

    :cond_b1
    const/4 v3, 0x0

    :goto_b2
    invoke-direct {v2, v10, v3}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultRowIndicatorColumn;-><init>(Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;Z)V

    .line 55
    :goto_b5
    invoke-virtual {v11, v15, v2}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->setDetectionResultColumn(ILcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;)V

    .line 59
    invoke-virtual {v10}, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v3

    const/4 v5, -0x1

    move v7, v0

    move v8, v1

    move v6, v3

    const/4 v0, -0x1

    :goto_c1
    invoke-virtual {v10}, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v1

    if-gt v6, v1, :cond_111

    .line 60
    invoke-static {v11, v15, v6, v4}, Lcom/dcloud/zxing2/pdf417/decoder/PDF417ScanningDecoder;->getStartColumn(Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;IIZ)I

    move-result v1

    if-ltz v1, :cond_d6

    .line 61
    invoke-virtual {v10}, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->getMaxX()I

    move-result v3

    if-le v1, v3, :cond_d4

    goto :goto_d6

    :cond_d4
    :goto_d4
    move-object v3, v2

    goto :goto_de

    :cond_d6
    :goto_d6
    if-ne v0, v5, :cond_dc

    move-object v9, v2

    const/16 v16, -0x1

    goto :goto_10b

    :cond_dc
    move v1, v0

    goto :goto_d4

    .line 67
    :goto_de
    invoke-virtual {v10}, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->getMinX()I

    move-result v2

    move-object/from16 v16, v3

    invoke-virtual {v10}, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->getMaxX()I

    move-result v3

    move v5, v1

    move-object/from16 v9, v16

    const/16 v16, -0x1

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/dcloud/zxing2/pdf417/decoder/PDF417ScanningDecoder;->detectCodeword(Lcom/dcloud/zxing2/common/BitMatrix;IIZIIII)Lcom/dcloud/zxing2/pdf417/decoder/Codeword;

    move-result-object v2

    if-eqz v2, :cond_10b

    .line 70
    invoke-virtual {v9, v6, v2}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->setCodeword(ILcom/dcloud/zxing2/pdf417/decoder/Codeword;)V

    .line 72
    invoke-virtual {v2}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->getWidth()I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 73
    invoke-virtual {v2}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->getWidth()I

    move-result v1

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v7, v0

    move v8, v1

    move v0, v5

    :cond_10b
    :goto_10b
    add-int/lit8 v6, v6, 0x1

    move-object v2, v9

    const/4 v5, -0x1

    const/4 v9, 0x0

    goto :goto_c1

    :cond_111
    move v0, v7

    move v1, v8

    :goto_113
    add-int/lit8 v14, v14, 0x1

    const/4 v9, 0x0

    goto/16 :goto_8f

    .line 77
    :cond_118
    invoke-static {v11}, Lcom/dcloud/zxing2/pdf417/decoder/PDF417ScanningDecoder;->createDecoderResult(Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;)Lcom/dcloud/zxing2/common/DecoderResult;

    move-result-object v0

    return-object v0
.end method

.method private static decodeCodewords([II[I)Lcom/dcloud/zxing2/common/DecoderResult;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;,
            Lcom/dcloud/zxing2/ChecksumException;
        }
    .end annotation

    .line 1
    array-length v0, p0

    if-eqz v0, :cond_27

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 6
    invoke-static {p0, p2, v0}, Lcom/dcloud/zxing2/pdf417/decoder/PDF417ScanningDecoder;->correctErrors([I[II)I

    move-result v1

    .line 7
    invoke-static {p0, v0}, Lcom/dcloud/zxing2/pdf417/decoder/PDF417ScanningDecoder;->verifyCodewordCount([II)V

    .line 10
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;->decode([ILjava/lang/String;)Lcom/dcloud/zxing2/common/DecoderResult;

    move-result-object p0

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dcloud/zxing2/common/DecoderResult;->setErrorsCorrected(Ljava/lang/Integer;)V

    .line 12
    array-length p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dcloud/zxing2/common/DecoderResult;->setErasures(Ljava/lang/Integer;)V

    return-object p0

    .line 13
    :cond_27
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0
.end method

.method private static detectCodeword(Lcom/dcloud/zxing2/common/BitMatrix;IIZIIII)Lcom/dcloud/zxing2/pdf417/decoder/Codeword;
    .registers 10

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/dcloud/zxing2/pdf417/decoder/PDF417ScanningDecoder;->adjustCodewordStartColumn(Lcom/dcloud/zxing2/common/BitMatrix;IIZII)I

    move-result p4

    .line 6
    invoke-static/range {p0 .. p5}, Lcom/dcloud/zxing2/pdf417/decoder/PDF417ScanningDecoder;->getModuleBitCount(Lcom/dcloud/zxing2/common/BitMatrix;IIZII)[I

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_c

    return-object p1

    .line 11
    :cond_c
    invoke-static {p0}, Lcom/dcloud/zxing2/pdf417/PDF417Common;->getBitCountSum([I)I

    move-result p2

    if-eqz p3, :cond_15

    add-int p3, p4, p2

    goto :goto_33

    :cond_15
    const/4 p3, 0x0

    .line 15
    :goto_16
    array-length p5, p0

    div-int/lit8 p5, p5, 0x2

    if-ge p3, p5, :cond_2e

    .line 16
    aget p5, p0, p3

    .line 17
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p3

    aget v0, p0, v0

    aput v0, p0, p3

    .line 18
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p3

    aput p5, p0, v0

    add-int/lit8 p3, p3, 0x1

    goto :goto_16

    :cond_2e
    sub-int p3, p4, p2

    move v1, p4

    move p4, p3

    move p3, v1

    .line 37
    :goto_33
    invoke-static {p2, p6, p7}, Lcom/dcloud/zxing2/pdf417/decoder/PDF417ScanningDecoder;->checkCodewordSkew(III)Z

    move-result p2

    if-nez p2, :cond_3a

    return-object p1

    .line 43
    :cond_3a
    invoke-static {p0}, Lcom/dcloud/zxing2/pdf417/decoder/PDF417CodewordDecoder;->getDecodedValue([I)I

    move-result p0

    .line 44
    invoke-static {p0}, Lcom/dcloud/zxing2/pdf417/PDF417Common;->getCodeword(I)I

    move-result p2

    const/4 p5, -0x1

    if-ne p2, p5, :cond_46

    return-object p1

    .line 48
    :cond_46
    new-instance p1, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;

    invoke-static {p0}, Lcom/dcloud/zxing2/pdf417/decoder/PDF417ScanningDecoder;->getCodewordBucketNumber(I)I

    move-result p0

    invoke-direct {p1, p4, p3, p0, p2}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;-><init>(IIII)V

    return-object p1
.end method

.method private static getBarcodeMetadata(Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_33

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;

    move-result-object p0

    if-nez p0, :cond_a

    goto :goto_33

    :cond_a
    if-eqz p1, :cond_32

    .line 6
    invoke-virtual {p1}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;

    move-result-object p1

    if-nez p1, :cond_13

    goto :goto_32

    .line 10
    :cond_13
    invoke-virtual {p0}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v1

    invoke-virtual {p1}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v2

    if-eq v1, v2, :cond_32

    .line 11
    invoke-virtual {p0}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v1

    invoke-virtual {p1}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v2

    if-eq v1, v2, :cond_32

    .line 12
    invoke-virtual {p0}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v1

    invoke-virtual {p1}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result p1

    if-eq v1, p1, :cond_32

    return-object v0

    :cond_32
    :goto_32
    return-object p0

    :cond_33
    :goto_33
    if-nez p1, :cond_36

    return-object v0

    .line 13
    :cond_36
    invoke-virtual {p1}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;

    move-result-object p0

    return-object p0
.end method

.method private static getBitCountForCodeword(I)[I
    .registers 5

    const/16 v0, 0x8

    .line 1
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x7

    :goto_6
    and-int/lit8 v3, p0, 0x1

    if-eq v3, v1, :cond_10

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_f

    return-object v0

    :cond_f
    move v1, v3

    .line 12
    :cond_10
    aget v3, v0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v2

    shr-int/lit8 p0, p0, 0x1

    goto :goto_6
.end method

.method private static getCodewordBucketNumber(I)I
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/dcloud/zxing2/pdf417/decoder/PDF417ScanningDecoder;->getBitCountForCodeword(I)[I

    move-result-object p0

    invoke-static {p0}, Lcom/dcloud/zxing2/pdf417/decoder/PDF417ScanningDecoder;->getCodewordBucketNumber([I)I

    move-result p0

    return p0
.end method

.method private static getCodewordBucketNumber([I)I
    .registers 3

    const/4 v0, 0x0

    .line 2
    aget v0, p0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    aget v1, p0, v1

    add-int/2addr v0, v1

    const/4 v1, 0x6

    aget p0, p0, v1

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x9

    rem-int/lit8 v0, v0, 0x9

    return v0
.end method

.method private static getMax([I)I
    .registers 5

    .line 1
    array-length v0, p0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_e

    aget v3, p0, v2

    .line 2
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_e
    return v1
.end method

.method private static getModuleBitCount(Lcom/dcloud/zxing2/common/BitMatrix;IIZII)[I
    .registers 13

    const/16 v0, 0x8

    .line 1
    new-array v1, v0, [I

    const/4 v2, 0x1

    if-eqz p3, :cond_9

    const/4 v3, 0x1

    goto :goto_a

    :cond_9
    const/4 v3, -0x1

    :goto_a
    const/4 v4, 0x0

    move v5, p3

    :goto_c
    if-eqz p3, :cond_10

    if-lt p4, p2, :cond_14

    :cond_10
    if-nez p3, :cond_28

    if-lt p4, p1, :cond_28

    :cond_14
    if-ge v4, v0, :cond_28

    .line 7
    invoke-virtual {p0, p4, p5}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v6

    if-ne v6, v5, :cond_23

    .line 8
    aget v6, v1, v4

    add-int/2addr v6, v2

    aput v6, v1, v4

    add-int/2addr p4, v3

    goto :goto_c

    :cond_23
    add-int/lit8 v4, v4, 0x1

    xor-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_28
    if-eq v4, v0, :cond_38

    if-eqz p3, :cond_2e

    if-eq p4, p2, :cond_32

    :cond_2e
    if-nez p3, :cond_36

    if-ne p4, p1, :cond_36

    :cond_32
    const/4 p0, 0x7

    if-ne v4, p0, :cond_36

    goto :goto_38

    :cond_36
    const/4 p0, 0x0

    return-object p0

    :cond_38
    :goto_38
    return-object v1
.end method

.method private static getNumberOfECCodeWords(I)I
    .registers 2

    const/4 v0, 0x2

    shl-int p0, v0, p0

    return p0
.end method

.method private static getRowIndicatorColumn(Lcom/dcloud/zxing2/common/BitMatrix;Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;Lcom/dcloud/zxing2/ResultPoint;ZII)Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .registers 17

    .line 1
    new-instance v8, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultRowIndicatorColumn;

    invoke-direct {v8, p1, p3}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultRowIndicatorColumn;-><init>(Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;Z)V

    const/4 v0, 0x0

    const/4 v9, 0x0

    :goto_7
    const/4 v0, 0x2

    if-ge v9, v0, :cond_4d

    if-nez v9, :cond_f

    const/4 v0, 0x1

    const/4 v10, 0x1

    goto :goto_11

    :cond_f
    const/4 v0, -0x1

    const/4 v10, -0x1

    .line 5
    :goto_11
    invoke-virtual {p2}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 6
    invoke-virtual {p2}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v1

    float-to-int v1, v1

    move v4, v0

    move v5, v1

    :goto_1d
    invoke-virtual {p1}, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v0

    if-gt v5, v0, :cond_4a

    .line 7
    invoke-virtual {p1}, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v0

    if-lt v5, v0, :cond_4a

    .line 8
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitMatrix;->getWidth()I

    move-result v2

    const/4 v1, 0x0

    move-object v0, p0

    move v3, p3

    move v6, p4

    move/from16 v7, p5

    invoke-static/range {v0 .. v7}, Lcom/dcloud/zxing2/pdf417/decoder/PDF417ScanningDecoder;->detectCodeword(Lcom/dcloud/zxing2/common/BitMatrix;IIZIIII)Lcom/dcloud/zxing2/pdf417/decoder/Codeword;

    move-result-object v1

    if-eqz v1, :cond_48

    .line 11
    invoke-virtual {v8, v5, v1}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->setCodeword(ILcom/dcloud/zxing2/pdf417/decoder/Codeword;)V

    if-eqz p3, :cond_43

    .line 13
    invoke-virtual {v1}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->getStartX()I

    move-result v0

    goto :goto_47

    .line 15
    :cond_43
    invoke-virtual {v1}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->getEndX()I

    move-result v0

    :goto_47
    move v4, v0

    :cond_48
    add-int/2addr v5, v10

    goto :goto_1d

    :cond_4a
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_4d
    return-object v8
.end method

.method private static getStartColumn(Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;IIZ)I
    .registers 10

    if-eqz p3, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, -0x1

    :goto_5
    sub-int v1, p1, v0

    .line 1
    invoke-static {p0, v1}, Lcom/dcloud/zxing2/pdf417/decoder/PDF417ScanningDecoder;->isValidBarcodeColumn(Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2
    invoke-virtual {p0, v1}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->getCodeword(I)Lcom/dcloud/zxing2/pdf417/decoder/Codeword;

    move-result-object v2

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    if-eqz v2, :cond_25

    if-eqz p3, :cond_20

    .line 5
    invoke-virtual {v2}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->getEndX()I

    move-result p0

    return p0

    :cond_20
    invoke-virtual {v2}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->getStartX()I

    move-result p0

    return p0

    .line 7
    :cond_25
    invoke-virtual {p0, p1}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->getCodewordNearby(I)Lcom/dcloud/zxing2/pdf417/decoder/Codeword;

    move-result-object v2

    if-eqz v2, :cond_3b

    if-eqz p3, :cond_36

    .line 9
    invoke-virtual {v2}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->getStartX()I

    move-result p0

    return p0

    :cond_36
    invoke-virtual {v2}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->getEndX()I

    move-result p0

    return p0

    .line 11
    :cond_3b
    invoke-static {p0, v1}, Lcom/dcloud/zxing2/pdf417/decoder/PDF417ScanningDecoder;->isValidBarcodeColumn(Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;I)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 12
    invoke-virtual {p0, v1}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->getCodewordNearby(I)Lcom/dcloud/zxing2/pdf417/decoder/Codeword;

    move-result-object v2

    :cond_49
    if-eqz v2, :cond_57

    if-eqz p3, :cond_52

    .line 15
    invoke-virtual {v2}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->getEndX()I

    move-result p0

    return p0

    :cond_52
    invoke-virtual {v2}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->getStartX()I

    move-result p0

    return p0

    :cond_57
    const/4 p2, 0x0

    const/4 v1, 0x0

    :goto_59
    sub-int/2addr p1, v0

    .line 19
    invoke-static {p0, p1}, Lcom/dcloud/zxing2/pdf417/decoder/PDF417ScanningDecoder;->isValidBarcodeColumn(Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;I)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 21
    invoke-virtual {p0, p1}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/dcloud/zxing2/pdf417/decoder/Codeword;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_6a
    if-ge v4, v3, :cond_8d

    aget-object v5, v2, v4

    if-eqz v5, :cond_8a

    if-eqz p3, :cond_77

    .line 23
    invoke-virtual {v5}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->getEndX()I

    move-result p0

    goto :goto_7b

    :cond_77
    invoke-virtual {v5}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->getStartX()I

    move-result p0

    :goto_7b
    mul-int v0, v0, v1

    .line 26
    invoke-virtual {v5}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->getEndX()I

    move-result p1

    invoke-virtual {v5}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->getStartX()I

    move-result p2

    sub-int/2addr p1, p2

    mul-int v0, v0, p1

    add-int/2addr p0, v0

    return p0

    :cond_8a
    add-int/lit8 v4, v4, 0x1

    goto :goto_6a

    :cond_8d
    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    :cond_90
    if-eqz p3, :cond_9b

    .line 31
    invoke-virtual {p0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->getMinX()I

    move-result p0

    return p0

    :cond_9b
    invoke-virtual {p0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->getMaxX()I

    move-result p0

    return p0
.end method

.method private static isValidBarcodeColumn(Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;I)Z
    .registers 3

    if-ltz p1, :cond_b

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result p0

    const/4 v0, 0x1

    add-int/2addr p0, v0

    if-gt p1, p0, :cond_b

    return v0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method private static merge(Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;,
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    return-object v0

    .line 1
    :cond_6
    invoke-static {p0, p1}, Lcom/dcloud/zxing2/pdf417/decoder/PDF417ScanningDecoder;->getBarcodeMetadata(Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;

    move-result-object v1

    if-nez v1, :cond_d

    return-object v0

    .line 5
    :cond_d
    invoke-static {p0}, Lcom/dcloud/zxing2/pdf417/decoder/PDF417ScanningDecoder;->adjustBoundingBox(Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;

    move-result-object p0

    .line 6
    invoke-static {p1}, Lcom/dcloud/zxing2/pdf417/decoder/PDF417ScanningDecoder;->adjustBoundingBox(Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;

    move-result-object p1

    .line 7
    invoke-static {p0, p1}, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->merge(Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;)Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;

    move-result-object p0

    .line 9
    new-instance p1, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;

    invoke-direct {p1, v1, p0}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResult;-><init>(Lcom/dcloud/zxing2/pdf417/decoder/BarcodeMetadata;Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;)V

    return-object p1
.end method

.method public static toString([[Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;)Ljava/lang/String;
    .registers 9

    .line 1
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_7
    array-length v3, p0

    if-ge v2, v3, :cond_5b

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v3, v5, v1

    const-string v3, "Row %2d: "

    invoke-virtual {v0, v3, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const/4 v3, 0x0

    .line 4
    :goto_19
    aget-object v5, p0, v2

    array-length v6, v5

    if-ge v3, v6, :cond_51

    .line 5
    aget-object v5, v5, v3

    .line 6
    invoke-virtual {v5}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_2e

    .line 7
    const-string v5, "        "

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_4e

    .line 9
    :cond_2e
    invoke-virtual {v5}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v6

    aget v6, v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 10
    invoke-virtual {v5}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v7

    aget v7, v7, v1

    invoke-virtual {v5, v7}, Lcom/dcloud/zxing2/pdf417/decoder/BarcodeValue;->getConfidence(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v1

    aput-object v5, v7, v4

    .line 11
    const-string v5, "%4d(%2d)"

    invoke-virtual {v0, v5, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    :goto_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 15
    :cond_51
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "%n"

    invoke-virtual {v0, v4, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 17
    :cond_5b
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 18
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    return-object p0
.end method

.method private static verifyCodewordCount([II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    .line 1
    array-length v0, p0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1f

    const/4 v0, 0x0

    .line 9
    aget v1, p0, v0

    .line 10
    array-length v2, p0

    if-gt v1, v2, :cond_1a

    if-nez v1, :cond_19

    .line 15
    array-length v1, p0

    if-ge p1, v1, :cond_14

    .line 16
    array-length v1, p0

    sub-int/2addr v1, p1

    aput v1, p0, v0

    return-void

    .line 18
    :cond_14
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    :cond_19
    return-void

    .line 19
    :cond_1a
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    .line 20
    :cond_1f
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0
.end method
