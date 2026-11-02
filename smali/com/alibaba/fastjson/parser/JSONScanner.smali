###### Class com.alibaba.fastjson.parser.JSONScanner (com.alibaba.fastjson.parser.JSONScanner)
.class public final Lcom/alibaba/fastjson/parser/JSONScanner;
.super Lcom/alibaba/fastjson/parser/JSONLexerBase;
.source "JSONScanner.java"


# instance fields
.field private final len:I

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 41
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 45
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;-><init>(I)V

    .line 47
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    const/4 p1, -0x1

    .line 49
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 51
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 52
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const p2, 0xfeff

    if-ne p1, p2, :cond_1b

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    :cond_1b
    return-void
.end method

.method public constructor <init>([CI)V
    .registers 4

    .line 73
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>([CII)V

    return-void
.end method

.method public constructor <init>([CII)V
    .registers 6

    .line 77
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static charArrayCompare(Ljava/lang/String;I[C)Z
    .registers 8

    .line 85
    array-length v0, p2

    add-int v1, v0, p1

    .line 86
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-le v1, v2, :cond_b

    return v3

    :cond_b
    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_1c

    .line 91
    aget-char v2, p2, v1

    add-int v4, p1, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v2, v4, :cond_19

    return v3

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1c
    const/4 p0, 0x1

    return p0
.end method

.method static checkDate(CCCCCCII)Z
    .registers 11

    const/4 v0, 0x0

    const/16 v1, 0x30

    if-lt p0, v1, :cond_49

    const/16 v2, 0x39

    if-le p0, v2, :cond_a

    goto :goto_49

    :cond_a
    if-lt p1, v1, :cond_49

    if-le p1, v2, :cond_f

    goto :goto_49

    :cond_f
    if-lt p2, v1, :cond_49

    if-le p2, v2, :cond_14

    goto :goto_49

    :cond_14
    if-lt p3, v1, :cond_49

    if-le p3, v2, :cond_19

    goto :goto_49

    :cond_19
    const/16 p0, 0x32

    const/16 p1, 0x31

    if-ne p4, v1, :cond_24

    if-lt p5, p1, :cond_23

    if-le p5, v2, :cond_2d

    :cond_23
    return v0

    :cond_24
    if-ne p4, p1, :cond_49

    if-eq p5, v1, :cond_2d

    if-eq p5, p1, :cond_2d

    if-eq p5, p0, :cond_2d

    return v0

    :cond_2d
    if-ne p6, v1, :cond_34

    if-lt p7, p1, :cond_33

    if-le p7, v2, :cond_47

    :cond_33
    return v0

    :cond_34
    if-eq p6, p1, :cond_42

    if-ne p6, p0, :cond_39

    goto :goto_42

    :cond_39
    const/16 p0, 0x33

    if-ne p6, p0, :cond_41

    if-eq p7, v1, :cond_47

    if-eq p7, p1, :cond_47

    :cond_41
    return v0

    :cond_42
    :goto_42
    if-lt p7, v1, :cond_49

    if-le p7, v2, :cond_47

    goto :goto_49

    :cond_47
    const/4 p0, 0x1

    return p0

    :cond_49
    :goto_49
    return v0
.end method

.method private checkTime(CCCCCC)Z
    .registers 11

    const/16 v0, 0x39

    const/4 v1, 0x0

    const/16 v2, 0x30

    if-ne p1, v2, :cond_c

    if-lt p2, v2, :cond_b

    if-le p2, v0, :cond_20

    :cond_b
    return v1

    :cond_c
    const/16 v3, 0x31

    if-ne p1, v3, :cond_15

    if-lt p2, v2, :cond_14

    if-le p2, v0, :cond_20

    :cond_14
    return v1

    :cond_15
    const/16 v3, 0x32

    if-ne p1, v3, :cond_42

    if-lt p2, v2, :cond_42

    const/16 p1, 0x34

    if-le p2, p1, :cond_20

    goto :goto_42

    :cond_20
    const/16 p1, 0x35

    const/16 p2, 0x36

    if-lt p3, v2, :cond_2d

    if-gt p3, p1, :cond_2d

    if-lt p4, v2, :cond_2c

    if-le p4, v0, :cond_32

    :cond_2c
    return v1

    :cond_2d
    if-ne p3, p2, :cond_42

    if-eq p4, v2, :cond_32

    return v1

    :cond_32
    if-lt p5, v2, :cond_3b

    if-gt p5, p1, :cond_3b

    if-lt p6, v2, :cond_3a

    if-le p6, v0, :cond_40

    :cond_3a
    return v1

    :cond_3b
    if-ne p5, p2, :cond_42

    if-eq p6, v2, :cond_40

    return v1

    :cond_40
    const/4 p1, 0x1

    return p1

    :cond_42
    :goto_42
    return v1
.end method

.method private scanISO8601DateIfMatch(ZI)Z
    .registers 44

    move-object/from16 v0, p0

    move/from16 v9, p2

    const/4 v10, 0x0

    const/16 v11, 0x8

    if-ge v9, v11, :cond_a

    return v10

    .line 224
    :cond_a
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 225
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v20, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v13

    .line 226
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v12, 0x2

    add-int/2addr v2, v12

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    .line 227
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v15, 0x3

    add-int/2addr v2, v15

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 228
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 229
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v5, 0x5

    add-int/2addr v3, v5

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 230
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v16, 0x6

    add-int/lit8 v6, v6, 0x6

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    .line 231
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0x7

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    const/16 v8, 0x39

    const/16 v17, 0x2

    const/16 v12, 0x30

    const/16 v18, 0x3

    if-nez p1, :cond_cd

    const/16 v15, 0xd

    if-le v9, v15, :cond_cd

    .line 234
    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v15, v9

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v15

    const/16 v21, 0x0

    .line 235
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v10, v9

    add-int/lit8 v10, v10, -0x2

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v10

    const/16 v11, 0x2f

    if-ne v1, v11, :cond_cf

    const/16 v11, 0x44

    if-ne v13, v11, :cond_cf

    const/16 v11, 0x61

    if-ne v14, v11, :cond_cf

    const/16 v11, 0x74

    if-ne v4, v11, :cond_cf

    const/16 v11, 0x65

    if-ne v2, v11, :cond_cf

    const/16 v11, 0x28

    if-ne v3, v11, :cond_cf

    const/16 v11, 0x2f

    if-ne v15, v11, :cond_cf

    const/16 v11, 0x29

    if-ne v10, v11, :cond_cf

    const/4 v1, -0x1

    const/4 v2, 0x6

    :goto_90
    if-ge v2, v9, :cond_a7

    .line 240
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_9f

    move v1, v2

    goto :goto_a4

    :cond_9f
    if-lt v3, v12, :cond_a7

    if-le v3, v8, :cond_a4

    goto :goto_a7

    :cond_a4
    :goto_a4
    add-int/lit8 v2, v2, 0x1

    goto :goto_90

    :cond_a7
    :goto_a7
    const/4 v2, -0x1

    if-ne v1, v2, :cond_ab

    return v21

    .line 250
    :cond_ab
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x6

    .line 251
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v3, v1

    sub-int/2addr v3, v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 252
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 254
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->timeZone:Ljava/util/TimeZone;

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->locale:Ljava/util/Locale;

    invoke-static {v3, v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    .line 255
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 257
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return v20

    :cond_cd
    const/16 v21, 0x0

    :cond_cf
    const/16 v10, 0x10

    const/16 v12, 0x54

    const/16 v11, 0xe

    const/16 v15, 0x2d

    const/16 v26, 0xa

    const/16 v5, 0x8

    if-eq v9, v5, :cond_5c3

    if-eq v9, v11, :cond_5c3

    if-ne v9, v10, :cond_ef

    .line 263
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0xa

    .line 265
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    if-eq v5, v12, :cond_5c3

    const/16 v8, 0x20

    if-eq v5, v8, :cond_5c5

    :cond_ef
    const/16 v5, 0x11

    if-ne v9, v5, :cond_ff

    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x6

    .line 266
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    if-eq v5, v15, :cond_ff

    goto/16 :goto_5c3

    :cond_ff
    const/16 v5, 0x9

    if-ge v9, v5, :cond_104

    return v21

    .line 389
    :cond_104
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v22, 0x8

    add-int/lit8 v8, v8, 0x8

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    const/16 v24, 0x9

    .line 390
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0x9

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    const/16 v10, 0x65e5

    if-ne v2, v15, :cond_122

    if-eq v7, v15, :cond_11f

    goto :goto_122

    :cond_11f
    :goto_11f
    const/16 v11, 0x20

    goto :goto_12b

    :cond_122
    :goto_122
    const/16 v11, 0x2f

    if-ne v2, v11, :cond_155

    const/16 v11, 0x2f

    if-ne v7, v11, :cond_155

    goto :goto_11f

    :goto_12b
    if-ne v5, v11, :cond_141

    move/from16 v32, v1

    move/from16 v36, v3

    move/from16 v35, v4

    move/from16 v37, v6

    move/from16 v39, v8

    move/from16 v33, v13

    move/from16 v34, v14

    const/16 v11, 0x9

    :goto_13d
    const/16 v38, 0x30

    goto/16 :goto_247

    :cond_141
    move/from16 v32, v1

    move/from16 v36, v3

    move/from16 v35, v4

    move/from16 v39, v5

    move/from16 v37, v6

    move/from16 v38, v8

    move/from16 v33, v13

    move/from16 v34, v14

    :goto_151
    const/16 v11, 0xa

    goto/16 :goto_247

    :cond_155
    const/16 v11, 0x20

    if-ne v2, v15, :cond_182

    if-ne v6, v15, :cond_182

    if-ne v8, v11, :cond_16e

    move/from16 v32, v1

    move/from16 v37, v3

    move/from16 v35, v4

    move/from16 v39, v7

    move/from16 v33, v13

    move/from16 v34, v14

    const/16 v11, 0x8

    :goto_16b
    const/16 v36, 0x30

    goto :goto_13d

    :cond_16e
    move/from16 v32, v1

    move/from16 v37, v3

    move/from16 v35, v4

    move/from16 v38, v7

    move/from16 v39, v8

    move/from16 v33, v13

    move/from16 v34, v14

    const/16 v11, 0x9

    :goto_17e
    const/16 v36, 0x30

    goto/16 :goto_247

    :cond_182
    const/16 v11, 0x2e

    if-ne v14, v11, :cond_18a

    const/16 v11, 0x2e

    if-eq v3, v11, :cond_18e

    :cond_18a
    if-ne v14, v15, :cond_19f

    if-ne v3, v15, :cond_19f

    :cond_18e
    move/from16 v38, v1

    move/from16 v37, v2

    move/from16 v36, v4

    move/from16 v35, v5

    move/from16 v32, v6

    move/from16 v33, v7

    move/from16 v34, v8

    move/from16 v39, v13

    goto :goto_151

    :cond_19f
    if-ne v8, v12, :cond_1b5

    move/from16 v32, v1

    move/from16 v36, v2

    move/from16 v37, v3

    move/from16 v35, v4

    move/from16 v38, v6

    move/from16 v39, v7

    move/from16 v33, v13

    move/from16 v34, v14

    const/16 v11, 0x8

    goto/16 :goto_247

    :cond_1b5
    const/16 v11, 0x5e74

    if-eq v2, v11, :cond_1c0

    const v11, 0xb144

    if-ne v2, v11, :cond_1bf

    goto :goto_1c0

    :cond_1bf
    return v21

    :cond_1c0
    :goto_1c0
    const/16 v2, 0x6708

    if-eq v7, v2, :cond_204

    const v2, 0xc6d4

    if-ne v7, v2, :cond_1ca

    goto :goto_204

    :cond_1ca
    const/16 v2, 0x6708

    if-eq v6, v2, :cond_1d5

    const v2, 0xc6d4

    if-ne v6, v2, :cond_1d4

    goto :goto_1d5

    :cond_1d4
    return v21

    :cond_1d5
    :goto_1d5
    const v2, 0xc77c

    if-eq v8, v10, :cond_1f4

    if-ne v8, v2, :cond_1dd

    goto :goto_1f4

    :cond_1dd
    if-eq v5, v10, :cond_1e3

    if-ne v5, v2, :cond_1e2

    goto :goto_1e3

    :cond_1e2
    return v21

    :cond_1e3
    :goto_1e3
    move/from16 v32, v1

    move/from16 v37, v3

    move/from16 v35, v4

    move/from16 v38, v7

    move/from16 v39, v8

    move/from16 v33, v13

    move/from16 v34, v14

    const/16 v11, 0xa

    goto :goto_17e

    :cond_1f4
    :goto_1f4
    move/from16 v32, v1

    move/from16 v37, v3

    move/from16 v35, v4

    move/from16 v39, v7

    move/from16 v33, v13

    move/from16 v34, v14

    const/16 v11, 0xa

    goto/16 :goto_16b

    :cond_204
    :goto_204
    const v2, 0xc77c

    if-eq v5, v10, :cond_235

    if-ne v5, v2, :cond_20c

    goto :goto_235

    .line 464
    :cond_20c
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0xa

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    if-eq v7, v10, :cond_222

    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v7, v7, 0xa

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    if-ne v7, v2, :cond_221

    goto :goto_222

    :cond_221
    return v21

    :cond_222
    :goto_222
    move/from16 v32, v1

    move/from16 v36, v3

    move/from16 v35, v4

    move/from16 v39, v5

    move/from16 v37, v6

    move/from16 v38, v8

    move/from16 v33, v13

    move/from16 v34, v14

    const/16 v11, 0xb

    goto :goto_247

    :cond_235
    :goto_235
    move/from16 v32, v1

    move/from16 v36, v3

    move/from16 v35, v4

    move/from16 v37, v6

    move/from16 v39, v8

    move/from16 v33, v13

    move/from16 v34, v14

    const/16 v11, 0xa

    goto/16 :goto_13d

    .line 491
    :goto_247
    invoke-static/range {v32 .. v39}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkDate(CCCCCCII)Z

    move-result v1

    move/from16 v6, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    move/from16 v5, v36

    move/from16 v7, v37

    move/from16 v8, v38

    move/from16 v13, v39

    if-nez v1, :cond_25e

    return v21

    :cond_25e
    move v1, v6

    move v6, v7

    move v7, v8

    move v8, v13

    const/16 v13, 0x39

    const/4 v14, 0x5

    .line 495
    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->setCalendar(CCCCCCCC)V

    .line 497
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v11

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    if-ne v7, v12, :cond_2ef

    const/16 v1, 0x10

    if-ne v9, v1, :cond_2ef

    const/16 v5, 0x8

    if-ne v11, v5, :cond_2ef

    .line 498
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_2ef

    .line 499
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v11

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 500
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v11

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 501
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v3, v11

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 502
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v4, v11

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 503
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v5, v11

    add-int/2addr v5, v14

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 504
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v6, v11

    add-int/lit8 v6, v6, 0x6

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    .line 506
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkTime(CCCCCC)Z

    move-result v7

    if-nez v7, :cond_2c1

    return v21

    :cond_2c1
    move-object/from16 v0, p0

    .line 510
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTime(CCCCCC)V

    .line 511
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 513
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    if-eqz v1, :cond_2ec

    .line 514
    invoke-static {v3}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v1

    .line 515
    array-length v2, v1

    if-lez v2, :cond_2ec

    .line 516
    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 517
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 521
    :cond_2ec
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return v20

    :cond_2ef
    if-eq v7, v12, :cond_39a

    const/16 v8, 0x20

    if-ne v7, v8, :cond_2f9

    if-nez p1, :cond_2f9

    goto/16 :goto_39a

    :cond_2f9
    const/16 v1, 0x22

    if-eq v7, v1, :cond_36f

    const/16 v1, 0x1a

    if-eq v7, v1, :cond_36f

    if-eq v7, v10, :cond_36f

    const v2, 0xc77c

    if-ne v7, v2, :cond_309

    goto :goto_36f

    :cond_309
    const/16 v1, 0x2b

    if-eq v7, v1, :cond_313

    if-ne v7, v15, :cond_310

    goto :goto_313

    :cond_310
    const/16 v21, 0x0

    return v21

    .line 538
    :cond_313
    :goto_313
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    add-int/lit8 v2, v11, 0x6

    if-ne v1, v2, :cond_36d

    .line 539
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v11

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_36b

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v11

    add-int/lit8 v1, v1, 0x4

    .line 540
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_36b

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v11

    add-int/2addr v1, v14

    .line 541
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_33e

    goto :goto_36b

    :cond_33e
    const/16 v5, 0x30

    const/16 v6, 0x30

    const/16 v1, 0x30

    const/16 v2, 0x30

    const/16 v3, 0x30

    const/16 v4, 0x30

    .line 545
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTime(CCCCCC)V

    .line 546
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 547
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v11

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v11

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v7, v1, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTimeZone(CCC)V

    return v20

    :cond_36b
    :goto_36b
    const/4 v3, 0x0

    return v3

    :cond_36d
    const/4 v3, 0x0

    return v3

    :cond_36f
    :goto_36f
    const/4 v3, 0x0

    .line 528
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 529
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 530
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 531
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 533
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v11

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 535
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return v20

    :cond_39a
    :goto_39a
    add-int/lit8 v1, v11, 0x9

    if-ge v9, v1, :cond_3a1

    const/16 v21, 0x0

    return v21

    :cond_3a1
    const/16 v21, 0x0

    .line 555
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v11

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_3b1

    return v21

    .line 558
    :cond_3b1
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v11

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_3bd

    return v21

    .line 562
    :cond_3bd
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v11

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 563
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v11

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 564
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v3, v11

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 565
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v4, v11

    add-int/2addr v4, v14

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 566
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v5, v11

    add-int/lit8 v5, v5, 0x7

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 567
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v6, v11

    const/16 v22, 0x8

    add-int/lit8 v6, v6, 0x8

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    .line 569
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkTime(CCCCCC)Z

    move-result v7

    if-nez v7, :cond_3fd

    const/16 v21, 0x0

    return v21

    :cond_3fd
    move-object/from16 v0, p0

    const/16 v21, 0x0

    .line 573
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTime(CCCCCC)V

    .line 575
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v11

    const/16 v24, 0x9

    add-int/lit8 v1, v1, 0x9

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_45e

    add-int/lit8 v1, v11, 0xb

    if-ge v9, v1, :cond_418

    return v21

    .line 583
    :cond_418
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v11

    add-int/lit8 v2, v2, 0xa

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_45b

    if-le v2, v13, :cond_428

    goto :goto_45b

    :cond_428
    sub-int/2addr v2, v3

    if-le v9, v1, :cond_440

    .line 591
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v11

    const/16 v19, 0xb

    add-int/lit8 v1, v1, 0xb

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    if-lt v1, v3, :cond_440

    if-gt v1, v13, :cond_440

    mul-int/lit8 v2, v2, 0xa

    sub-int/2addr v1, v3

    add-int/2addr v2, v1

    const/4 v1, 0x2

    goto :goto_441

    :cond_440
    const/4 v1, 0x1

    :goto_441
    const/4 v3, 0x2

    if-ne v1, v3, :cond_460

    .line 599
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v3, v11

    add-int/lit8 v3, v3, 0xc

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_460

    if-gt v3, v13, :cond_460

    mul-int/lit8 v2, v2, 0xa

    sub-int/2addr v3, v4

    add-int v1, v2, v3

    move v2, v1

    const/4 v1, 0x3

    goto :goto_460

    :cond_45b
    :goto_45b
    const/16 v21, 0x0

    return v21

    :cond_45e
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 606
    :cond_460
    :goto_460
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xe

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 609
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v11

    add-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v8, 0x20

    if-ne v2, v8, :cond_481

    add-int/lit8 v1, v1, 0x1

    .line 613
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v11

    add-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    :cond_481
    move v6, v1

    move v1, v2

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_4b4

    if-ne v1, v15, :cond_48a

    goto :goto_4b4

    :cond_48a
    const/16 v2, 0x5a

    if-ne v1, v2, :cond_4b1

    .line 682
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    if-eqz v1, :cond_4ae

    const/16 v21, 0x0

    .line 683
    invoke-static/range {v21 .. v21}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v1

    .line 684
    array-length v2, v1

    if-lez v2, :cond_4ae

    .line 685
    aget-object v1, v1, v21

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 686
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_4ae
    const/4 v15, 0x1

    goto/16 :goto_599

    :cond_4b1
    const/4 v15, 0x0

    goto/16 :goto_599

    .line 617
    :cond_4b4
    :goto_4b4
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v2, v11

    add-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v6

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_5c0

    const/16 v4, 0x31

    if-le v2, v4, :cond_4ca

    goto/16 :goto_5c0

    .line 622
    :cond_4ca
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v4, v11

    add-int/lit8 v4, v4, 0xa

    add-int/2addr v4, v6

    const/16 v17, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    if-lt v4, v3, :cond_5bd

    if-le v4, v13, :cond_4de

    goto/16 :goto_5bd

    .line 627
    :cond_4de
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v3, v11

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const/16 v5, 0x33

    const/16 v7, 0x3a

    if-ne v3, v7, :cond_53c

    .line 630
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v3, v11

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 631
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v7, v11

    add-int/lit8 v7, v7, 0xa

    add-int/2addr v7, v6

    add-int/2addr v7, v14

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    const/16 v8, 0x34

    if-ne v3, v8, :cond_52a

    const/16 v8, 0x35

    if-ne v7, v8, :cond_52a

    const/16 v8, 0x31

    if-ne v2, v8, :cond_51a

    const/16 v8, 0x32

    if-eq v4, v8, :cond_536

    if-ne v4, v5, :cond_51a

    goto :goto_536

    :cond_51a
    const/16 v5, 0x30

    if-ne v2, v5, :cond_527

    const/16 v5, 0x35

    if-eq v4, v5, :cond_536

    const/16 v5, 0x38

    if-ne v4, v5, :cond_527

    goto :goto_536

    :cond_527
    const/16 v21, 0x0

    return v21

    :cond_52a
    const/16 v21, 0x0

    const/16 v8, 0x30

    if-eq v3, v8, :cond_533

    if-eq v3, v5, :cond_533

    return v21

    :cond_533
    if-eq v7, v8, :cond_536

    return v21

    :cond_536
    :goto_536
    move v5, v4

    move v4, v3

    move v3, v5

    move v5, v7

    const/4 v15, 0x6

    goto :goto_596

    :cond_53c
    const/16 v8, 0x30

    if-ne v3, v8, :cond_55a

    .line 661
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v3, v11

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    if-eq v3, v8, :cond_553

    if-eq v3, v5, :cond_553

    const/16 v21, 0x0

    return v21

    :cond_553
    move v5, v4

    move v4, v3

    move v3, v5

    :goto_556
    const/16 v5, 0x30

    :goto_558
    const/4 v15, 0x5

    goto :goto_596

    :cond_55a
    if-ne v3, v5, :cond_570

    .line 666
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v7, v11

    add-int/lit8 v7, v7, 0xa

    add-int/2addr v7, v6

    add-int/lit8 v7, v7, 0x4

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    const/16 v10, 0x30

    if-ne v7, v10, :cond_572

    move v3, v4

    const/16 v4, 0x33

    goto :goto_556

    :cond_570
    const/16 v10, 0x30

    :cond_572
    const/16 v5, 0x34

    if-ne v3, v5, :cond_590

    .line 670
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v3, v11

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const/16 v5, 0x35

    if-ne v3, v5, :cond_590

    const/16 v12, 0x34

    const/16 v3, 0x35

    move v3, v4

    const/16 v4, 0x34

    const/16 v5, 0x35

    goto :goto_558

    :cond_590
    move v3, v4

    const/16 v4, 0x30

    const/16 v5, 0x30

    const/4 v15, 0x3

    .line 678
    :goto_596
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTimeZone(CCCCC)V

    .line 691
    :goto_599
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v11, v11, 0xa

    add-int/2addr v11, v6

    add-int/2addr v11, v15

    add-int/2addr v1, v11

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_5af

    const/16 v2, 0x22

    if-eq v1, v2, :cond_5af

    const/16 v21, 0x0

    return v21

    .line 695
    :cond_5af
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v11

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 697
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return v20

    :cond_5bd
    :goto_5bd
    const/16 v21, 0x0

    return v21

    :cond_5c0
    :goto_5c0
    const/16 v21, 0x0

    return v21

    :cond_5c3
    :goto_5c3
    const/16 v8, 0x20

    :cond_5c5
    const/16 v10, 0x30

    const/16 v11, 0x39

    const/16 v19, 0xb

    const/16 v27, 0x5

    if-eqz p1, :cond_5d0

    return v21

    .line 275
    :cond_5d0
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v22, 0x8

    add-int/lit8 v5, v5, 0x8

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v23

    if-ne v2, v15, :cond_5e0

    if-ne v7, v15, :cond_5e0

    const/4 v5, 0x1

    goto :goto_5e1

    :cond_5e0
    const/4 v5, 0x0

    :goto_5e1
    if-eqz v5, :cond_5ea

    const/16 v8, 0x10

    if-ne v9, v8, :cond_5ea

    const/16 v28, 0x1

    goto :goto_5ec

    :cond_5ea
    const/16 v28, 0x0

    :goto_5ec
    if-eqz v5, :cond_5f5

    const/16 v5, 0x11

    if-ne v9, v5, :cond_5f5

    const/16 v31, 0x1

    goto :goto_5f7

    :cond_5f5
    const/16 v31, 0x0

    :goto_5f7
    if-nez v31, :cond_620

    if-eqz v28, :cond_5fc

    goto :goto_620

    :cond_5fc
    if-ne v2, v15, :cond_60f

    if-ne v6, v15, :cond_60f

    move v12, v1

    move/from16 v17, v3

    move v15, v4

    move/from16 v19, v7

    const/16 v1, 0x54

    const/16 v2, 0xb

    const/16 v16, 0x30

    const/16 v18, 0x30

    goto :goto_61d

    :cond_60f
    move v12, v1

    move/from16 v16, v2

    move/from16 v17, v3

    move v15, v4

    move/from16 v18, v6

    move/from16 v19, v7

    const/16 v1, 0x54

    const/16 v2, 0xb

    :goto_61d
    const/16 v24, 0x9

    goto :goto_638

    .line 288
    :cond_620
    :goto_620
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v24, 0x9

    add-int/lit8 v2, v2, 0x9

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    move v12, v1

    move/from16 v16, v3

    move v15, v4

    move/from16 v17, v6

    move/from16 v19, v7

    move/from16 v18, v23

    const/16 v1, 0x54

    const/16 v2, 0xb

    :goto_638
    const/16 v25, 0x20

    .line 310
    invoke-static/range {v12 .. v19}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkDate(CCCCCCII)Z

    move-result v3

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v19

    if-nez v3, :cond_64b

    const/16 v21, 0x0

    return v21

    :cond_64b
    move v1, v12

    move v2, v13

    move v3, v14

    move v4, v15

    const/16 v12, 0xb

    const/16 v13, 0x20

    const/16 v14, 0x54

    const/4 v15, 0x5

    .line 314
    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->setCalendar(CCCCCCCC)V

    const/16 v5, 0x8

    if-eq v9, v5, :cond_736

    .line 318
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x9

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 319
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0xa

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 320
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v3, v12

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 321
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0xc

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 322
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v5, 0xd

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    if-eqz v31, :cond_69a

    if-ne v2, v14, :cond_69a

    const/16 v7, 0x3a

    if-ne v5, v7, :cond_69a

    .line 326
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v30, 0x10

    add-int/lit8 v6, v6, 0x10

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    const/16 v7, 0x5a

    if-eq v6, v7, :cond_6a4

    :cond_69a
    if-eqz v28, :cond_6c0

    if-eq v2, v13, :cond_6a0

    if-ne v2, v14, :cond_6c0

    :cond_6a0
    const/16 v7, 0x3a

    if-ne v5, v7, :cond_6c0

    .line 330
    :cond_6a4
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v29, 0xe

    add-int/lit8 v1, v1, 0xe

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 331
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move v5, v4

    move v4, v1

    move v1, v3

    move v3, v2

    move v2, v5

    const/16 v5, 0x30

    const/16 v6, 0x30

    goto :goto_6c7

    :cond_6c0
    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move/from16 v1, v23

    .line 343
    :goto_6c7
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkTime(CCCCCC)Z

    move-result v7

    move/from16 v40, v3

    move v3, v1

    move v1, v2

    move/from16 v2, v40

    if-nez v7, :cond_6d6

    const/16 v21, 0x0

    return v21

    :cond_6d6
    const/16 v7, 0x11

    if-ne v9, v7, :cond_71c

    if-nez v31, :cond_71c

    .line 348
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v29, 0xe

    add-int/lit8 v7, v7, 0xe

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    .line 349
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v8, v8, 0xf

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    .line 350
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v30, 0x10

    add-int/lit8 v9, v9, 0x10

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v9

    if-lt v7, v10, :cond_719

    if-le v7, v11, :cond_6fd

    goto :goto_719

    :cond_6fd
    if-lt v8, v10, :cond_716

    if-le v8, v11, :cond_702

    goto :goto_716

    :cond_702
    if-lt v9, v10, :cond_713

    if-le v9, v11, :cond_707

    goto :goto_713

    :cond_707
    sub-int/2addr v7, v10

    mul-int/lit8 v7, v7, 0x64

    sub-int/2addr v8, v10

    mul-int/lit8 v8, v8, 0xa

    add-int/2addr v7, v8

    sub-int/2addr v9, v10

    add-int/2addr v7, v9

    move/from16 v21, v7

    goto :goto_71e

    :cond_713
    :goto_713
    const/16 v21, 0x0

    return v21

    :cond_716
    :goto_716
    const/16 v21, 0x0

    return v21

    :cond_719
    :goto_719
    const/16 v21, 0x0

    return v21

    :cond_71c
    const/16 v21, 0x0

    :goto_71e
    sub-int/2addr v3, v10

    mul-int/lit8 v3, v3, 0xa

    sub-int/2addr v1, v10

    add-int/2addr v1, v3

    add-int/lit8 v3, v2, -0x30

    mul-int/lit8 v3, v3, 0xa

    sub-int/2addr v4, v10

    add-int v2, v3, v4

    sub-int/2addr v5, v10

    mul-int/lit8 v5, v5, 0xa

    sub-int/2addr v6, v10

    add-int v10, v5, v6

    move v3, v10

    move v10, v1

    move v1, v3

    move/from16 v3, v21

    goto :goto_73c

    :cond_736
    const/16 v21, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 376
    :goto_73c
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4, v12, v10}, Ljava/util/Calendar;->set(II)V

    .line 377
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xc

    invoke-virtual {v4, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 378
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xd

    invoke-virtual {v2, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 379
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 381
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return v20
.end method

.method private setCalendar(CCCCCCCC)V
    .registers 11

    .line 773
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->timeZone:Ljava/util/TimeZone;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    add-int/lit8 p1, p1, -0x30

    mul-int/lit16 p1, p1, 0x3e8

    add-int/lit8 p2, p2, -0x30

    mul-int/lit8 p2, p2, 0x64

    add-int/2addr p1, p2

    add-int/lit8 p3, p3, -0x30

    mul-int/lit8 p3, p3, 0xa

    add-int/2addr p1, p3

    add-int/lit8 p4, p4, -0x30

    add-int/2addr p1, p4

    add-int/lit8 p5, p5, -0x30

    mul-int/lit8 p5, p5, 0xa

    add-int/lit8 p6, p6, -0x30

    add-int/2addr p5, p6

    const/4 p2, 0x1

    sub-int/2addr p5, p2

    add-int/lit8 p7, p7, -0x30

    mul-int/lit8 p7, p7, 0xa

    add-int/lit8 p8, p8, -0x30

    add-int/2addr p7, p8

    .line 778
    iget-object p3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {p3, p2, p1}, Ljava/util/Calendar;->set(II)V

    .line 779
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p5}, Ljava/util/Calendar;->set(II)V

    .line 780
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p7}, Ljava/util/Calendar;->set(II)V

    return-void
.end method


# virtual methods
.method public final addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .registers 6

    .line 108
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {p4, v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final arrayCopy(I[CII)V
    .registers 6

    .line 2172
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/2addr p4, p1

    invoke-virtual {v0, p1, p4, p2, p3}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method public bytesValue()[B
    .registers 11

    .line 112
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5a

    .line 113
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 114
    rem-int/lit8 v3, v1, 0x2

    if-nez v3, :cond_46

    .line 118
    div-int/lit8 v1, v1, 0x2

    new-array v3, v1, [B

    :goto_15
    if-ge v2, v1, :cond_45

    .line 120
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 121
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    const/16 v7, 0x37

    const/16 v8, 0x39

    if-gt v4, v8, :cond_33

    const/16 v9, 0x30

    goto :goto_35

    :cond_33
    const/16 v9, 0x37

    :goto_35
    sub-int/2addr v4, v9

    if-gt v5, v8, :cond_39

    goto :goto_3b

    :cond_39
    const/16 v6, 0x37

    :goto_3b
    sub-int/2addr v5, v6

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    .line 125
    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_45
    return-object v3

    .line 115
    :cond_46
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "illegal state. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_5a
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    if-nez v0, :cond_6b

    .line 132
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/IOUtils;->decodeBase64(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0

    .line 134
    :cond_6b
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 135
    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final charArrayCompare([C)Z
    .registers 4

    .line 100
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result p1

    return p1
.end method

.method public final charAt(I)C
    .registers 3

    .line 58
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-lt p1, v0, :cond_7

    const/16 p1, 0x1a

    return p1

    .line 62
    :cond_7
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method protected final copyTo(II[C)V
    .registers 6

    .line 81
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/2addr p2, p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method public final decimalValue()Ljava/math/BigDecimal;
    .registers 7

    .line 188
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 190
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    const/16 v2, 0x4c

    if-eq v0, v2, :cond_21

    const/16 v2, 0x53

    if-eq v0, v2, :cond_21

    const/16 v2, 0x42

    if-eq v0, v2, :cond_21

    const/16 v2, 0x46

    if-eq v0, v2, :cond_21

    const/16 v2, 0x44

    if-ne v0, v2, :cond_23

    :cond_21
    add-int/lit8 v1, v1, -0x1

    :cond_23
    const v0, 0xffff

    if-gt v1, v0, :cond_54

    .line 199
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    .line 200
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v2, v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_43

    .line 201
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v4, v0, v1

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-virtual {v2, v0, v4, v5, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 202
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    sget-object v4, Ljava/math/MathContext;->UNLIMITED:Ljava/math/MathContext;

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/math/BigDecimal;-><init>([CIILjava/math/MathContext;)V

    return-object v0

    .line 204
    :cond_43
    new-array v2, v1, [C

    .line 205
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v5, v0, v1

    invoke-virtual {v4, v0, v5, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 206
    new-instance v0, Ljava/math/BigDecimal;

    sget-object v4, Ljava/math/MathContext;->UNLIMITED:Ljava/math/MathContext;

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/math/BigDecimal;-><init>([CIILjava/math/MathContext;)V

    return-object v0

    .line 196
    :cond_54
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "decimal overflow"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final indexOf(CI)I
    .registers 4

    .line 104
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    return p1
.end method

.method public info()Ljava/lang/String;
    .registers 9

    .line 2176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 2187
    :goto_a
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    if-ge v3, v6, :cond_1f

    .line 2188
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_1b

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    add-int/2addr v5, v1

    goto :goto_a

    .line 2195
    :cond_1f
    const-string v1, "pos "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", line "

    .line 2196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", column "

    .line 2197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2199
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const v3, 0xffff

    if-ge v1, v3, :cond_4a

    .line 2200
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_53

    .line 2202
    :cond_4a
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2205
    :goto_53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEOF()Z
    .registers 4

    .line 830
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_17

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_15

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v0, v2

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-lt v0, v1, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    return v0

    :cond_17
    :goto_17
    return v2
.end method

.method public matchField2([C)Z
    .registers 6

    .line 2313
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2314
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_0

    .line 2317
    :cond_c
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare([C)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    if-nez v0, :cond_17

    .line 2318
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v1

    .line 2322
    :cond_17
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length p1, p1

    add-int/2addr v0, p1

    .line 2323
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 2324
    :goto_23
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2325
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    move v3, v0

    goto :goto_23

    :cond_33
    const/16 v0, 0x3a

    if-ne p1, v0, :cond_43

    .line 2329
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2330
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 p1, 0x1

    return p1

    .line 2333
    :cond_43
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v1
.end method

.method public final next()C
    .registers 3

    .line 66
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 67
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-lt v0, v1, :cond_d

    const/16 v0, 0x1a

    goto :goto_13

    :cond_d
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 69
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_13
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    return v0
.end method

.method public final numberString()Ljava/lang/String;
    .registers 4

    .line 177
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 179
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    const/16 v2, 0x4c

    if-eq v0, v2, :cond_21

    const/16 v2, 0x53

    if-eq v0, v2, :cond_21

    const/16 v2, 0x42

    if-eq v0, v2, :cond_21

    const/16 v2, 0x46

    if-eq v0, v2, :cond_21

    const/16 v2, 0x44

    if-ne v0, v2, :cond_23

    :cond_21
    add-int/lit8 v1, v1, -0x1

    .line 184
    :cond_23
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public scanDate(C)Ljava/util/Date;
    .registers 23

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 2045
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2046
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2047
    iget-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2049
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, v4, 0x1

    .line 2051
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    const/4 v7, 0x4

    const/16 v8, 0x5d

    const/16 v9, 0x2c

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x1

    const/16 v13, 0x22

    if-ne v6, v13, :cond_71

    .line 2056
    invoke-virtual {v0, v13, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v4

    if-eq v4, v11, :cond_68

    sub-int v6, v4, v5

    .line 2062
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2063
    invoke-direct {v0, v1, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(ZI)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 2064
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    add-int/lit8 v5, v4, 0x1

    .line 2071
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 2072
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    :goto_3b
    if-eq v5, v9, :cond_5b

    if-ne v5, v8, :cond_40

    goto :goto_5b

    .line 2079
    :cond_40
    invoke-static {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_54

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v4, v4, 0x2

    .line 2081
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    move/from16 v20, v5

    move v5, v4

    move/from16 v4, v20

    goto :goto_3b

    .line 2083
    :cond_54
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2084
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2085
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v10

    :cond_5b
    :goto_5b
    add-int/2addr v4, v12

    .line 2076
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2077
    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_a4

    .line 2066
    :cond_61
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2067
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2068
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v10

    .line 2058
    :cond_68
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v2, "unclosed str"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_71
    const/16 v13, 0x2d

    const/16 v14, 0x39

    const/16 v15, 0x30

    if-eq v6, v13, :cond_ae

    if-lt v6, v15, :cond_7e

    if-gt v6, v14, :cond_7e

    goto :goto_ae

    :cond_7e
    const/16 v1, 0x6e

    if-ne v6, v1, :cond_a7

    add-int/lit8 v1, v4, 0x2

    .line 2127
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    const/16 v6, 0x75

    if-ne v5, v6, :cond_a7

    add-int/lit8 v5, v4, 0x3

    .line 2128
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v6, 0x6c

    if-ne v1, v6, :cond_a7

    add-int/2addr v4, v7

    .line 2129
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_a7

    .line 2131
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 2132
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object v1, v10

    :goto_a4
    const/16 p1, 0x1

    goto :goto_f6

    .line 2134
    :cond_a7
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2135
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2136
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v10

    :cond_ae
    :goto_ae
    if-ne v6, v13, :cond_b8

    add-int/lit8 v4, v4, 0x2

    .line 2095
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    move v5, v4

    const/4 v1, 0x1

    :cond_b8
    const-wide/16 v16, 0x0

    if-lt v6, v15, :cond_de

    if-gt v6, v14, :cond_de

    add-int/lit8 v6, v6, -0x30

    const/16 p1, 0x1

    int-to-long v12, v6

    :goto_c3
    add-int/lit8 v4, v5, 0x1

    .line 2102
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    if-lt v6, v15, :cond_d7

    if-gt v6, v14, :cond_d7

    const-wide/16 v18, 0xa

    mul-long v12, v12, v18

    add-int/lit8 v6, v6, -0x30

    int-to-long v5, v6

    add-long/2addr v12, v5

    move v5, v4

    goto :goto_c3

    :cond_d7
    if-eq v6, v9, :cond_db

    if-ne v6, v8, :cond_e2

    .line 2107
    :cond_db
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    goto :goto_e2

    :cond_de
    const/16 p1, 0x1

    move-wide/from16 v12, v16

    :cond_e2
    :goto_e2
    move v5, v6

    cmp-long v4, v12, v16

    if-gez v4, :cond_ee

    .line 2115
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2116
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2117
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v10

    :cond_ee
    if-eqz v1, :cond_f1

    neg-long v12, v12

    .line 2125
    :cond_f1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v12, v13}, Ljava/util/Date;-><init>(J)V

    :goto_f6
    if-ne v5, v9, :cond_108

    .line 2142
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v2, 0x3

    .line 2143
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v1

    .line 2147
    :cond_108
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    if-ne v4, v9, :cond_125

    const/16 v2, 0x10

    .line 2149
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2150
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_157

    :cond_125
    if-ne v4, v8, :cond_138

    const/16 v2, 0xf

    .line 2152
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2153
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_157

    :cond_138
    const/16 v5, 0x7d

    if-ne v4, v5, :cond_14d

    const/16 v2, 0xd

    .line 2155
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2156
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_157

    :cond_14d
    const/16 v5, 0x1a

    if-ne v4, v5, :cond_15a

    .line 2158
    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v2, 0x14

    .line 2159
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2166
    :goto_157
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v1

    .line 2161
    :cond_15a
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2162
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2163
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v10
.end method

.method public scanDouble(C)D
    .registers 26

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1804
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1806
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v2, 0x1

    .line 1807
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    const/16 v6, 0x22

    if-ne v4, v6, :cond_13

    const/4 v7, 0x1

    goto :goto_14

    :cond_13
    const/4 v7, 0x0

    :goto_14
    if-eqz v7, :cond_1d

    add-int/lit8 v2, v2, 0x2

    .line 1810
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    move v3, v2

    :cond_1d
    const/16 v2, 0x2d

    if-ne v4, v2, :cond_23

    const/4 v8, 0x1

    goto :goto_24

    :cond_23
    const/4 v8, 0x0

    :goto_24
    if-eqz v8, :cond_31

    add-int/lit8 v4, v3, 0x1

    .line 1815
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    move/from16 v22, v4

    move v4, v3

    move/from16 v3, v22

    :cond_31
    const/4 v12, -0x1

    const/16 v13, 0x30

    if-lt v4, v13, :cond_129

    const/16 v14, 0x39

    if-gt v4, v14, :cond_129

    sub-int/2addr v4, v13

    const-wide/16 v15, 0x0

    int-to-long v10, v4

    :goto_3e
    add-int/lit8 v4, v3, 0x1

    .line 1822
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const-wide/16 v18, 0xa

    if-lt v1, v13, :cond_57

    if-gt v1, v14, :cond_57

    mul-long v10, v10, v18

    add-int/lit8 v1, v1, -0x30

    move-wide/from16 v18, v10

    int-to-long v9, v1

    add-long v9, v18, v9

    move v3, v4

    move-wide v10, v9

    const/4 v1, 0x0

    goto :goto_3e

    :cond_57
    const/16 v9, 0x2e

    if-ne v1, v9, :cond_94

    add-int/lit8 v3, v3, 0x2

    .line 1834
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    if-lt v1, v13, :cond_91

    if-gt v1, v14, :cond_91

    mul-long v10, v10, v18

    sub-int/2addr v1, v13

    const/4 v9, 0x1

    int-to-long v5, v1

    add-long/2addr v10, v5

    move-wide/from16 v4, v18

    :goto_6d
    add-int/lit8 v1, v3, 0x1

    .line 1839
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    if-lt v3, v13, :cond_87

    if-gt v3, v14, :cond_87

    mul-long v10, v10, v18

    add-int/lit8 v3, v3, -0x30

    move-wide/from16 v20, v10

    const/4 v6, 0x1

    int-to-long v9, v3

    add-long v9, v20, v9

    mul-long v4, v4, v18

    move v3, v1

    move-wide v10, v9

    const/4 v9, 0x1

    goto :goto_6d

    :cond_87
    const/4 v6, 0x1

    move-wide/from16 v22, v4

    move v5, v7

    move-wide v6, v10

    move-wide/from16 v9, v22

    move v4, v1

    move v1, v3

    goto :goto_9b

    .line 1849
    :cond_91
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v15

    :cond_94
    const/4 v6, 0x1

    const-wide/16 v18, 0x1

    move v5, v7

    move-wide v6, v10

    move-wide/from16 v9, v18

    :goto_9b
    const/4 v3, 0x1

    const/16 v11, 0x65

    if-eq v1, v11, :cond_a8

    const/16 v11, 0x45

    if-ne v1, v11, :cond_a5

    goto :goto_a8

    :cond_a5
    const/16 v17, 0x0

    goto :goto_aa

    :cond_a8
    :goto_a8
    const/16 v17, 0x1

    :goto_aa
    if-eqz v17, :cond_d1

    add-int/lit8 v1, v4, 0x1

    .line 1856
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v11

    const/16 v18, 0x1

    const/16 v3, 0x2b

    if-eq v11, v3, :cond_be

    if-ne v11, v2, :cond_bb

    goto :goto_be

    :cond_bb
    move v4, v1

    move v1, v11

    goto :goto_c4

    :cond_be
    :goto_be
    add-int/lit8 v4, v4, 0x2

    .line 1858
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    :goto_c4
    if-lt v1, v13, :cond_d3

    if-gt v1, v14, :cond_d3

    add-int/lit8 v1, v4, 0x1

    .line 1862
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move v4, v1

    move v1, v2

    goto :goto_c4

    :cond_d1
    const/16 v18, 0x1

    :cond_d3
    if-eqz v5, :cond_f0

    const/16 v2, 0x22

    if-eq v1, v2, :cond_dc

    .line 1872
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v15

    :cond_dc
    add-int/lit8 v1, v4, 0x1

    .line 1875
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1877
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x1

    sub-int v4, v1, v3

    add-int/lit8 v4, v4, -0x2

    move/from16 v22, v2

    move v2, v1

    move/from16 v1, v22

    goto :goto_fb

    .line 1880
    :cond_f0
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    sub-int v2, v4, v3

    add-int/lit8 v2, v2, -0x1

    move/from16 v22, v4

    move v4, v2

    move/from16 v2, v22

    :goto_fb
    if-nez v17, :cond_108

    const/16 v5, 0x12

    if-ge v4, v5, :cond_108

    long-to-double v3, v6

    long-to-double v5, v9

    div-double/2addr v3, v5

    if-eqz v8, :cond_110

    neg-double v3, v3

    goto :goto_110

    .line 1890
    :cond_108
    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v3

    .line 1891
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    :cond_110
    :goto_110
    move/from16 v5, p1

    if-ne v1, v5, :cond_126

    .line 1932
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1933
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v1, 0x3

    .line 1934
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/16 v1, 0x10

    .line 1935
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return-wide v3

    .line 1938
    :cond_126
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v3

    :cond_129
    move v5, v7

    const-wide/16 v15, 0x0

    const/16 v1, 0x6e

    if-ne v4, v1, :cond_1a2

    add-int/lit8 v1, v3, 0x1

    .line 1894
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v4, 0x75

    if-ne v2, v4, :cond_1a2

    add-int/lit8 v2, v3, 0x2

    .line 1895
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v4, 0x6c

    if-ne v1, v4, :cond_1a2

    add-int/lit8 v1, v3, 0x3

    .line 1896
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_1a2

    const/4 v2, 0x5

    .line 1897
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    add-int/lit8 v4, v3, 0x4

    .line 1899
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    if-eqz v5, :cond_161

    const/16 v5, 0x22

    if-ne v1, v5, :cond_161

    add-int/2addr v3, v2

    .line 1902
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move v4, v3

    :cond_161
    :goto_161
    const/16 v3, 0x2c

    if-ne v1, v3, :cond_176

    .line 1907
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1908
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1909
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/16 v3, 0x10

    .line 1910
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return-wide v15

    :cond_176
    const/16 v3, 0x10

    const/16 v5, 0x5d

    if-ne v1, v5, :cond_18d

    .line 1913
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1914
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1915
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/16 v1, 0xf

    .line 1916
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return-wide v15

    .line 1918
    :cond_18d
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_19f

    add-int/lit8 v1, v4, 0x1

    .line 1919
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    move/from16 v22, v4

    move v4, v1

    move/from16 v1, v22

    goto :goto_161

    .line 1924
    :cond_19f
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v15

    .line 1927
    :cond_1a2
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v15
.end method

.method public scanFieldBoolean([C)Z
    .registers 13

    const/4 v0, 0x0

    .line 1561
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1563
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v1, v2, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v1

    if-nez v1, :cond_11

    const/4 p1, -0x2

    .line 1564
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    .line 1568
    :cond_11
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1569
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length p1, p1

    add-int/2addr v2, p1

    add-int/lit8 p1, v2, 0x1

    .line 1571
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    const/4 v5, 0x1

    if-ne v3, v4, :cond_24

    const/4 v6, 0x1

    goto :goto_25

    :cond_24
    const/4 v6, 0x0

    :goto_25
    if-eqz v6, :cond_2e

    add-int/lit8 v2, v2, 0x2

    .line 1575
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    move p1, v2

    :cond_2e
    const/16 v2, 0x74

    const/16 v7, 0x65

    const/4 v8, 0x4

    const/4 v9, -0x1

    if-ne v3, v2, :cond_71

    add-int/lit8 v2, p1, 0x1

    .line 1580
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const/16 v10, 0x72

    if-eq v3, v10, :cond_43

    .line 1581
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_43
    add-int/lit8 v3, p1, 0x2

    .line 1584
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v10, 0x75

    if-eq v2, v10, :cond_50

    .line 1585
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_50
    add-int/lit8 v2, p1, 0x3

    .line 1588
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    if-eq v3, v7, :cond_5b

    .line 1589
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_5b
    if-eqz v6, :cond_68

    add-int/2addr p1, v8

    .line 1593
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_67

    .line 1594
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_67
    move v2, p1

    .line 1598
    :cond_68
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1599
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    goto :goto_d8

    :cond_71
    const/16 v2, 0x66

    if-ne v3, v2, :cond_be

    add-int/lit8 v2, p1, 0x1

    .line 1602
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const/16 v10, 0x61

    if-eq v3, v10, :cond_82

    .line 1603
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_82
    add-int/lit8 v3, p1, 0x2

    .line 1606
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v10, 0x6c

    if-eq v2, v10, :cond_8f

    .line 1607
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_8f
    add-int/lit8 v2, p1, 0x3

    .line 1610
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const/16 v10, 0x73

    if-eq v3, v10, :cond_9c

    .line 1611
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_9c
    add-int/lit8 v3, p1, 0x4

    .line 1614
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    if-eq v2, v7, :cond_a7

    .line 1615
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_a7
    if-eqz v6, :cond_b5

    add-int/lit8 p1, p1, 0x5

    .line 1619
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_b4

    .line 1620
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_b4
    move v3, p1

    .line 1624
    :cond_b5
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1625
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    goto :goto_f4

    :cond_be
    const/16 v2, 0x31

    if-ne v3, v2, :cond_da

    if-eqz v6, :cond_d0

    add-int/lit8 v2, p1, 0x1

    .line 1628
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    if-eq p1, v4, :cond_cf

    .line 1629
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_cf
    move p1, v2

    .line 1633
    :cond_d0
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1634
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    :goto_d8
    const/4 v2, 0x1

    goto :goto_f5

    :cond_da
    const/16 v2, 0x30

    if-ne v3, v2, :cond_188

    if-eqz v6, :cond_ec

    add-int/lit8 v2, p1, 0x1

    .line 1637
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    if-eq p1, v4, :cond_eb

    .line 1638
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_eb
    move p1, v2

    .line 1642
    :cond_ec
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1643
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    :goto_f4
    const/4 v2, 0x0

    :goto_f5
    const/16 v3, 0x10

    const/16 v4, 0x2c

    if-ne p1, v4, :cond_10c

    .line 1652
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 p1, 0x3

    .line 1653
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1654
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return v2

    :cond_10c
    const/16 v6, 0x7d

    if-ne p1, v6, :cond_16d

    .line 1657
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    :goto_119
    if-ne p1, v4, :cond_129

    .line 1660
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1661
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_157

    :cond_129
    const/16 v1, 0x5d

    if-ne p1, v1, :cond_13d

    const/16 p1, 0xf

    .line 1663
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1664
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_157

    :cond_13d
    if-ne p1, v6, :cond_14f

    const/16 p1, 0xd

    .line 1666
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1667
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_157

    :cond_14f
    const/16 v1, 0x1a

    if-ne p1, v1, :cond_15a

    const/16 p1, 0x14

    .line 1669
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1679
    :goto_157
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v2

    .line 1670
    :cond_15a
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_16a

    .line 1671
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    goto :goto_119

    .line 1674
    :cond_16a
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    .line 1681
    :cond_16d
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_17e

    .line 1682
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    goto/16 :goto_f5

    .line 1684
    :cond_17e
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1685
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    .line 1686
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    .line 1646
    :cond_188
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0
.end method

.method public scanFieldDate([C)Ljava/util/Date;
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1076
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1077
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1078
    iget-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1080
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v5, v6, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_1a

    const/4 v1, -0x2

    .line 1081
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v6

    .line 1085
    :cond_1a
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v1, v1

    add-int/2addr v5, v1

    add-int/lit8 v1, v5, 0x1

    .line 1087
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    const/16 v8, 0x22

    const/16 v9, 0x7d

    const/16 v10, 0x2c

    const/4 v11, -0x1

    const/4 v12, 0x1

    if-ne v7, v8, :cond_81

    .line 1092
    invoke-virtual {v0, v8, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v5

    if-eq v5, v11, :cond_78

    sub-int v7, v5, v1

    .line 1098
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1099
    invoke-direct {v0, v2, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(ZI)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 1100
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    add-int/lit8 v2, v5, 0x1

    .line 1106
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1107
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    :goto_4c
    if-eq v2, v10, :cond_68

    if-ne v2, v9, :cond_51

    goto :goto_68

    .line 1114
    :cond_51
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_65

    add-int/lit8 v2, v5, 0x1

    add-int/lit8 v5, v5, 0x2

    .line 1116
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    move/from16 v20, v5

    move v5, v2

    move/from16 v2, v20

    goto :goto_4c

    .line 1118
    :cond_65
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v6

    :cond_68
    :goto_68
    add-int/2addr v5, v12

    .line 1111
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1112
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    move-object/from16 v17, v6

    const/16 p1, 0x1

    goto/16 :goto_e0

    .line 1102
    :cond_73
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1103
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v6

    .line 1094
    :cond_78
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v2, "unclosed str"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_81
    const/16 v8, 0x2d

    const/16 v13, 0x39

    const/16 v14, 0x30

    if-eq v7, v8, :cond_91

    if-lt v7, v14, :cond_8e

    if-gt v7, v13, :cond_8e

    goto :goto_91

    .line 1158
    :cond_8e
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v6

    :cond_91
    :goto_91
    if-ne v7, v8, :cond_9b

    add-int/lit8 v5, v5, 0x2

    .line 1128
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    move v1, v5

    const/4 v2, 0x1

    :cond_9b
    const-wide/16 v15, 0x0

    if-lt v7, v14, :cond_ca

    if-gt v7, v13, :cond_ca

    add-int/lit8 v7, v7, -0x30

    int-to-long v7, v7

    :goto_a4
    add-int/lit8 v5, v1, 0x1

    move-object/from16 v17, v6

    .line 1135
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    if-lt v6, v14, :cond_c1

    if-gt v6, v13, :cond_c1

    const-wide/16 v18, 0xa

    mul-long v7, v7, v18

    add-int/lit8 v6, v6, -0x30

    const/16 p1, 0x1

    int-to-long v12, v6

    add-long/2addr v7, v12

    move v1, v5

    move-object/from16 v6, v17

    const/4 v12, 0x1

    const/16 v13, 0x39

    goto :goto_a4

    :cond_c1
    const/16 p1, 0x1

    if-eq v6, v10, :cond_c7

    if-ne v6, v9, :cond_d0

    .line 1140
    :cond_c7
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    goto :goto_d0

    :cond_ca
    move-object/from16 v17, v6

    const/16 p1, 0x1

    move v6, v7

    move-wide v7, v15

    :cond_d0
    :goto_d0
    cmp-long v1, v7, v15

    if-gez v1, :cond_d7

    .line 1148
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v17

    :cond_d7
    if-eqz v2, :cond_da

    neg-long v7, v7

    .line 1156
    :cond_da
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v7, v8}, Ljava/util/Date;-><init>(J)V

    move v2, v6

    :goto_e0
    const/16 v5, 0x10

    if-ne v2, v10, :cond_f6

    .line 1164
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v2, 0x3

    .line 1165
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1166
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return-object v1

    .line 1170
    :cond_f6
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    if-ne v2, v10, :cond_111

    .line 1172
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1173
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_141

    :cond_111
    const/16 v5, 0x5d

    if-ne v2, v5, :cond_126

    const/16 v2, 0xf

    .line 1175
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1176
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_141

    :cond_126
    if-ne v2, v9, :cond_139

    const/16 v2, 0xd

    .line 1178
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1179
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_141

    :cond_139
    const/16 v5, 0x1a

    if-ne v2, v5, :cond_145

    const/16 v2, 0x14

    .line 1181
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    :goto_141
    const/4 v2, 0x4

    .line 1188
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v1

    .line 1183
    :cond_145
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1184
    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1185
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v17
.end method

.method public scanFieldInt([C)I
    .registers 16

    const/4 v0, 0x0

    .line 834
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 835
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 836
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 838
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v3, v4, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v3

    if-nez v3, :cond_15

    const/4 p1, -0x2

    .line 839
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    .line 843
    :cond_15
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length p1, p1

    add-int/2addr v3, p1

    add-int/lit8 p1, v3, 0x1

    .line 845
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    const/16 v5, 0x22

    const/4 v6, 0x1

    if-ne v4, v5, :cond_26

    const/4 v7, 0x1

    goto :goto_27

    :cond_26
    const/4 v7, 0x0

    :goto_27
    if-eqz v7, :cond_30

    add-int/lit8 v3, v3, 0x2

    .line 850
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    move p1, v3

    :cond_30
    const/16 v3, 0x2d

    if-ne v4, v3, :cond_36

    const/4 v3, 0x1

    goto :goto_37

    :cond_36
    const/4 v3, 0x0

    :goto_37
    if-eqz v3, :cond_42

    add-int/lit8 v4, p1, 0x1

    .line 855
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    move v13, v4

    move v4, p1

    move p1, v13

    :cond_42
    const/16 v8, 0x30

    const/4 v9, -0x1

    if-lt v4, v8, :cond_11c

    const/16 v10, 0x39

    if-gt v4, v10, :cond_11c

    sub-int/2addr v4, v8

    :goto_4c
    add-int/lit8 v11, p1, 0x1

    .line 862
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    if-lt v12, v8, :cond_63

    if-gt v12, v10, :cond_63

    mul-int/lit8 p1, v4, 0xa

    if-ge p1, v4, :cond_5d

    .line 866
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_5d
    add-int/lit8 v12, v12, -0x30

    add-int v4, p1, v12

    move p1, v11

    goto :goto_4c

    :cond_63
    const/16 v8, 0x2e

    if-ne v12, v8, :cond_6a

    .line 872
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_6a
    if-gez v4, :cond_6f

    .line 880
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_6f
    if-eqz v7, :cond_7d

    if-eq v12, v5, :cond_76

    .line 886
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_76
    add-int/lit8 p1, p1, 0x2

    .line 889
    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    :goto_7c
    move v11, p1

    :cond_7d
    const/16 p1, 0x7d

    const/16 v5, 0x2c

    if-eq v12, v5, :cond_96

    if-ne v12, p1, :cond_86

    goto :goto_96

    .line 897
    :cond_86
    invoke-static {v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_93

    add-int/lit8 p1, v11, 0x1

    .line 898
    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    goto :goto_7c

    .line 901
    :cond_93
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_96
    :goto_96
    sub-int/2addr v11, v6

    .line 895
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/16 v7, 0x10

    if-ne v12, v5, :cond_b1

    .line 911
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 p1, 0x3

    .line 912
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 913
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    if-eqz v3, :cond_11b

    neg-int p1, v4

    return p1

    :cond_b1
    if-ne v12, p1, :cond_117

    .line 918
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 919
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v8, v6

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    :goto_be
    if-ne v8, v5, :cond_ce

    .line 922
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 923
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_fc

    :cond_ce
    const/16 v10, 0x5d

    if-ne v8, v10, :cond_e2

    const/16 p1, 0xf

    .line 926
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 927
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_fc

    :cond_e2
    if-ne v8, p1, :cond_f4

    const/16 p1, 0xd

    .line 930
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 931
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_fc

    :cond_f4
    const/16 v10, 0x1a

    if-ne v8, v10, :cond_100

    const/16 p1, 0x14

    .line 934
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    :goto_fc
    const/4 p1, 0x4

    .line 946
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    goto :goto_117

    .line 936
    :cond_100
    invoke-static {v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_110

    .line 937
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v8, v6

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    goto :goto_be

    .line 940
    :cond_110
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 941
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 942
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0

    :cond_117
    :goto_117
    if-eqz v3, :cond_11b

    neg-int p1, v4

    return p1

    :cond_11b
    return v4

    .line 906
    :cond_11c
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v0
.end method

.method public scanFieldLong([C)J
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1447
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1448
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1449
    iget-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1451
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v5, v6, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v5

    const-wide/16 v6, 0x0

    if-nez v5, :cond_1b

    const/4 v1, -0x2

    .line 1452
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v6

    .line 1456
    :cond_1b
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v1, v1

    add-int/2addr v5, v1

    add-int/lit8 v1, v5, 0x1

    .line 1458
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    const/16 v9, 0x22

    const/4 v10, 0x1

    if-ne v8, v9, :cond_2c

    const/4 v11, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v11, 0x0

    :goto_2d
    if-eqz v11, :cond_36

    add-int/lit8 v5, v5, 0x2

    .line 1462
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    move v1, v5

    :cond_36
    const/16 v5, 0x2d

    if-ne v8, v5, :cond_42

    add-int/lit8 v2, v1, 0x1

    .line 1467
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    move v1, v2

    const/4 v2, 0x1

    :cond_42
    const/16 v5, 0x30

    const/4 v12, -0x1

    if-lt v8, v5, :cond_12f

    const/16 v13, 0x39

    if-gt v8, v13, :cond_12f

    sub-int/2addr v8, v5

    int-to-long v14, v8

    :goto_4d
    add-int/lit8 v8, v1, 0x1

    move-wide/from16 v16, v6

    .line 1475
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_65

    if-gt v6, v13, :cond_65

    const-wide/16 v18, 0xa

    mul-long v14, v14, v18

    add-int/lit8 v6, v6, -0x30

    int-to-long v6, v6

    add-long/2addr v14, v6

    move v1, v8

    move-wide/from16 v6, v16

    goto :goto_4d

    :cond_65
    const/16 v5, 0x2e

    if-ne v6, v5, :cond_6c

    .line 1479
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v16

    :cond_6c
    if-eqz v11, :cond_7a

    if-eq v6, v9, :cond_73

    .line 1484
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v16

    :cond_73
    add-int/lit8 v1, v1, 0x2

    .line 1487
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    move v8, v1

    :cond_7a
    const/16 v1, 0x7d

    const/16 v5, 0x2c

    if-eq v6, v5, :cond_82

    if-ne v6, v1, :cond_86

    :cond_82
    add-int/lit8 v7, v8, -0x1

    .line 1492
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    :cond_86
    cmp-long v7, v14, v16

    if-gez v7, :cond_9a

    const-wide/high16 v18, -0x8000000000000000L

    cmp-long v7, v14, v18

    if-nez v7, :cond_93

    if-eqz v2, :cond_93

    goto :goto_9a

    .line 1500
    :cond_93
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1501
    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1502
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v16

    :cond_9a
    :goto_9a
    const/16 v7, 0x10

    if-ne v6, v5, :cond_b2

    .line 1514
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v10

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v1, 0x3

    .line 1515
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1516
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    if-eqz v2, :cond_102

    neg-long v1, v14

    return-wide v1

    :cond_b2
    if-ne v6, v1, :cond_11a

    .line 1519
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v6, v10

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    :goto_bd
    if-ne v6, v5, :cond_cd

    .line 1522
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1523
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v10

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_fb

    :cond_cd
    const/16 v8, 0x5d

    if-ne v6, v8, :cond_e1

    const/16 v1, 0xf

    .line 1526
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1527
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v10

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_fb

    :cond_e1
    if-ne v6, v1, :cond_f3

    const/16 v1, 0xd

    .line 1530
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1531
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v10

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_fb

    :cond_f3
    const/16 v8, 0x1a

    if-ne v6, v8, :cond_103

    const/16 v1, 0x14

    .line 1534
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    :goto_fb
    const/4 v1, 0x4

    .line 1545
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    if-eqz v2, :cond_102

    neg-long v1, v14

    return-wide v1

    :cond_102
    return-wide v14

    .line 1536
    :cond_103
    invoke-static {v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_113

    .line 1537
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v6, v10

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    goto :goto_bd

    .line 1539
    :cond_113
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1540
    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1541
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v16

    .line 1547
    :cond_11a
    invoke-static {v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_12c

    .line 1548
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v6, v8, 0x1

    .line 1549
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    move v8, v6

    move v6, v7

    goto/16 :goto_9a

    .line 1552
    :cond_12c
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v16

    :cond_12f
    move-wide/from16 v16, v6

    .line 1506
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1507
    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1508
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v16
.end method

.method public scanFieldString([C)Ljava/lang/String;
    .registers 14

    const/4 v0, 0x0

    .line 953
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 954
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 955
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 959
    :cond_7
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v3, v4, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v3

    if-nez v3, :cond_30

    .line 960
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 961
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 963
    :goto_1c
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 964
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_1c

    :cond_28
    const/4 p1, -0x2

    .line 968
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 969
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 975
    :cond_30
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v4, p1

    add-int/2addr v3, v4

    add-int/lit8 v4, v3, 0x1

    .line 978
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const/16 v5, 0x22

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq v3, v5, :cond_5b

    .line 980
    :goto_40
    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_52

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v3, v4, 0x1

    .line 982
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    move v11, v4

    move v4, v3

    move v3, v11

    goto :goto_40

    :cond_52
    if-eq v3, v5, :cond_5b

    .line 986
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 988
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 995
    :cond_5b
    invoke-virtual {p0, v5, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v3

    if-eq v3, v6, :cond_14b

    sub-int v8, v3, v4

    .line 1000
    invoke-virtual {p0, v4, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v4

    const/16 v8, 0x5c

    .line 1001
    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-eq v9, v6, :cond_a3

    :goto_6f
    add-int/lit8 v4, v3, -0x1

    const/4 v9, 0x0

    :goto_72
    if-ltz v4, :cond_7f

    .line 1005
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v10

    if-ne v10, v8, :cond_7f

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_72

    .line 1011
    :cond_7f
    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_9c

    .line 1017
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v4, p1

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v7

    sub-int v0, v3, v0

    .line 1018
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length p1, p1

    add-int/2addr v4, p1

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v7

    invoke-virtual {p0, v4, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->sub_chars(II)[C

    move-result-object p1

    .line 1020
    invoke-static {p1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->readString([CI)Ljava/lang/String;

    move-result-object v4

    goto :goto_a3

    :cond_9c
    add-int/lit8 v3, v3, 0x1

    .line 1014
    invoke-virtual {p0, v5, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v3

    goto :goto_6f

    .line 1023
    :cond_a3
    :goto_a3
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->features:I

    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->TrimStringFieldValue:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_b0

    .line 1024
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :cond_b0
    add-int/lit8 p1, v3, 0x1

    .line 1027
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    :goto_b6
    const/16 v0, 0x7d

    const/16 v5, 0x2c

    if-eq p1, v5, :cond_d7

    if-ne p1, v0, :cond_bf

    goto :goto_d7

    .line 1035
    :cond_bf
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_d0

    add-int/lit8 p1, v3, 0x1

    add-int/lit8 v3, v3, 0x2

    .line 1037
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    move v3, p1

    move p1, v0

    goto :goto_b6

    .line 1039
    :cond_d0
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1041
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_d7
    :goto_d7
    add-int/lit8 v3, v3, 0x1

    .line 1031
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1032
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne p1, v5, :cond_ef

    .line 1047
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 p1, 0x3

    .line 1048
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v4

    .line 1052
    :cond_ef
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    if-ne p1, v5, :cond_10c

    const/16 p1, 0x10

    .line 1054
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1055
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_13c

    :cond_10c
    const/16 v3, 0x5d

    if-ne p1, v3, :cond_121

    const/16 p1, 0xf

    .line 1057
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1058
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_13c

    :cond_121
    if-ne p1, v0, :cond_134

    const/16 p1, 0xd

    .line 1060
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1061
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_13c

    :cond_134
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_140

    const/16 p1, 0x14

    .line 1063
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    :goto_13c
    const/4 p1, 0x4

    .line 1070
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v4

    .line 1065
    :cond_140
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1066
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1067
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1068
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->stringDefaultValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 997
    :cond_14b
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v0, "unclosed str"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public scanFieldStringArray([CLjava/lang/Class;)Ljava/util/Collection;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1285
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1287
    :goto_7
    iget-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v4, 0xa

    if-eq v3, v4, :cond_18e

    iget-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v4, 0x20

    if-ne v3, v4, :cond_15

    goto/16 :goto_18e

    .line 1294
    :cond_15
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v3, v4, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_24

    const/4 v1, -0x2

    .line 1295
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v4

    :cond_24
    move-object/from16 v3, p2

    .line 1299
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->newCollectionByType(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v3

    .line 1313
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1314
    iget-char v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1316
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length v1, v1

    add-int/2addr v9, v1

    add-int/lit8 v1, v9, 0x1

    .line 1318
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v10

    const/16 v11, 0x5b

    .line 1320
    const-string/jumbo v12, "ull"

    const/16 v13, 0x5d

    const/16 v14, 0x2c

    const/4 v15, -0x1

    if-ne v10, v11, :cond_f6

    add-int/lit8 v9, v9, 0x2

    .line 1321
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    :goto_4a
    const/16 v10, 0x22

    if-ne v1, v10, :cond_9f

    .line 1326
    invoke-virtual {v0, v10, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v1

    if-eq v1, v15, :cond_96

    sub-int v11, v1, v9

    .line 1331
    invoke-virtual {v0, v9, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v11

    const/16 v2, 0x5c

    const/16 v16, 0x1

    .line 1332
    invoke-virtual {v11, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v15, :cond_8a

    :goto_64
    add-int/lit8 v6, v1, -0x1

    const/4 v11, 0x0

    :goto_67
    if-ltz v6, :cond_74

    .line 1336
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    if-ne v5, v2, :cond_74

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_67

    .line 1342
    :cond_74
    rem-int/lit8 v11, v11, 0x2

    if-nez v11, :cond_83

    sub-int v2, v1, v9

    .line 1349
    invoke-virtual {v0, v9, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->sub_chars(II)[C

    move-result-object v5

    .line 1351
    invoke-static {v5, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->readString([CI)Ljava/lang/String;

    move-result-object v11

    goto :goto_8a

    :cond_83
    add-int/lit8 v1, v1, 0x1

    .line 1345
    invoke-virtual {v0, v10, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->indexOf(CI)I

    move-result v1

    goto :goto_64

    :cond_8a
    :goto_8a
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v1, v1, 0x2

    .line 1355
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1357
    invoke-interface {v3, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_bd

    .line 1328
    :cond_96
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v2, "unclosed str"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9f
    const/16 v16, 0x1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_e4

    .line 1358
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v2, v12, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_e4

    add-int/lit8 v1, v9, 0x3

    add-int/lit8 v2, v9, 0x4

    .line 1360
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 1361
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move/from16 v17, v2

    move v2, v1

    move/from16 v1, v17

    :goto_bd
    if-ne v2, v14, :cond_c7

    add-int/lit8 v9, v1, 0x1

    .line 1371
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/4 v2, 0x0

    goto :goto_4a

    :cond_c7
    if-ne v2, v13, :cond_e1

    add-int/lit8 v2, v1, 0x1

    .line 1376
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    .line 1377
    :goto_cf
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_109

    add-int/lit8 v1, v2, 0x1

    .line 1378
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move/from16 v17, v2

    move v2, v1

    move/from16 v1, v17

    goto :goto_cf

    .line 1383
    :cond_e1
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v4

    :cond_e4
    if-ne v1, v13, :cond_f3

    .line 1362
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_f3

    add-int/lit8 v2, v9, 0x1

    .line 1363
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    goto :goto_109

    .line 1366
    :cond_f3
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v4

    :cond_f6
    const/16 v16, 0x1

    .line 1386
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v2, v12, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_18b

    add-int/lit8 v1, v9, 0x4

    add-int/lit8 v2, v9, 0x5

    .line 1388
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move-object v3, v4

    .line 1395
    :cond_109
    :goto_109
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    if-ne v1, v14, :cond_119

    .line 1397
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v1, 0x3

    .line 1398
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v3

    :cond_119
    const/16 v5, 0x7d

    if-ne v1, v5, :cond_184

    .line 1401
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    :goto_123
    if-ne v1, v14, :cond_136

    const/16 v1, 0x10

    .line 1404
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1405
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_166

    :cond_136
    if-ne v1, v13, :cond_149

    const/16 v1, 0xf

    .line 1408
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1409
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_166

    :cond_149
    if-ne v1, v5, :cond_15c

    const/16 v1, 0xd

    .line 1412
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1413
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_166

    :cond_15c
    const/16 v6, 0x1a

    if-ne v1, v6, :cond_16a

    const/16 v2, 0x14

    .line 1416
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1417
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    :goto_166
    const/4 v1, 0x4

    .line 1435
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v3

    :cond_16a
    const/4 v7, 0x0

    .line 1421
    :goto_16b
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_17e

    add-int/lit8 v1, v2, 0x1

    .line 1422
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 1423
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move v7, v2

    move v2, v1

    move v1, v7

    const/4 v7, 0x1

    goto :goto_16b

    :cond_17e
    if-eqz v7, :cond_181

    goto :goto_123

    .line 1430
    :cond_181
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v4

    .line 1437
    :cond_184
    iput-char v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1438
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1439
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v4

    .line 1391
    :cond_18b
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v4

    :cond_18e
    :goto_18e
    move-object/from16 v3, p2

    const/16 v6, 0x1a

    const/16 v16, 0x1

    .line 1288
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1289
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-lt v2, v4, :cond_1a1

    const/16 v5, 0x1a

    goto :goto_1a7

    :cond_1a1
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 1291
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_1a7
    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v2, 0x0

    goto/16 :goto_7
.end method

.method public scanFieldStringArray([CILcom/alibaba/fastjson/parser/SymbolTable;)[Ljava/lang/String;
    .registers 12

    .line 2210
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2211
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2213
    :goto_4
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2214
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_4

    :cond_10
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_5c

    .line 2220
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2221
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare([C)Z

    move-result v5

    if-nez v5, :cond_21

    const/4 p1, -0x2

    .line 2222
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v3

    .line 2226
    :cond_21
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length p1, p1

    add-int/2addr v5, p1

    .line 2227
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 2228
    :goto_2d
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 2229
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result p1

    move v6, v5

    goto :goto_2d

    :cond_3d
    const/16 v5, 0x3a

    if-ne p1, v5, :cond_59

    .line 2233
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 2239
    :goto_49
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_62

    .line 2240
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result p1

    move v5, v6

    goto :goto_49

    .line 2235
    :cond_59
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v3

    .line 2243
    :cond_5c
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v5, p1, 0x1

    .line 2244
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    :cond_62
    const/16 v6, 0x5b

    const/4 v7, 0x4

    if-ne p1, v6, :cond_ea

    .line 2248
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2249
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ltz p2, :cond_78

    .line 2259
    new-array p1, p2, [Ljava/lang/String;

    goto :goto_7a

    :cond_78
    new-array p1, v7, [Ljava/lang/String;

    :goto_7a
    const/4 p2, 0x0

    .line 2262
    :goto_7b
    iget-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_87

    .line 2263
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_7b

    .line 2266
    :cond_87
    iget-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v6, 0x22

    if-eq v5, v6, :cond_94

    .line 2267
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2268
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2269
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v3

    .line 2273
    :cond_94
    invoke-virtual {p0, p3, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v5

    .line 2274
    array-length v6, p1

    if-ne p2, v6, :cond_a9

    .line 2275
    array-length v6, p1

    array-length v7, p1

    shr-int/lit8 v7, v7, 0x1

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    .line 2276
    new-array v6, v6, [Ljava/lang/String;

    .line 2277
    array-length v7, p1

    invoke-static {p1, v4, v6, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v6

    :cond_a9
    add-int/lit8 v6, p2, 0x1

    .line 2280
    aput-object v5, p1, p2

    .line 2281
    :goto_ad
    iget-char p2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {p2}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result p2

    if-eqz p2, :cond_b9

    .line 2282
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_ad

    .line 2284
    :cond_b9
    iget-char p2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v5, 0x2c

    if-ne p2, v5, :cond_c4

    .line 2285
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    move p2, v6

    goto :goto_7b

    .line 2290
    :cond_c4
    array-length p2, p1

    if-eq p2, v6, :cond_cd

    .line 2291
    new-array p2, v6, [Ljava/lang/String;

    .line 2292
    invoke-static {p1, v4, p2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, p2

    .line 2296
    :cond_cd
    :goto_cd
    iget-char p2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {p2}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result p2

    if-eqz p2, :cond_d9

    .line 2297
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_cd

    .line 2300
    :cond_d9
    iget-char p2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 p3, 0x5d

    if-ne p2, p3, :cond_e3

    .line 2301
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    return-object p1

    .line 2303
    :cond_e3
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2304
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2305
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v3

    :cond_ea
    const/16 p2, 0x6e

    if-ne p1, p2, :cond_10d

    .line 2250
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 p2, p2, 0x1

    const-string/jumbo p3, "ull"

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_10d

    .line 2251
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr p1, v7

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2252
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    return-object v3

    .line 2255
    :cond_10d
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-object v3
.end method

.method public scanFieldSymbol([C)J
    .registers 12

    const/4 v0, 0x0

    .line 1194
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1197
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_2a

    .line 1198
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1199
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 1201
    :goto_1a
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1202
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_1a

    :cond_26
    const/4 p1, -0x2

    .line 1206
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v1

    .line 1213
    :cond_2a
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    array-length p1, p1

    add-int/2addr v0, p1

    add-int/lit8 p1, v0, 0x1

    .line 1215
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    const/16 v3, 0x22

    const/4 v4, -0x1

    if-eq v0, v3, :cond_4e

    .line 1217
    :goto_39
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_49

    add-int/lit8 v0, p1, 0x1

    .line 1218
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    move v9, v0

    move v0, p1

    move p1, v9

    goto :goto_39

    :cond_49
    if-eq v0, v3, :cond_4e

    .line 1223
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v1

    :cond_4e
    const-wide v5, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    :goto_53
    add-int/lit8 v0, p1, 0x1

    .line 1231
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    if-ne p1, v3, :cond_e5

    .line 1233
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1234
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    :goto_65
    const/16 v0, 0x2c

    if-ne p1, v0, :cond_79

    .line 1247
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 p1, 0x3

    .line 1248
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v5

    :cond_79
    const/16 v3, 0x7d

    if-ne p1, v3, :cond_d1

    .line 1251
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 1252
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 1253
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCurrent()C

    move-result p1

    if-ne p1, v0, :cond_9a

    const/16 p1, 0x10

    .line 1255
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1256
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_ca

    :cond_9a
    const/16 v0, 0x5d

    if-ne p1, v0, :cond_af

    const/16 p1, 0xf

    .line 1258
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1259
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_ca

    :cond_af
    if-ne p1, v3, :cond_c2

    const/16 p1, 0xd

    .line 1261
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 1262
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_ca

    :cond_c2
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_ce

    const/16 p1, 0x14

    .line 1264
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    :goto_ca
    const/4 p1, 0x4

    .line 1269
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v5

    .line 1266
    :cond_ce
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v1

    .line 1271
    :cond_d1
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_e2

    .line 1272
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    goto :goto_65

    .line 1275
    :cond_e2
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v1

    .line 1236
    :cond_e5
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    if-le v0, v7, :cond_ec

    .line 1237
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v1

    :cond_ec
    int-to-long v7, p1

    xor-long/2addr v5, v7

    const-wide v7, 0x100000001b3L

    mul-long v5, v5, v7

    move p1, v0

    goto/16 :goto_53
.end method

.method public scanISO8601DateIfMatch()Z
    .registers 2

    const/4 v0, 0x1

    .line 211
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v0

    return v0
.end method

.method public scanISO8601DateIfMatch(Z)Z
    .registers 4

    .line 215
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    sub-int/2addr v0, v1

    .line 216
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(ZI)Z

    move-result p1

    return p1
.end method

.method public final scanInt(C)I
    .registers 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1695
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1697
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1698
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v4, v3, 0x1

    .line 1699
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 1701
    :goto_f
    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_1f

    add-int/lit8 v3, v4, 0x1

    .line 1702
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    move v15, v4

    move v4, v3

    move v3, v15

    goto :goto_f

    :cond_1f
    const/16 v5, 0x22

    const/4 v6, 0x1

    if-ne v3, v5, :cond_26

    const/4 v7, 0x1

    goto :goto_27

    :cond_26
    const/4 v7, 0x0

    :goto_27
    if-eqz v7, :cond_32

    add-int/lit8 v3, v4, 0x1

    .line 1708
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    move v15, v4

    move v4, v3

    move v3, v15

    :cond_32
    const/16 v8, 0x2d

    if-ne v3, v8, :cond_37

    goto :goto_38

    :cond_37
    const/4 v6, 0x0

    :goto_38
    if-eqz v6, :cond_43

    add-int/lit8 v3, v4, 0x1

    .line 1713
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    move v15, v4

    move v4, v3

    move v3, v15

    :cond_43
    const/16 v8, 0x10

    const/16 v9, 0x30

    const/4 v10, -0x1

    if-lt v3, v9, :cond_c1

    const/16 v11, 0x39

    if-gt v3, v11, :cond_c1

    sub-int/2addr v3, v9

    :goto_4f
    add-int/lit8 v12, v4, 0x1

    .line 1720
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v13

    if-lt v13, v9, :cond_7b

    if-gt v13, v11, :cond_7b

    mul-int/lit8 v14, v3, 0xa

    if-lt v14, v3, :cond_63

    add-int/lit8 v13, v13, -0x30

    add-int v3, v14, v13

    move v4, v12

    goto :goto_4f

    .line 1724
    :cond_63
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "parseInt error : "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1725
    invoke-virtual {v0, v2, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7b
    const/16 v2, 0x2e

    if-ne v13, v2, :cond_82

    .line 1729
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v1

    :cond_82
    if-eqz v7, :cond_90

    if-eq v13, v5, :cond_89

    .line 1734
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v1

    :cond_89
    add-int/lit8 v4, v4, 0x2

    .line 1737
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v13

    move v12, v4

    :cond_90
    if-gez v3, :cond_95

    .line 1744
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v1

    :cond_95
    move/from16 v1, p1

    :goto_97
    if-ne v13, v1, :cond_ac

    .line 1787
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1788
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v1, 0x3

    .line 1789
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1790
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    if-eqz v6, :cond_c0

    neg-int v1, v3

    return v1

    .line 1793
    :cond_ac
    invoke-static {v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_ba

    add-int/lit8 v2, v12, 0x1

    .line 1794
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v13

    move v12, v2

    goto :goto_97

    .line 1797
    :cond_ba
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    if-eqz v6, :cond_c0

    neg-int v1, v3

    return v1

    :cond_c0
    return v3

    :cond_c1
    const/16 v2, 0x6e

    if-ne v3, v2, :cond_12e

    add-int/lit8 v2, v4, 0x1

    .line 1748
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    const/16 v6, 0x75

    if-ne v3, v6, :cond_12e

    add-int/lit8 v3, v4, 0x2

    .line 1749
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    const/16 v6, 0x6c

    if-ne v2, v6, :cond_12e

    add-int/lit8 v2, v4, 0x3

    .line 1750
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_12e

    const/4 v3, 0x5

    .line 1751
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    add-int/lit8 v6, v4, 0x4

    .line 1753
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    if-eqz v7, :cond_f4

    if-ne v2, v5, :cond_f4

    add-int/2addr v4, v3

    .line 1756
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    move v6, v4

    :cond_f4
    :goto_f4
    const/16 v4, 0x2c

    if-ne v2, v4, :cond_107

    .line 1761
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1762
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1763
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1764
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return v1

    :cond_107
    const/16 v4, 0x5d

    if-ne v2, v4, :cond_11c

    .line 1767
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 1768
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 1769
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/16 v2, 0xf

    .line 1770
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return v1

    .line 1772
    :cond_11c
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_12b

    add-int/lit8 v2, v6, 0x1

    .line 1773
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    move v6, v2

    move v2, v4

    goto :goto_f4

    .line 1778
    :cond_12b
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v1

    .line 1781
    :cond_12e
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v1
.end method

.method public scanLong(C)J
    .registers 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1944
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 1946
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v2, 0x1

    .line 1947
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    const/4 v5, 0x1

    const/16 v6, 0x22

    if-ne v4, v6, :cond_14

    const/4 v7, 0x1

    goto :goto_15

    :cond_14
    const/4 v7, 0x0

    :goto_15
    if-eqz v7, :cond_1e

    add-int/lit8 v2, v2, 0x2

    .line 1951
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    move v3, v2

    :cond_1e
    const/16 v2, 0x2d

    if-ne v4, v2, :cond_23

    const/4 v1, 0x1

    :cond_23
    if-eqz v1, :cond_2c

    add-int/lit8 v2, v3, 0x1

    .line 1956
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    move v3, v2

    :cond_2c
    const/16 v2, 0x10

    const/16 v5, 0x30

    const/4 v8, -0x1

    const-wide/16 v9, 0x0

    if-lt v4, v5, :cond_9d

    const/16 v11, 0x39

    if-gt v4, v11, :cond_9d

    sub-int/2addr v4, v5

    int-to-long v12, v4

    :goto_3b
    add-int/lit8 v4, v3, 0x1

    .line 1963
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_4f

    if-gt v14, v11, :cond_4f

    const-wide/16 v15, 0xa

    mul-long v12, v12, v15

    add-int/lit8 v14, v14, -0x30

    int-to-long v14, v14

    add-long/2addr v12, v14

    move v3, v4

    goto :goto_3b

    :cond_4f
    const/16 v5, 0x2e

    if-ne v14, v5, :cond_56

    .line 1967
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v9

    :cond_56
    if-eqz v7, :cond_64

    if-eq v14, v6, :cond_5d

    .line 1972
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v9

    :cond_5d
    add-int/lit8 v3, v3, 0x2

    .line 1975
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    move v4, v3

    :cond_64
    cmp-long v3, v12, v9

    if-gez v3, :cond_74

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v12, v5

    if-nez v3, :cond_71

    if-eqz v1, :cond_71

    goto :goto_74

    .line 1984
    :cond_71
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v9

    :cond_74
    :goto_74
    move/from16 v3, p1

    :goto_76
    if-ne v14, v3, :cond_8c

    .line 2027
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2028
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/4 v3, 0x3

    .line 2029
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2030
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    if-eqz v1, :cond_8b

    neg-long v1, v12

    return-wide v1

    :cond_8b
    return-wide v12

    .line 2033
    :cond_8c
    invoke-static {v14}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_9a

    add-int/lit8 v5, v4, 0x1

    .line 2034
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    move v4, v5

    goto :goto_76

    .line 2038
    :cond_9a
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v12

    :cond_9d
    const/16 v1, 0x6e

    if-ne v4, v1, :cond_10a

    add-int/lit8 v1, v3, 0x1

    .line 1988
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    const/16 v5, 0x75

    if-ne v4, v5, :cond_10a

    add-int/lit8 v4, v3, 0x2

    .line 1989
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    const/16 v5, 0x6c

    if-ne v1, v5, :cond_10a

    add-int/lit8 v1, v3, 0x3

    .line 1990
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_10a

    const/4 v4, 0x5

    .line 1991
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    add-int/lit8 v5, v3, 0x4

    .line 1993
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    if-eqz v7, :cond_d0

    if-ne v1, v6, :cond_d0

    add-int/2addr v3, v4

    .line 1996
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    move v5, v3

    :cond_d0
    :goto_d0
    const/16 v3, 0x2c

    if-ne v1, v3, :cond_e3

    .line 2001
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2002
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2003
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    .line 2004
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return-wide v9

    :cond_e3
    const/16 v3, 0x5d

    if-ne v1, v3, :cond_f8

    .line 2007
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2008
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2009
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    const/16 v1, 0xf

    .line 2010
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return-wide v9

    .line 2012
    :cond_f8
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_107

    add-int/lit8 v1, v5, 0x1

    .line 2013
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    move v5, v1

    move v1, v3

    goto :goto_d0

    .line 2018
    :cond_107
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v9

    .line 2021
    :cond_10a
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return-wide v9
.end method

.method public scanTypeName(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .registers 7

    .line 3035
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    const-string v1, "\"@type\":\""

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5d

    .line 3036
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x9

    const/16 v3, 0x22

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5d

    .line 3038
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v2, v2, 0x9

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 3040
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v3, 0x0

    :goto_25
    if-ge v2, v0, :cond_33

    mul-int/lit8 v3, v3, 0x1f

    .line 3041
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 3043
    :cond_33
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    sub-int v4, v0, v4

    invoke-virtual {p0, v2, v4, v3, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object p1

    .line 3044
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_4e

    const/16 v3, 0x5d

    if-eq v2, v3, :cond_4e

    return-object v1

    :cond_4e
    add-int/lit8 v0, v0, 0x2

    .line 3048
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 3049
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    return-object p1

    :cond_5d
    return-object v1
.end method

.method public seekArrayToItem(I)Z
    .registers 12

    if-ltz p1, :cond_c0

    .line 2497
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/16 v1, 0x14

    const/4 v2, 0x0

    if-ne v0, v1, :cond_a

    return v2

    .line 2501
    :cond_a
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_ba

    const/4 v0, 0x0

    :goto_11
    const/4 v3, 0x1

    if-ge v0, p1, :cond_b6

    .line 2507
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2508
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v5, 0x22

    const/16 v6, 0x10

    const-string v7, "illegal json."

    const/16 v8, 0x5d

    const/16 v9, 0x2c

    if-eq v4, v5, :cond_97

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v5, 0x27

    if-ne v4, v5, :cond_2c

    goto :goto_97

    .line 2520
    :cond_2c
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v5, 0x7b

    if-ne v4, v5, :cond_3d

    .line 2521
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    const/16 v3, 0xc

    .line 2522
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2523
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipObject(Z)V

    goto :goto_4b

    .line 2524
    :cond_3d
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v5, 0x5b

    if-ne v4, v5, :cond_5d

    .line 2525
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2526
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2527
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipArray(Z)V

    .line 2552
    :goto_4b
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    if-ne v3, v6, :cond_50

    goto :goto_a1

    .line 2554
    :cond_50
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/16 v0, 0xf

    if-ne p1, v0, :cond_57

    return v2

    .line 2557
    :cond_57
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 2530
    :cond_5d
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v4, v3

    :goto_60
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_91

    .line 2531
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_7d

    add-int/lit8 v4, v4, 0x1

    .line 2534
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2535
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_a1

    :cond_7d
    if-ne v5, v8, :cond_8e

    add-int/2addr v4, v3

    .line 2538
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2539
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2540
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    return v2

    :cond_8e
    add-int/lit8 v4, v4, 0x1

    goto :goto_60

    .line 2546
    :cond_91
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2509
    :cond_97
    :goto_97
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipString()V

    .line 2510
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v3, v9, :cond_a5

    .line 2511
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    :goto_a1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_11

    .line 2513
    :cond_a5
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne p1, v8, :cond_b0

    .line 2514
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2515
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    return v2

    .line 2518
    :cond_b0
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2562
    :cond_b6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    return v3

    .line 2502
    :cond_ba
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 2494
    :cond_c0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "index must > 0, but "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public seekObjectToField(JZ)I
    .registers 22

    move-object/from16 v0, p0

    .line 2567
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/16 v2, 0x14

    const/4 v3, -0x1

    if-ne v1, v2, :cond_a

    return v3

    .line 2571
    :cond_a
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_382

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/16 v4, 0xf

    if-ne v1, v4, :cond_18

    goto/16 :goto_382

    .line 2576
    :cond_18
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/16 v5, 0x10

    const/16 v6, 0xc

    if-eq v1, v6, :cond_31

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    if-ne v1, v5, :cond_25

    goto :goto_31

    .line 2577
    :cond_25
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2581
    :cond_31
    :goto_31
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v7, 0x7d

    if-ne v1, v7, :cond_3e

    .line 2582
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2583
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    return v3

    .line 2586
    :cond_3e
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v8, 0x1a

    if-ne v1, v8, :cond_45

    return v3

    .line 2590
    :cond_45
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v9, 0x22

    if-eq v1, v9, :cond_4e

    .line 2591
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2595
    :cond_4e
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v9, :cond_37c

    .line 2598
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v10, 0x1

    add-int/2addr v1, v10

    const-wide v11, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    :goto_5b
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v1, v13, :cond_c1

    .line 2599
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x5c

    if-ne v13, v14, :cond_97

    add-int/lit8 v1, v1, 0x1

    .line 2602
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-eq v1, v13, :cond_7e

    .line 2605
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    goto :goto_97

    .line 2603
    :cond_7e
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unclosed str, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_97
    :goto_97
    if-ne v13, v9, :cond_b5

    add-int/lit8 v1, v1, 0x1

    .line 2609
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2610
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lt v1, v13, :cond_aa

    const/16 v1, 0x1a

    goto :goto_b2

    :cond_aa
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2612
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_b2
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_c1

    :cond_b5
    int-to-long v13, v13

    xor-long/2addr v11, v13

    const-wide v13, 0x100000001b3L

    mul-long v11, v11, v13

    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    :cond_c1
    :goto_c1
    const/4 v1, 0x2

    const/4 v13, 0x0

    const/16 v14, 0x3a

    const/16 v15, 0x39

    const/16 v16, -0x1

    const/16 v3, 0x30

    const/16 v8, 0x2c

    cmp-long v17, v11, p1

    if-nez v17, :cond_16a

    .line 2624
    iget-char v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v6, v14, :cond_d8

    .line 2625
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2627
    :cond_d8
    iget-char v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v6, v14, :cond_168

    .line 2629
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v6, v10

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2630
    iget-object v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v6, v9, :cond_ec

    const/16 v6, 0x1a

    goto :goto_f2

    :cond_ec
    iget-object v9, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2632
    invoke-virtual {v9, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_f2
    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2634
    iget-char v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v6, v8, :cond_113

    .line 2636
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v10

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2637
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_108

    const/16 v8, 0x1a

    goto :goto_10e

    :cond_108
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2639
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_10e
    iput-char v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2641
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_168

    .line 2642
    :cond_113
    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v6, 0x5d

    if-ne v5, v6, :cond_134

    .line 2644
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v10

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2645
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_129

    const/16 v8, 0x1a

    goto :goto_12f

    :cond_129
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2647
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_12f
    iput-char v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2649
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_168

    .line 2650
    :cond_134
    iget-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v4, v7, :cond_153

    .line 2652
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v10

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2653
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_148

    const/16 v8, 0x1a

    goto :goto_14e

    :cond_148
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2655
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_14e
    iput-char v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2657
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_168

    .line 2658
    :cond_153
    iget-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-lt v2, v3, :cond_165

    iget-char v2, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-gt v2, v15, :cond_165

    .line 2659
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 2660
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->pos:I

    .line 2661
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanNumber()V

    goto :goto_168

    .line 2663
    :cond_165
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    :cond_168
    :goto_168
    const/4 v1, 0x3

    return v1

    .line 2669
    :cond_16a
    iget-char v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v11, v14, :cond_171

    .line 2670
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2673
    :cond_171
    iget-char v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v11, v14, :cond_364

    .line 2674
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v11, v10

    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2675
    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lt v11, v12, :cond_185

    const/16 v11, 0x1a

    goto :goto_18b

    :cond_185
    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2677
    invoke-virtual {v12, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    :goto_18b
    iput-char v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2682
    iget-char v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v12, 0x5b

    const/16 v14, 0x7b

    const/16 v17, 0x2

    const/16 v1, 0x2b

    const/16 v4, 0x2d

    if-eq v11, v9, :cond_1ec

    iget-char v11, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v5, 0x27

    if-eq v11, v5, :cond_1ec

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v5, v14, :cond_1ec

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v5, v12, :cond_1ec

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v5, v3, :cond_1ec

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v11, 0x31

    if-eq v5, v11, :cond_1ec

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v11, 0x32

    if-eq v5, v11, :cond_1ec

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v11, 0x33

    if-eq v5, v11, :cond_1ec

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v11, 0x34

    if-eq v5, v11, :cond_1ec

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v11, 0x35

    if-eq v5, v11, :cond_1ec

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v11, 0x36

    if-eq v5, v11, :cond_1ec

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v11, 0x37

    if-eq v5, v11, :cond_1ec

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v11, 0x38

    if-eq v5, v11, :cond_1ec

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v5, v15, :cond_1ec

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v5, v1, :cond_1ec

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v5, v4, :cond_1ec

    .line 2698
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2702
    :cond_1ec
    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v11, 0x65

    if-eq v5, v4, :cond_307

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v5, v1, :cond_307

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-lt v5, v3, :cond_200

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-gt v5, v15, :cond_200

    goto/16 :goto_307

    .line 2733
    :cond_200
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v9, :cond_21b

    .line 2734
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipString()V

    .line 2736
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v8, :cond_212

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v7, :cond_212

    .line 2737
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2740
    :cond_212
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v8, :cond_35d

    .line 2741
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto/16 :goto_35d

    .line 2743
    :cond_21b
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v3, 0x74

    const/16 v4, 0x75

    if-ne v1, v3, :cond_251

    .line 2744
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2745
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v3, 0x72

    if-ne v1, v3, :cond_23d

    .line 2746
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2747
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v4, :cond_23d

    .line 2748
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2749
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v11, :cond_23d

    .line 2750
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2755
    :cond_23d
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v8, :cond_248

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v7, :cond_248

    .line 2756
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2759
    :cond_248
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v8, :cond_35d

    .line 2760
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto/16 :goto_35d

    .line 2762
    :cond_251
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v3, 0x6e

    const/16 v5, 0x6c

    if-ne v1, v3, :cond_285

    .line 2763
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2764
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v4, :cond_271

    .line 2765
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2766
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v5, :cond_271

    .line 2767
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2768
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v5, :cond_271

    .line 2769
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2774
    :cond_271
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v8, :cond_27c

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v7, :cond_27c

    .line 2775
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2778
    :cond_27c
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v8, :cond_35d

    .line 2779
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto/16 :goto_35d

    .line 2781
    :cond_285
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v3, 0x66

    if-ne v1, v3, :cond_2c2

    .line 2782
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2783
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v3, 0x61

    if-ne v1, v3, :cond_2ae

    .line 2784
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2785
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v5, :cond_2ae

    .line 2786
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2787
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v3, 0x73

    if-ne v1, v3, :cond_2ae

    .line 2788
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2789
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v11, :cond_2ae

    .line 2790
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2796
    :cond_2ae
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v8, :cond_2b9

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v7, :cond_2b9

    .line 2797
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2800
    :cond_2b9
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v8, :cond_35d

    .line 2801
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto/16 :goto_35d

    .line 2803
    :cond_2c2
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v14, :cond_2eb

    .line 2805
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/2addr v1, v10

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2806
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_2d6

    const/16 v8, 0x1a

    goto :goto_2dc

    :cond_2d6
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2808
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_2dc
    iput-char v8, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eqz p3, :cond_2e3

    .line 2811
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return v10

    .line 2815
    :cond_2e3
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipObject(Z)V

    .line 2816
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    if-ne v1, v2, :cond_35d

    return v16

    .line 2819
    :cond_2eb
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v12, :cond_301

    .line 2820
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    if-eqz p3, :cond_2f9

    const/16 v1, 0xe

    .line 2822
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return v17

    .line 2825
    :cond_2f9
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipArray(Z)V

    .line 2826
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    if-ne v1, v2, :cond_35d

    return v16

    .line 2830
    :cond_301
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 2703
    :cond_307
    :goto_307
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2704
    :goto_30a
    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-lt v5, v3, :cond_316

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-gt v5, v15, :cond_316

    .line 2705
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_30a

    .line 2709
    :cond_316
    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v7, 0x2e

    if-ne v5, v7, :cond_32b

    .line 2710
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2711
    :goto_31f
    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-lt v5, v3, :cond_32b

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-gt v5, v15, :cond_32b

    .line 2712
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_31f

    .line 2717
    :cond_32b
    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v7, 0x45

    if-eq v5, v7, :cond_335

    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v5, v11, :cond_34f

    .line 2718
    :cond_335
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2719
    iget-char v5, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v5, v4, :cond_340

    iget-char v4, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v4, v1, :cond_343

    .line 2720
    :cond_340
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2722
    :cond_343
    :goto_343
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-lt v1, v3, :cond_34f

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-gt v1, v15, :cond_34f

    .line 2723
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_343

    .line 2727
    :cond_34f
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v1, v8, :cond_356

    .line 2728
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2730
    :cond_356
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v8, :cond_35d

    .line 2731
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    :cond_35d
    :goto_35d
    const/4 v3, -0x1

    const/16 v4, 0xf

    const/16 v5, 0x10

    goto/16 :goto_31

    .line 2679
    :cond_364
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "illegal json, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2620
    :cond_37c
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    :cond_382
    :goto_382
    const/16 v16, -0x1

    .line 2572
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    return v16
.end method

.method public seekObjectToField([J)I
    .registers 16

    .line 2836
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    const/16 v1, 0xc

    const/16 v2, 0x10

    if-eq v0, v1, :cond_13

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    if-ne v0, v2, :cond_d

    goto :goto_13

    .line 2837
    :cond_d
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 2841
    :cond_13
    :goto_13
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x7d

    const/4 v3, -0x1

    if-ne v0, v1, :cond_23

    .line 2842
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2843
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    .line 2844
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v3

    .line 2847
    :cond_23
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v4, 0x1a

    if-ne v0, v4, :cond_2c

    .line 2848
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v3

    .line 2852
    :cond_2c
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v5, 0x22

    if-eq v0, v5, :cond_35

    .line 2853
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2857
    :cond_35
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v0, v5, :cond_2b1

    .line 2860
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    const-wide v6, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    :goto_42
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v0, v8, :cond_a8

    .line 2861
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x5c

    if-ne v8, v9, :cond_7e

    add-int/lit8 v0, v0, 0x1

    .line 2864
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v0, v8, :cond_65

    .line 2867
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_7e

    .line 2865
    :cond_65
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unclosed str, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->info()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7e
    :goto_7e
    if-ne v8, v5, :cond_9c

    add-int/lit8 v0, v0, 0x1

    .line 2871
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2872
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v0, v8, :cond_91

    const/16 v0, 0x1a

    goto :goto_99

    :cond_91
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2874
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_99
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    goto :goto_a8

    :cond_9c
    int-to-long v8, v8

    xor-long/2addr v6, v8

    const-wide v8, 0x100000001b3L

    mul-long v6, v6, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    :cond_a8
    :goto_a8
    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 2886
    :goto_aa
    array-length v9, p1

    if-ge v8, v9, :cond_b7

    .line 2887
    aget-wide v9, p1, v8

    cmp-long v11, v6, v9

    if-nez v11, :cond_b4

    goto :goto_b8

    :cond_b4
    add-int/lit8 v8, v8, 0x1

    goto :goto_aa

    :cond_b7
    const/4 v8, -0x1

    :goto_b8
    const/16 v6, 0x3a

    const/16 v7, 0x2c

    const/16 v9, 0x39

    const/16 v10, 0x30

    if-eq v8, v3, :cond_160

    .line 2894
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq p1, v6, :cond_c9

    .line 2895
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2897
    :cond_c9
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne p1, v6, :cond_15c

    .line 2899
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2900
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt p1, v3, :cond_de

    const/16 p1, 0x1a

    goto :goto_e4

    :cond_de
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2902
    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_e4
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2904
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne p1, v7, :cond_104

    .line 2906
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2907
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_f9

    goto :goto_ff

    :cond_f9
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2909
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_ff
    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2911
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_15c

    .line 2912
    :cond_104
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v2, 0x5d

    if-ne p1, v2, :cond_126

    .line 2914
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2915
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_119

    goto :goto_11f

    :cond_119
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2917
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_11f
    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 p1, 0xf

    .line 2919
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_15c

    .line 2920
    :cond_126
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne p1, v1, :cond_146

    .line 2922
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2923
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_139

    goto :goto_13f

    :cond_139
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2925
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_13f
    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 p1, 0xd

    .line 2927
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    goto :goto_15c

    .line 2928
    :cond_146
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-lt p1, v10, :cond_158

    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-gt p1, v9, :cond_158

    .line 2929
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 2930
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->pos:I

    .line 2931
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanNumber()V

    goto :goto_15c

    :cond_158
    const/4 p1, 0x2

    .line 2933
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    :cond_15c
    :goto_15c
    const/4 p1, 0x3

    .line 2937
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->matchStat:I

    return v8

    .line 2941
    :cond_160
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v3, v6, :cond_167

    .line 2942
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2945
    :cond_167
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v3, v6, :cond_299

    .line 2946
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2947
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v3, v6, :cond_17c

    const/16 v3, 0x1a

    goto :goto_182

    :cond_17c
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2949
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_182
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2954
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v6, 0x5b

    const/16 v8, 0x7b

    const/16 v11, 0x2b

    const/16 v12, 0x2d

    if-eq v3, v5, :cond_1e1

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v13, 0x27

    if-eq v3, v13, :cond_1e1

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v3, v8, :cond_1e1

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v3, v6, :cond_1e1

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v3, v10, :cond_1e1

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v13, 0x31

    if-eq v3, v13, :cond_1e1

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v13, 0x32

    if-eq v3, v13, :cond_1e1

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v13, 0x33

    if-eq v3, v13, :cond_1e1

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v13, 0x34

    if-eq v3, v13, :cond_1e1

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v13, 0x35

    if-eq v3, v13, :cond_1e1

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v13, 0x36

    if-eq v3, v13, :cond_1e1

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v13, 0x37

    if-eq v3, v13, :cond_1e1

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v13, 0x38

    if-eq v3, v13, :cond_1e1

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v3, v9, :cond_1e1

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v3, v11, :cond_1e1

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v3, v12, :cond_1e1

    .line 2970
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 2974
    :cond_1e1
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v3, v12, :cond_23f

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v3, v11, :cond_23f

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-lt v3, v10, :cond_1f2

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-gt v3, v9, :cond_1f2

    goto :goto_23f

    .line 3005
    :cond_1f2
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v3, v5, :cond_20d

    .line 3006
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipString()V

    .line 3008
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v0, v7, :cond_204

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v0, v1, :cond_204

    .line 3009
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 3012
    :cond_204
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v0, v7, :cond_13

    .line 3013
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto/16 :goto_13

    .line 3015
    :cond_20d
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v8, :cond_22d

    .line 3017
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 3018
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_220

    goto :goto_226

    :cond_220
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 3020
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_226
    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 3023
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipObject(Z)V

    goto/16 :goto_13

    .line 3024
    :cond_22d
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v1, v6, :cond_239

    .line 3025
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 3027
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipArray(Z)V

    goto/16 :goto_13

    .line 3029
    :cond_239
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 2975
    :cond_23f
    :goto_23f
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2976
    :goto_242
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-lt v0, v10, :cond_24e

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-gt v0, v9, :cond_24e

    .line 2977
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_242

    .line 2981
    :cond_24e
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_263

    .line 2982
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2983
    :goto_257
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-lt v0, v10, :cond_263

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-gt v0, v9, :cond_263

    .line 2984
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_257

    .line 2989
    :cond_263
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x45

    if-eq v0, v1, :cond_26f

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x65

    if-ne v0, v1, :cond_289

    .line 2990
    :cond_26f
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2991
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v0, v12, :cond_27a

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v0, v11, :cond_27d

    .line 2992
    :cond_27a
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 2994
    :cond_27d
    :goto_27d
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-lt v0, v10, :cond_289

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-gt v0, v9, :cond_289

    .line 2995
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto :goto_27d

    .line 2999
    :cond_289
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-eq v0, v7, :cond_290

    .line 3000
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipWhitespace()V

    .line 3002
    :cond_290
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne v0, v7, :cond_13

    .line 3003
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    goto/16 :goto_13

    .line 2951
    :cond_299
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "illegal json, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->info()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2882
    :cond_2b1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected setTime(CCCCCC)V
    .registers 7

    add-int/lit8 p1, p1, -0x30

    mul-int/lit8 p1, p1, 0xa

    add-int/lit8 p2, p2, -0x30

    add-int/2addr p1, p2

    add-int/lit8 p3, p3, -0x30

    mul-int/lit8 p3, p3, 0xa

    add-int/lit8 p4, p4, -0x30

    add-int/2addr p3, p4

    add-int/lit8 p5, p5, -0x30

    mul-int/lit8 p5, p5, 0xa

    add-int/lit8 p6, p6, -0x30

    add-int/2addr p5, p6

    .line 705
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 p4, 0xb

    invoke-virtual {p2, p4, p1}, Ljava/util/Calendar;->set(II)V

    .line 706
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 p2, 0xc

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 707
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 p2, 0xd

    invoke-virtual {p1, p2, p5}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method protected setTimeZone(CCC)V
    .registers 10

    const/16 v4, 0x30

    const/16 v5, 0x30

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 711
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->setTimeZone(CCCCC)V

    return-void
.end method

.method protected setTimeZone(CCCCC)V
    .registers 6

    add-int/lit8 p2, p2, -0x30

    mul-int/lit8 p2, p2, 0xa

    add-int/lit8 p3, p3, -0x30

    add-int/2addr p2, p3

    const p3, 0x36ee80

    mul-int p2, p2, p3

    add-int/lit8 p4, p4, -0x30

    mul-int/lit8 p4, p4, 0xa

    add-int/lit8 p5, p5, -0x30

    add-int/2addr p4, p5

    const p3, 0xea60

    mul-int p4, p4, p3

    add-int/2addr p2, p4

    const/16 p3, 0x2d

    if-ne p1, p3, :cond_1e

    neg-int p2, p2

    .line 723
    :cond_1e
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p1

    if-eq p1, p2, :cond_38

    .line 724
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    new-instance p3, Ljava/util/SimpleTimeZone;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p2, p4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_38
    return-void
.end method

.method public final skipArray()V
    .registers 2

    const/4 v0, 0x0

    .line 2413
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipArray(Z)V

    return-void
.end method

.method public final skipArray(Z)V
    .registers 8

    .line 2419
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2420
    :goto_4
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "illegal str, "

    if-ge v0, v3, :cond_a5

    .line 2421
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x5c

    if-ne v3, v5, :cond_3c

    .line 2423
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_22

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_a1

    .line 2427
    :cond_22
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2428
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2429
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->info()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3c
    const/16 v4, 0x22

    if-ne v3, v4, :cond_43

    xor-int/lit8 v1, v1, 0x1

    goto :goto_a1

    :cond_43
    const/16 v4, 0x5b

    if-ne v3, v4, :cond_4d

    if-eqz v1, :cond_4a

    goto :goto_a1

    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_a1

    :cond_4d
    const/16 v4, 0x7b

    const/16 v5, 0x1a

    if-ne v3, v4, :cond_70

    if-eqz p1, :cond_70

    .line 2440
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2441
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_64

    goto :goto_6a

    :cond_64
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2443
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_6a
    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2446
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipObject(Z)V

    goto :goto_a1

    :cond_70
    const/16 v4, 0x5d

    if-ne v3, v4, :cond_a1

    if-eqz v1, :cond_77

    goto :goto_a1

    :cond_77
    add-int/lit8 v2, v2, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_a1

    add-int/lit8 v0, v0, 0x1

    .line 2454
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2455
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne p1, v0, :cond_91

    .line 2456
    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 p1, 0x14

    .line 2457
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return-void

    .line 2460
    :cond_91
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 p1, 0x10

    .line 2461
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    return-void

    :cond_a1
    :goto_a1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 2467
    :cond_a5
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eq v0, p1, :cond_ae

    return-void

    .line 2468
    :cond_ae
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->info()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final skipObject()V
    .registers 2

    const/4 v0, 0x0

    .line 2339
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipObject(Z)V

    return-void
.end method

.method public final skipObject(Z)V
    .registers 8

    .line 2345
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2346
    :goto_5
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "illegal str, "

    if-ge p1, v3, :cond_c1

    .line 2347
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x5c

    if-ne v3, v5, :cond_3d

    .line 2349
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    add-int/lit8 v5, v5, -0x1

    if-ge p1, v5, :cond_23

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_bd

    .line 2353
    :cond_23
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2354
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2355
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->info()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3d
    const/16 v4, 0x22

    if-ne v3, v4, :cond_45

    xor-int/lit8 v1, v1, 0x1

    goto/16 :goto_bd

    :cond_45
    const/16 v4, 0x7b

    if-ne v3, v4, :cond_50

    if-eqz v1, :cond_4d

    goto/16 :goto_bd

    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_bd

    :cond_50
    const/16 v4, 0x7d

    if-ne v3, v4, :cond_bd

    if-eqz v1, :cond_57

    goto :goto_bd

    :cond_57
    add-int/lit8 v2, v2, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_bd

    add-int/lit8 p1, p1, 0x1

    .line 2371
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2372
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1a

    if-ne p1, v0, :cond_73

    .line 2373
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 p1, 0x14

    .line 2374
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    return-void

    .line 2377
    :cond_73
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 2378
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v0, 0x2c

    const/16 v2, 0x10

    if-ne p1, v0, :cond_9f

    .line 2379
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2380
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 2381
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_96

    goto :goto_9c

    :cond_96
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 2383
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_9c
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    return-void

    .line 2385
    :cond_9f
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    if-ne p1, v4, :cond_ab

    const/16 p1, 0xd

    .line 2386
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2387
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    return-void

    .line 2389
    :cond_ab
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v0, 0x5d

    if-ne p1, v0, :cond_b9

    const/16 p1, 0xf

    .line 2390
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 2391
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    return-void

    .line 2394
    :cond_b9
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken(I)V

    return-void

    :cond_bd
    :goto_bd
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_5

    .line 2401
    :cond_c1
    :goto_c1
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    if-ge v0, v1, :cond_dc

    .line 2402
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_d9

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_d9

    add-int/lit8 p1, p1, 0x1

    :cond_d9
    add-int/lit8 v0, v0, 0x1

    goto :goto_c1

    .line 2407
    :cond_dc
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq p1, v0, :cond_e5

    return-void

    .line 2408
    :cond_e5
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->info()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final skipString()V
    .registers 5

    .line 2473
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_3d

    .line 2474
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    :cond_8
    :goto_8
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_34

    .line 2475
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_25

    .line 2477
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->len:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_8

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_25
    if-ne v2, v1, :cond_8

    .line 2482
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    return-void

    .line 2486
    :cond_34
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "unclosed str"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2488
    :cond_3d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final stringVal()Ljava/lang/String;
    .registers 5

    .line 143
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    if-nez v0, :cond_f

    .line 144
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 146
    :cond_f
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public final subString(II)Ljava/lang/String;
    .registers 7

    .line 151
    sget-boolean v0, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    if-eqz v0, :cond_29

    .line 152
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v0, v0

    const/4 v1, 0x0

    if-ge p2, v0, :cond_1b

    .line 153
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v2, p1, p2

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-virtual {v0, p1, v2, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 154
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-direct {p1, v0, v1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 156
    :cond_1b
    new-array v0, p2, [C

    .line 157
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/2addr p2, p1

    invoke-virtual {v2, p1, p2, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 158
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1

    .line 161
    :cond_29
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/2addr p2, p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final sub_chars(II)[C
    .registers 6

    .line 166
    sget-boolean v0, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    array-length v0, v0

    if-ge p2, v0, :cond_15

    .line 167
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/2addr p2, p1

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    invoke-virtual {v0, p1, p2, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 168
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    return-object p1

    .line 170
    :cond_15
    new-array v0, p2, [C

    .line 171
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int/2addr p2, p1

    invoke-virtual {v2, p1, p2, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    return-object v0
.end method
