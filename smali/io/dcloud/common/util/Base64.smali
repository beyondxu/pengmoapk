###### Class io.dcloud.common.util.Base64 (io.dcloud.common.util.Base64)
.class public final Lio/dcloud/common/util/Base64;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# static fields
.field private static final BASE64CHARS:[C

.field private static final CRLF:Ljava/lang/String; = "\r\n"

.field private static final PAD:C = '='


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x40

    .line 1
    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lio/dcloud/common/util/Base64;->BASE64CHARS:[C

    return-void

    :array_a
    .array-data 2
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
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode2String(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    .line 1
    invoke-static {p0}, Lio/dcloud/common/util/Base64;->decode2bytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 3
    :try_start_6
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "utf-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_e} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_e} :catch_14
    .catchall {:try_start_6 .. :try_end_e} :catchall_f

    return-object v1

    :catchall_f
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0

    :catch_14
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0

    :catch_19
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static decode2bytes(Ljava/lang/String;)[B
    .registers 12

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    .line 4
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 8
    :goto_e
    array-length v6, p0

    if-ge v3, v6, :cond_98

    const/4 v6, 0x4

    if-ge v4, v6, :cond_77

    .line 10
    aget-byte v7, p0, v3

    invoke-static {v7}, Lio/dcloud/common/util/Base64;->decodeInt(I)I

    move-result v7
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1a} :catch_af
    .catchall {:try_start_6 .. :try_end_1a} :catchall_a5

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1f

    goto/16 :goto_94

    :cond_1f
    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, -0x2

    if-ne v7, v10, :cond_31

    if-eq v4, v9, :cond_31

    if-eq v4, v8, :cond_31

    .line 53
    :try_start_28
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    return-object v1

    :catch_2c
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1

    :cond_31
    if-ne v7, v10, :cond_4b

    if-ne v4, v9, :cond_4b

    shr-int/lit8 p0, v5, 0x4

    .line 56
    :try_start_37
    invoke-static {p0}, Lio/dcloud/common/util/Base64;->eightbit(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 57
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_42} :catch_af
    .catchall {:try_start_37 .. :try_end_42} :catchall_a5

    .line 91
    :try_start_42
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    return-object p0

    :catch_46
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p0

    :cond_4b
    if-ne v7, v10, :cond_6e

    if-ne v4, v8, :cond_6e

    shr-int/lit8 p0, v5, 0xa

    .line 94
    :try_start_51
    invoke-static {p0}, Lio/dcloud/common/util/Base64;->eightbit(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 p0, v5, 0x2

    .line 95
    invoke-static {p0}, Lio/dcloud/common/util/Base64;->eightbit(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 96
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_65} :catch_af
    .catchall {:try_start_51 .. :try_end_65} :catchall_a5

    .line 122
    :try_start_65
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69

    return-object p0

    :catch_69
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p0

    :cond_6e
    shl-int/lit8 v5, v5, 0x6

    .line 125
    :try_start_70
    invoke-static {v7}, Lio/dcloud/common/util/Base64;->sixbit(I)I

    move-result v7

    or-int/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    :cond_77
    if-ne v4, v6, :cond_94

    shr-int/lit8 v4, v5, 0x10

    .line 133
    invoke-static {v4}, Lio/dcloud/common/util/Base64;->eightbit(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 v4, v5, 0x8

    .line 134
    invoke-static {v4}, Lio/dcloud/common/util/Base64;->eightbit(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 135
    invoke-static {v5}, Lio/dcloud/common/util/Base64;->eightbit(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_94
    :goto_94
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_e

    .line 142
    :cond_98
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_9c} :catch_af
    .catchall {:try_start_70 .. :try_end_9c} :catchall_a5

    .line 148
    :try_start_9c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_a0

    return-object p0

    :catch_a0
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p0

    :catchall_a5
    move-exception p0

    .line 151
    :try_start_a6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_aa

    goto :goto_ae

    :catch_aa
    move-exception v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 156
    :goto_ae
    throw p0

    .line 157
    :catch_af
    :try_start_af
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b2} :catch_b3

    goto :goto_b7

    :catch_b3
    move-exception p0

    .line 159
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_b7
    return-object v1
.end method

.method private static decodeInt(I)I
    .registers 3

    const/16 v0, 0x41

    if-lt p0, v0, :cond_a

    const/16 v1, 0x5a

    if-gt p0, v1, :cond_a

    sub-int/2addr p0, v0

    return p0

    :cond_a
    const/16 v0, 0x61

    if-lt p0, v0, :cond_15

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_15

    add-int/lit8 p0, p0, -0x47

    return p0

    :cond_15
    const/16 v0, 0x30

    if-lt p0, v0, :cond_20

    const/16 v0, 0x39

    if-gt p0, v0, :cond_20

    add-int/lit8 p0, p0, 0x4

    return p0

    :cond_20
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_27

    const/16 p0, 0x3e

    return p0

    :cond_27
    const/16 v0, 0x2f

    if-ne p0, v0, :cond_2e

    const/16 p0, 0x3f

    return p0

    :cond_2e
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_34

    const/4 p0, -0x2

    return p0

    :cond_34
    const/4 p0, -0x1

    return p0
.end method

.method public static decodeString(Ljava/lang/String;ZI)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lio/dcloud/p/e1;->a(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static eightbit(I)I
    .registers 1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    :try_start_0
    const-string/jumbo v0, "utf-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/common/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object p0
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static encode([B)Ljava/lang/String;
    .registers 6

    .line 2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 6
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_c7

    .line 9
    rem-int/lit8 v2, v1, 0x39

    if-nez v2, :cond_14

    if-eqz v1, :cond_14

    .line 10
    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    :cond_14
    array-length v2, p0

    add-int/lit8 v3, v1, 0x1

    if-gt v2, v3, :cond_40

    .line 12
    aget-byte v2, p0, v1

    invoke-static {v2}, Lio/dcloud/common/util/Base64;->eightbit(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    .line 13
    sget-object v3, Lio/dcloud/common/util/Base64;->BASE64CHARS:[C

    shr-int/lit8 v4, v2, 0x12

    invoke-static {v4}, Lio/dcloud/common/util/Base64;->sixbit(I)I

    move-result v4

    aget-char v4, v3, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    shr-int/lit8 v2, v2, 0xc

    .line 14
    invoke-static {v2}, Lio/dcloud/common/util/Base64;->sixbit(I)I

    move-result v2

    aget-char v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, "=="

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_c3

    .line 18
    :cond_40
    array-length v2, p0

    add-int/lit8 v4, v1, 0x2

    if-gt v2, v4, :cond_7f

    .line 19
    aget-byte v2, p0, v1

    invoke-static {v2}, Lio/dcloud/common/util/Base64;->eightbit(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    aget-byte v3, p0, v3

    invoke-static {v3}, Lio/dcloud/common/util/Base64;->eightbit(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    .line 20
    sget-object v3, Lio/dcloud/common/util/Base64;->BASE64CHARS:[C

    shr-int/lit8 v4, v2, 0x12

    invoke-static {v4}, Lio/dcloud/common/util/Base64;->sixbit(I)I

    move-result v4

    aget-char v4, v3, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    shr-int/lit8 v4, v2, 0xc

    .line 21
    invoke-static {v4}, Lio/dcloud/common/util/Base64;->sixbit(I)I

    move-result v4

    aget-char v4, v3, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    shr-int/lit8 v2, v2, 0x6

    .line 22
    invoke-static {v2}, Lio/dcloud/common/util/Base64;->sixbit(I)I

    move-result v2

    aget-char v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v2, 0x3d

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_c3

    .line 26
    :cond_7f
    aget-byte v2, p0, v1

    invoke-static {v2}, Lio/dcloud/common/util/Base64;->eightbit(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    aget-byte v3, p0, v3

    invoke-static {v3}, Lio/dcloud/common/util/Base64;->eightbit(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    aget-byte v3, p0, v4

    invoke-static {v3}, Lio/dcloud/common/util/Base64;->eightbit(I)I

    move-result v3

    or-int/2addr v2, v3

    .line 27
    sget-object v3, Lio/dcloud/common/util/Base64;->BASE64CHARS:[C

    shr-int/lit8 v4, v2, 0x12

    invoke-static {v4}, Lio/dcloud/common/util/Base64;->sixbit(I)I

    move-result v4

    aget-char v4, v3, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    shr-int/lit8 v4, v2, 0xc

    .line 28
    invoke-static {v4}, Lio/dcloud/common/util/Base64;->sixbit(I)I

    move-result v4

    aget-char v4, v3, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    shr-int/lit8 v4, v2, 0x6

    .line 29
    invoke-static {v4}, Lio/dcloud/common/util/Base64;->sixbit(I)I

    move-result v4

    aget-char v4, v3, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 30
    invoke-static {v2}, Lio/dcloud/common/util/Base64;->sixbit(I)I

    move-result v2

    aget-char v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_c3
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_6

    .line 33
    :cond_c7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeString(Ljava/lang/String;ZI)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lio/dcloud/p/e1;->b(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static sixbit(I)I
    .registers 1

    and-int/lit8 p0, p0, 0x3f

    return p0
.end method
