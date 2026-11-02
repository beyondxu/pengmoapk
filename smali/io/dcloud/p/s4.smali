###### Class io.dcloud.p.s4 (io.dcloud.p.s4)
.class public abstract Lio/dcloud/p/s4;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# direct methods
.method public static a([B)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 5
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_e

    .line 6
    aget-byte v1, p0, v0

    xor-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8
    :cond_e
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 3

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/4 v0, 0x0

    .line 3
    :goto_7
    array-length v1, p0

    if-ge v0, v1, :cond_14

    .line 4
    aget-byte v1, p0, v0

    xor-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_14
    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lio/dcloud/p/s4;->f(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/p/s4;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    const/4 v0, 0x2

    .line 3
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/p/s4;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "GBK"

    .line 1
    :try_start_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v1, 0x0

    .line 2
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_14

    .line 3
    aget-byte v2, p0, v1

    xor-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 5
    :cond_14
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_19} :catch_1a

    return-object v1

    :catch_1a
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 3
    :cond_7
    invoke-static {p0}, Lio/dcloud/p/s4;->a(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;)[B
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_2f

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_b

    goto :goto_2f

    .line 4
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/2addr v1, v2

    .line 6
    new-array v2, v1, [B

    :goto_16
    if-ge v0, v1, :cond_2e

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v4, v3, 0x2

    .line 8
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    .line 9
    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_2e
    return-object v2

    .line 10
    :cond_2f
    :goto_2f
    new-array p0, v0, [B

    return-object p0
.end method
