###### Class com.alibaba.fastjson.JSONValidator (com.alibaba.fastjson.JSONValidator)
.class public abstract Lcom/alibaba/fastjson/JSONValidator;
.super Ljava/lang/Object;
.source "JSONValidator.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;,
        Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;,
        Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;,
        Lcom/alibaba/fastjson/JSONValidator$UTF8Validator;,
        Lcom/alibaba/fastjson/JSONValidator$Type;
    }
.end annotation


# instance fields
.field protected ch:C

.field protected count:I

.field protected eof:Z

.field protected pos:I

.field protected supportMultiValue:Z

.field protected type:Lcom/alibaba/fastjson/JSONValidator$Type;

.field private validateResult:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/alibaba/fastjson/JSONValidator;->pos:I

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/alibaba/fastjson/JSONValidator;->count:I

    .line 20
    iput-boolean v0, p0, Lcom/alibaba/fastjson/JSONValidator;->supportMultiValue:Z

    return-void
.end method

.method private any()Z
    .registers 14

    .line 96
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    const/16 v1, 0x75

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x22

    if-eq v0, v4, :cond_1c5

    const/16 v5, 0x65

    const/16 v6, 0x2d

    const/16 v7, 0x2b

    if-eq v0, v7, :cond_161

    if-eq v0, v6, :cond_161

    const/16 v8, 0x5b

    const/16 v9, 0x2c

    const/16 v10, 0x5d

    if-eq v0, v8, :cond_12f

    const/16 v8, 0x66

    const/16 v11, 0x6c

    const/16 v12, 0x7d

    if-eq v0, v8, :cond_ef

    const/16 v8, 0x6e

    if-eq v0, v8, :cond_bb

    const/16 v8, 0x74

    if-eq v0, v8, :cond_85

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_34

    packed-switch v0, :pswitch_data_1fc

    return v3

    .line 98
    :cond_34
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 100
    :goto_37
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONValidator;->isWhiteSpace(C)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 101
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    goto :goto_37

    .line 104
    :cond_43
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-ne v0, v12, :cond_4f

    .line 105
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 106
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Object:Lcom/alibaba/fastjson/JSONValidator$Type;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    return v2

    .line 111
    :cond_4f
    :goto_4f
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-ne v0, v4, :cond_84

    .line 112
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->fieldName()V

    .line 117
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->skipWhiteSpace()V

    .line 118
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_84

    .line 119
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 123
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->skipWhiteSpace()V

    .line 125
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONValidator;->any()Z

    move-result v0

    if-nez v0, :cond_6c

    return v3

    .line 130
    :cond_6c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->skipWhiteSpace()V

    .line 131
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-ne v0, v9, :cond_7a

    .line 132
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 133
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->skipWhiteSpace()V

    goto :goto_4f

    :cond_7a
    if-ne v0, v12, :cond_84

    .line 135
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 136
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Object:Lcom/alibaba/fastjson/JSONValidator$Type;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    return v2

    :cond_84
    return v3

    .line 253
    :cond_85
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 255
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    const/16 v4, 0x72

    if-eq v0, v4, :cond_8f

    return v3

    .line 258
    :cond_8f
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 260
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-eq v0, v1, :cond_97

    return v3

    .line 263
    :cond_97
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 265
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-eq v0, v5, :cond_9f

    return v3

    .line 268
    :cond_9f
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 270
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONValidator;->isWhiteSpace(C)Z

    move-result v0

    if-nez v0, :cond_b6

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-eq v0, v9, :cond_b6

    if-eq v0, v10, :cond_b6

    if-eq v0, v12, :cond_b6

    if-nez v0, :cond_b5

    goto :goto_b6

    :cond_b5
    return v3

    .line 271
    :cond_b6
    :goto_b6
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Value:Lcom/alibaba/fastjson/JSONValidator$Type;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    return v2

    .line 304
    :cond_bb
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 306
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-eq v0, v1, :cond_c3

    return v3

    .line 309
    :cond_c3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 311
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-eq v0, v11, :cond_cb

    return v3

    .line 314
    :cond_cb
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 316
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-eq v0, v11, :cond_d3

    return v3

    .line 319
    :cond_d3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 321
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONValidator;->isWhiteSpace(C)Z

    move-result v0

    if-nez v0, :cond_ea

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-eq v0, v9, :cond_ea

    if-eq v0, v10, :cond_ea

    if-eq v0, v12, :cond_ea

    if-nez v0, :cond_e9

    goto :goto_ea

    :cond_e9
    return v3

    .line 322
    :cond_ea
    :goto_ea
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Value:Lcom/alibaba/fastjson/JSONValidator$Type;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    return v2

    .line 276
    :cond_ef
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 278
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    const/16 v1, 0x61

    if-eq v0, v1, :cond_f9

    return v3

    .line 281
    :cond_f9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 283
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-eq v0, v11, :cond_101

    return v3

    .line 286
    :cond_101
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 288
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    const/16 v1, 0x73

    if-eq v0, v1, :cond_10b

    return v3

    .line 291
    :cond_10b
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 293
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-eq v0, v5, :cond_113

    return v3

    .line 296
    :cond_113
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 298
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONValidator;->isWhiteSpace(C)Z

    move-result v0

    if-nez v0, :cond_12a

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-eq v0, v9, :cond_12a

    if-eq v0, v10, :cond_12a

    if-eq v0, v12, :cond_12a

    if-nez v0, :cond_129

    goto :goto_12a

    :cond_129
    return v3

    .line 299
    :cond_12a
    :goto_12a
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Value:Lcom/alibaba/fastjson/JSONValidator$Type;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    return v2

    .line 143
    :cond_12f
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 144
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->skipWhiteSpace()V

    .line 146
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-ne v0, v10, :cond_141

    .line 147
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 148
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Array:Lcom/alibaba/fastjson/JSONValidator$Type;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    return v2

    .line 153
    :cond_141
    :goto_141
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONValidator;->any()Z

    move-result v0

    if-nez v0, :cond_148

    return v3

    .line 157
    :cond_148
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->skipWhiteSpace()V

    .line 158
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-ne v0, v9, :cond_156

    .line 159
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 160
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->skipWhiteSpace()V

    goto :goto_141

    :cond_156
    if-ne v0, v10, :cond_160

    .line 162
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 163
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Array:Lcom/alibaba/fastjson/JSONValidator$Type;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    return v2

    :cond_160
    return v3

    :cond_161
    :pswitch_161
    const/16 v1, 0x39

    const/16 v4, 0x30

    if-eq v0, v6, :cond_169

    if-ne v0, v7, :cond_176

    .line 183
    :cond_169
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 184
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->skipWhiteSpace()V

    .line 185
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-lt v0, v4, :cond_1c4

    if-le v0, v1, :cond_176

    goto :goto_1c4

    .line 191
    :cond_176
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 192
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-lt v0, v4, :cond_17f

    if-le v0, v1, :cond_176

    :cond_17f
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_198

    .line 195
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 197
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-lt v0, v4, :cond_197

    if-le v0, v1, :cond_18d

    goto :goto_197

    .line 200
    :cond_18d
    :goto_18d
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-lt v0, v4, :cond_198

    if-gt v0, v1, :cond_198

    .line 201
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    goto :goto_18d

    :cond_197
    :goto_197
    return v3

    .line 205
    :cond_198
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-eq v0, v5, :cond_1a0

    const/16 v5, 0x45

    if-ne v0, v5, :cond_1bf

    .line 206
    :cond_1a0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 207
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-eq v0, v6, :cond_1a9

    if-ne v0, v7, :cond_1ac

    .line 208
    :cond_1a9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 211
    :cond_1ac
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-lt v0, v4, :cond_1c4

    if-gt v0, v1, :cond_1c4

    .line 212
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 218
    :goto_1b5
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-lt v0, v4, :cond_1bf

    if-gt v0, v1, :cond_1bf

    .line 219
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    goto :goto_1b5

    .line 223
    :cond_1bf
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Value:Lcom/alibaba/fastjson/JSONValidator$Type;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    return v2

    :cond_1c4
    :goto_1c4
    return v3

    .line 226
    :cond_1c5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 228
    :goto_1c8
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONValidator;->eof:Z

    if-eqz v0, :cond_1cd

    return v3

    .line 232
    :cond_1cd
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    const/16 v5, 0x5c

    if-ne v0, v5, :cond_1ee

    .line 233
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 234
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-ne v0, v1, :cond_1ea

    .line 235
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 237
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 238
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 239
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 240
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    goto :goto_1c8

    .line 242
    :cond_1ea
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    goto :goto_1c8

    :cond_1ee
    if-ne v0, v4, :cond_1f8

    .line 245
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 246
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Value:Lcom/alibaba/fastjson/JSONValidator$Type;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    return v2

    .line 249
    :cond_1f8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    goto :goto_1c8

    :pswitch_data_1fc
    .packed-switch 0x30
        :pswitch_161
        :pswitch_161
        :pswitch_161
        :pswitch_161
        :pswitch_161
        :pswitch_161
        :pswitch_161
        :pswitch_161
        :pswitch_161
        :pswitch_161
    .end packed-switch
.end method

.method public static from(Ljava/io/Reader;)Lcom/alibaba/fastjson/JSONValidator;
    .registers 2

    .line 35
    new-instance v0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method public static from(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONValidator;
    .registers 2

    .line 31
    new-instance v0, Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromUtf8(Ljava/io/InputStream;)Lcom/alibaba/fastjson/JSONValidator;
    .registers 2

    .line 27
    new-instance v0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static fromUtf8([B)Lcom/alibaba/fastjson/JSONValidator;
    .registers 2

    .line 23
    new-instance v0, Lcom/alibaba/fastjson/JSONValidator$UTF8Validator;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONValidator$UTF8Validator;-><init>([B)V

    return-object v0
.end method

.method static final isWhiteSpace(C)Z
    .registers 2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1b

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1b

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1b

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x8

    if-ne p0, v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected fieldName()V
    .registers 3

    .line 334
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 336
    :goto_3
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_26

    .line 337
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 339
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    const/16 v1, 0x75

    if-ne v0, v1, :cond_22

    .line 340
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 342
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 343
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 344
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 345
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    goto :goto_3

    .line 347
    :cond_22
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    goto :goto_3

    :cond_26
    const/16 v1, 0x22

    if-ne v0, v1, :cond_2e

    .line 351
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    return-void

    .line 355
    :cond_2e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    goto :goto_3
.end method

.method public getType()Lcom/alibaba/fastjson/JSONValidator$Type;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    if-nez v0, :cond_7

    .line 49
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->validate()Z

    .line 52
    :cond_7
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    return-object v0
.end method

.method public isSupportMultiValue()Z
    .registers 2

    .line 39
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONValidator;->supportMultiValue:Z

    return v0
.end method

.method abstract next()V
.end method

.method public setSupportMultiValue(Z)Lcom/alibaba/fastjson/JSONValidator;
    .registers 2

    .line 43
    iput-boolean p1, p0, Lcom/alibaba/fastjson/JSONValidator;->supportMultiValue:Z

    return-object p0
.end method

.method skipWhiteSpace()V
    .registers 2

    .line 391
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONValidator;->isWhiteSpace(C)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 392
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    goto :goto_0

    :cond_c
    return-void
.end method

.method protected string()Z
    .registers 3

    .line 362
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 363
    :goto_3
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONValidator;->eof:Z

    if-nez v0, :cond_37

    .line 364
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_2a

    .line 365
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 367
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    const/16 v1, 0x75

    if-ne v0, v1, :cond_26

    .line 368
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 370
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 371
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 372
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 373
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    goto :goto_3

    .line 375
    :cond_26
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    goto :goto_3

    :cond_2a
    const/16 v1, 0x22

    if-ne v0, v1, :cond_33

    .line 379
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    const/4 v0, 0x1

    return v0

    .line 383
    :cond_33
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    goto :goto_3

    :cond_37
    const/4 v0, 0x0

    return v0
.end method

.method public validate()Z
    .registers 4

    .line 58
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->validateResult:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 59
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 63
    :cond_9
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONValidator;->any()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 64
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->validateResult:Ljava/lang/Boolean;

    return v1

    .line 67
    :cond_17
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->skipWhiteSpace()V

    .line 69
    iget v0, p0, Lcom/alibaba/fastjson/JSONValidator;->count:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson/JSONValidator;->count:I

    .line 70
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONValidator;->eof:Z

    if-eqz v0, :cond_2b

    .line 71
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->validateResult:Ljava/lang/Boolean;

    return v2

    .line 75
    :cond_2b
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONValidator;->supportMultiValue:Z

    if-eqz v0, :cond_3d

    .line 76
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->skipWhiteSpace()V

    .line 77
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONValidator;->eof:Z

    if-eqz v0, :cond_9

    .line 87
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->validateResult:Ljava/lang/Boolean;

    return v2

    .line 82
    :cond_3d
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->validateResult:Ljava/lang/Boolean;

    return v1
.end method

###### Class com.alibaba.fastjson.JSONValidator.ReaderValidator (com.alibaba.fastjson.JSONValidator$ReaderValidator)
.class Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;
.super Lcom/alibaba/fastjson/JSONValidator;
.source "JSONValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReaderValidator"
.end annotation


# static fields
.field private static final bufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field


# instance fields
.field private buf:[C

.field private end:I

.field final r:Ljava/io/Reader;

.field private readCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 555
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->bufLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>(Ljava/io/Reader;)V
    .registers 3

    .line 563
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONValidator;-><init>()V

    const/4 v0, -0x1

    .line 560
    iput v0, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->end:I

    const/4 v0, 0x0

    .line 561
    iput v0, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->readCount:I

    .line 564
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->r:Ljava/io/Reader;

    .line 565
    sget-object p1, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->buf:[C

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    .line 567
    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_22

    :cond_1c
    const/16 p1, 0x2000

    .line 569
    new-array p1, p1, [C

    iput-object p1, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->buf:[C

    .line 572
    :goto_22
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->next()V

    .line 573
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->skipWhiteSpace()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 613
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->bufLocal:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->buf:[C

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 614
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->r:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method next()V
    .registers 7

    .line 577
    const-string v0, "read error"

    iget v1, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->pos:I

    iget v2, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->end:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_15

    .line 578
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->pos:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->pos:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->ch:C

    return-void

    .line 580
    :cond_15
    iget-boolean v1, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->eof:Z

    if-nez v1, :cond_5b

    .line 583
    :try_start_19
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->r:Ljava/io/Reader;

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->buf:[C

    array-length v4, v2

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .line 584
    iget v2, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->readCount:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->readCount:I
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_28} :catch_55

    if-lez v1, :cond_36

    .line 590
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->buf:[C

    aget-char v0, v0, v5

    iput-char v0, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->ch:C

    .line 591
    iput v5, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->pos:I

    sub-int/2addr v1, v3

    .line 592
    iput v1, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->end:I

    return-void

    :cond_36
    const/4 v2, -0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_45

    .line 595
    iput v5, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->pos:I

    .line 596
    iput v5, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->end:I

    .line 597
    iput-object v4, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->buf:[C

    .line 598
    iput-char v5, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->ch:C

    .line 599
    iput-boolean v3, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->eof:Z

    return-void

    .line 601
    :cond_45
    iput v5, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->pos:I

    .line 602
    iput v5, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->end:I

    .line 603
    iput-object v4, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->buf:[C

    .line 604
    iput-char v5, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->ch:C

    .line 605
    iput-boolean v3, p0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;->eof:Z

    .line 606
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 586
    :catch_55
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5b
    return-void
.end method

###### Class com.alibaba.fastjson.JSONValidator.Type (com.alibaba.fastjson.JSONValidator$Type)
.class public final enum Lcom/alibaba/fastjson/JSONValidator$Type;
.super Ljava/lang/Enum;
.source "JSONValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/fastjson/JSONValidator$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/fastjson/JSONValidator$Type;

.field public static final enum Array:Lcom/alibaba/fastjson/JSONValidator$Type;

.field public static final enum Object:Lcom/alibaba/fastjson/JSONValidator$Type;

.field public static final enum Value:Lcom/alibaba/fastjson/JSONValidator$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 10
    new-instance v0, Lcom/alibaba/fastjson/JSONValidator$Type;

    const-string v1, "Object"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/JSONValidator$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Object:Lcom/alibaba/fastjson/JSONValidator$Type;

    new-instance v1, Lcom/alibaba/fastjson/JSONValidator$Type;

    const-string v3, "Array"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alibaba/fastjson/JSONValidator$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alibaba/fastjson/JSONValidator$Type;->Array:Lcom/alibaba/fastjson/JSONValidator$Type;

    new-instance v3, Lcom/alibaba/fastjson/JSONValidator$Type;

    const-string v5, "Value"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alibaba/fastjson/JSONValidator$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alibaba/fastjson/JSONValidator$Type;->Value:Lcom/alibaba/fastjson/JSONValidator$Type;

    const/4 v5, 0x3

    .line 9
    new-array v5, v5, [Lcom/alibaba/fastjson/JSONValidator$Type;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/alibaba/fastjson/JSONValidator$Type;->$VALUES:[Lcom/alibaba/fastjson/JSONValidator$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONValidator$Type;
    .registers 2

    .line 9
    const-class v0, Lcom/alibaba/fastjson/JSONValidator$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson/JSONValidator$Type;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/fastjson/JSONValidator$Type;
    .registers 1

    .line 9
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->$VALUES:[Lcom/alibaba/fastjson/JSONValidator$Type;

    invoke-virtual {v0}, [Lcom/alibaba/fastjson/JSONValidator$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/fastjson/JSONValidator$Type;

    return-object v0
.end method

###### Class com.alibaba.fastjson.JSONValidator.UTF16Validator (com.alibaba.fastjson.JSONValidator$UTF16Validator)
.class Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;
.super Lcom/alibaba/fastjson/JSONValidator;
.source "JSONValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UTF16Validator"
.end annotation


# instance fields
.field private final str:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 493
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONValidator;-><init>()V

    .line 494
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;->str:Ljava/lang/String;

    .line 495
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;->next()V

    .line 496
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;->skipWhiteSpace()V

    return-void
.end method


# virtual methods
.method protected final fieldName()V
    .registers 5

    .line 512
    iget v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;->pos:I

    :cond_2
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;->str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x22

    const/16 v3, 0x5c

    if-ge v0, v1, :cond_28

    .line 513
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;->str:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_19

    goto :goto_28

    :cond_19
    if-ne v1, v2, :cond_2

    .line 518
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;->str:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;->ch:C

    .line 519
    iput v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;->pos:I

    return-void

    .line 524
    :cond_28
    :goto_28
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;->next()V

    .line 526
    :goto_2b
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;->ch:C

    if-ne v0, v3, :cond_4c

    .line 527
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;->next()V

    .line 529
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;->ch:C

    const/16 v1, 0x75

    if-ne v0, v1, :cond_48

    .line 530
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;->next()V

    .line 532
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;->next()V

    .line 533
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;->next()V

    .line 534
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;->next()V

    .line 535
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;->next()V

    goto :goto_2b

    .line 537
    :cond_48
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;->next()V

    goto :goto_2b

    .line 540
    :cond_4c
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;->ch:C

    if-ne v0, v2, :cond_54

    .line 541
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;->next()V

    return-void

    .line 544
    :cond_54
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;->eof:Z

    if-eqz v0, :cond_59

    return-void

    .line 547
    :cond_59
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;->next()V

    goto :goto_2b
.end method

.method next()V
    .registers 4

    .line 500
    iget v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;->pos:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;->pos:I

    .line 502
    iget v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;->pos:I

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;->str:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_16

    const/4 v0, 0x0

    .line 503
    iput-char v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;->ch:C

    .line 504
    iput-boolean v1, p0, Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;->eof:Z

    return-void

    .line 506
    :cond_16
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;->str:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;->ch:C

    return-void
.end method

###### Class com.alibaba.fastjson.JSONValidator.UTF8InputStreamValidator (com.alibaba.fastjson.JSONValidator$UTF8InputStreamValidator)
.class Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;
.super Lcom/alibaba/fastjson/JSONValidator;
.source "JSONValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UTF8InputStreamValidator"
.end annotation


# static fields
.field private static final bufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private buf:[B

.field private end:I

.field private final is:Ljava/io/InputStream;

.field private readCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 428
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->bufLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    .line 435
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONValidator;-><init>()V

    const/4 v0, -0x1

    .line 432
    iput v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->end:I

    const/4 v0, 0x0

    .line 433
    iput v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->readCount:I

    .line 436
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->is:Ljava/io/InputStream;

    .line 437
    sget-object p1, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->buf:[B

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    .line 439
    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_22

    :cond_1c
    const/16 p1, 0x2000

    .line 441
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->buf:[B

    .line 444
    :goto_22
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->next()V

    .line 445
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->skipWhiteSpace()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 485
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->bufLocal:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->buf:[B

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 486
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method next()V
    .registers 7

    .line 449
    const-string v0, "read error"

    iget v1, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->pos:I

    iget v2, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->end:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_16

    .line 450
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->buf:[B

    iget v1, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->pos:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->pos:I

    aget-byte v0, v0, v1

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->ch:C

    return-void

    .line 452
    :cond_16
    iget-boolean v1, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->eof:Z

    if-nez v1, :cond_5d

    .line 455
    :try_start_1a
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->is:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->buf:[B

    array-length v4, v2

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 456
    iget v2, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->readCount:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->readCount:I
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_29} :catch_57

    if-lez v1, :cond_38

    .line 462
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->buf:[B

    aget-byte v0, v0, v5

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->ch:C

    .line 463
    iput v5, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->pos:I

    sub-int/2addr v1, v3

    .line 464
    iput v1, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->end:I

    return-void

    :cond_38
    const/4 v2, -0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_47

    .line 467
    iput v5, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->pos:I

    .line 468
    iput v5, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->end:I

    .line 469
    iput-object v4, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->buf:[B

    .line 470
    iput-char v5, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->ch:C

    .line 471
    iput-boolean v3, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->eof:Z

    return-void

    .line 473
    :cond_47
    iput v5, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->pos:I

    .line 474
    iput v5, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->end:I

    .line 475
    iput-object v4, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->buf:[B

    .line 476
    iput-char v5, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->ch:C

    .line 477
    iput-boolean v3, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;->eof:Z

    .line 478
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 458
    :catch_57
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5d
    return-void
.end method

###### Class com.alibaba.fastjson.JSONValidator.UTF8Validator (com.alibaba.fastjson.JSONValidator$UTF8Validator)
.class Lcom/alibaba/fastjson/JSONValidator$UTF8Validator;
.super Lcom/alibaba/fastjson/JSONValidator;
.source "JSONValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UTF8Validator"
.end annotation


# instance fields
.field private final bytes:[B


# direct methods
.method public constructor <init>([B)V
    .registers 2

    .line 409
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONValidator;-><init>()V

    .line 410
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8Validator;->bytes:[B

    .line 411
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator$UTF8Validator;->next()V

    .line 412
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator$UTF8Validator;->skipWhiteSpace()V

    return-void
.end method


# virtual methods
.method next()V
    .registers 5

    .line 416
    iget v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8Validator;->pos:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8Validator;->pos:I

    .line 418
    iget v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8Validator;->pos:I

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8Validator;->bytes:[B

    array-length v3, v2

    if-lt v0, v3, :cond_13

    const/4 v0, 0x0

    .line 419
    iput-char v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8Validator;->ch:C

    .line 420
    iput-boolean v1, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8Validator;->eof:Z

    return-void

    .line 422
    :cond_13
    iget v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8Validator;->pos:I

    aget-byte v0, v2, v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8Validator;->ch:C

    return-void
.end method
