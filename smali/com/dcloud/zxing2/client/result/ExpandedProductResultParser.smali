###### Class com.dcloud.zxing2.client.result.ExpandedProductResultParser (com.dcloud.zxing2.client.result.ExpandedProductResultParser)
.class public final Lcom/dcloud/zxing2/client/result/ExpandedProductResultParser;
.super Lcom/dcloud/zxing2/client/result/ResultParser;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/zxing2/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static findAIvalue(ILjava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    return-object v2

    :cond_a
    add-int/lit8 p0, p0, 0x1

    .line 7
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 10
    :goto_16
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_38

    .line 11
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v3, 0x29

    if-ne v1, v3, :cond_29

    .line 13
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_29
    const/16 v3, 0x30

    if-lt v1, v3, :cond_37

    const/16 v3, 0x39

    if-gt v1, v3, :cond_37

    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_37
    return-object v2

    .line 20
    :cond_38
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static findValue(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 4
    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_28

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_22

    .line 9
    invoke-static {p1, p0}, Lcom/dcloud/zxing2/client/result/ExpandedProductResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_28

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 15
    :cond_22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_25
    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    .line 18
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public parse(Lcom/dcloud/zxing2/Result;)Lcom/dcloud/zxing2/client/result/ExpandedProductParsedResult;
    .registers 25

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/dcloud/zxing2/Result;->getBarcodeFormat()Lcom/dcloud/zxing2/BarcodeFormat;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/dcloud/zxing2/BarcodeFormat;->RSS_EXPANDED:Lcom/dcloud/zxing2/BarcodeFormat;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    return-object v2

    .line 7
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/dcloud/zxing2/client/result/ResultParser;->getMassagedText(Lcom/dcloud/zxing2/Result;)Ljava/lang/String;

    move-result-object v4

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v5, v2

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    const/4 v3, 0x0

    .line 26
    :goto_25
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v3, v2, :cond_29a

    .line 27
    invoke-static {v3, v4}, Lcom/dcloud/zxing2/client/result/ExpandedProductResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_32

    return-object v18

    .line 33
    :cond_32
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x2

    add-int/lit8 v19, v19, 0x2

    add-int v3, v3, v19

    .line 34
    invoke-static {v3, v4}, Lcom/dcloud/zxing2/client/result/ExpandedProductResultParser;->findValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v19

    add-int v3, v3, v19

    .line 37
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v19

    move/from16 v21, v3

    const/16 v22, -0x1

    sparse-switch v19, :sswitch_data_2a4

    :goto_54
    const/16 v20, -0x1

    goto/16 :goto_22d

    :sswitch_58
    const-string v3, "3933"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_61

    goto :goto_54

    :cond_61
    const/16 v20, 0x22

    goto/16 :goto_22d

    :sswitch_65
    const-string v3, "3932"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6e

    goto :goto_54

    :cond_6e
    const/16 v20, 0x21

    goto/16 :goto_22d

    :sswitch_72
    const-string v3, "3931"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7b

    goto :goto_54

    :cond_7b
    const/16 v20, 0x20

    goto/16 :goto_22d

    :sswitch_7f
    const-string v3, "3930"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_88

    goto :goto_54

    :cond_88
    const/16 v20, 0x1f

    goto/16 :goto_22d

    :sswitch_8c
    const-string v3, "3923"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_95

    goto :goto_54

    :cond_95
    const/16 v20, 0x1e

    goto/16 :goto_22d

    :sswitch_99
    const-string v3, "3922"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a2

    goto :goto_54

    :cond_a2
    const/16 v20, 0x1d

    goto/16 :goto_22d

    :sswitch_a6
    const-string v3, "3921"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_af

    goto :goto_54

    :cond_af
    const/16 v20, 0x1c

    goto/16 :goto_22d

    :sswitch_b3
    const-string v3, "3920"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_bc

    goto :goto_54

    :cond_bc
    const/16 v20, 0x1b

    goto/16 :goto_22d

    :sswitch_c0
    const-string v3, "3209"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c9

    goto :goto_54

    :cond_c9
    const/16 v20, 0x1a

    goto/16 :goto_22d

    :sswitch_cd
    const-string v3, "3208"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d7

    goto/16 :goto_54

    :cond_d7
    const/16 v20, 0x19

    goto/16 :goto_22d

    :sswitch_db
    const-string v3, "3207"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e5

    goto/16 :goto_54

    :cond_e5
    const/16 v20, 0x18

    goto/16 :goto_22d

    :sswitch_e9
    const-string v3, "3206"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f3

    goto/16 :goto_54

    :cond_f3
    const/16 v20, 0x17

    goto/16 :goto_22d

    :sswitch_f7
    const-string v3, "3205"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_101

    goto/16 :goto_54

    :cond_101
    const/16 v20, 0x16

    goto/16 :goto_22d

    :sswitch_105
    const-string v3, "3204"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10f

    goto/16 :goto_54

    :cond_10f
    const/16 v20, 0x15

    goto/16 :goto_22d

    :sswitch_113
    const-string v3, "3203"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11d

    goto/16 :goto_54

    :cond_11d
    const/16 v20, 0x14

    goto/16 :goto_22d

    :sswitch_121
    const-string v3, "3202"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12b

    goto/16 :goto_54

    :cond_12b
    const/16 v20, 0x13

    goto/16 :goto_22d

    :sswitch_12f
    const-string v3, "3201"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_139

    goto/16 :goto_54

    :cond_139
    const/16 v20, 0x12

    goto/16 :goto_22d

    :sswitch_13d
    const-string v3, "3200"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_147

    goto/16 :goto_54

    :cond_147
    const/16 v20, 0x11

    goto/16 :goto_22d

    :sswitch_14b
    const-string v3, "3109"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_155

    goto/16 :goto_54

    :cond_155
    const/16 v20, 0x10

    goto/16 :goto_22d

    :sswitch_159
    const-string v3, "3108"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_163

    goto/16 :goto_54

    :cond_163
    const/16 v20, 0xf

    goto/16 :goto_22d

    :sswitch_167
    const-string v3, "3107"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_171

    goto/16 :goto_54

    :cond_171
    const/16 v20, 0xe

    goto/16 :goto_22d

    :sswitch_175
    const-string v3, "3106"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17f

    goto/16 :goto_54

    :cond_17f
    const/16 v20, 0xd

    goto/16 :goto_22d

    :sswitch_183
    const-string v3, "3105"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18d

    goto/16 :goto_54

    :cond_18d
    const/16 v20, 0xc

    goto/16 :goto_22d

    :sswitch_191
    const-string v3, "3104"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19b

    goto/16 :goto_54

    :cond_19b
    const/16 v20, 0xb

    goto/16 :goto_22d

    :sswitch_19f
    const-string v3, "3103"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a9

    goto/16 :goto_54

    :cond_1a9
    const/16 v20, 0xa

    goto/16 :goto_22d

    :sswitch_1ad
    const-string v3, "3102"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b7

    goto/16 :goto_54

    :cond_1b7
    const/16 v20, 0x9

    goto/16 :goto_22d

    :sswitch_1bb
    const-string v3, "3101"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c5

    goto/16 :goto_54

    :cond_1c5
    const/16 v20, 0x8

    goto/16 :goto_22d

    :sswitch_1c9
    const-string v3, "3100"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d3

    goto/16 :goto_54

    :cond_1d3
    const/16 v20, 0x7

    goto :goto_22d

    :sswitch_1d6
    const-string v3, "17"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e0

    goto/16 :goto_54

    :cond_1e0
    const/16 v20, 0x6

    goto :goto_22d

    :sswitch_1e3
    const-string v3, "15"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1ed

    goto/16 :goto_54

    :cond_1ed
    const/16 v20, 0x5

    goto :goto_22d

    :sswitch_1f0
    const-string v3, "13"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1fa

    goto/16 :goto_54

    :cond_1fa
    const/16 v20, 0x4

    goto :goto_22d

    :sswitch_1fd
    const-string v3, "11"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_207

    goto/16 :goto_54

    :cond_207
    const/16 v20, 0x3

    goto :goto_22d

    :sswitch_20a
    const-string v3, "10"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22d

    goto/16 :goto_54

    :sswitch_214
    const-string v3, "01"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21e

    goto/16 :goto_54

    :cond_21e
    const/16 v20, 0x1

    goto :goto_22d

    :sswitch_221
    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22b

    goto/16 :goto_54

    :cond_22b
    const/16 v20, 0x0

    :cond_22d
    :goto_22d
    packed-switch v20, :pswitch_data_332

    .line 110
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v0

    const/4 v0, 0x0

    goto/16 :goto_294

    .line 111
    :pswitch_238
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v15, 0x4

    if-ge v3, v15, :cond_240

    return-object v18

    :cond_240
    const/4 v3, 0x3

    .line 117
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v19, v0

    const/4 v0, 0x0

    .line 118
    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 119
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    goto :goto_294

    :pswitch_251
    move-object/from16 v19, v0

    const/4 v0, 0x0

    const/4 v3, 0x3

    .line 120
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    move-object v15, v1

    goto :goto_294

    :pswitch_25b
    move-object/from16 v19, v0

    const/4 v0, 0x0

    const/4 v3, 0x3

    .line 122
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    const-string v13, "LB"

    goto :goto_270

    :pswitch_266
    move-object/from16 v19, v0

    const/4 v0, 0x0

    const/4 v3, 0x3

    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    const-string v13, "KG"

    :goto_270
    move-object v12, v1

    goto :goto_294

    :pswitch_272
    move-object/from16 v19, v0

    const/4 v0, 0x0

    move-object v11, v1

    goto :goto_294

    :pswitch_277
    move-object/from16 v19, v0

    const/4 v0, 0x0

    move-object v10, v1

    goto :goto_294

    :pswitch_27c
    move-object/from16 v19, v0

    const/4 v0, 0x0

    move-object v9, v1

    goto :goto_294

    :pswitch_281
    move-object/from16 v19, v0

    const/4 v0, 0x0

    move-object v8, v1

    goto :goto_294

    :pswitch_286
    move-object/from16 v19, v0

    const/4 v0, 0x0

    move-object v7, v1

    goto :goto_294

    :pswitch_28b
    move-object/from16 v19, v0

    const/4 v0, 0x0

    move-object v5, v1

    goto :goto_294

    :pswitch_290
    move-object/from16 v19, v0

    const/4 v0, 0x0

    move-object v6, v1

    :goto_294
    move-object/from16 v0, v19

    move/from16 v3, v21

    goto/16 :goto_25

    :cond_29a
    move-object/from16 v19, v0

    .line 168
    new-instance v3, Lcom/dcloud/zxing2/client/result/ExpandedProductParsedResult;

    move-object/from16 v18, v19

    invoke-direct/range {v3 .. v18}, Lcom/dcloud/zxing2/client/result/ExpandedProductParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v3

    :sswitch_data_2a4
    .sparse-switch
        0x600 -> :sswitch_221
        0x601 -> :sswitch_214
        0x61f -> :sswitch_20a
        0x620 -> :sswitch_1fd
        0x622 -> :sswitch_1f0
        0x624 -> :sswitch_1e3
        0x626 -> :sswitch_1d6
        0x17ecde -> :sswitch_1c9
        0x17ecdf -> :sswitch_1bb
        0x17ece0 -> :sswitch_1ad
        0x17ece1 -> :sswitch_19f
        0x17ece2 -> :sswitch_191
        0x17ece3 -> :sswitch_183
        0x17ece4 -> :sswitch_175
        0x17ece5 -> :sswitch_167
        0x17ece6 -> :sswitch_159
        0x17ece7 -> :sswitch_14b
        0x17f09f -> :sswitch_13d
        0x17f0a0 -> :sswitch_12f
        0x17f0a1 -> :sswitch_121
        0x17f0a2 -> :sswitch_113
        0x17f0a3 -> :sswitch_105
        0x17f0a4 -> :sswitch_f7
        0x17f0a5 -> :sswitch_e9
        0x17f0a6 -> :sswitch_db
        0x17f0a7 -> :sswitch_cd
        0x17f0a8 -> :sswitch_c0
        0x180b24 -> :sswitch_b3
        0x180b25 -> :sswitch_a6
        0x180b26 -> :sswitch_99
        0x180b27 -> :sswitch_8c
        0x180b43 -> :sswitch_7f
        0x180b44 -> :sswitch_72
        0x180b45 -> :sswitch_65
        0x180b46 -> :sswitch_58
    .end sparse-switch

    :pswitch_data_332
    .packed-switch 0x0
        :pswitch_290
        :pswitch_28b
        :pswitch_286
        :pswitch_281
        :pswitch_27c
        :pswitch_277
        :pswitch_272
        :pswitch_266
        :pswitch_266
        :pswitch_266
        :pswitch_266
        :pswitch_266
        :pswitch_266
        :pswitch_266
        :pswitch_266
        :pswitch_266
        :pswitch_266
        :pswitch_25b
        :pswitch_25b
        :pswitch_25b
        :pswitch_25b
        :pswitch_25b
        :pswitch_25b
        :pswitch_25b
        :pswitch_25b
        :pswitch_25b
        :pswitch_25b
        :pswitch_251
        :pswitch_251
        :pswitch_251
        :pswitch_251
        :pswitch_238
        :pswitch_238
        :pswitch_238
        :pswitch_238
    .end packed-switch
.end method

.method public bridge synthetic parse(Lcom/dcloud/zxing2/Result;)Lcom/dcloud/zxing2/client/result/ParsedResult;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/dcloud/zxing2/client/result/ExpandedProductResultParser;->parse(Lcom/dcloud/zxing2/Result;)Lcom/dcloud/zxing2/client/result/ExpandedProductParsedResult;

    move-result-object p1

    return-object p1
.end method
