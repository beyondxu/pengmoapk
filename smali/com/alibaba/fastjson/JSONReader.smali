###### Class com.alibaba.fastjson.JSONReader (com.alibaba.fastjson.JSONReader)
.class public Lcom/alibaba/fastjson/JSONReader;
.super Ljava/lang/Object;
.source "JSONReader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private context:Lcom/alibaba/fastjson/JSONStreamContext;

.field private transient lastContext:Lcom/alibaba/fastjson/JSONStreamContext;

.field private final parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/JSONLexer;)V
    .registers 3

    .line 41
    new-instance v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Lcom/alibaba/fastjson/parser/JSONLexer;)V

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONReader;-><init>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3

    const/4 v0, 0x0

    .line 30
    new-array v0, v0, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/JSONReader;-><init>(Ljava/io/Reader;[Lcom/alibaba/fastjson/parser/Feature;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/io/Reader;[Lcom/alibaba/fastjson/parser/Feature;)V
    .registers 6

    .line 34
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONReader;-><init>(Lcom/alibaba/fastjson/parser/JSONLexer;)V

    .line 35
    array-length p1, p2

    const/4 v0, 0x0

    :goto_a
    if-ge v0, p1, :cond_15

    aget-object v1, p2, v0

    const/4 v2, 0x1

    .line 36
    invoke-virtual {p0, v1, v2}, Lcom/alibaba/fastjson/JSONReader;->config(Lcom/alibaba/fastjson/parser/Feature;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_15
    return-void
.end method

.method private endStructure()V
    .registers 3

    .line 127
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->lastContext:Lcom/alibaba/fastjson/JSONStreamContext;

    .line 128
    iget-object v0, v0, Lcom/alibaba/fastjson/JSONStreamContext;->parent:Lcom/alibaba/fastjson/JSONStreamContext;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-nez v0, :cond_b

    goto :goto_21

    .line 134
    :cond_b
    iget v0, v0, Lcom/alibaba/fastjson/JSONStreamContext;->state:I

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_22

    const/4 v0, -0x1

    goto :goto_1b

    :pswitch_13
    const/16 v0, 0x3ed

    goto :goto_1b

    :pswitch_16
    const/16 v0, 0x3eb

    goto :goto_1b

    :pswitch_19
    const/16 v0, 0x3ea

    :goto_1b
    if-eq v0, v1, :cond_21

    .line 151
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    iput v0, v1, Lcom/alibaba/fastjson/JSONStreamContext;->state:I

    :cond_21
    :goto_21
    return-void

    :pswitch_data_22
    .packed-switch 0x3e9
        :pswitch_19
        :pswitch_16
        :pswitch_19
        :pswitch_13
    .end packed-switch
.end method

.method private readAfter()V
    .registers 5

    .line 321
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    iget v0, v0, Lcom/alibaba/fastjson/JSONStreamContext;->state:I

    const/16 v1, 0x3ea

    const/4 v2, -0x1

    packed-switch v0, :pswitch_data_2c

    .line 339
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "illegal state : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1e
    const/4 v1, -0x1

    goto :goto_25

    :pswitch_20
    const/16 v1, 0x3ed

    goto :goto_25

    :pswitch_23
    const/16 v1, 0x3eb

    :goto_25
    :pswitch_25
    if-eq v1, v2, :cond_2b

    .line 342
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    iput v1, v0, Lcom/alibaba/fastjson/JSONStreamContext;->state:I

    :cond_2b
    return-void

    :pswitch_data_2c
    .packed-switch 0x3e9
        :pswitch_25
        :pswitch_23
        :pswitch_25
        :pswitch_20
        :pswitch_1e
    .end packed-switch
.end method

.method private readBefore()V
    .registers 5

    .line 299
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    iget v0, v0, Lcom/alibaba/fastjson/JSONStreamContext;->state:I

    const/16 v1, 0x10

    packed-switch v0, :pswitch_data_34

    .line 316
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "illegal state : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 309
    :pswitch_1d
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    return-void

    .line 306
    :pswitch_23
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(II)V

    return-void

    .line 303
    :pswitch_2b
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    :pswitch_32
    return-void

    nop

    :pswitch_data_34
    .packed-switch 0x3e9
        :pswitch_32
        :pswitch_2b
        :pswitch_23
        :pswitch_32
        :pswitch_1d
    .end packed-switch
.end method

.method private startStructure()V
    .registers 4

    .line 109
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    iget v0, v0, Lcom/alibaba/fastjson/JSONStreamContext;->state:I

    packed-switch v0, :pswitch_data_30

    .line 122
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "illegal state : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    iget v2, v2, Lcom/alibaba/fastjson/JSONStreamContext;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :pswitch_1f
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    return-void

    .line 112
    :pswitch_27
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    :pswitch_2e
    return-void

    nop

    :pswitch_data_30
    .packed-switch 0x3e9
        :pswitch_2e
        :pswitch_27
        :pswitch_1f
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    return-void
.end method

.method public config(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .registers 4

    .line 57
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config(Lcom/alibaba/fastjson/parser/Feature;Z)V

    return-void
.end method

.method public endArray()V
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 105
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->endStructure()V

    return-void
.end method

.method public endObject()V
    .registers 3

    .line 88
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 89
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->endStructure()V

    return-void
.end method

.method public getLocal()Ljava/util/Locale;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getTimzeZone()Ljava/util/TimeZone;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .registers 5

    .line 156
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-eqz v0, :cond_35

    .line 160
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    .line 161
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    iget v1, v1, Lcom/alibaba/fastjson/JSONStreamContext;->state:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_3e

    .line 170
    :pswitch_15
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "illegal state : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_29
    const/16 v1, 0xf

    if-eq v0, v1, :cond_2e

    return v2

    :cond_2e
    return v3

    :pswitch_2f
    const/16 v1, 0xd

    if-eq v0, v1, :cond_34

    return v2

    :cond_34
    return v3

    .line 157
    :cond_35
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_3e
    .packed-switch 0x3e9
        :pswitch_2f
        :pswitch_15
        :pswitch_2f
        :pswitch_29
        :pswitch_29
    .end packed-switch
.end method

.method public peek()I
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    return v0
.end method

.method public readInteger()Ljava/lang/Integer;
    .registers 2

    .line 184
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-nez v0, :cond_b

    .line 185
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    goto :goto_17

    .line 187
    :cond_b
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readBefore()V

    .line 188
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    .line 189
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readAfter()V

    .line 192
    :goto_17
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public readLong()Ljava/lang/Long;
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-nez v0, :cond_b

    .line 198
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    goto :goto_17

    .line 200
    :cond_b
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readBefore()V

    .line 201
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    .line 202
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readAfter()V

    .line 205
    :goto_17
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public readObject()Ljava/lang/Object;
    .registers 3

    .line 266
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-nez v0, :cond_b

    .line 267
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 270
    :cond_b
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readBefore()V

    .line 272
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    iget v0, v0, Lcom/alibaba/fastjson/JSONStreamContext;->state:I

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_21

    const/16 v1, 0x3eb

    if-eq v0, v1, :cond_21

    .line 278
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    goto :goto_27

    .line 275
    :cond_21
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseKey()Ljava/lang/Object;

    move-result-object v0

    .line 282
    :goto_27
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readAfter()V

    return-object v0
.end method

.method public readObject(Lcom/alibaba/fastjson/TypeReference;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/TypeReference<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 228
    invoke-virtual {p1}, Lcom/alibaba/fastjson/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONReader;->readObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readObject(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-nez v0, :cond_b

    .line 244
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 247
    :cond_b
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readBefore()V

    .line 248
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 249
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    .line 250
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readAfter()V

    return-object p1
.end method

.method public readObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-nez v0, :cond_b

    .line 233
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 236
    :cond_b
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readBefore()V

    .line 237
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 238
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readAfter()V

    return-object p1
.end method

.method public readObject(Ljava/util/Map;)Ljava/lang/Object;
    .registers 3

    .line 288
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-nez v0, :cond_b

    .line 289
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 292
    :cond_b
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readBefore()V

    .line 293
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    .line 294
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readAfter()V

    return-object p1
.end method

.method public readObject(Ljava/lang/Object;)V
    .registers 3

    .line 255
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-nez v0, :cond_a

    .line 256
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Object;)V

    return-void

    .line 260
    :cond_a
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readBefore()V

    .line 261
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Object;)V

    .line 262
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readAfter()V

    return-void
.end method

.method public readString()Ljava/lang/String;
    .registers 4

    .line 210
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-nez v0, :cond_b

    .line 211
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    goto :goto_34

    .line 213
    :cond_b
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readBefore()V

    .line 214
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 215
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    iget v1, v1, Lcom/alibaba/fastjson/JSONStreamContext;->state:I

    const/16 v2, 0x3e9

    if-ne v1, v2, :cond_2b

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_2b

    .line 216
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    move-object v0, v1

    goto :goto_31

    .line 219
    :cond_2b
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    .line 221
    :goto_31
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->readAfter()V

    .line 224
    :goto_34
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setLocale(Ljava/util/Locale;)V
    .registers 3

    .line 53
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setTimzeZone(Ljava/util/TimeZone;)V
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public startArray()V
    .registers 4

    .line 93
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    const/16 v1, 0x3ec

    if-nez v0, :cond_f

    .line 94
    new-instance v0, Lcom/alibaba/fastjson/JSONStreamContext;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/alibaba/fastjson/JSONStreamContext;-><init>(Lcom/alibaba/fastjson/JSONStreamContext;I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    goto :goto_1b

    .line 96
    :cond_f
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->startStructure()V

    .line 98
    new-instance v0, Lcom/alibaba/fastjson/JSONStreamContext;

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    invoke-direct {v0, v2, v1}, Lcom/alibaba/fastjson/JSONStreamContext;-><init>(Lcom/alibaba/fastjson/JSONStreamContext;I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    .line 100
    :goto_1b
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    return-void
.end method

.method public startObject()V
    .registers 4

    .line 69
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    const/16 v1, 0x3e9

    if-nez v0, :cond_f

    .line 70
    new-instance v0, Lcom/alibaba/fastjson/JSONStreamContext;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/alibaba/fastjson/JSONStreamContext;-><init>(Lcom/alibaba/fastjson/JSONStreamContext;I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    goto :goto_32

    .line 72
    :cond_f
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONReader;->startStructure()V

    .line 73
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->lastContext:Lcom/alibaba/fastjson/JSONStreamContext;

    if-eqz v0, :cond_29

    iget-object v0, v0, Lcom/alibaba/fastjson/JSONStreamContext;->parent:Lcom/alibaba/fastjson/JSONStreamContext;

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-ne v0, v2, :cond_29

    .line 75
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->lastContext:Lcom/alibaba/fastjson/JSONStreamContext;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    .line 76
    iget v0, v0, Lcom/alibaba/fastjson/JSONStreamContext;->state:I

    if-eq v0, v1, :cond_32

    .line 77
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    iput v1, v0, Lcom/alibaba/fastjson/JSONStreamContext;->state:I

    goto :goto_32

    .line 80
    :cond_29
    new-instance v0, Lcom/alibaba/fastjson/JSONStreamContext;

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    invoke-direct {v0, v2, v1}, Lcom/alibaba/fastjson/JSONStreamContext;-><init>(Lcom/alibaba/fastjson/JSONStreamContext;I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    .line 84
    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONReader;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    const/16 v1, 0xc

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(II)V

    return-void
.end method
