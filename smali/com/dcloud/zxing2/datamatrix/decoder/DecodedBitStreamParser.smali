###### Class com.dcloud.zxing2.datamatrix.decoder.DecodedBitStreamParser (com.dcloud.zxing2.datamatrix.decoder.DecodedBitStreamParser)
.class final Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static final C40_BASIC_SET_CHARS:[C

.field private static final C40_SHIFT2_SET_CHARS:[C

.field private static final TEXT_BASIC_SET_CHARS:[C

.field private static final TEXT_SHIFT2_SET_CHARS:[C

.field private static final TEXT_SHIFT3_SET_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x28

    .line 1
    new-array v1, v0, [C

    fill-array-data v1, :array_26

    sput-object v1, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser;->C40_BASIC_SET_CHARS:[C

    const/16 v1, 0x1b

    .line 7
    new-array v1, v1, [C

    fill-array-data v1, :array_52

    sput-object v1, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    .line 16
    new-array v0, v0, [C

    fill-array-data v0, :array_72

    sput-object v0, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser;->TEXT_BASIC_SET_CHARS:[C

    .line 23
    sput-object v1, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT2_SET_CHARS:[C

    const/16 v0, 0x20

    .line 25
    new-array v0, v0, [C

    fill-array-data v0, :array_9e

    sput-object v0, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT3_SET_CHARS:[C

    return-void

    nop

    :array_26
    .array-data 2
        0x2as
        0x2as
        0x2as
        0x20s
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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data

    :array_52
    .array-data 2
        0x21s
        0x22s
        0x23s
        0x24s
        0x25s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x2ds
        0x2es
        0x2fs
        0x3as
        0x3bs
        0x3cs
        0x3ds
        0x3es
        0x3fs
        0x40s
        0x5bs
        0x5cs
        0x5ds
        0x5es
        0x5fs
    .end array-data

    nop

    :array_72
    .array-data 2
        0x2as
        0x2as
        0x2as
        0x20s
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
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    :array_9e
    .array-data 2
        0x60s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x7bs
        0x7cs
        0x7ds
        0x7es
        0x7fs
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decode([B)Lcom/dcloud/zxing2/common/DecoderResult;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/dcloud/zxing2/common/BitSource;

    invoke-direct {v0, p0}, Lcom/dcloud/zxing2/common/BitSource;-><init>([B)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    sget-object v5, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 7
    :cond_1a
    sget-object v6, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    if-ne v5, v6, :cond_23

    .line 8
    invoke-static {v0, v1, v2}, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser;->decodeAsciiSegment(Lcom/dcloud/zxing2/common/BitSource;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    move-result-object v5

    goto :goto_52

    .line 10
    :cond_23
    sget-object v7, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$dcloud$zxing2$datamatrix$decoder$DecodedBitStreamParser$Mode:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v7, v5

    if-eq v5, v4, :cond_4e

    const/4 v7, 0x2

    if-eq v5, v7, :cond_4a

    const/4 v7, 0x3

    if-eq v5, v7, :cond_46

    const/4 v7, 0x4

    if-eq v5, v7, :cond_42

    const/4 v7, 0x5

    if-ne v5, v7, :cond_3d

    .line 28
    invoke-static {v0, v1, v3}, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser;->decodeBase256Segment(Lcom/dcloud/zxing2/common/BitSource;Ljava/lang/StringBuilder;Ljava/util/Collection;)V

    goto :goto_51

    .line 27
    :cond_3d
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    .line 29
    :cond_42
    invoke-static {v0, v1}, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser;->decodeEdifactSegment(Lcom/dcloud/zxing2/common/BitSource;Ljava/lang/StringBuilder;)V

    goto :goto_51

    .line 30
    :cond_46
    invoke-static {v0, v1}, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser;->decodeAnsiX12Segment(Lcom/dcloud/zxing2/common/BitSource;Ljava/lang/StringBuilder;)V

    goto :goto_51

    .line 31
    :cond_4a
    invoke-static {v0, v1}, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser;->decodeTextSegment(Lcom/dcloud/zxing2/common/BitSource;Ljava/lang/StringBuilder;)V

    goto :goto_51

    .line 32
    :cond_4e
    invoke-static {v0, v1}, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser;->decodeC40Segment(Lcom/dcloud/zxing2/common/BitSource;Ljava/lang/StringBuilder;)V

    :goto_51
    move-object v5, v6

    .line 51
    :goto_52
    sget-object v6, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->PAD_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    if-eq v5, v6, :cond_5c

    invoke-virtual {v0}, Lcom/dcloud/zxing2/common/BitSource;->available()I

    move-result v6

    if-gtz v6, :cond_1a

    .line 52
    :cond_5c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_65

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 55
    :cond_65
    new-instance v0, Lcom/dcloud/zxing2/common/DecoderResult;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_73

    move-object v3, v4

    :cond_73
    invoke-direct {v0, p0, v1, v3, v4}, Lcom/dcloud/zxing2/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method private static decodeAnsiX12Segment(Lcom/dcloud/zxing2/common/BitSource;Ljava/lang/StringBuilder;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 1
    new-array v1, v0, [I

    .line 4
    :cond_3
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitSource;->available()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_c

    goto :goto_66

    .line 7
    :cond_c
    invoke-virtual {p0, v3}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result v2

    const/16 v4, 0xfe

    if-ne v2, v4, :cond_15

    goto :goto_66

    .line 12
    :cond_15
    invoke-virtual {p0, v3}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result v3

    invoke-static {v2, v3, v1}, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v0, :cond_60

    .line 15
    aget v3, v1, v2

    if-nez v3, :cond_29

    const/16 v3, 0xd

    .line 17
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_58

    :cond_29
    const/4 v4, 0x1

    if-ne v3, v4, :cond_32

    const/16 v3, 0x2a

    .line 19
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_58

    :cond_32
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3b

    const/16 v3, 0x3e

    .line 21
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_58

    :cond_3b
    if-ne v3, v0, :cond_43

    const/16 v3, 0x20

    .line 23
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_58

    :cond_43
    const/16 v4, 0xe

    if-ge v3, v4, :cond_4e

    add-int/lit8 v3, v3, 0x2c

    int-to-char v3, v3

    .line 25
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_58

    :cond_4e
    const/16 v4, 0x28

    if-ge v3, v4, :cond_5b

    add-int/lit8 v3, v3, 0x33

    int-to-char v3, v3

    .line 27
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 29
    :cond_5b
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    .line 32
    :cond_60
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitSource;->available()I

    move-result v2

    if-gtz v2, :cond_3

    :goto_66
    return-void
.end method

.method private static decodeAsciiSegment(Lcom/dcloud/zxing2/common/BitSource;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_2
    const/16 v2, 0x8

    .line 1
    invoke-virtual {p0, v2}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result v2

    if-eqz v2, :cond_b0

    const/4 v3, 0x1

    const/16 v4, 0x80

    if-gt v2, v4, :cond_1b

    if-eqz v1, :cond_13

    add-int/lit16 v2, v2, 0x80

    :cond_13
    sub-int/2addr v2, v3

    int-to-char p0, v2

    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    sget-object p0, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object p0

    :cond_1b
    const/16 v4, 0x81

    if-ne v2, v4, :cond_22

    .line 12
    sget-object p0, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->PAD_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object p0

    :cond_22
    const/16 v4, 0xe5

    if-gt v2, v4, :cond_36

    add-int/lit16 v2, v2, -0x82

    const/16 v3, 0xa

    if-ge v2, v3, :cond_31

    const/16 v3, 0x30

    .line 16
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    :cond_31
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_a7

    :cond_36
    const/16 v4, 0xe6

    if-ne v2, v4, :cond_3d

    .line 20
    sget-object p0, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->C40_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object p0

    :cond_3d
    const/16 v4, 0xe7

    if-ne v2, v4, :cond_44

    .line 22
    sget-object p0, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->BASE256_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object p0

    :cond_44
    const/16 v4, 0xe8

    if-ne v2, v4, :cond_4e

    const/16 v2, 0x1d

    .line 25
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a7

    :cond_4e
    const/16 v4, 0xe9

    if-eq v2, v4, :cond_a7

    const/16 v4, 0xea

    if-ne v2, v4, :cond_57

    goto :goto_a7

    :cond_57
    const/16 v4, 0xeb

    if-ne v2, v4, :cond_5d

    const/4 v1, 0x1

    goto :goto_a7

    :cond_5d
    const/16 v3, 0xec

    const-string v4, "\u001e\u0004"

    if-ne v2, v3, :cond_6c

    .line 33
    const-string v2, "[)>\u001e05\u001d"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p2, v0, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a7

    :cond_6c
    const/16 v3, 0xed

    if-ne v2, v3, :cond_79

    .line 36
    const-string v2, "[)>\u001e06\u001d"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p2, v0, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a7

    :cond_79
    const/16 v3, 0xee

    if-ne v2, v3, :cond_80

    .line 39
    sget-object p0, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->ANSIX12_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object p0

    :cond_80
    const/16 v3, 0xef

    if-ne v2, v3, :cond_87

    .line 41
    sget-object p0, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->TEXT_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object p0

    :cond_87
    const/16 v3, 0xf0

    if-ne v2, v3, :cond_8e

    .line 43
    sget-object p0, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->EDIFACT_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object p0

    :cond_8e
    const/16 v3, 0xf1

    if-ne v2, v3, :cond_93

    goto :goto_a7

    :cond_93
    const/16 v3, 0xf2

    if-lt v2, v3, :cond_a7

    const/16 v3, 0xfe

    if-ne v2, v3, :cond_a2

    .line 50
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitSource;->available()I

    move-result v2

    if-nez v2, :cond_a2

    goto :goto_a7

    .line 51
    :cond_a2
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    .line 54
    :cond_a7
    :goto_a7
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitSource;->available()I

    move-result v2

    if-gtz v2, :cond_2

    .line 55
    sget-object p0, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object p0

    .line 56
    :cond_b0
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0
.end method

.method private static decodeBase256Segment(Lcom/dcloud/zxing2/common/BitSource;Ljava/lang/StringBuilder;Ljava/util/Collection;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dcloud/zxing2/common/BitSource;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Collection<",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitSource;->getByteOffset()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x8

    .line 2
    invoke-virtual {p0, v2}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result v3

    add-int/lit8 v4, v0, 0x2

    invoke-static {v3, v1}, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)I

    move-result v1

    if-nez v1, :cond_1b

    .line 5
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitSource;->available()I

    move-result v0

    div-int/lit8 v1, v0, 0x8

    goto :goto_30

    :cond_1b
    const/16 v3, 0xfa

    if-ge v1, v3, :cond_20

    goto :goto_30

    :cond_20
    add-int/lit16 v1, v1, -0xf9

    mul-int/lit16 v1, v1, 0xfa

    .line 9
    invoke-virtual {p0, v2}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result v3

    add-int/lit8 v0, v0, 0x3

    invoke-static {v3, v4}, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)I

    move-result v3

    add-int/2addr v1, v3

    move v4, v0

    :goto_30
    if-ltz v1, :cond_76

    .line 17
    new-array v0, v1, [B

    const/4 v3, 0x0

    :goto_35
    if-ge v3, v1, :cond_53

    .line 21
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitSource;->available()I

    move-result v5

    if-lt v5, v2, :cond_4e

    .line 24
    invoke-virtual {p0, v2}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result v5

    add-int/lit8 v6, v4, 0x1

    invoke-static {v5, v4}, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_35

    .line 25
    :cond_4e
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    .line 29
    :cond_53
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 31
    :try_start_56
    new-instance p0, Ljava/lang/String;

    const-string p2, "ISO8859_1"

    invoke-direct {p0, v0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_60
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_56 .. :try_end_60} :catch_61

    return-void

    :catch_61
    move-exception p0

    .line 33
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Platform does not support required encoding: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_76
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0
.end method

.method private static decodeC40Segment(Lcom/dcloud/zxing2/common/BitSource;Ljava/lang/StringBuilder;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 1
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 6
    :cond_6
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitSource;->available()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_10

    goto/16 :goto_a6

    .line 9
    :cond_10
    invoke-virtual {p0, v6}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result v5

    const/16 v7, 0xfe

    if-ne v5, v7, :cond_1a

    goto/16 :goto_a6

    .line 14
    :cond_1a
    invoke-virtual {p0, v6}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result v6

    invoke-static {v5, v6, v1}, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    const/4 v5, 0x0

    :goto_22
    if-ge v5, v0, :cond_a0

    .line 17
    aget v6, v1, v5

    if-eqz v4, :cond_7e

    const/4 v7, 0x1

    if-eq v4, v7, :cond_6e

    const/4 v8, 0x2

    if-eq v4, v8, :cond_45

    if-ne v4, v0, :cond_40

    if-eqz v3, :cond_39

    add-int/lit16 v6, v6, 0xe0

    int-to-char v3, v6

    .line 72
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_76

    :cond_39
    add-int/lit8 v6, v6, 0x60

    int-to-char v4, v6

    .line 75
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7c

    .line 71
    :cond_40
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    .line 76
    :cond_45
    sget-object v4, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    array-length v8, v4

    if-ge v6, v8, :cond_59

    .line 77
    aget-char v4, v4, v6

    if-eqz v3, :cond_55

    add-int/lit16 v4, v4, 0x80

    int-to-char v3, v4

    .line 79
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_76

    .line 82
    :cond_55
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7c

    :cond_59
    const/16 v4, 0x1b

    if-ne v6, v4, :cond_63

    const/16 v4, 0x1d

    .line 85
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7c

    :cond_63
    const/16 v3, 0x1e

    if-ne v6, v3, :cond_69

    const/4 v3, 0x1

    goto :goto_7c

    .line 89
    :cond_69
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    :cond_6e
    if-eqz v3, :cond_78

    add-int/lit16 v6, v6, 0x80

    int-to-char v3, v6

    .line 90
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_76
    const/4 v3, 0x0

    goto :goto_7c

    :cond_78
    int-to-char v4, v6

    .line 93
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_7c
    const/4 v4, 0x0

    goto :goto_98

    :cond_7e
    if-ge v6, v0, :cond_84

    add-int/lit8 v6, v6, 0x1

    move v4, v6

    goto :goto_98

    .line 94
    :cond_84
    sget-object v7, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser;->C40_BASIC_SET_CHARS:[C

    array-length v8, v7

    if-ge v6, v8, :cond_9b

    .line 95
    aget-char v6, v7, v6

    if-eqz v3, :cond_95

    add-int/lit16 v6, v6, 0x80

    int-to-char v3, v6

    .line 97
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    goto :goto_98

    .line 100
    :cond_95
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_98
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .line 103
    :cond_9b
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    .line 146
    :cond_a0
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitSource;->available()I

    move-result v5

    if-gtz v5, :cond_6

    :goto_a6
    return-void
.end method

.method private static decodeEdifactSegment(Lcom/dcloud/zxing2/common/BitSource;Ljava/lang/StringBuilder;)V
    .registers 5

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitSource;->available()I

    move-result v0

    const/16 v1, 0x10

    if-gt v0, v1, :cond_9

    goto :goto_37

    :cond_9
    const/4 v0, 0x0

    :goto_a
    const/4 v1, 0x4

    if-ge v0, v1, :cond_31

    const/4 v1, 0x6

    .line 6
    invoke-virtual {p0, v1}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result v1

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_24

    .line 11
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitSource;->getBitOffset()I

    move-result p1

    const/16 v0, 0x8

    rsub-int/lit8 p1, p1, 0x8

    if-eq p1, v0, :cond_37

    .line 13
    invoke-virtual {p0, p1}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    return-void

    :cond_24
    and-int/lit8 v2, v1, 0x20

    if-nez v2, :cond_2a

    or-int/lit8 v1, v1, 0x40

    :cond_2a
    int-to-char v1, v1

    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 23
    :cond_31
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitSource;->available()I

    move-result v0

    if-gtz v0, :cond_0

    :cond_37
    :goto_37
    return-void
.end method

.method private static decodeTextSegment(Lcom/dcloud/zxing2/common/BitSource;Ljava/lang/StringBuilder;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 1
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 5
    :cond_6
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitSource;->available()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_10

    goto/16 :goto_b0

    .line 8
    :cond_10
    invoke-virtual {p0, v6}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result v5

    const/16 v7, 0xfe

    if-ne v5, v7, :cond_1a

    goto/16 :goto_b0

    .line 13
    :cond_1a
    invoke-virtual {p0, v6}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result v6

    invoke-static {v5, v6, v1}, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    const/4 v5, 0x0

    :goto_22
    if-ge v5, v0, :cond_aa

    .line 16
    aget v6, v1, v5

    if-eqz v4, :cond_87

    const/4 v7, 0x1

    if-eq v4, v7, :cond_77

    const/4 v8, 0x2

    if-eq v4, v8, :cond_4e

    if-ne v4, v0, :cond_49

    .line 77
    sget-object v4, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT3_SET_CHARS:[C

    array-length v7, v4

    if-ge v6, v7, :cond_44

    .line 78
    aget-char v4, v4, v6

    if-eqz v3, :cond_40

    add-int/lit16 v4, v4, 0x80

    int-to-char v3, v4

    .line 80
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7f

    .line 83
    :cond_40
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_85

    .line 87
    :cond_44
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    .line 76
    :cond_49
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    .line 88
    :cond_4e
    sget-object v4, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT2_SET_CHARS:[C

    array-length v8, v4

    if-ge v6, v8, :cond_62

    .line 89
    aget-char v4, v4, v6

    if-eqz v3, :cond_5e

    add-int/lit16 v4, v4, 0x80

    int-to-char v3, v4

    .line 91
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7f

    .line 94
    :cond_5e
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_85

    :cond_62
    const/16 v4, 0x1b

    if-ne v6, v4, :cond_6c

    const/16 v4, 0x1d

    .line 97
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_85

    :cond_6c
    const/16 v3, 0x1e

    if-ne v6, v3, :cond_72

    const/4 v3, 0x1

    goto :goto_85

    .line 101
    :cond_72
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    :cond_77
    if-eqz v3, :cond_81

    add-int/lit16 v6, v6, 0x80

    int-to-char v3, v6

    .line 102
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_7f
    const/4 v3, 0x0

    goto :goto_85

    :cond_81
    int-to-char v4, v6

    .line 105
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_85
    const/4 v4, 0x0

    goto :goto_a1

    :cond_87
    if-ge v6, v0, :cond_8d

    add-int/lit8 v6, v6, 0x1

    move v4, v6

    goto :goto_a1

    .line 106
    :cond_8d
    sget-object v7, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser;->TEXT_BASIC_SET_CHARS:[C

    array-length v8, v7

    if-ge v6, v8, :cond_a5

    .line 107
    aget-char v6, v7, v6

    if-eqz v3, :cond_9e

    add-int/lit16 v6, v6, 0x80

    int-to-char v3, v6

    .line 109
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    goto :goto_a1

    .line 112
    :cond_9e
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_a1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_22

    .line 115
    :cond_a5
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    .line 164
    :cond_aa
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitSource;->available()I

    move-result v5

    if-gtz v5, :cond_6

    :goto_b0
    return-void
.end method

.method private static parseTwoBytes(II[I)V
    .registers 5

    shl-int/lit8 p0, p0, 0x8

    add-int/2addr p0, p1

    const/4 p1, 0x1

    sub-int/2addr p0, p1

    .line 1
    div-int/lit16 v0, p0, 0x640

    const/4 v1, 0x0

    .line 2
    aput v0, p2, v1

    mul-int/lit16 v0, v0, 0x640

    sub-int/2addr p0, v0

    .line 4
    div-int/lit8 v0, p0, 0x28

    .line 5
    aput v0, p2, p1

    mul-int/lit8 v0, v0, 0x28

    sub-int/2addr p0, v0

    const/4 p1, 0x2

    .line 6
    aput p0, p2, p1

    return-void
.end method

.method private static unrandomize255State(II)I
    .registers 2

    mul-int/lit16 p1, p1, 0x95

    .line 1
    rem-int/lit16 p1, p1, 0xff

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr p0, p1

    if-ltz p0, :cond_a

    return p0

    :cond_a
    add-int/lit16 p0, p0, 0x100

    return p0
.end method

###### Class com.dcloud.zxing2.datamatrix.decoder.DecodedBitStreamParser.AnonymousClass1 (com.dcloud.zxing2.datamatrix.decoder.DecodedBitStreamParser$1)
.class synthetic Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$1;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$dcloud$zxing2$datamatrix$decoder$DecodedBitStreamParser$Mode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->values()[Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$dcloud$zxing2$datamatrix$decoder$DecodedBitStreamParser$Mode:[I

    :try_start_9
    sget-object v1, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->C40_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$dcloud$zxing2$datamatrix$decoder$DecodedBitStreamParser$Mode:[I

    sget-object v1, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->TEXT_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$dcloud$zxing2$datamatrix$decoder$DecodedBitStreamParser$Mode:[I

    sget-object v1, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->ANSIX12_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$dcloud$zxing2$datamatrix$decoder$DecodedBitStreamParser$Mode:[I

    sget-object v1, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->EDIFACT_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$dcloud$zxing2$datamatrix$decoder$DecodedBitStreamParser$Mode:[I

    sget-object v1, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->BASE256_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    return-void
.end method

###### Class com.dcloud.zxing2.datamatrix.decoder.DecodedBitStreamParser.Mode (com.dcloud.zxing2.datamatrix.decoder.DecodedBitStreamParser$Mode)
.class final enum Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;
.super Ljava/lang/Enum;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

.field public static final enum ANSIX12_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

.field public static final enum ASCII_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

.field public static final enum BASE256_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

.field public static final enum C40_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

.field public static final enum EDIFACT_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

.field public static final enum PAD_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

.field public static final enum TEXT_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;


# direct methods
.method private static synthetic $values()[Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;
    .registers 3

    const/4 v0, 0x7

    .line 1
    new-array v0, v0, [Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    sget-object v1, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->PAD_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->C40_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->TEXT_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->ANSIX12_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->EDIFACT_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->BASE256_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    const-string v1, "PAD_ENCODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->PAD_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 2
    new-instance v0, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    const-string v1, "ASCII_ENCODE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 3
    new-instance v0, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    const-string v1, "C40_ENCODE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->C40_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 4
    new-instance v0, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    const-string v1, "TEXT_ENCODE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->TEXT_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 5
    new-instance v0, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    const-string v1, "ANSIX12_ENCODE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->ANSIX12_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 6
    new-instance v0, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    const-string v1, "EDIFACT_ENCODE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->EDIFACT_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 7
    new-instance v0, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    const-string v1, "BASE256_ENCODE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->BASE256_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 8
    invoke-static {}, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->$values()[Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    move-result-object v0

    sput-object v0, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->$VALUES:[Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;
    .registers 2

    .line 1
    const-class v0, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object p0
.end method

.method public static values()[Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;
    .registers 1

    .line 1
    sget-object v0, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->$VALUES:[Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v0}, [Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object v0
.end method
