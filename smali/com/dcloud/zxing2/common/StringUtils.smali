###### Class com.dcloud.zxing2.common.StringUtils (com.dcloud.zxing2.common.StringUtils)
.class public final Lcom/dcloud/zxing2/common/StringUtils;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# static fields
.field private static final ASSUME_SHIFT_JIS:Z

.field private static final EUC_JP:Ljava/lang/String; = "EUC_JP"

.field public static final GB2312:Ljava/lang/String; = "GB2312"

.field private static final ISO88591:Ljava/lang/String; = "ISO8859_1"

.field private static final PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

.field public static final SHIFT_JIS:Ljava/lang/String; = "SJIS"

.field public static final UTF8:Ljava/lang/String; = "UTF-8"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dcloud/zxing2/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    .line 8
    const-string v1, "SJIS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 9
    const-string v1, "EUC_JP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    .line 10
    :goto_1e
    sput-boolean v0, Lcom/dcloud/zxing2/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static guessEncoding([BLjava/util/Map;)Ljava/lang/String;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Lcom/dcloud/zxing2/DecodeHintType;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_17

    .line 1
    sget-object v2, Lcom/dcloud/zxing2/DecodeHintType;->CHARACTER_SET:Lcom/dcloud/zxing2/DecodeHintType;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 2
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_17
    if-eqz v1, :cond_26

    .line 5
    sget-object v2, Lcom/dcloud/zxing2/DecodeHintType;->autoDecodeCharset:Lcom/dcloud/zxing2/DecodeHintType;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 6
    invoke-static {v0}, Lcom/dcloud/zxing2/common/StringUtils;->guessEncodingSmart([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 11
    :cond_26
    array-length v1, v0

    .line 32
    array-length v2, v0

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-le v2, v4, :cond_42

    aget-byte v2, v0, v6

    const/16 v7, -0x11

    if-ne v2, v7, :cond_42

    aget-byte v2, v0, v5

    const/16 v7, -0x45

    if-ne v2, v7, :cond_42

    aget-byte v2, v0, v3

    const/16 v7, -0x41

    if-ne v2, v7, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_53
    if-ge v9, v1, :cond_109

    if-nez v5, :cond_5b

    if-nez v7, :cond_5b

    if-eqz v8, :cond_109

    .line 41
    :cond_5b
    aget-byte v4, v0, v9

    and-int/lit16 v0, v4, 0xff

    if-eqz v8, :cond_6c

    if-lez v10, :cond_6f

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_6a

    move/from16 v19, v2

    goto :goto_96

    :cond_6a
    add-int/lit8 v10, v10, -0x1

    :cond_6c
    move/from16 v19, v2

    goto :goto_97

    :cond_6f
    move/from16 v19, v2

    and-int/lit16 v2, v4, 0x80

    if-eqz v2, :cond_97

    and-int/lit8 v2, v4, 0x40

    if-nez v2, :cond_7a

    goto :goto_96

    :cond_7a
    add-int/lit8 v2, v10, 0x1

    and-int/lit8 v20, v4, 0x20

    if-nez v20, :cond_84

    add-int/lit8 v12, v12, 0x1

    :goto_82
    move v10, v2

    goto :goto_97

    :cond_84
    add-int/lit8 v2, v10, 0x2

    and-int/lit8 v20, v4, 0x10

    if-nez v20, :cond_8d

    add-int/lit8 v13, v13, 0x1

    goto :goto_82

    :cond_8d
    add-int/lit8 v10, v10, 0x3

    and-int/lit8 v2, v4, 0x8

    if-nez v2, :cond_96

    add-int/lit8 v14, v14, 0x1

    goto :goto_97

    :cond_96
    :goto_96
    const/4 v8, 0x0

    :cond_97
    :goto_97
    const/16 v2, 0xa0

    const/16 v4, 0x7f

    if-eqz v5, :cond_b5

    if-le v0, v4, :cond_a3

    if-ge v0, v2, :cond_a3

    const/4 v5, 0x0

    goto :goto_b5

    :cond_a3
    const/16 v2, 0x9f

    if-le v0, v2, :cond_b5

    const/16 v2, 0xc0

    if-lt v0, v2, :cond_b3

    const/16 v2, 0xd7

    if-eq v0, v2, :cond_b3

    const/16 v2, 0xf7

    if-ne v0, v2, :cond_b5

    :cond_b3
    add-int/lit8 v16, v16, 0x1

    :cond_b5
    :goto_b5
    if-eqz v7, :cond_100

    if-lez v11, :cond_c7

    const/16 v2, 0x40

    if-lt v0, v2, :cond_ff

    if-eq v0, v4, :cond_ff

    const/16 v2, 0xfc

    if-le v0, v2, :cond_c4

    goto :goto_ff

    :cond_c4
    add-int/lit8 v11, v11, -0x1

    goto :goto_100

    :cond_c7
    const/16 v2, 0x80

    if-eq v0, v2, :cond_ff

    const/16 v2, 0xa0

    if-eq v0, v2, :cond_ff

    const/16 v4, 0xef

    if-le v0, v4, :cond_d4

    goto :goto_ff

    :cond_d4
    if-le v0, v2, :cond_e9

    const/16 v2, 0xe0

    if-ge v0, v2, :cond_e9

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v18, 0x1

    if-le v0, v15, :cond_e4

    move v15, v0

    move/from16 v18, v15

    goto :goto_e6

    :cond_e4
    move/from16 v18, v0

    :goto_e6
    const/16 v17, 0x0

    goto :goto_100

    :cond_e9
    const/16 v2, 0x7f

    if-le v0, v2, :cond_fa

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v0, v17, 0x1

    if-le v0, v6, :cond_f7

    move v6, v0

    move/from16 v17, v6

    goto :goto_fc

    :cond_f7
    move/from16 v17, v0

    goto :goto_fc

    :cond_fa
    const/16 v17, 0x0

    :goto_fc
    const/16 v18, 0x0

    goto :goto_100

    :cond_ff
    :goto_ff
    const/4 v7, 0x0

    :cond_100
    :goto_100
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v19

    const/4 v4, 0x3

    goto/16 :goto_53

    :cond_109
    move/from16 v19, v2

    if-eqz v8, :cond_110

    if-lez v10, :cond_110

    const/4 v8, 0x0

    :cond_110
    if-eqz v7, :cond_115

    if-lez v11, :cond_115

    const/4 v7, 0x0

    :cond_115
    const-string v0, "UTF-8"

    if-eqz v8, :cond_120

    if-nez v19, :cond_11f

    add-int/2addr v12, v13

    add-int/2addr v12, v14

    if-lez v12, :cond_120

    :cond_11f
    return-object v0

    .line 134
    :cond_120
    const-string v2, "SJIS"

    if-eqz v7, :cond_12e

    .line 137
    sget-boolean v4, Lcom/dcloud/zxing2/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    if-nez v4, :cond_12d

    const/4 v4, 0x3

    if-ge v15, v4, :cond_12d

    if-lt v6, v4, :cond_12e

    :cond_12d
    return-object v2

    .line 138
    :cond_12e
    const-string v4, "ISO8859_1"

    if-eqz v5, :cond_13f

    if-eqz v7, :cond_13f

    const/4 v6, 0x2

    if-ne v15, v6, :cond_139

    if-eq v3, v6, :cond_13d

    :cond_139
    mul-int/lit8 v0, v16, 0xa

    if-lt v0, v1, :cond_13e

    :cond_13d
    return-object v2

    :cond_13e
    return-object v4

    :cond_13f
    if-eqz v5, :cond_142

    return-object v4

    :cond_142
    if-eqz v7, :cond_145

    return-object v2

    :cond_145
    if-eqz v8, :cond_148

    return-object v0

    .line 162
    :cond_148
    sget-object v0, Lcom/dcloud/zxing2/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    return-object v0
.end method

.method public static guessEncodingSmart([B)Ljava/lang/String;
    .registers 2

    .line 1
    new-instance v0, Lorg/mozilla/universalchardet/UniversalDetector;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/UniversalDetector;-><init>()V

    .line 3
    invoke-virtual {v0, p0}, Lorg/mozilla/universalchardet/UniversalDetector;->handleData([B)V

    .line 4
    invoke-virtual {v0}, Lorg/mozilla/universalchardet/UniversalDetector;->dataEnd()V

    .line 5
    invoke-virtual {v0}, Lorg/mozilla/universalchardet/UniversalDetector;->getDetectedCharset()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-virtual {v0}, Lorg/mozilla/universalchardet/UniversalDetector;->reset()V

    .line 7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    return-object p0

    .line 10
    :cond_19
    const-string p0, "GB2312"

    return-object p0
.end method
