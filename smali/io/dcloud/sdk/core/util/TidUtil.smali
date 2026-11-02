###### Class io.dcloud.sdk.core.util.TidUtil (io.dcloud.sdk.core.util.TidUtil)
.class public Lio/dcloud/sdk/core/util/TidUtil;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTid(Ljava/lang/String;I)Ljava/lang/String;
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    invoke-static {}, Lio/dcloud/p/e;->b()Lio/dcloud/p/e;

    move-result-object v2

    invoke-virtual {v2, v0}, Lio/dcloud/p/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1e
    const-string v3, "sgm"

    const-string v5, "pg"

    const-string v6, "hw"

    const-string v7, "gg"

    const-string v8, "bd"

    const/4 v9, 0x7

    const/4 v10, 0x5

    const-string v11, "csj"

    const/4 v12, 0x4

    const/4 v13, 0x3

    const-string v14, "gdt"

    const-string v15, "ks"

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/16 v18, -0x1

    const-string v2, "gm"

    const/4 v4, 0x1

    if-eq v1, v4, :cond_2a2

    if-eq v1, v9, :cond_255

    const/16 v4, 0xf

    if-eq v1, v4, :cond_1d5

    if-eq v1, v12, :cond_162

    if-eq v1, v10, :cond_11e

    packed-switch v1, :pswitch_data_324

    goto/16 :goto_305

    .line 113
    :pswitch_4c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_32e

    :goto_59
    const/4 v13, -0x1

    goto :goto_7c

    :sswitch_5b
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c

    goto :goto_59

    :sswitch_62
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    goto :goto_59

    :cond_69
    const/4 v13, 0x2

    goto :goto_7c

    :sswitch_6b
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    goto :goto_59

    :cond_72
    const/4 v13, 0x1

    goto :goto_7c

    :sswitch_74
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    goto :goto_59

    :cond_7b
    const/4 v13, 0x0

    :cond_7c
    :goto_7c
    packed-switch v13, :pswitch_data_340

    goto/16 :goto_305

    .line 115
    :pswitch_81
    const-string v0, "103"

    return-object v0

    .line 117
    :pswitch_84
    const-string v0, "104"

    return-object v0

    .line 119
    :pswitch_87
    const-string v0, "105"

    return-object v0

    .line 121
    :pswitch_8a
    const-string v0, "106"

    return-object v0

    .line 122
    :pswitch_8d
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_34c

    :goto_9a
    const/4 v2, -0x1

    goto/16 :goto_fb

    :sswitch_9d
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a4

    goto :goto_9a

    :cond_a4
    const/16 v2, 0x9

    goto/16 :goto_fb

    :sswitch_a8
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    goto :goto_9a

    :cond_af
    const/16 v2, 0x8

    goto :goto_fb

    :sswitch_b2
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b9

    goto :goto_9a

    :cond_b9
    const/4 v2, 0x7

    goto :goto_fb

    :sswitch_bb
    const-string v1, "wm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c4

    goto :goto_9a

    :cond_c4
    const/4 v2, 0x6

    goto :goto_fb

    :sswitch_c6
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cd

    goto :goto_9a

    :cond_cd
    const/4 v2, 0x5

    goto :goto_fb

    :sswitch_cf
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d6

    goto :goto_9a

    :cond_d6
    const/4 v2, 0x4

    goto :goto_fb

    :sswitch_d8
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_df

    goto :goto_9a

    :cond_df
    const/4 v2, 0x3

    goto :goto_fb

    :sswitch_e1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e8

    goto :goto_9a

    :cond_e8
    const/4 v2, 0x2

    goto :goto_fb

    :sswitch_ea
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f1

    goto :goto_9a

    :cond_f1
    const/4 v2, 0x1

    goto :goto_fb

    :sswitch_f3
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fa

    goto :goto_9a

    :cond_fa
    const/4 v2, 0x0

    :goto_fb
    packed-switch v2, :pswitch_data_376

    goto/16 :goto_305

    .line 130
    :pswitch_100
    const-string v0, "86"

    return-object v0

    .line 131
    :pswitch_103
    const-string v0, "83"

    return-object v0

    .line 133
    :pswitch_106
    const-string v0, "84"

    return-object v0

    .line 145
    :pswitch_109
    const-string v0, "140"

    return-object v0

    .line 149
    :pswitch_10c
    const-string v0, "1211"

    return-object v0

    .line 150
    :pswitch_10f
    const-string v0, "85"

    return-object v0

    .line 156
    :pswitch_112
    const-string v0, "87"

    return-object v0

    .line 158
    :pswitch_115
    const-string v0, "89"

    return-object v0

    .line 162
    :pswitch_118
    const-string v0, "1210"

    return-object v0

    .line 163
    :pswitch_11b
    const-string v0, "88"

    return-object v0

    .line 252
    :cond_11e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_38e

    :goto_12b
    const/16 v16, -0x1

    goto :goto_148

    :sswitch_12e
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_148

    goto :goto_12b

    :sswitch_135
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13c

    goto :goto_12b

    :cond_13c
    const/16 v16, 0x1

    goto :goto_148

    :sswitch_13f
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_146

    goto :goto_12b

    :cond_146
    const/16 v16, 0x0

    :cond_148
    :goto_148
    packed-switch v16, :pswitch_data_39c

    .line 262
    :pswitch_14b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_156

    goto/16 :goto_305

    .line 264
    :cond_156
    const-string v0, "1002111"

    return-object v0

    .line 265
    :pswitch_159
    const-string v0, "1501"

    return-object v0

    .line 267
    :pswitch_15c
    const-string v0, "1502"

    return-object v0

    .line 269
    :pswitch_15f
    const-string v0, "1503"

    return-object v0

    .line 270
    :cond_162
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_3a6

    :goto_16f
    const/4 v4, -0x1

    goto :goto_1b8

    :sswitch_171
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_178

    goto :goto_16f

    :cond_178
    const/4 v4, 0x7

    goto :goto_1b8

    :sswitch_17a
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_181

    goto :goto_16f

    :cond_181
    const/4 v4, 0x6

    goto :goto_1b8

    :sswitch_183
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18a

    goto :goto_16f

    :cond_18a
    const/4 v4, 0x5

    goto :goto_1b8

    :sswitch_18c
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_193

    goto :goto_16f

    :cond_193
    const/4 v4, 0x4

    goto :goto_1b8

    :sswitch_195
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19c

    goto :goto_16f

    :cond_19c
    const/4 v4, 0x3

    goto :goto_1b8

    :sswitch_19e
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a5

    goto :goto_16f

    :cond_1a5
    const/4 v4, 0x2

    goto :goto_1b8

    :sswitch_1a7
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae

    goto :goto_16f

    :cond_1ae
    const/4 v4, 0x1

    goto :goto_1b8

    :sswitch_1b0
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b7

    goto :goto_16f

    :cond_1b7
    const/4 v4, 0x0

    :goto_1b8
    packed-switch v4, :pswitch_data_3c8

    goto/16 :goto_305

    .line 272
    :pswitch_1bd
    const-string v0, "72"

    return-object v0

    .line 274
    :pswitch_1c0
    const-string v0, "73"

    return-object v0

    .line 286
    :pswitch_1c3
    const-string v0, "1201"

    return-object v0

    .line 287
    :pswitch_1c6
    const-string v0, "76"

    return-object v0

    .line 289
    :pswitch_1c9
    const-string v0, "77"

    return-object v0

    .line 293
    :pswitch_1cc
    const-string v0, "79"

    return-object v0

    .line 295
    :pswitch_1cf
    const-string v0, "1200"

    return-object v0

    .line 296
    :pswitch_1d2
    const-string v0, "78"

    return-object v0

    .line 370
    :cond_1d5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_3dc

    :goto_1e2
    const/4 v2, -0x1

    goto :goto_235

    :sswitch_1e4
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1eb

    goto :goto_1e2

    :cond_1eb
    const/16 v2, 0x8

    goto :goto_235

    :sswitch_1ee
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f5

    goto :goto_1e2

    :cond_1f5
    const/4 v2, 0x7

    goto :goto_235

    :sswitch_1f7
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1fe

    goto :goto_1e2

    :cond_1fe
    const/4 v2, 0x6

    goto :goto_235

    :sswitch_200
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_207

    goto :goto_1e2

    :cond_207
    const/4 v2, 0x5

    goto :goto_235

    :sswitch_209
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_210

    goto :goto_1e2

    :cond_210
    const/4 v2, 0x4

    goto :goto_235

    :sswitch_212
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_219

    goto :goto_1e2

    :cond_219
    const/4 v2, 0x3

    goto :goto_235

    :sswitch_21b
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_222

    goto :goto_1e2

    :cond_222
    const/4 v2, 0x2

    goto :goto_235

    :sswitch_224
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22b

    goto :goto_1e2

    :cond_22b
    const/4 v2, 0x1

    goto :goto_235

    :sswitch_22d
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_234

    goto :goto_1e2

    :cond_234
    const/4 v2, 0x0

    :goto_235
    packed-switch v2, :pswitch_data_402

    goto/16 :goto_305

    .line 384
    :pswitch_23a
    const-string v0, "129"

    return-object v0

    .line 385
    :pswitch_23d
    const-string v0, "123"

    return-object v0

    .line 387
    :pswitch_240
    const-string v0, "124"

    return-object v0

    .line 401
    :pswitch_243
    const-string v0, "1231"

    return-object v0

    .line 402
    :pswitch_246
    const-string v0, "125"

    return-object v0

    .line 404
    :pswitch_249
    const-string v0, "126"

    return-object v0

    .line 408
    :pswitch_24c
    const-string v0, "128"

    return-object v0

    .line 412
    :pswitch_24f
    const-string v0, "1230"

    return-object v0

    .line 413
    :pswitch_252
    const-string v0, "127"

    return-object v0

    .line 414
    :cond_255
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_418

    :goto_262
    const/4 v12, -0x1

    goto :goto_28e

    :sswitch_264
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28e

    goto :goto_262

    :sswitch_26b
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_272

    goto :goto_262

    :cond_272
    const/4 v12, 0x3

    goto :goto_28e

    :sswitch_274
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27b

    goto :goto_262

    :cond_27b
    const/4 v12, 0x2

    goto :goto_28e

    :sswitch_27d
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_284

    goto :goto_262

    :cond_284
    const/4 v12, 0x1

    goto :goto_28e

    :sswitch_286
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28d

    goto :goto_262

    :cond_28d
    const/4 v12, 0x0

    :cond_28e
    :goto_28e
    packed-switch v12, :pswitch_data_42e

    goto/16 :goto_305

    .line 424
    :pswitch_293
    const-string v0, "97"

    return-object v0

    .line 425
    :pswitch_296
    const-string v0, "93"

    return-object v0

    .line 427
    :pswitch_299
    const-string v0, "94"

    return-object v0

    .line 429
    :pswitch_29c
    const-string v0, "95"

    return-object v0

    .line 431
    :pswitch_29f
    const-string v0, "96"

    return-object v0

    .line 432
    :cond_2a2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_43c

    :goto_2af
    const/4 v2, -0x1

    goto :goto_302

    :sswitch_2b1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b8

    goto :goto_2af

    :cond_2b8
    const/16 v2, 0x8

    goto :goto_302

    :sswitch_2bb
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c2

    goto :goto_2af

    :cond_2c2
    const/4 v2, 0x7

    goto :goto_302

    :sswitch_2c4
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    goto :goto_2af

    :cond_2cb
    const/4 v2, 0x6

    goto :goto_302

    :sswitch_2cd
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d4

    goto :goto_2af

    :cond_2d4
    const/4 v2, 0x5

    goto :goto_302

    :sswitch_2d6
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2dd

    goto :goto_2af

    :cond_2dd
    const/4 v2, 0x4

    goto :goto_302

    :sswitch_2df
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e6

    goto :goto_2af

    :cond_2e6
    const/4 v2, 0x3

    goto :goto_302

    :sswitch_2e8
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2ef

    goto :goto_2af

    :cond_2ef
    const/4 v2, 0x2

    goto :goto_302

    :sswitch_2f1
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f8

    goto :goto_2af

    :cond_2f8
    const/4 v2, 0x1

    goto :goto_302

    :sswitch_2fa
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_301

    goto :goto_2af

    :cond_301
    const/4 v2, 0x0

    :goto_302
    packed-switch v2, :pswitch_data_462

    .line 522
    :goto_305
    const-string v0, ""

    return-object v0

    .line 523
    :pswitch_308
    const-string v0, "110"

    return-object v0

    .line 524
    :pswitch_30b
    const-string v0, "67"

    return-object v0

    .line 526
    :pswitch_30e
    const-string v0, "68"

    return-object v0

    .line 540
    :pswitch_311
    const-string v0, "1221"

    return-object v0

    .line 541
    :pswitch_314
    const-string v0, "75"

    return-object v0

    .line 545
    :pswitch_317
    const-string v0, "130"

    return-object v0

    .line 549
    :pswitch_31a
    const-string v0, "132"

    return-object v0

    .line 551
    :pswitch_31d
    const-string v0, "1220"

    return-object v0

    .line 552
    :pswitch_320
    const-string v0, "131"

    return-object v0

    nop

    :pswitch_data_324
    .packed-switch 0x9
        :pswitch_8d
        :pswitch_4c
        :pswitch_14b
    .end packed-switch

    :sswitch_data_32e
    .sparse-switch
        0xce6 -> :sswitch_74
        0xd68 -> :sswitch_6b
        0x181fa -> :sswitch_62
        0x18f37 -> :sswitch_5b
    .end sparse-switch

    :pswitch_data_340
    .packed-switch 0x0
        :pswitch_8a
        :pswitch_87
        :pswitch_84
        :pswitch_81
    .end packed-switch

    :sswitch_data_34c
    .sparse-switch
        0xc42 -> :sswitch_f3
        0xce0 -> :sswitch_ea
        0xce6 -> :sswitch_e1
        0xd0f -> :sswitch_d8
        0xd68 -> :sswitch_cf
        0xdf7 -> :sswitch_c6
        0xed6 -> :sswitch_bb
        0x181fa -> :sswitch_b2
        0x18f37 -> :sswitch_a8
        0x1bc99 -> :sswitch_9d
    .end sparse-switch

    :pswitch_data_376
    .packed-switch 0x0
        :pswitch_11b
        :pswitch_118
        :pswitch_115
        :pswitch_112
        :pswitch_10f
        :pswitch_10c
        :pswitch_109
        :pswitch_106
        :pswitch_103
        :pswitch_100
    .end packed-switch

    :sswitch_data_38e
    .sparse-switch
        0xce6 -> :sswitch_13f
        0xd68 -> :sswitch_135
        0x18f37 -> :sswitch_12e
    .end sparse-switch

    :pswitch_data_39c
    .packed-switch 0x0
        :pswitch_15f
        :pswitch_15c
        :pswitch_159
    .end packed-switch

    :sswitch_data_3a6
    .sparse-switch
        0xc42 -> :sswitch_1b0
        0xce0 -> :sswitch_1a7
        0xce6 -> :sswitch_19e
        0xd0f -> :sswitch_195
        0xd68 -> :sswitch_18c
        0xdf7 -> :sswitch_183
        0x181fa -> :sswitch_17a
        0x18f37 -> :sswitch_171
    .end sparse-switch

    :pswitch_data_3c8
    .packed-switch 0x0
        :pswitch_1d2
        :pswitch_1cf
        :pswitch_1cc
        :pswitch_1c9
        :pswitch_1c6
        :pswitch_1c3
        :pswitch_1c0
        :pswitch_1bd
    .end packed-switch

    :sswitch_data_3dc
    .sparse-switch
        0xc42 -> :sswitch_22d
        0xce0 -> :sswitch_224
        0xce6 -> :sswitch_21b
        0xd0f -> :sswitch_212
        0xd68 -> :sswitch_209
        0xdf7 -> :sswitch_200
        0x181fa -> :sswitch_1f7
        0x18f37 -> :sswitch_1ee
        0x1bc99 -> :sswitch_1e4
    .end sparse-switch

    :pswitch_data_402
    .packed-switch 0x0
        :pswitch_252
        :pswitch_24f
        :pswitch_24c
        :pswitch_249
        :pswitch_246
        :pswitch_243
        :pswitch_240
        :pswitch_23d
        :pswitch_23a
    .end packed-switch

    :sswitch_data_418
    .sparse-switch
        0xce6 -> :sswitch_286
        0xd68 -> :sswitch_27d
        0x181fa -> :sswitch_274
        0x18f37 -> :sswitch_26b
        0x1bc99 -> :sswitch_264
    .end sparse-switch

    :pswitch_data_42e
    .packed-switch 0x0
        :pswitch_29f
        :pswitch_29c
        :pswitch_299
        :pswitch_296
        :pswitch_293
    .end packed-switch

    :sswitch_data_43c
    .sparse-switch
        0xc42 -> :sswitch_2fa
        0xce0 -> :sswitch_2f1
        0xce6 -> :sswitch_2e8
        0xd0f -> :sswitch_2df
        0xd68 -> :sswitch_2d6
        0xdf7 -> :sswitch_2cd
        0x181fa -> :sswitch_2c4
        0x18f37 -> :sswitch_2bb
        0x1bc99 -> :sswitch_2b1
    .end sparse-switch

    :pswitch_data_462
    .packed-switch 0x0
        :pswitch_320
        :pswitch_31d
        :pswitch_31a
        :pswitch_317
        :pswitch_314
        :pswitch_311
        :pswitch_30e
        :pswitch_30b
        :pswitch_308
    .end packed-switch
.end method
