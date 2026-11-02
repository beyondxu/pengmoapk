###### Class kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.BitEncoding (kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.BitEncoding)
.class public Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/BitEncoding;
.super Ljava/lang/Object;
.source "BitEncoding.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final FORCE_8TO7_ENCODING:Z


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 20

    move/from16 v0, p0

    const/16 v1, 0xe

    const/16 v2, 0xc

    const/16 v3, 0xa

    const/16 v4, 0x8

    const/4 v5, 0x6

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eq v0, v7, :cond_1e

    if-eq v0, v6, :cond_1e

    if-eq v0, v5, :cond_1e

    if-eq v0, v4, :cond_1e

    if-eq v0, v3, :cond_1e

    if-eq v0, v2, :cond_1e

    if-eq v0, v1, :cond_1e

    const-string v8, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_20

    :cond_1e
    const-string v8, "@NotNull method %s.%s must not return null"

    :goto_20
    const/4 v9, 0x2

    if-eq v0, v7, :cond_31

    if-eq v0, v6, :cond_31

    if-eq v0, v5, :cond_31

    if-eq v0, v4, :cond_31

    if-eq v0, v3, :cond_31

    if-eq v0, v2, :cond_31

    if-eq v0, v1, :cond_31

    const/4 v10, 0x3

    goto :goto_32

    :cond_31
    const/4 v10, 0x2

    :goto_32
    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, "kotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/BitEncoding"

    const/4 v12, 0x0

    if-eq v0, v7, :cond_4a

    if-eq v0, v6, :cond_4a

    if-eq v0, v5, :cond_4a

    if-eq v0, v4, :cond_4a

    if-eq v0, v3, :cond_4a

    if-eq v0, v2, :cond_4a

    if-eq v0, v1, :cond_4a

    const-string v13, "data"

    aput-object v13, v10, v12

    goto :goto_4c

    :cond_4a
    aput-object v11, v10, v12

    :goto_4c
    const-string v12, "decode7to8"

    const-string v13, "combineStringArrayIntoBytes"

    const-string v14, "dropMarker"

    const-string v15, "decodeBytes"

    const-string v16, "splitBytesToStringArray"

    const-string v17, "encode8to7"

    const-string v18, "encodeBytes"

    if-eq v0, v7, :cond_7d

    if-eq v0, v6, :cond_7a

    if-eq v0, v5, :cond_77

    if-eq v0, v4, :cond_74

    if-eq v0, v3, :cond_71

    if-eq v0, v2, :cond_6e

    if-eq v0, v1, :cond_6b

    aput-object v11, v10, v7

    goto :goto_7f

    :cond_6b
    aput-object v12, v10, v7

    goto :goto_7f

    :cond_6e
    aput-object v13, v10, v7

    goto :goto_7f

    :cond_71
    aput-object v14, v10, v7

    goto :goto_7f

    :cond_74
    aput-object v15, v10, v7

    goto :goto_7f

    :cond_77
    aput-object v16, v10, v7

    goto :goto_7f

    :cond_7a
    aput-object v17, v10, v7

    goto :goto_7f

    :cond_7d
    aput-object v18, v10, v7

    :goto_7f
    packed-switch v0, :pswitch_data_ba

    aput-object v18, v10, v9

    goto :goto_9b

    :pswitch_85
    aput-object v12, v10, v9

    goto :goto_9b

    :pswitch_88
    aput-object v13, v10, v9

    goto :goto_9b

    :pswitch_8b
    aput-object v14, v10, v9

    goto :goto_9b

    :pswitch_8e
    aput-object v15, v10, v9

    goto :goto_9b

    :pswitch_91
    aput-object v16, v10, v9

    goto :goto_9b

    :pswitch_94
    const-string v11, "addModuloByte"

    aput-object v11, v10, v9

    goto :goto_9b

    :pswitch_99
    aput-object v17, v10, v9

    :goto_9b
    :pswitch_9b
    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    if-eq v0, v7, :cond_b3

    if-eq v0, v6, :cond_b3

    if-eq v0, v5, :cond_b3

    if-eq v0, v4, :cond_b3

    if-eq v0, v3, :cond_b3

    if-eq v0, v2, :cond_b3

    if-eq v0, v1, :cond_b3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_b8

    :cond_b3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_b8
    throw v0

    nop

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_9b
        :pswitch_99
        :pswitch_9b
        :pswitch_94
        :pswitch_91
        :pswitch_9b
        :pswitch_8e
        :pswitch_9b
        :pswitch_8b
        :pswitch_9b
        :pswitch_88
        :pswitch_9b
        :pswitch_85
        :pswitch_9b
    .end packed-switch
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 21
    :try_start_0
    const-string v0, "kotlin.jvm.serialization.use8to7"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_8

    :catch_7
    const/4 v0, 0x0

    .line 27
    :goto_8
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/BitEncoding;->FORCE_8TO7_ENCODING:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addModuloByte([BI)V
    .registers 5

    if-nez p0, :cond_6

    const/4 v0, 0x4

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/BitEncoding;->$$$reportNull$$$0(I)V

    .line 114
    :cond_6
    array-length v0, p0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_15

    .line 115
    aget-byte v2, p0, v1

    add-int/2addr v2, p1

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_15
    return-void
.end method

.method private static combineStringArrayIntoBytes([Ljava/lang/String;)[B
    .registers 11

    if-nez p0, :cond_7

    const/16 v0, 0xb

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/BitEncoding;->$$$reportNull$$$0(I)V

    .line 210
    :cond_7
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v2, v0, :cond_17

    aget-object v4, p0, v2

    .line 212
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 215
    :cond_17
    new-array v0, v3, [B

    .line 217
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1c
    if-ge v3, v2, :cond_37

    aget-object v5, p0, v3

    .line 218
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    :goto_25
    if-ge v7, v6, :cond_34

    add-int/lit8 v8, v4, 0x1

    .line 219
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v0, v4

    add-int/lit8 v7, v7, 0x1

    move v4, v8

    goto :goto_25

    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_37
    return-object v0
.end method

.method private static decode7to8([B)[B
    .registers 13

    if-nez p0, :cond_7

    const/16 v0, 0xd

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/BitEncoding;->$$$reportNull$$$0(I)V

    .line 247
    :cond_7
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    .line 249
    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_12
    if-ge v3, v0, :cond_37

    .line 260
    aget-byte v6, p0, v4

    and-int/lit16 v6, v6, 0xff

    ushr-int/2addr v6, v5

    add-int/lit8 v7, v4, 0x1

    .line 262
    aget-byte v8, p0, v7

    add-int/lit8 v9, v5, 0x1

    const/4 v10, 0x1

    shl-int v11, v10, v9

    sub-int/2addr v11, v10

    and-int/2addr v8, v11

    rsub-int/lit8 v10, v5, 0x7

    shl-int/2addr v8, v10

    add-int/2addr v6, v8

    int-to-byte v6, v6

    .line 263
    aput-byte v6, v1, v3

    const/4 v6, 0x6

    if-ne v5, v6, :cond_32

    add-int/lit8 v4, v4, 0x2

    const/4 v5, 0x0

    goto :goto_34

    :cond_32
    move v4, v7

    move v5, v9

    :goto_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_37
    return-object v1
.end method

.method public static decodeBytes([Ljava/lang/String;)[B
    .registers 3

    if-nez p0, :cond_6

    const/4 v0, 0x7

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/BitEncoding;->$$$reportNull$$$0(I)V

    .line 179
    :cond_6
    array-length v0, p0

    if-lez v0, :cond_33

    const/4 v0, 0x0

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_33

    .line 180
    aget-object v1, p0, v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-nez v0, :cond_2a

    .line 182
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/BitEncoding;->dropMarker([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/UtfEncodingKt;->stringsToBytes([Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_29

    const/16 v0, 0x8

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/BitEncoding;->$$$reportNull$$$0(I)V

    :cond_29
    return-object p0

    :cond_2a
    const v1, 0xffff

    if-ne v0, v1, :cond_33

    .line 185
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/BitEncoding;->dropMarker([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 189
    :cond_33
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/BitEncoding;->combineStringArrayIntoBytes([Ljava/lang/String;)[B

    move-result-object p0

    const/16 v0, 0x7f

    .line 191
    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/BitEncoding;->addModuloByte([BI)V

    .line 192
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/BitEncoding;->decode7to8([B)[B

    move-result-object p0

    return-object p0
.end method

.method private static dropMarker([Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_7

    const/16 v0, 0x9

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/BitEncoding;->$$$reportNull$$$0(I)V

    .line 199
    :cond_7
    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 200
    aget-object v1, p0, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    if-nez p0, :cond_1e

    const/16 v0, 0xa

    .line 201
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/BitEncoding;->$$$reportNull$$$0(I)V

    :cond_1e
    return-object p0
.end method
