###### Class com.dcloud.zxing2.qrcode.encoder.MatrixUtil (com.dcloud.zxing2.qrcode.encoder.MatrixUtil)
.class final Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# static fields
.field private static final POSITION_ADJUSTMENT_PATTERN:[[I

.field private static final POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

.field private static final POSITION_DETECTION_PATTERN:[[I

.field private static final TYPE_INFO_COORDINATES:[[I

.field private static final TYPE_INFO_MASK_PATTERN:I = 0x5412

.field private static final TYPE_INFO_POLY:I = 0x537

.field private static final VERSION_INFO_POLY:I = 0x1f25


# direct methods
.method static constructor <clinit>()V
    .registers 49

    const/4 v0, 0x7

    .line 1
    new-array v1, v0, [I

    fill-array-data v1, :array_278

    new-array v2, v0, [I

    fill-array-data v2, :array_28a

    new-array v3, v0, [I

    fill-array-data v3, :array_29c

    new-array v4, v0, [I

    fill-array-data v4, :array_2ae

    new-array v5, v0, [I

    fill-array-data v5, :array_2c0

    new-array v6, v0, [I

    fill-array-data v6, :array_2d2

    new-array v7, v0, [I

    fill-array-data v7, :array_2e4

    new-array v8, v0, [[I

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v1, 0x1

    aput-object v2, v8, v1

    const/4 v2, 0x2

    aput-object v3, v8, v2

    const/4 v3, 0x3

    aput-object v4, v8, v3

    const/4 v4, 0x4

    aput-object v5, v8, v4

    const/4 v5, 0x5

    aput-object v6, v8, v5

    const/4 v6, 0x6

    aput-object v7, v8, v6

    sput-object v8, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    .line 11
    new-array v7, v5, [[I

    filled-new-array {v1, v1, v1, v1, v1}, [I

    move-result-object v8

    aput-object v8, v7, v9

    filled-new-array {v1, v9, v9, v9, v1}, [I

    move-result-object v8

    aput-object v8, v7, v1

    filled-new-array {v1, v9, v1, v9, v1}, [I

    move-result-object v8

    aput-object v8, v7, v2

    filled-new-array {v1, v9, v9, v9, v1}, [I

    move-result-object v8

    aput-object v8, v7, v3

    filled-new-array {v1, v1, v1, v1, v1}, [I

    move-result-object v8

    aput-object v8, v7, v4

    sput-object v7, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN:[[I

    .line 20
    new-array v7, v0, [I

    fill-array-data v7, :array_2f6

    new-array v8, v0, [I

    fill-array-data v8, :array_308

    new-array v10, v0, [I

    fill-array-data v10, :array_31a

    new-array v11, v0, [I

    fill-array-data v11, :array_32c

    new-array v12, v0, [I

    fill-array-data v12, :array_33e

    new-array v13, v0, [I

    fill-array-data v13, :array_350

    new-array v14, v0, [I

    fill-array-data v14, :array_362

    new-array v15, v0, [I

    fill-array-data v15, :array_374

    const/16 v16, 0x6

    new-array v6, v0, [I

    fill-array-data v6, :array_386

    const/16 v17, 0x5

    new-array v5, v0, [I

    fill-array-data v5, :array_398

    const/16 v18, 0x4

    new-array v4, v0, [I

    fill-array-data v4, :array_3aa

    const/16 v19, 0x3

    new-array v3, v0, [I

    fill-array-data v3, :array_3bc

    const/16 v20, 0x2

    new-array v2, v0, [I

    fill-array-data v2, :array_3ce

    const/16 v21, 0x1

    new-array v1, v0, [I

    fill-array-data v1, :array_3e0

    const/16 v22, 0x0

    new-array v9, v0, [I

    fill-array-data v9, :array_3f2

    move-object/from16 v23, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_404

    move-object/from16 v24, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_416

    move-object/from16 v25, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_428

    move-object/from16 v26, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_43a

    move-object/from16 v27, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_44c

    move-object/from16 v28, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_45e

    move-object/from16 v29, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_470

    move-object/from16 v30, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_482

    move-object/from16 v31, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_494

    move-object/from16 v32, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_4a6

    move-object/from16 v33, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_4b8

    move-object/from16 v34, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_4ca

    move-object/from16 v35, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_4dc

    move-object/from16 v36, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_4ee

    move-object/from16 v37, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_500

    move-object/from16 v38, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_512

    move-object/from16 v39, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_524

    move-object/from16 v40, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_536

    move-object/from16 v41, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_548

    move-object/from16 v42, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_55a

    move-object/from16 v43, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_56c

    move-object/from16 v44, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_57e

    move-object/from16 v45, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_590

    move-object/from16 v46, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_5a2

    move-object/from16 v47, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_5b4

    const/16 v48, 0x7

    const/16 v0, 0x28

    new-array v0, v0, [[I

    aput-object v7, v0, v22

    aput-object v8, v0, v21

    aput-object v10, v0, v20

    aput-object v11, v0, v19

    aput-object v12, v0, v18

    aput-object v13, v0, v17

    aput-object v14, v0, v16

    aput-object v15, v0, v48

    const/16 v7, 0x8

    aput-object v6, v0, v7

    const/16 v6, 0x9

    aput-object v5, v0, v6

    const/16 v5, 0xa

    aput-object v4, v0, v5

    const/16 v4, 0xb

    aput-object v3, v0, v4

    const/16 v3, 0xc

    aput-object v2, v0, v3

    const/16 v2, 0xd

    aput-object v23, v0, v2

    const/16 v2, 0xe

    aput-object v9, v0, v2

    const/16 v2, 0xf

    aput-object v24, v0, v2

    const/16 v2, 0x10

    aput-object v25, v0, v2

    const/16 v2, 0x11

    aput-object v26, v0, v2

    const/16 v2, 0x12

    aput-object v27, v0, v2

    const/16 v2, 0x13

    aput-object v28, v0, v2

    const/16 v2, 0x14

    aput-object v29, v0, v2

    const/16 v2, 0x15

    aput-object v30, v0, v2

    const/16 v2, 0x16

    aput-object v31, v0, v2

    const/16 v2, 0x17

    aput-object v32, v0, v2

    const/16 v2, 0x18

    aput-object v33, v0, v2

    const/16 v2, 0x19

    aput-object v34, v0, v2

    const/16 v2, 0x1a

    aput-object v35, v0, v2

    const/16 v2, 0x1b

    aput-object v36, v0, v2

    const/16 v2, 0x1c

    aput-object v37, v0, v2

    const/16 v2, 0x1d

    aput-object v38, v0, v2

    const/16 v2, 0x1e

    aput-object v39, v0, v2

    const/16 v2, 0x1f

    aput-object v40, v0, v2

    const/16 v2, 0x20

    aput-object v41, v0, v2

    const/16 v2, 0x21

    aput-object v42, v0, v2

    const/16 v2, 0x22

    aput-object v43, v0, v2

    const/16 v2, 0x23

    aput-object v44, v0, v2

    const/16 v2, 0x24

    aput-object v45, v0, v2

    const/16 v2, 0x25

    aput-object v46, v0, v2

    const/16 v2, 0x26

    aput-object v47, v0, v2

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sput-object v0, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    const/16 v0, 0xf

    .line 64
    new-array v0, v0, [[I

    const/4 v1, 0x0

    filled-new-array {v7, v1}, [I

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    filled-new-array {v7, v1}, [I

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    filled-new-array {v7, v1}, [I

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    filled-new-array {v7, v1}, [I

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    filled-new-array {v7, v1}, [I

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    filled-new-array {v7, v1}, [I

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x7

    filled-new-array {v7, v2}, [I

    move-result-object v3

    aput-object v3, v0, v16

    filled-new-array {v7, v7}, [I

    move-result-object v3

    aput-object v3, v0, v2

    filled-new-array {v2, v7}, [I

    move-result-object v2

    aput-object v2, v0, v7

    filled-new-array {v1, v7}, [I

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/4 v1, 0x4

    filled-new-array {v1, v7}, [I

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/4 v1, 0x3

    filled-new-array {v1, v7}, [I

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const/4 v1, 0x2

    filled-new-array {v1, v7}, [I

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const/4 v1, 0x1

    filled-new-array {v1, v7}, [I

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const/4 v1, 0x0

    filled-new-array {v1, v7}, [I

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sput-object v0, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->TYPE_INFO_COORDINATES:[[I

    return-void

    :array_278
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_28a
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_29c
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_2ae
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_2c0
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_2d2
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_2e4
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_2f6
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_308
    .array-data 4
        0x6
        0x12
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_31a
    .array-data 4
        0x6
        0x16
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_32c
    .array-data 4
        0x6
        0x1a
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_33e
    .array-data 4
        0x6
        0x1e
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_350
    .array-data 4
        0x6
        0x22
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_362
    .array-data 4
        0x6
        0x16
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_374
    .array-data 4
        0x6
        0x18
        0x2a
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_386
    .array-data 4
        0x6
        0x1a
        0x2e
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_398
    .array-data 4
        0x6
        0x1c
        0x32
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_3aa
    .array-data 4
        0x6
        0x1e
        0x36
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_3bc
    .array-data 4
        0x6
        0x20
        0x3a
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_3ce
    .array-data 4
        0x6
        0x22
        0x3e
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_3e0
    .array-data 4
        0x6
        0x1a
        0x2e
        0x42
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_3f2
    .array-data 4
        0x6
        0x1a
        0x30
        0x46
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_404
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_416
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_428
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_43a
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_44c
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_45e
    .array-data 4
        0x6
        0x1c
        0x32
        0x48
        0x5e
        -0x1
        -0x1
    .end array-data

    :array_470
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
        -0x1
        -0x1
    .end array-data

    :array_482
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        -0x1
        -0x1
    .end array-data

    :array_494
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
        -0x1
        -0x1
    .end array-data

    :array_4a6
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
        -0x1
        -0x1
    .end array-data

    :array_4b8
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        -0x1
        -0x1
    .end array-data

    :array_4ca
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
        -0x1
        -0x1
    .end array-data

    :array_4dc
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
        0x7a
        -0x1
    .end array-data

    :array_4ee
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
        -0x1
    .end array-data

    :array_500
    .array-data 4
        0x6
        0x1a
        0x34
        0x4e
        0x68
        0x82
        -0x1
    .end array-data

    :array_512
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
        0x6c
        0x86
        -0x1
    .end array-data

    :array_524
    .array-data 4
        0x6
        0x22
        0x3c
        0x56
        0x70
        0x8a
        -0x1
    .end array-data

    :array_536
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
        -0x1
    .end array-data

    :array_548
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
        0x92
        -0x1
    .end array-data

    :array_55a
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
        0x96
    .end array-data

    :array_56c
    .array-data 4
        0x6
        0x18
        0x32
        0x4c
        0x66
        0x80
        0x9a
    .end array-data

    :array_57e
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
        0x84
        0x9e
    .end array-data

    :array_590
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
        0x88
        0xa2
    .end array-data

    :array_5a2
    .array-data 4
        0x6
        0x1a
        0x36
        0x52
        0x6e
        0x8a
        0xa6
    .end array-data

    :array_5b4
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
        0xaa
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildMatrix(Lcom/dcloud/zxing2/common/BitArray;Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;Lcom/dcloud/zxing2/qrcode/decoder/Version;ILcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/WriterException;
        }
    .end annotation

    .line 1
    invoke-static {p4}, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->clearMatrix(Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)V

    .line 2
    invoke-static {p2, p4}, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->embedBasicPatterns(Lcom/dcloud/zxing2/qrcode/decoder/Version;Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)V

    .line 4
    invoke-static {p1, p3, p4}, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->embedTypeInfo(Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;ILcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)V

    .line 6
    invoke-static {p2, p4}, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->maybeEmbedVersionInfo(Lcom/dcloud/zxing2/qrcode/decoder/Version;Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)V

    .line 8
    invoke-static {p0, p3, p4}, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->embedDataBits(Lcom/dcloud/zxing2/common/BitArray;ILcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)V

    return-void
.end method

.method static calculateBCHCode(II)I
    .registers 4

    if-eqz p1, :cond_19

    .line 1
    invoke-static {p1}, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->findMSBSet(I)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    shl-int/2addr p0, v1

    .line 4
    :goto_9
    invoke-static {p0}, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->findMSBSet(I)I

    move-result v1

    if-lt v1, v0, :cond_18

    .line 5
    invoke-static {p0}, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->findMSBSet(I)I

    move-result v1

    sub-int/2addr v1, v0

    shl-int v1, p1, v1

    xor-int/2addr p0, v1

    goto :goto_9

    :cond_18
    return p0

    .line 6
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "0 polynomial"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static clearMatrix(Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)V
    .registers 2

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->clear(B)V

    return-void
.end method

.method static embedBasicPatterns(Lcom/dcloud/zxing2/qrcode/decoder/Version;Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/WriterException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->embedPositionDetectionPatternsAndSeparators(Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)V

    .line 3
    invoke-static {p1}, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->embedDarkDotAtLeftBottomCorner(Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)V

    .line 6
    invoke-static {p0, p1}, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->maybeEmbedPositionAdjustmentPatterns(Lcom/dcloud/zxing2/qrcode/decoder/Version;Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)V

    .line 8
    invoke-static {p1}, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->embedTimingPatterns(Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)V

    return-void
.end method

.method private static embedDarkDotAtLeftBottomCorner(Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/WriterException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v0

    const/16 v1, 0x8

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v0

    if-eqz v0, :cond_17

    .line 4
    invoke-virtual {p0}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->set(III)V

    return-void

    .line 5
    :cond_17
    new-instance p0, Lcom/dcloud/zxing2/WriterException;

    invoke-direct {p0}, Lcom/dcloud/zxing2/WriterException;-><init>()V

    throw p0
.end method

.method static embedDataBits(Lcom/dcloud/zxing2/common/BitArray;ILcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/WriterException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2
    invoke-virtual {p2}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    :goto_10
    if-lez v0, :cond_55

    const/4 v6, 0x6

    if-ne v0, v6, :cond_17

    add-int/lit8 v0, v0, -0x1

    :cond_17
    :goto_17
    if-ltz v1, :cond_50

    .line 8
    invoke-virtual {p2}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v6

    if-ge v1, v6, :cond_50

    const/4 v6, 0x0

    :goto_20
    const/4 v7, 0x2

    if-ge v6, v7, :cond_4e

    sub-int v7, v0, v6

    .line 12
    invoke-virtual {p2, v7, v1}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v8

    invoke-static {v8}, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v8

    if-nez v8, :cond_30

    goto :goto_4b

    .line 16
    :cond_30
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v8

    if-ge v4, v8, :cond_3d

    .line 17
    invoke-virtual {p0, v4}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v8, 0x0

    :goto_3e
    if-eq p1, v3, :cond_48

    .line 26
    invoke-static {p1, v7, v1}, Lcom/dcloud/zxing2/qrcode/encoder/MaskUtil;->getDataMaskBit(III)Z

    move-result v9

    if-eqz v9, :cond_48

    xor-int/lit8 v8, v8, 0x1

    .line 29
    :cond_48
    invoke-virtual {p2, v7, v1, v8}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->set(IIZ)V

    :goto_4b
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_4e
    add-int/2addr v1, v5

    goto :goto_17

    :cond_50
    neg-int v5, v5

    add-int/2addr v1, v5

    add-int/lit8 v0, v0, -0x2

    goto :goto_10

    .line 38
    :cond_55
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result p1

    if-ne v4, p1, :cond_5c

    return-void

    .line 39
    :cond_5c
    new-instance p1, Lcom/dcloud/zxing2/WriterException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Not all bits consumed: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/dcloud/zxing2/WriterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static embedHorizontalSeparationPattern(IILcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/WriterException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1e

    add-int v2, p0, v1

    .line 1
    invoke-virtual {p2, v2, p1}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v3

    invoke-static {v3}, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4
    invoke-virtual {p2, v2, p1, v0}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->set(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5
    :cond_18
    new-instance p0, Lcom/dcloud/zxing2/WriterException;

    invoke-direct {p0}, Lcom/dcloud/zxing2/WriterException;-><init>()V

    throw p0

    :cond_1e
    return-void
.end method

.method private static embedPositionAdjustmentPattern(IILcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1b

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_18

    add-int v4, p0, v3

    add-int v5, p1, v1

    .line 1
    sget-object v6, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN:[[I

    aget-object v6, v6, v1

    aget v6, v6, v3

    invoke-virtual {p2, v4, v5, v6}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->set(III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1b
    return-void
.end method

.method private static embedPositionDetectionPattern(IILcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1b

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_18

    add-int v4, p0, v3

    add-int v5, p1, v1

    .line 1
    sget-object v6, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    aget-object v6, v6, v1

    aget v6, v6, v3

    invoke-virtual {p2, v4, v5, v6}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->set(III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1b
    return-void
.end method

.method private static embedPositionDetectionPatternsAndSeparators(Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/WriterException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    const/4 v1, 0x0

    aget-object v0, v0, v1

    array-length v0, v0

    .line 3
    invoke-static {v1, v1, p0}, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)V

    .line 5
    invoke-virtual {p0}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v2, v1, p0}, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)V

    .line 7
    invoke-virtual {p0}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v1, v2, p0}, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)V

    const/4 v0, 0x7

    .line 12
    invoke-static {v1, v0, p0}, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)V

    .line 14
    invoke-virtual {p0}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    invoke-static {v2, v0, p0}, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)V

    .line 17
    invoke-virtual {p0}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    invoke-static {v1, v2, p0}, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)V

    .line 22
    invoke-static {v0, v1, p0}, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)V

    .line 24
    invoke-virtual {p0}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    invoke-static {v2, v1, p0}, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)V

    .line 26
    invoke-virtual {p0}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v0, v1, p0}, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)V

    return-void
.end method

.method private static embedTimingPatterns(Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)V
    .registers 7

    const/16 v0, 0x8

    const/16 v1, 0x8

    .line 1
    :goto_4
    invoke-virtual {p0}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_2c

    add-int/lit8 v2, v1, 0x1

    .line 2
    rem-int/lit8 v3, v2, 0x2

    const/4 v4, 0x6

    .line 4
    invoke-virtual {p0, v1, v4}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v5

    invoke-static {v5}, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 5
    invoke-virtual {p0, v1, v4, v3}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->set(III)V

    .line 8
    :cond_1d
    invoke-virtual {p0, v4, v1}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v5

    invoke-static {v5}, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 9
    invoke-virtual {p0, v4, v1, v3}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->set(III)V

    :cond_2a
    move v1, v2

    goto :goto_4

    :cond_2c
    return-void
.end method

.method static embedTypeInfo(Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;ILcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/WriterException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/dcloud/zxing2/common/BitArray;

    invoke-direct {v0}, Lcom/dcloud/zxing2/common/BitArray;-><init>()V

    .line 2
    invoke-static {p0, p1, v0}, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->makeTypeInfoBits(Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;ILcom/dcloud/zxing2/common/BitArray;)V

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 4
    :goto_a
    invoke-virtual {v0}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v1

    if-ge p1, v1, :cond_43

    .line 7
    invoke-virtual {v0}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result v1

    .line 10
    sget-object v3, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->TYPE_INFO_COORDINATES:[[I

    aget-object v3, v3, p1

    aget v4, v3, p0

    .line 11
    aget v3, v3, v2

    .line 12
    invoke-virtual {p2, v4, v3, v1}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->set(IIZ)V

    const/16 v3, 0x8

    if-ge p1, v3, :cond_34

    .line 16
    invoke-virtual {p2}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v4

    sub-int/2addr v4, p1

    sub-int/2addr v4, v2

    .line 18
    invoke-virtual {p2, v4, v3, v1}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->set(IIZ)V

    goto :goto_40

    .line 22
    :cond_34
    invoke-virtual {p2}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x7

    add-int/lit8 v4, p1, -0x8

    add-int/2addr v2, v4

    .line 23
    invoke-virtual {p2, v3, v2, v1}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->set(IIZ)V

    :goto_40
    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_43
    return-void
.end method

.method private static embedVerticalSeparationPattern(IILcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/WriterException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1d

    add-int v2, p1, v1

    .line 1
    invoke-virtual {p2, p0, v2}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v3

    invoke-static {v3}, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 4
    invoke-virtual {p2, p0, v2, v0}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->set(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5
    :cond_17
    new-instance p0, Lcom/dcloud/zxing2/WriterException;

    invoke-direct {p0}, Lcom/dcloud/zxing2/WriterException;-><init>()V

    throw p0

    :cond_1d
    return-void
.end method

.method static findMSBSet(I)I
    .registers 2

    const/4 v0, 0x0

    :goto_1
    if-eqz p0, :cond_8

    ushr-int/lit8 p0, p0, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    return v0
.end method

.method private static isEmpty(I)Z
    .registers 2

    const/4 v0, -0x1

    if-ne p0, v0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method static makeTypeInfoBits(Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;ILcom/dcloud/zxing2/common/BitArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/WriterException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/dcloud/zxing2/qrcode/encoder/QRCode;->isValidMaskPattern(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 4
    invoke-virtual {p0}, Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;->getBits()I

    move-result p0

    shl-int/lit8 p0, p0, 0x3

    or-int/2addr p0, p1

    const/4 p1, 0x5

    .line 5
    invoke-virtual {p2, p0, p1}, Lcom/dcloud/zxing2/common/BitArray;->appendBits(II)V

    const/16 p1, 0x537

    .line 7
    invoke-static {p0, p1}, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->calculateBCHCode(II)I

    move-result p0

    const/16 p1, 0xa

    .line 8
    invoke-virtual {p2, p0, p1}, Lcom/dcloud/zxing2/common/BitArray;->appendBits(II)V

    .line 10
    new-instance p0, Lcom/dcloud/zxing2/common/BitArray;

    invoke-direct {p0}, Lcom/dcloud/zxing2/common/BitArray;-><init>()V

    const/16 p1, 0x5412

    const/16 v0, 0xf

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/dcloud/zxing2/common/BitArray;->appendBits(II)V

    .line 12
    invoke-virtual {p2, p0}, Lcom/dcloud/zxing2/common/BitArray;->xor(Lcom/dcloud/zxing2/common/BitArray;)V

    .line 14
    invoke-virtual {p2}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result p0

    if-ne p0, v0, :cond_32

    return-void

    .line 15
    :cond_32
    new-instance p0, Lcom/dcloud/zxing2/WriterException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "should not happen but we got: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/dcloud/zxing2/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_4a
    new-instance p0, Lcom/dcloud/zxing2/WriterException;

    const-string p1, "Invalid mask pattern"

    invoke-direct {p0, p1}, Lcom/dcloud/zxing2/WriterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static makeVersionInfoBits(Lcom/dcloud/zxing2/qrcode/decoder/Version;Lcom/dcloud/zxing2/common/BitArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/WriterException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/qrcode/decoder/Version;->getVersionNumber()I

    move-result v0

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/dcloud/zxing2/common/BitArray;->appendBits(II)V

    .line 2
    invoke-virtual {p0}, Lcom/dcloud/zxing2/qrcode/decoder/Version;->getVersionNumber()I

    move-result p0

    const/16 v0, 0x1f25

    invoke-static {p0, v0}, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->calculateBCHCode(II)I

    move-result p0

    const/16 v0, 0xc

    .line 3
    invoke-virtual {p1, p0, v0}, Lcom/dcloud/zxing2/common/BitArray;->appendBits(II)V

    .line 5
    invoke-virtual {p1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result p0

    const/16 v0, 0x12

    if-ne p0, v0, :cond_20

    return-void

    .line 6
    :cond_20
    new-instance p0, Lcom/dcloud/zxing2/WriterException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "should not happen but we got: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/dcloud/zxing2/WriterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static maybeEmbedPositionAdjustmentPatterns(Lcom/dcloud/zxing2/qrcode/decoder/Version;Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)V
    .registers 9

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/qrcode/decoder/Version;->getVersionNumber()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_8

    goto :goto_3b

    .line 4
    :cond_8
    invoke-virtual {p0}, Lcom/dcloud/zxing2/qrcode/decoder/Version;->getVersionNumber()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    .line 5
    sget-object v0, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    aget-object p0, v0, p0

    .line 6
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v0, :cond_3b

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v0, :cond_38

    .line 9
    aget v4, p0, v2

    .line 10
    aget v5, p0, v3

    const/4 v6, -0x1

    if-eq v5, v6, :cond_35

    if-ne v4, v6, :cond_24

    goto :goto_35

    .line 15
    :cond_24
    invoke-virtual {p1, v5, v4}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v6

    invoke-static {v6}, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v6

    if-eqz v6, :cond_35

    add-int/lit8 v5, v5, -0x2

    add-int/lit8 v4, v4, -0x2

    .line 18
    invoke-static {v5, v4, p1}, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->embedPositionAdjustmentPattern(IILcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)V

    :cond_35
    :goto_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_3b
    :goto_3b
    return-void
.end method

.method static maybeEmbedVersionInfo(Lcom/dcloud/zxing2/qrcode/decoder/Version;Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/WriterException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/qrcode/decoder/Version;->getVersionNumber()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_8

    goto :goto_3b

    .line 4
    :cond_8
    new-instance v0, Lcom/dcloud/zxing2/common/BitArray;

    invoke-direct {v0}, Lcom/dcloud/zxing2/common/BitArray;-><init>()V

    .line 5
    invoke-static {p0, v0}, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->makeVersionInfoBits(Lcom/dcloud/zxing2/qrcode/decoder/Version;Lcom/dcloud/zxing2/common/BitArray;)V

    const/4 p0, 0x0

    const/16 v1, 0x11

    const/4 v2, 0x0

    :goto_14
    const/4 v3, 0x6

    if-ge v2, v3, :cond_3b

    const/4 v3, 0x0

    :goto_18
    const/4 v4, 0x3

    if-ge v3, v4, :cond_38

    .line 11
    invoke-virtual {v0, v1}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result v4

    add-int/lit8 v1, v1, -0x1

    .line 14
    invoke-virtual {p1}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0xb

    add-int/2addr v5, v3

    invoke-virtual {p1, v2, v5, v4}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 16
    invoke-virtual {p1}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0xb

    add-int/2addr v5, v3

    invoke-virtual {p1, v5, v2, v4}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->set(IIZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_3b
    :goto_3b
    return-void
.end method
