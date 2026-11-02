###### Class com.alibaba.fastjson.util.UTF8Decoder (com.alibaba.fastjson.util.UTF8Decoder)
.class public Lcom/alibaba/fastjson/util/UTF8Decoder;
.super Ljava/nio/charset/CharsetDecoder;
.source "UTF8Decoder.java"


# static fields
.field private static final charset:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/UTF8Decoder;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 38
    sget-object v0, Lcom/alibaba/fastjson/util/UTF8Decoder;->charset:Ljava/nio/charset/Charset;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v1}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    return-void
.end method

.method private decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 15

    .line 122
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 123
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 124
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    add-int v6, v2, v3

    .line 126
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v2

    .line 127
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    .line 128
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->limit()I

    move-result v5

    add-int/2addr v4, v5

    sub-int v5, v6, v1

    sub-int v7, v4, v3

    .line 129
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/2addr v5, v3

    :goto_36
    if-ge v3, v5, :cond_45

    .line 132
    aget-byte v7, v0, v1

    if-ltz v7, :cond_45

    add-int/lit8 v8, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    int-to-char v7, v7

    .line 133
    aput-char v7, v2, v3

    move v3, v8

    goto :goto_36

    :cond_45
    move v5, v1

    move v8, v3

    :goto_47
    if-ge v5, v6, :cond_13c

    .line 137
    aget-byte v1, v0, v5

    if-ltz v1, :cond_65

    if-lt v8, v4, :cond_57

    const/4 v9, 0x1

    move-object v4, p1

    move-object v7, p2

    .line 141
    invoke-static/range {v4 .. v9}, Lcom/alibaba/fastjson/util/UTF8Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object p1

    return-object p1

    :cond_57
    move v7, v4

    move-object v4, p1

    move p1, v7

    move-object v7, p2

    add-int/lit8 p2, v8, 0x1

    int-to-char v1, v1

    .line 143
    aput-char v1, v2, v8

    add-int/lit8 v5, v5, 0x1

    move v8, p2

    goto/16 :goto_125

    :cond_65
    move v7, v4

    move-object v4, p1

    move p1, v7

    move-object v7, p2

    shr-int/lit8 p2, v1, 0x5

    const/4 v3, -0x2

    const/4 v9, 0x2

    if-ne p2, v3, :cond_9a

    sub-int p2, v6, v5

    if-lt p2, v9, :cond_94

    if-lt v8, p1, :cond_76

    goto :goto_94

    :cond_76
    add-int/lit8 p2, v5, 0x1

    .line 150
    aget-byte p2, v0, p2

    .line 151
    invoke-static {v1, p2}, Lcom/alibaba/fastjson/util/UTF8Decoder;->isMalformed2(II)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 152
    invoke-static {v4, v5, v7, v8, v9}, Lcom/alibaba/fastjson/util/UTF8Decoder;->malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object p1

    return-object p1

    :cond_85
    add-int/lit8 v3, v8, 0x1

    shl-int/lit8 v1, v1, 0x6

    xor-int/2addr p2, v1

    xor-int/lit16 p2, p2, 0xf80

    int-to-char p2, p2

    .line 154
    aput-char p2, v2, v8

    add-int/lit8 v5, v5, 0x2

    :goto_91
    move v8, v3

    goto/16 :goto_125

    :cond_94
    :goto_94
    const/4 v9, 0x2

    .line 148
    invoke-static/range {v4 .. v9}, Lcom/alibaba/fastjson/util/UTF8Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object p1

    return-object p1

    :cond_9a
    shr-int/lit8 p2, v1, 0x4

    if-ne p2, v3, :cond_cf

    sub-int p2, v6, v5

    const/4 v3, 0x3

    if-lt p2, v3, :cond_c9

    if-lt v8, p1, :cond_a6

    goto :goto_c9

    :cond_a6
    add-int/lit8 p2, v5, 0x1

    .line 161
    aget-byte p2, v0, p2

    add-int/lit8 v9, v5, 0x2

    .line 162
    aget-byte v9, v0, v9

    .line 163
    invoke-static {v1, p2, v9}, Lcom/alibaba/fastjson/util/UTF8Decoder;->isMalformed3(III)Z

    move-result v10

    if-eqz v10, :cond_b9

    .line 164
    invoke-static {v4, v5, v7, v8, v3}, Lcom/alibaba/fastjson/util/UTF8Decoder;->malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object p1

    return-object p1

    :cond_b9
    add-int/lit8 v3, v8, 0x1

    shl-int/lit8 v1, v1, 0xc

    shl-int/lit8 p2, p2, 0x6

    xor-int/2addr p2, v1

    xor-int/2addr p2, v9

    xor-int/lit16 p2, p2, 0x1f80

    int-to-char p2, p2

    .line 166
    aput-char p2, v2, v8

    add-int/lit8 v5, v5, 0x3

    goto :goto_91

    :cond_c9
    :goto_c9
    const/4 v9, 0x3

    .line 159
    invoke-static/range {v4 .. v9}, Lcom/alibaba/fastjson/util/UTF8Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object p1

    return-object p1

    :cond_cf
    shr-int/lit8 p2, v1, 0x3

    if-ne p2, v3, :cond_136

    sub-int p2, v6, v5

    const/4 v3, 0x4

    if-lt p2, v3, :cond_130

    sub-int p2, p1, v8

    if-ge p2, v9, :cond_dd

    goto :goto_130

    :cond_dd
    add-int/lit8 p2, v5, 0x1

    .line 173
    aget-byte p2, v0, p2

    add-int/lit8 v9, v5, 0x2

    .line 174
    aget-byte v9, v0, v9

    add-int/lit8 v10, v5, 0x3

    .line 175
    aget-byte v10, v0, v10

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x12

    and-int/lit8 v11, p2, 0x3f

    shl-int/lit8 v11, v11, 0xc

    or-int/2addr v1, v11

    and-int/lit8 v11, v9, 0x3f

    shl-int/lit8 v11, v11, 0x6

    or-int/2addr v1, v11

    and-int/lit8 v11, v10, 0x3f

    or-int/2addr v1, v11

    .line 177
    invoke-static {p2, v9, v10}, Lcom/alibaba/fastjson/util/UTF8Decoder;->isMalformed4(III)Z

    move-result p2

    if-nez p2, :cond_12b

    const/high16 p2, 0x10000

    if-lt v1, p2, :cond_12b

    const v9, 0x10ffff

    if-le v1, v9, :cond_10a

    goto :goto_12b

    :cond_10a
    add-int/lit8 v3, v8, 0x1

    sub-int/2addr v1, p2

    shr-int/lit8 p2, v1, 0xa

    and-int/lit16 p2, p2, 0x3ff

    const v9, 0xd800

    or-int/2addr p2, v9

    int-to-char p2, p2

    .line 180
    aput-char p2, v2, v8

    add-int/lit8 v8, v8, 0x2

    const p2, 0xdc00

    and-int/lit16 v1, v1, 0x3ff

    or-int/2addr p2, v1

    int-to-char p2, p2

    .line 181
    aput-char p2, v2, v3

    add-int/lit8 v5, v5, 0x4

    :goto_125
    move-object p2, v4

    move v4, p1

    move-object p1, p2

    move-object p2, v7

    goto/16 :goto_47

    .line 178
    :cond_12b
    :goto_12b
    invoke-static {v4, v5, v7, v8, v3}, Lcom/alibaba/fastjson/util/UTF8Decoder;->malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object p1

    return-object p1

    :cond_130
    :goto_130
    const/4 v9, 0x4

    .line 171
    invoke-static/range {v4 .. v9}, Lcom/alibaba/fastjson/util/UTF8Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object p1

    return-object p1

    :cond_136
    const/4 p1, 0x1

    .line 184
    invoke-static {v4, v5, v7, v8, p1}, Lcom/alibaba/fastjson/util/UTF8Decoder;->malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object p1

    return-object p1

    :cond_13c
    move-object v4, p1

    move-object v7, p2

    const/4 v9, 0x0

    .line 187
    invoke-static/range {v4 .. v9}, Lcom/alibaba/fastjson/util/UTF8Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object p1

    return-object p1
.end method

.method private static isMalformed2(II)Z
    .registers 2

    and-int/lit8 p0, p0, 0x1e

    if-eqz p0, :cond_d

    and-int/lit16 p0, p1, 0xc0

    const/16 p1, 0x80

    if-eq p0, p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method private static isMalformed3(III)Z
    .registers 5

    const/16 v0, -0x20

    const/16 v1, 0x80

    if-ne p0, v0, :cond_a

    and-int/lit16 p0, p1, 0xe0

    if-eq p0, v1, :cond_15

    :cond_a
    and-int/lit16 p0, p1, 0xc0

    if-ne p0, v1, :cond_15

    and-int/lit16 p0, p2, 0xc0

    if-eq p0, v1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method private static isMalformed4(III)Z
    .registers 4

    and-int/lit16 p0, p0, 0xc0

    const/16 v0, 0x80

    if-ne p0, v0, :cond_11

    and-int/lit16 p0, p1, 0xc0

    if-ne p0, v0, :cond_11

    and-int/lit16 p0, p2, 0xc0

    if-eq p0, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method private static isNotContinuation(I)Z
    .registers 2

    and-int/lit16 p0, p0, 0xc0

    const/16 v0, 0x80

    if-eq p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method private static lookupN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;
    .registers 4

    const/4 v0, 0x1

    :goto_1
    if-ge v0, p1, :cond_15

    .line 67
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/UTF8Decoder;->isNotContinuation(I)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object p0

    return-object p0

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 69
    :cond_15
    invoke-static {p1}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object p0

    return-object p0
.end method

.method private static malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;
    .registers 6

    .line 107
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 108
    invoke-static {p0, p4}, Lcom/alibaba/fastjson/util/UTF8Decoder;->malformedN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object p4

    .line 109
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 110
    invoke-virtual {p2, p3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    return-object p4
.end method

.method public static malformedN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;
    .registers 11

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_78

    const/4 v2, 0x2

    if-eq p1, v2, :cond_73

    const/16 v3, 0x80

    const/4 v4, 0x3

    if-eq p1, v4, :cond_56

    if-ne p1, v0, :cond_50

    .line 96
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    .line 97
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v5, v0, 0xff

    const/16 v6, 0xf4

    if-gt p1, v6, :cond_4b

    const/16 v7, 0xf0

    if-ne p1, v7, :cond_2a

    const/16 v8, 0x90

    if-lt v5, v8, :cond_4b

    const/16 v8, 0xbf

    if-gt v5, v8, :cond_4b

    :cond_2a
    if-ne p1, v6, :cond_30

    and-int/lit16 p1, v0, 0xf0

    if-ne p1, v3, :cond_4b

    .line 98
    :cond_30
    invoke-static {v5}, Lcom/alibaba/fastjson/util/UTF8Decoder;->isNotContinuation(I)Z

    move-result p1

    if-eqz p1, :cond_37

    goto :goto_4b

    .line 99
    :cond_37
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    invoke-static {p0}, Lcom/alibaba/fastjson/util/UTF8Decoder;->isNotContinuation(I)Z

    move-result p0

    if-eqz p0, :cond_46

    invoke-static {v2}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object p0

    return-object p0

    .line 100
    :cond_46
    invoke-static {v4}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object p0

    return-object p0

    .line 98
    :cond_4b
    :goto_4b
    invoke-static {v1}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object p0

    return-object p0

    .line 102
    :cond_50
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 92
    :cond_56
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    .line 93
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    const/16 v0, -0x20

    if-ne p1, v0, :cond_66

    and-int/lit16 p1, p0, 0xe0

    if-eq p1, v3, :cond_6e

    .line 94
    :cond_66
    invoke-static {p0}, Lcom/alibaba/fastjson/util/UTF8Decoder;->isNotContinuation(I)Z

    move-result p0

    if-eqz p0, :cond_6d

    goto :goto_6e

    :cond_6d
    const/4 v1, 0x2

    :cond_6e
    :goto_6e
    invoke-static {v1}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object p0

    return-object p0

    .line 90
    :cond_73
    invoke-static {v1}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object p0

    return-object p0

    .line 75
    :cond_78
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    shr-int/lit8 v2, p1, 0x2

    const/4 v3, 0x5

    const/4 v4, -0x2

    if-ne v2, v4, :cond_90

    .line 78
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    if-ge p1, v0, :cond_8b

    sget-object p0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object p0

    .line 79
    :cond_8b
    invoke-static {p0, v3}, Lcom/alibaba/fastjson/util/UTF8Decoder;->lookupN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object p0

    return-object p0

    :cond_90
    shr-int/2addr p1, v1

    if-ne p1, v4, :cond_a2

    .line 83
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    if-ge p1, v3, :cond_9c

    .line 84
    sget-object p0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object p0

    :cond_9c
    const/4 p1, 0x6

    .line 86
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/util/UTF8Decoder;->lookupN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object p0

    return-object p0

    .line 88
    :cond_a2
    invoke-static {v1}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object p0

    return-object p0
.end method

.method private static xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;
    .registers 6

    .line 115
    invoke-virtual {p0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 116
    invoke-virtual {p3, p4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    if-eqz p5, :cond_f

    sub-int/2addr p2, p1

    if-ge p2, p5, :cond_c

    goto :goto_f

    .line 117
    :cond_c
    sget-object p0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    return-object p0

    :cond_f
    :goto_f
    sget-object p0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object p0
.end method


# virtual methods
.method protected decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 3

    .line 191
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/util/UTF8Decoder;->decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object p1

    return-object p1
.end method
