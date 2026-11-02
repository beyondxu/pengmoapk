###### Class com.dcloud.zxing2.datamatrix.encoder.HighLevelEncoder (com.dcloud.zxing2.datamatrix.encoder.HighLevelEncoder)
.class public final Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# static fields
.field static final ASCII_ENCODATION:I = 0x0

.field static final BASE256_ENCODATION:I = 0x5

.field static final C40_ENCODATION:I = 0x1

.field static final C40_UNLATCH:C = '\u00fe'

.field static final EDIFACT_ENCODATION:I = 0x4

.field static final LATCH_TO_ANSIX12:C = '\u00ee'

.field static final LATCH_TO_BASE256:C = '\u00e7'

.field static final LATCH_TO_C40:C = '\u00e6'

.field static final LATCH_TO_EDIFACT:C = '\u00f0'

.field static final LATCH_TO_TEXT:C = '\u00ef'

.field private static final MACRO_05:C = '\u00ec'

.field private static final MACRO_05_HEADER:Ljava/lang/String; = "[)>\u001e05\u001d"

.field private static final MACRO_06:C = '\u00ed'

.field private static final MACRO_06_HEADER:Ljava/lang/String; = "[)>\u001e06\u001d"

.field private static final MACRO_TRAILER:Ljava/lang/String; = "\u001e\u0004"

.field private static final PAD:C = '\u0081'

.field static final TEXT_ENCODATION:I = 0x2

.field static final UPPER_SHIFT:C = '\u00eb'

.field static final X12_ENCODATION:I = 0x3

.field static final X12_UNLATCH:C = '\u00fe'


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static determineConsecutiveDigitCount(Ljava/lang/CharSequence;I)I
    .registers 6

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_1e

    .line 4
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 5
    :cond_b
    :goto_b
    invoke-static {v2}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1e

    if-ge p1, v0, :cond_1e

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    if-ge p1, v0, :cond_b

    .line 9
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    goto :goto_b

    :cond_1e
    return v1
.end method

.method public static encodeHighLevel(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/dcloud/zxing2/datamatrix/encoder/SymbolShapeHint;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->encodeHighLevel(Ljava/lang/String;Lcom/dcloud/zxing2/datamatrix/encoder/SymbolShapeHint;Lcom/dcloud/zxing2/Dimension;Lcom/dcloud/zxing2/Dimension;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeHighLevel(Ljava/lang/String;Lcom/dcloud/zxing2/datamatrix/encoder/SymbolShapeHint;Lcom/dcloud/zxing2/Dimension;Lcom/dcloud/zxing2/Dimension;)Ljava/lang/String;
    .registers 12

    .line 2
    new-instance v0, Lcom/dcloud/zxing2/datamatrix/encoder/ASCIIEncoder;

    invoke-direct {v0}, Lcom/dcloud/zxing2/datamatrix/encoder/ASCIIEncoder;-><init>()V

    new-instance v1, Lcom/dcloud/zxing2/datamatrix/encoder/C40Encoder;

    invoke-direct {v1}, Lcom/dcloud/zxing2/datamatrix/encoder/C40Encoder;-><init>()V

    new-instance v2, Lcom/dcloud/zxing2/datamatrix/encoder/TextEncoder;

    invoke-direct {v2}, Lcom/dcloud/zxing2/datamatrix/encoder/TextEncoder;-><init>()V

    new-instance v3, Lcom/dcloud/zxing2/datamatrix/encoder/X12Encoder;

    invoke-direct {v3}, Lcom/dcloud/zxing2/datamatrix/encoder/X12Encoder;-><init>()V

    new-instance v4, Lcom/dcloud/zxing2/datamatrix/encoder/EdifactEncoder;

    invoke-direct {v4}, Lcom/dcloud/zxing2/datamatrix/encoder/EdifactEncoder;-><init>()V

    new-instance v5, Lcom/dcloud/zxing2/datamatrix/encoder/Base256Encoder;

    invoke-direct {v5}, Lcom/dcloud/zxing2/datamatrix/encoder/Base256Encoder;-><init>()V

    const/4 v6, 0x6

    new-array v6, v6, [Lcom/dcloud/zxing2/datamatrix/encoder/Encoder;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v1, 0x2

    aput-object v2, v6, v1

    const/4 v2, 0x3

    aput-object v3, v6, v2

    const/4 v2, 0x4

    aput-object v4, v6, v2

    const/4 v2, 0x5

    aput-object v5, v6, v2

    .line 7
    new-instance v3, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;

    invoke-direct {v3, p0}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v3, p1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->setSymbolShape(Lcom/dcloud/zxing2/datamatrix/encoder/SymbolShapeHint;)V

    .line 9
    invoke-virtual {v3, p2, p3}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->setSizeConstraints(Lcom/dcloud/zxing2/Dimension;Lcom/dcloud/zxing2/Dimension;)V

    .line 11
    const-string p1, "[)>\u001e05\u001d"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const-string p2, "\u001e\u0004"

    if-eqz p1, :cond_5d

    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5d

    const/16 p0, 0xec

    .line 12
    invoke-virtual {v3, p0}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 13
    invoke-virtual {v3, v1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->setSkipAtEnd(I)V

    .line 14
    iget p0, v3, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 p0, p0, 0x7

    iput p0, v3, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->pos:I

    goto :goto_79

    .line 15
    :cond_5d
    const-string p1, "[)>\u001e06\u001d"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_79

    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_79

    const/16 p0, 0xed

    .line 16
    invoke-virtual {v3, p0}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 17
    invoke-virtual {v3, v1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->setSkipAtEnd(I)V

    .line 18
    iget p0, v3, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 p0, p0, 0x7

    iput p0, v3, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->pos:I

    .line 22
    :cond_79
    :goto_79
    invoke-virtual {v3}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result p0

    if-eqz p0, :cond_92

    .line 23
    aget-object p0, v6, v7

    invoke-interface {p0, v3}, Lcom/dcloud/zxing2/datamatrix/encoder/Encoder;->encode(Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;)V

    .line 24
    invoke-virtual {v3}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->getNewEncoding()I

    move-result p0

    if-ltz p0, :cond_79

    .line 25
    invoke-virtual {v3}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->getNewEncoding()I

    move-result v7

    .line 26
    invoke-virtual {v3}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->resetEncoderSignal()V

    goto :goto_79

    .line 29
    :cond_92
    invoke-virtual {v3}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result p0

    .line 30
    invoke-virtual {v3}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->updateSymbolInfo()V

    .line 31
    invoke-virtual {v3}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result p1

    if-ge p0, p1, :cond_ac

    if-eqz v7, :cond_ac

    if-eq v7, v2, :cond_ac

    const/16 p0, 0xfe

    .line 34
    invoke-virtual {v3, p0}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 38
    :cond_ac
    invoke-virtual {v3}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->getCodewords()Ljava/lang/StringBuilder;

    move-result-object p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/16 p3, 0x81

    if-ge p2, p1, :cond_bb

    .line 40
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    :cond_bb
    :goto_bb
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-ge p2, p1, :cond_ce

    .line 43
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    add-int/2addr p2, v0

    invoke-static {p3, p2}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->randomize253State(CI)C

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_bb

    .line 46
    :cond_ce
    invoke-virtual {v3}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->getCodewords()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static findMinimums([F[II[B)I
    .registers 8

    const/4 v0, 0x0

    .line 1
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([BB)V

    const/4 v1, 0x0

    :goto_5
    const/4 v2, 0x6

    if-ge v1, v2, :cond_24

    .line 3
    aget v2, p0, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    aput v2, p1, v1

    if-le p2, v2, :cond_18

    .line 7
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([BB)V

    move p2, v2

    :cond_18
    if-ne p2, v2, :cond_21

    .line 10
    aget-byte v2, p3, v1

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_24
    return p2
.end method

.method private static getMinimumCount([B)I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x6

    if-ge v0, v2, :cond_b

    .line 1
    aget-byte v2, p0, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_b
    return v1
.end method

.method static illegalCharacter(C)V
    .registers 6

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x4

    const-string v3, "0000"

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal character: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, " (0x"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static isDigit(C)Z
    .registers 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method static isExtendedASCII(C)Z
    .registers 2

    const/16 v0, 0x80

    if-lt p0, v0, :cond_a

    const/16 v0, 0xff

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private static isNativeC40(C)Z
    .registers 2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_17

    const/16 v0, 0x30

    if-lt p0, v0, :cond_c

    const/16 v0, 0x39

    if-le p0, v0, :cond_17

    :cond_c
    const/16 v0, 0x41

    if-lt p0, v0, :cond_15

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method private static isNativeEDIFACT(C)Z
    .registers 2

    const/16 v0, 0x20

    if-lt p0, v0, :cond_a

    const/16 v0, 0x5e

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private static isNativeText(C)Z
    .registers 2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_17

    const/16 v0, 0x30

    if-lt p0, v0, :cond_c

    const/16 v0, 0x39

    if-le p0, v0, :cond_17

    :cond_c
    const/16 v0, 0x61

    if-lt p0, v0, :cond_15

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method private static isNativeX12(C)Z
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->isX12TermSep(C)Z

    move-result v0

    if-nez v0, :cond_1d

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1d

    const/16 v0, 0x30

    if-lt p0, v0, :cond_12

    const/16 v0, 0x39

    if-le p0, v0, :cond_1d

    :cond_12
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1b

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x0

    return p0

    :cond_1d
    :goto_1d
    const/4 p0, 0x1

    return p0
.end method

.method private static isSpecialB256(C)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method private static isX12TermSep(C)Z
    .registers 2

    const/16 v0, 0xd

    if-eq p0, v0, :cond_f

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_f

    const/16 v0, 0x3e

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method static lookAheadTest(Ljava/lang/CharSequence;II)I
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v1, v2, :cond_b

    return p2

    :cond_b
    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x6

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x5

    const/4 v7, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez p2, :cond_2a

    .line 7
    new-array v12, v4, [F

    aput v2, v12, v10

    aput v5, v12, v11

    aput v5, v12, v7

    aput v5, v12, v9

    aput v5, v12, v8

    const/high16 v2, 0x3fa00000    # 1.25f

    aput v2, v12, v6

    goto :goto_3c

    .line 9
    :cond_2a
    new-array v12, v4, [F

    aput v5, v12, v10

    aput v3, v12, v11

    aput v3, v12, v7

    aput v3, v12, v9

    aput v3, v12, v8

    const/high16 v13, 0x40100000    # 2.25f

    aput v13, v12, v6

    .line 10
    aput v2, v12, p2

    :goto_3c
    const/4 v2, 0x0

    :goto_3d
    add-int v13, v1, v2

    .line 16
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v14

    const v15, 0x7fffffff

    if-ne v13, v14, :cond_76

    .line 18
    new-array v0, v4, [B

    .line 19
    new-array v1, v4, [I

    .line 20
    invoke-static {v12, v1, v15, v0}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->findMinimums([F[II[B)I

    move-result v2

    .line 21
    invoke-static {v0}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->getMinimumCount([B)I

    move-result v3

    .line 23
    aget v1, v1, v10

    if-ne v1, v2, :cond_59

    return v10

    :cond_59
    if-ne v3, v11, :cond_60

    .line 26
    aget-byte v1, v0, v6

    if-lez v1, :cond_60

    return v6

    :cond_60
    if-ne v3, v11, :cond_67

    .line 29
    aget-byte v1, v0, v8

    if-lez v1, :cond_67

    return v8

    :cond_67
    if-ne v3, v11, :cond_6e

    .line 32
    aget-byte v1, v0, v7

    if-lez v1, :cond_6e

    return v7

    :cond_6e
    if-ne v3, v11, :cond_75

    .line 35
    aget-byte v0, v0, v9

    if-lez v0, :cond_75

    return v9

    :cond_75
    return v11

    .line 41
    :cond_76
    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    add-int/lit8 v2, v2, 0x1

    .line 45
    invoke-static {v13}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v14

    if-eqz v14, :cond_91

    .line 46
    aget v14, v12, v10

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x5

    float-to-double v5, v14

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    add-double v5, v5, v18

    double-to-float v5, v5

    aput v5, v12, v10

    goto :goto_b9

    :cond_91
    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x5

    .line 47
    invoke-static {v13}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v5

    if-eqz v5, :cond_aa

    .line 48
    aget v5, v12, v10

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    int-to-float v5, v5

    aput v5, v12, v10

    add-float/2addr v5, v3

    .line 49
    aput v5, v12, v10

    goto :goto_b9

    .line 51
    :cond_aa
    aget v5, v12, v10

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    int-to-float v5, v5

    aput v5, v12, v10

    add-float v5, v5, v16

    .line 52
    aput v5, v12, v10

    .line 56
    :goto_b9
    invoke-static {v13}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->isNativeC40(C)Z

    move-result v5

    const v6, 0x402aaaab

    const v14, 0x3faaaaab

    const v18, 0x3f2aaaab

    if-eqz v5, :cond_cf

    .line 57
    aget v5, v12, v11

    add-float v5, v5, v18

    aput v5, v12, v11

    goto :goto_e0

    .line 58
    :cond_cf
    invoke-static {v13}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v5

    if-eqz v5, :cond_db

    .line 59
    aget v5, v12, v11

    add-float/2addr v5, v6

    aput v5, v12, v11

    goto :goto_e0

    .line 61
    :cond_db
    aget v5, v12, v11

    add-float/2addr v5, v14

    aput v5, v12, v11

    .line 65
    :goto_e0
    invoke-static {v13}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->isNativeText(C)Z

    move-result v5

    if-eqz v5, :cond_ed

    .line 66
    aget v5, v12, v7

    add-float v5, v5, v18

    aput v5, v12, v7

    goto :goto_fe

    .line 67
    :cond_ed
    invoke-static {v13}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v5

    if-eqz v5, :cond_f9

    .line 68
    aget v5, v12, v7

    add-float/2addr v5, v6

    aput v5, v12, v7

    goto :goto_fe

    .line 70
    :cond_f9
    aget v5, v12, v7

    add-float/2addr v5, v14

    aput v5, v12, v7

    .line 74
    :goto_fe
    invoke-static {v13}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v5

    if-eqz v5, :cond_10b

    .line 75
    aget v5, v12, v9

    add-float v5, v5, v18

    aput v5, v12, v9

    goto :goto_122

    .line 76
    :cond_10b
    invoke-static {v13}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v5

    if-eqz v5, :cond_11a

    .line 77
    aget v5, v12, v9

    const v6, 0x408aaaab

    add-float/2addr v5, v6

    aput v5, v12, v9

    goto :goto_122

    .line 79
    :cond_11a
    aget v5, v12, v9

    const v6, 0x40555555

    add-float/2addr v5, v6

    aput v5, v12, v9

    .line 83
    :goto_122
    invoke-static {v13}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->isNativeEDIFACT(C)Z

    move-result v5

    if-eqz v5, :cond_130

    .line 84
    aget v5, v12, v8

    const/high16 v6, 0x3f400000    # 0.75f

    add-float/2addr v5, v6

    aput v5, v12, v8

    goto :goto_145

    .line 85
    :cond_130
    invoke-static {v13}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v5

    if-eqz v5, :cond_13e

    .line 86
    aget v5, v12, v8

    const/high16 v6, 0x40880000    # 4.25f

    add-float/2addr v5, v6

    aput v5, v12, v8

    goto :goto_145

    .line 88
    :cond_13e
    aget v5, v12, v8

    const/high16 v6, 0x40500000    # 3.25f

    add-float/2addr v5, v6

    aput v5, v12, v8

    .line 92
    :goto_145
    invoke-static {v13}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->isSpecialB256(C)Z

    move-result v5

    if-eqz v5, :cond_153

    .line 93
    aget v5, v12, v17

    const/high16 v6, 0x40800000    # 4.0f

    add-float/2addr v5, v6

    aput v5, v12, v17

    goto :goto_159

    .line 95
    :cond_153
    aget v5, v12, v17

    add-float v5, v5, v16

    aput v5, v12, v17

    :goto_159
    if-lt v2, v8, :cond_1d4

    .line 100
    new-array v5, v4, [I

    .line 101
    new-array v6, v4, [B

    .line 102
    invoke-static {v12, v5, v15, v6}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->findMinimums([F[II[B)I

    .line 103
    invoke-static {v6}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->getMinimumCount([B)I

    move-result v13

    .line 105
    aget v14, v5, v10

    aget v15, v5, v17

    if-ge v14, v15, :cond_17d

    aget v3, v5, v11

    if-ge v14, v3, :cond_17d

    aget v3, v5, v7

    if-ge v14, v3, :cond_17d

    aget v3, v5, v9

    if-ge v14, v3, :cond_17d

    aget v3, v5, v8

    if-ge v14, v3, :cond_17d

    return v10

    :cond_17d
    if-lt v15, v14, :cond_1d3

    .line 112
    aget-byte v3, v6, v11

    aget-byte v19, v6, v7

    add-int v3, v3, v19

    aget-byte v20, v6, v9

    add-int v3, v3, v20

    aget-byte v6, v6, v8

    add-int/2addr v3, v6

    if-nez v3, :cond_18f

    goto :goto_1d3

    :cond_18f
    if-ne v13, v11, :cond_194

    if-lez v6, :cond_194

    return v8

    :cond_194
    if-ne v13, v11, :cond_199

    if-lez v19, :cond_199

    return v7

    :cond_199
    if-ne v13, v11, :cond_19e

    if-lez v20, :cond_19e

    return v9

    .line 125
    :cond_19e
    aget v3, v5, v11

    add-int/lit8 v6, v3, 0x1

    if-ge v6, v14, :cond_1d4

    if-ge v6, v15, :cond_1d4

    aget v13, v5, v8

    if-ge v6, v13, :cond_1d4

    aget v13, v5, v7

    if-ge v6, v13, :cond_1d4

    .line 129
    aget v5, v5, v9

    if-ge v3, v5, :cond_1b3

    return v11

    :cond_1b3
    if-ne v3, v5, :cond_1d4

    add-int/2addr v1, v2

    add-int/2addr v1, v11

    .line 134
    :goto_1b7
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1d2

    .line 135
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 136
    invoke-static {v2}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->isX12TermSep(C)Z

    move-result v3

    if-eqz v3, :cond_1c8

    return v9

    .line 139
    :cond_1c8
    invoke-static {v2}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v2

    if-nez v2, :cond_1cf

    goto :goto_1d2

    :cond_1cf
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b7

    :cond_1d2
    :goto_1d2
    return v11

    :cond_1d3
    :goto_1d3
    return v17

    :cond_1d4
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x5

    goto/16 :goto_3d
.end method

.method private static randomize253State(CI)C
    .registers 2

    mul-int/lit16 p1, p1, 0x95

    .line 1
    rem-int/lit16 p1, p1, 0xfd

    add-int/lit8 p1, p1, 0x1

    add-int/2addr p0, p1

    const/16 p1, 0xfe

    if-gt p0, p1, :cond_d

    int-to-char p0, p0

    return p0

    :cond_d
    sub-int/2addr p0, p1

    int-to-char p0, p0

    return p0
.end method
