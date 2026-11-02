###### Class com.dcloud.zxing2.pdf417.decoder.DecodedBitStreamParser (com.dcloud.zxing2.pdf417.decoder.DecodedBitStreamParser)
.class final Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static final AL:I = 0x1c

.field private static final AS:I = 0x1b

.field private static final BEGIN_MACRO_PDF417_CONTROL_BLOCK:I = 0x3a0

.field private static final BEGIN_MACRO_PDF417_OPTIONAL_FIELD:I = 0x39b

.field private static final BYTE_COMPACTION_MODE_LATCH:I = 0x385

.field private static final BYTE_COMPACTION_MODE_LATCH_6:I = 0x39c

.field private static final DEFAULT_ENCODING:Ljava/nio/charset/Charset;

.field private static final ECI_CHARSET:I = 0x39f

.field private static final ECI_GENERAL_PURPOSE:I = 0x39e

.field private static final ECI_USER_DEFINED:I = 0x39d

.field private static final EXP900:[Ljava/math/BigInteger;

.field private static final LL:I = 0x1b

.field private static final MACRO_PDF417_TERMINATOR:I = 0x39a

.field private static final MAX_NUMERIC_CODEWORDS:I = 0xf

.field private static final MIXED_CHARS:[C

.field private static final ML:I = 0x1c

.field private static final MODE_SHIFT_TO_BYTE_COMPACTION_MODE:I = 0x391

.field private static final NUMBER_OF_SEQUENCE_CODEWORDS:I = 0x2

.field private static final NUMERIC_COMPACTION_MODE_LATCH:I = 0x386

.field private static final PAL:I = 0x1d

.field private static final PL:I = 0x19

.field private static final PS:I = 0x1d

.field private static final PUNCT_CHARS:[C

.field private static final TEXT_COMPACTION_MODE_LATCH:I = 0x384


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x1d

    .line 1
    new-array v0, v0, [C

    fill-array-data v0, :array_42

    sput-object v0, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    const/16 v0, 0x19

    .line 6
    new-array v0, v0, [C

    fill-array-data v0, :array_64

    sput-object v0, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    .line 11
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    const/16 v0, 0x10

    .line 19
    new-array v0, v0, [Ljava/math/BigInteger;

    sput-object v0, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    .line 20
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-wide/16 v1, 0x384

    .line 21
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x1

    .line 22
    aput-object v1, v0, v2

    const/4 v0, 0x2

    .line 23
    :goto_2f
    sget-object v2, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    array-length v3, v2

    if-ge v0, v3, :cond_41

    add-int/lit8 v3, v0, -0x1

    .line 24
    aget-object v3, v2, v3

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_41
    return-void

    :array_42
    .array-data 2
        0x3bs
        0x3cs
        0x3es
        0x40s
        0x5bs
        0x5cs
        0x5ds
        0x5fs
        0x60s
        0x7es
        0x21s
        0xds
        0x9s
        0x2cs
        0x3as
        0xas
        0x2ds
        0x2es
        0x24s
        0x2fs
        0x22s
        0x7cs
        0x2as
        0x28s
        0x29s
        0x3fs
        0x7bs
        0x7ds
        0x27s
    .end array-data

    nop

    :array_64
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x26s
        0xds
        0x9s
        0x2cs
        0x3as
        0x23s
        0x2ds
        0x2es
        0x24s
        0x2fs
        0x2bs
        0x25s
        0x2as
        0x3ds
        0x5es
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I
    .registers 28

    move/from16 v0, p0

    .line 1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x39a

    const/16 v3, 0x39b

    const/16 v4, 0x3a0

    const/16 v5, 0x386

    const/4 v8, 0x6

    const/16 v9, 0x39c

    const/16 v10, 0x384

    const/4 v14, 0x0

    const/16 v15, 0x385

    if-ne v0, v15, :cond_a2

    .line 7
    new-array v0, v8, [I

    add-int/lit8 v16, p3, 0x1

    .line 9
    aget v17, p1, p3

    move/from16 v6, v16

    move/from16 v7, v17

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x384

    const-wide/16 v20, 0x0

    .line 10
    :goto_2b
    aget v11, p1, v14

    if-ge v6, v11, :cond_86

    if-nez v16, :cond_86

    add-int/lit8 v11, v17, 0x1

    .line 11
    aput v7, v0, v17

    mul-long v20, v20, v18

    const/16 v22, 0x0

    int-to-long v13, v7

    add-long v20, v20, v13

    add-int/lit8 v7, v6, 0x1

    .line 14
    aget v13, p1, v6

    if-eq v13, v10, :cond_7c

    if-eq v13, v15, :cond_7c

    if-eq v13, v5, :cond_7c

    if-eq v13, v9, :cond_7c

    if-eq v13, v4, :cond_7c

    if-eq v13, v3, :cond_7c

    if-ne v13, v2, :cond_4f

    goto :goto_7c

    .line 26
    :cond_4f
    rem-int/lit8 v6, v11, 0x5

    if-nez v6, :cond_73

    if-lez v11, :cond_73

    const/4 v6, 0x0

    :goto_56
    if-ge v6, v8, :cond_6a

    rsub-int/lit8 v11, v6, 0x5

    mul-int/lit8 v11, v11, 0x8

    move/from16 p0, v13

    shr-long v12, v20, v11

    long-to-int v11, v12

    int-to-byte v11, v11

    .line 30
    invoke-virtual {v1, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v6, v6, 0x1

    move/from16 v13, p0

    goto :goto_56

    :cond_6a
    move/from16 p0, v13

    move v6, v7

    const/4 v14, 0x0

    const/16 v17, 0x0

    const-wide/16 v20, 0x0

    goto :goto_79

    :cond_73
    move/from16 p0, v13

    move v6, v7

    move/from16 v17, v11

    const/4 v14, 0x0

    :goto_79
    move/from16 v7, p0

    goto :goto_2b

    :cond_7c
    :goto_7c
    move/from16 p0, v13

    move/from16 v7, p0

    move/from16 v17, v11

    const/4 v14, 0x0

    const/16 v16, 0x1

    goto :goto_2b

    :cond_86
    const/16 v22, 0x0

    if-ne v6, v11, :cond_91

    if-ge v7, v10, :cond_91

    add-int/lit8 v2, v17, 0x1

    .line 40
    aput v7, v0, v17

    goto :goto_93

    :cond_91
    move/from16 v2, v17

    :goto_93
    const/4 v14, 0x0

    :goto_94
    if-ge v14, v2, :cond_9f

    .line 47
    aget v3, v0, v14

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_94

    :cond_9f
    move v0, v6

    goto/16 :goto_103

    :cond_a2
    const-wide/16 v18, 0x384

    const/16 v22, 0x0

    if-ne v0, v9, :cond_101

    move/from16 v0, p3

    const/4 v6, 0x0

    :goto_ab
    const/4 v7, 0x0

    const-wide/16 v11, 0x0

    .line 56
    :goto_ae
    aget v13, p1, v22

    if-ge v0, v13, :cond_103

    if-nez v6, :cond_103

    add-int/lit8 v13, v0, 0x1

    .line 57
    aget v14, p1, v0

    if-ge v14, v10, :cond_c6

    add-int/lit8 v7, v7, 0x1

    mul-long v11, v11, v18

    int-to-long v2, v14

    add-long/2addr v11, v2

    move v0, v13

    const/16 v2, 0x39b

    const/16 v3, 0x39a

    goto :goto_e0

    :cond_c6
    if-eq v14, v10, :cond_db

    if-eq v14, v15, :cond_db

    if-eq v14, v5, :cond_db

    if-eq v14, v9, :cond_db

    if-eq v14, v4, :cond_db

    const/16 v2, 0x39b

    const/16 v3, 0x39a

    if-eq v14, v2, :cond_df

    if-ne v14, v3, :cond_d9

    goto :goto_df

    :cond_d9
    move v0, v13

    goto :goto_e0

    :cond_db
    const/16 v2, 0x39b

    const/16 v3, 0x39a

    :cond_df
    :goto_df
    const/4 v6, 0x1

    .line 74
    :goto_e0
    rem-int/lit8 v13, v7, 0x5

    if-nez v13, :cond_fc

    if-lez v7, :cond_fc

    const/4 v7, 0x0

    :goto_e7
    if-ge v7, v8, :cond_f7

    rsub-int/lit8 v13, v7, 0x5

    mul-int/lit8 v13, v13, 0x8

    shr-long v13, v11, v13

    long-to-int v14, v13

    int-to-byte v13, v14

    .line 78
    invoke-virtual {v1, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_e7

    :cond_f7
    const/16 v2, 0x39a

    const/16 v3, 0x39b

    goto :goto_ab

    :cond_fc
    const/16 v2, 0x39a

    const/16 v3, 0x39b

    goto :goto_ae

    :cond_101
    move/from16 v0, p3

    .line 85
    :cond_103
    :goto_103
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    move-object/from16 v3, p2

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object/from16 v1, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v0
.end method

.method static decode([ILjava/lang/String;)Lcom/dcloud/zxing2/common/DecoderResult;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3
    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v3, 0x1

    .line 6
    aget v3, p0, v3

    .line 8
    new-instance v4, Lcom/dcloud/zxing2/pdf417/PDF417ResultMetadata;

    invoke-direct {v4}, Lcom/dcloud/zxing2/pdf417/PDF417ResultMetadata;-><init>()V

    :goto_17
    const/4 v5, 0x0

    .line 9
    aget v5, p0, v5

    if-ge v2, v5, :cond_79

    const/16 v5, 0x391

    if-eq v3, v5, :cond_60

    packed-switch v3, :pswitch_data_92

    packed-switch v3, :pswitch_data_9c

    add-int/lit8 v2, v2, -0x1

    .line 50
    invoke-static {p0, v2, v0}, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v2

    goto :goto_69

    .line 71
    :pswitch_2d
    invoke-static {p0, v2, v0}, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result v2

    goto :goto_69

    .line 73
    :pswitch_32
    invoke-static {p0, v2, v0}, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v2

    goto :goto_69

    .line 51
    :pswitch_37
    invoke-static {p0, v2, v4}, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;->decodeMacroBlock([IILcom/dcloud/zxing2/pdf417/PDF417ResultMetadata;)I

    move-result v2

    goto :goto_69

    :pswitch_3c
    add-int/lit8 v1, v2, 0x1

    .line 52
    aget v2, p0, v2

    .line 53
    invoke-static {v2}, Lcom/dcloud/zxing2/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/dcloud/zxing2/common/CharacterSetECI;

    move-result-object v2

    .line 54
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    move-object v6, v2

    move v2, v1

    move-object v1, v6

    goto :goto_69

    :pswitch_50
    add-int/lit8 v2, v2, 0x2

    goto :goto_69

    :pswitch_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_69

    .line 72
    :pswitch_56
    invoke-static {v3, p0, v1, v2, v0}, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I

    move-result v2

    goto :goto_69

    .line 70
    :pswitch_5b
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    :cond_60
    add-int/lit8 v3, v2, 0x1

    .line 80
    aget v2, p0, v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v3

    .line 113
    :goto_69
    array-length v3, p0

    if-ge v2, v3, :cond_74

    add-int/lit8 v3, v2, 0x1

    .line 114
    aget v2, p0, v2

    move v6, v3

    move v3, v2

    move v2, v6

    goto :goto_17

    .line 116
    :cond_74
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    .line 119
    :cond_79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-eqz p0, :cond_8d

    .line 122
    new-instance p0, Lcom/dcloud/zxing2/common/DecoderResult;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1, p1}, Lcom/dcloud/zxing2/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0, v4}, Lcom/dcloud/zxing2/common/DecoderResult;->setOther(Ljava/lang/Object;)V

    return-object p0

    .line 124
    :cond_8d
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    :pswitch_data_92
    .packed-switch 0x384
        :pswitch_32
        :pswitch_56
        :pswitch_2d
    .end packed-switch

    :pswitch_data_9c
    .packed-switch 0x39a
        :pswitch_5b
        :pswitch_5b
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_3c
        :pswitch_37
    .end packed-switch
.end method

.method private static decodeBase900toBase10([II)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    const/4 v3, 0x1

    if-ge v2, p1, :cond_20

    .line 3
    sget-object v4, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sub-int v5, p1, v2

    sub-int/2addr v5, v3

    aget-object v3, v4, v5

    aget v4, p0, v2

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 5
    :cond_20
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x31

    if-ne p1, v0, :cond_31

    .line 9
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10
    :cond_31
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0
.end method

.method private static decodeMacroBlock([IILcom/dcloud/zxing2/pdf417/PDF417ResultMetadata;)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    .line 1
    aget v2, p0, v1

    if-gt v0, v2, :cond_74

    const/4 v0, 0x2

    .line 5
    new-array v2, v0, [I

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v0, :cond_16

    .line 7
    aget v4, p0, p1

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 9
    :cond_16
    invoke-static {v2, v0}, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/dcloud/zxing2/pdf417/PDF417ResultMetadata;->setSegmentIndex(I)V

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    invoke-static {p0, p1, v0}, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result p1

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/dcloud/zxing2/pdf417/PDF417ResultMetadata;->setFileId(Ljava/lang/String;)V

    .line 16
    aget v0, p0, p1

    const/16 v2, 0x39b

    const/16 v3, 0x39a

    const/4 v4, 0x1

    if-ne v0, v2, :cond_6d

    add-int/2addr p1, v4

    .line 18
    aget v0, p0, v1

    sub-int/2addr v0, p1

    new-array v0, v0, [I

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 22
    :goto_42
    aget v6, p0, v1

    if-ge p1, v6, :cond_65

    if-nez v2, :cond_65

    add-int/lit8 v6, p1, 0x1

    .line 23
    aget v7, p0, p1

    const/16 v8, 0x384

    if-ge v7, v8, :cond_57

    add-int/lit8 p1, v5, 0x1

    .line 25
    aput v7, v0, v5

    move v5, p1

    move p1, v6

    goto :goto_42

    :cond_57
    if-ne v7, v3, :cond_60

    .line 29
    invoke-virtual {p2, v4}, Lcom/dcloud/zxing2/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    add-int/lit8 p1, p1, 0x2

    const/4 v2, 0x1

    goto :goto_42

    .line 34
    :cond_60
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    .line 39
    :cond_65
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/dcloud/zxing2/pdf417/PDF417ResultMetadata;->setOptionalData([I)V

    return p1

    :cond_6d
    if-ne v0, v3, :cond_73

    .line 41
    invoke-virtual {p2, v4}, Lcom/dcloud/zxing2/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    add-int/2addr p1, v4

    :cond_73
    return p1

    .line 42
    :cond_74
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0
.end method

.method private static decodeTextCompaction([I[IILjava/lang/StringBuilder;)V
    .registers 20

    move-object/from16 v0, p3

    .line 1
    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    const/4 v2, 0x0

    move/from16 v4, p2

    move-object v3, v1

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v4, :cond_ff

    .line 5
    aget v6, p0, v5

    .line 7
    sget-object v7, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$dcloud$zxing2$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/16 v8, 0x20

    const/16 v9, 0x1c

    const/16 v10, 0x1b

    const/16 v11, 0x391

    const/16 v12, 0x384

    const/16 v13, 0x1d

    const/16 v14, 0x1a

    packed-switch v7, :pswitch_data_100

    goto/16 :goto_f5

    :pswitch_28
    if-ge v6, v13, :cond_2f

    .line 116
    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v8, v1, v6

    goto :goto_47

    :cond_2f
    if-ne v6, v13, :cond_34

    .line 119
    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_7e

    :cond_34
    if-ne v6, v11, :cond_3d

    .line 123
    aget v1, p1, v5

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_52

    :cond_3d
    if-ne v6, v12, :cond_52

    .line 125
    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_7e

    :pswitch_42
    if-ge v6, v14, :cond_4a

    add-int/lit8 v6, v6, 0x41

    int-to-char v8, v6

    :goto_47
    move-object v1, v3

    goto/16 :goto_f1

    :cond_4a
    if-ne v6, v14, :cond_4d

    goto :goto_47

    :cond_4d
    if-ne v6, v12, :cond_52

    .line 126
    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_7e

    :cond_52
    :goto_52
    move-object v1, v3

    goto :goto_81

    :pswitch_54
    if-ge v6, v13, :cond_5c

    .line 127
    sget-object v7, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v8, v7, v6

    goto/16 :goto_f6

    :cond_5c
    if-ne v6, v13, :cond_61

    .line 130
    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_7e

    :cond_61
    if-ne v6, v11, :cond_6b

    .line 132
    aget v6, p1, v5

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_f5

    :cond_6b
    if-ne v6, v12, :cond_f5

    .line 134
    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_7e

    :pswitch_70
    const/16 v7, 0x19

    if-ge v6, v7, :cond_7a

    .line 135
    sget-object v7, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    aget-char v8, v7, v6

    goto/16 :goto_f6

    :cond_7a
    if-ne v6, v7, :cond_84

    .line 138
    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    :goto_7e
    move-object v8, v3

    move-object v3, v1

    move-object v1, v8

    :goto_81
    const/4 v8, 0x0

    goto/16 :goto_f1

    :cond_84
    if-ne v6, v14, :cond_88

    goto/16 :goto_f6

    :cond_88
    if-ne v6, v10, :cond_8d

    .line 142
    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_7e

    :cond_8d
    if-ne v6, v9, :cond_92

    .line 144
    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_7e

    :cond_92
    if-ne v6, v13, :cond_97

    .line 148
    sget-object v3, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_81

    :cond_97
    if-ne v6, v11, :cond_a1

    .line 150
    aget v6, p1, v5

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_f5

    :cond_a1
    if-ne v6, v12, :cond_f5

    .line 152
    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_7e

    :pswitch_a6
    if-ge v6, v14, :cond_ab

    add-int/lit8 v6, v6, 0x61

    goto :goto_cf

    :cond_ab
    if-ne v6, v14, :cond_ae

    goto :goto_f6

    :cond_ae
    if-ne v6, v10, :cond_b3

    .line 153
    sget-object v3, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_81

    :cond_b3
    if-ne v6, v9, :cond_b8

    .line 155
    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_7e

    :cond_b8
    if-ne v6, v13, :cond_bd

    .line 159
    sget-object v3, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_81

    :cond_bd
    if-ne v6, v11, :cond_c6

    .line 162
    aget v6, p1, v5

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f5

    :cond_c6
    if-ne v6, v12, :cond_f5

    .line 164
    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_7e

    :pswitch_cb
    if-ge v6, v14, :cond_d1

    add-int/lit8 v6, v6, 0x41

    :goto_cf
    int-to-char v8, v6

    goto :goto_f6

    :cond_d1
    if-ne v6, v14, :cond_d4

    goto :goto_f6

    :cond_d4
    if-ne v6, v10, :cond_d9

    .line 165
    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_7e

    :cond_d9
    if-ne v6, v9, :cond_de

    .line 167
    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_7e

    :cond_de
    if-ne v6, v13, :cond_e3

    .line 171
    sget-object v3, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_81

    :cond_e3
    if-ne v6, v11, :cond_ec

    .line 173
    aget v6, p1, v5

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f5

    :cond_ec
    if-ne v6, v12, :cond_f5

    .line 175
    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_7e

    :goto_f1
    move-object v15, v3

    move-object v3, v1

    move-object v1, v15

    goto :goto_f6

    :cond_f5
    :goto_f5
    const/4 v8, 0x0

    :goto_f6
    if-eqz v8, :cond_fb

    .line 280
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_fb
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_9

    :cond_ff
    return-void

    :pswitch_data_100
    .packed-switch 0x1
        :pswitch_cb
        :pswitch_a6
        :pswitch_70
        :pswitch_54
        :pswitch_42
        :pswitch_28
    .end packed-switch
.end method

.method private static numericCompaction([IILjava/lang/StringBuilder;)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    const/16 v0, 0xf

    .line 1
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    const/4 v3, 0x0

    .line 3
    :cond_7
    aget v4, p0, v1

    if-ge p1, v4, :cond_4a

    if-nez v2, :cond_4a

    add-int/lit8 v5, p1, 0x1

    .line 4
    aget v6, p0, p1

    const/4 v7, 0x1

    if-ne v5, v4, :cond_15

    const/4 v2, 0x1

    :cond_15
    const/16 v4, 0x384

    if-ge v6, v4, :cond_1f

    .line 9
    aput v6, v0, v3

    add-int/lit8 v3, v3, 0x1

    :cond_1d
    move p1, v5

    goto :goto_36

    :cond_1f
    if-eq v6, v4, :cond_35

    const/16 v4, 0x385

    if-eq v6, v4, :cond_35

    const/16 v4, 0x39c

    if-eq v6, v4, :cond_35

    const/16 v4, 0x3a0

    if-eq v6, v4, :cond_35

    const/16 v4, 0x39b

    if-eq v6, v4, :cond_35

    const/16 v4, 0x39a

    if-ne v6, v4, :cond_1d

    :cond_35
    const/4 v2, 0x1

    .line 22
    :goto_36
    rem-int/lit8 v4, v3, 0xf

    if-eqz v4, :cond_40

    const/16 v4, 0x386

    if-eq v6, v4, :cond_40

    if-eqz v2, :cond_7

    :cond_40
    if-lez v3, :cond_7

    .line 30
    invoke-static {v0, v3}, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v3

    .line 31
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_4a
    return p1
.end method

.method private static textCompaction([IILjava/lang/StringBuilder;)I
    .registers 12

    const/4 v0, 0x0

    .line 1
    aget v1, p0, v0

    sub-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x2

    new-array v2, v1, [I

    .line 3
    new-array v1, v1, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 7
    :goto_c
    aget v5, p0, v0

    if-ge p1, v5, :cond_4a

    if-nez v3, :cond_4a

    add-int/lit8 v5, p1, 0x1

    .line 8
    aget v6, p0, p1

    const/16 v7, 0x384

    if-ge v6, v7, :cond_28

    .line 10
    div-int/lit8 p1, v6, 0x1e

    aput p1, v2, v4

    add-int/lit8 p1, v4, 0x1

    .line 11
    rem-int/lit8 v6, v6, 0x1e

    aput v6, v2, p1

    add-int/lit8 v4, v4, 0x2

    :goto_26
    move p1, v5

    goto :goto_c

    :cond_28
    const/16 v8, 0x391

    if-eq v6, v8, :cond_3f

    const/16 v8, 0x3a0

    if-eq v6, v8, :cond_3d

    packed-switch v6, :pswitch_data_4e

    packed-switch v6, :pswitch_data_58

    goto :goto_26

    :pswitch_37
    add-int/lit8 p1, v4, 0x1

    .line 38
    aput v7, v2, v4

    move v4, p1

    goto :goto_26

    :cond_3d
    :pswitch_3d
    const/4 v3, 0x1

    goto :goto_c

    .line 35
    :cond_3f
    aput v8, v2, v4

    add-int/lit8 p1, p1, 0x2

    .line 36
    aget v5, p0, v5

    .line 37
    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 64
    :cond_4a
    invoke-static {v2, v1, v4, p2}, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILjava/lang/StringBuilder;)V

    return p1

    :pswitch_data_4e
    .packed-switch 0x384
        :pswitch_37
        :pswitch_3d
        :pswitch_3d
    .end packed-switch

    :pswitch_data_58
    .packed-switch 0x39a
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
    .end packed-switch
.end method

###### Class com.dcloud.zxing2.pdf417.decoder.DecodedBitStreamParser.AnonymousClass1 (com.dcloud.zxing2.pdf417.decoder.DecodedBitStreamParser$1)
.class synthetic Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$1;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$dcloud$zxing2$pdf417$decoder$DecodedBitStreamParser$Mode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->values()[Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$dcloud$zxing2$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    :try_start_9
    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$dcloud$zxing2$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$dcloud$zxing2$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$dcloud$zxing2$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$dcloud$zxing2$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$dcloud$zxing2$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    return-void
.end method

###### Class com.dcloud.zxing2.pdf417.decoder.DecodedBitStreamParser.Mode (com.dcloud.zxing2.pdf417.decoder.DecodedBitStreamParser$Mode)
.class final enum Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;
.super Ljava/lang/Enum;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

.field public static final enum ALPHA:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

.field public static final enum ALPHA_SHIFT:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

.field public static final enum LOWER:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

.field public static final enum MIXED:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

.field public static final enum PUNCT:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

.field public static final enum PUNCT_SHIFT:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;


# direct methods
.method private static synthetic $values()[Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;
    .registers 3

    const/4 v0, 0x6

    .line 1
    new-array v0, v0, [Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    const-string v1, "ALPHA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 2
    new-instance v0, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    const-string v1, "LOWER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 3
    new-instance v0, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    const-string v1, "MIXED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 4
    new-instance v0, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    const-string v1, "PUNCT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 5
    new-instance v0, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    const-string v1, "ALPHA_SHIFT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 6
    new-instance v0, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    const-string v1, "PUNCT_SHIFT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 7
    invoke-static {}, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->$values()[Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-result-object v0

    sput-object v0, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->$VALUES:[Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;
    .registers 2

    .line 1
    const-class v0, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    return-object p0
.end method

.method public static values()[Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;
    .registers 1

    .line 1
    sget-object v0, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->$VALUES:[Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v0}, [Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    return-object v0
.end method
