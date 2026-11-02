###### Class com.alibaba.fastjson.serializer.AwtCodec (com.alibaba.fastjson.serializer.AwtCodec)
.class public Lcom/alibaba/fastjson/serializer/AwtCodec;
.super Ljava/lang/Object;
.source "AwtCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/AwtCodec;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Lcom/alibaba/fastjson/serializer/AwtCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/AwtCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/AwtCodec;->instance:Lcom/alibaba/fastjson/serializer/AwtCodec;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseRef(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 335
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v0

    const/4 v1, 0x4

    .line 336
    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 337
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    .line 338
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 339
    new-instance p2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v2

    invoke-direct {p2, v2, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 340
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->popContext()V

    const/4 p2, 0x1

    .line 341
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    const/16 p2, 0xd

    .line 342
    invoke-interface {v0, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 343
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static support(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 23
    const-class v0, Ljava/awt/Point;

    if-eq p0, v0, :cond_13

    const-class v0, Ljava/awt/Rectangle;

    if-eq p0, v0, :cond_13

    const-class v0, Ljava/awt/Font;

    if-eq p0, v0, :cond_13

    const-class v0, Ljava/awt/Color;

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 97
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 99
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x8

    const/16 v3, 0x10

    if-ne v1, v2, :cond_11

    .line 100
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const/4 p1, 0x0

    return-object p1

    .line 104
    :cond_11
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_29

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-ne v1, v3, :cond_20

    goto :goto_29

    .line 105
    :cond_20
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo p2, "syntax error"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_29
    :goto_29
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 110
    const-class v0, Ljava/awt/Point;

    if-ne p2, v0, :cond_35

    .line 111
    invoke-virtual {p0, p1, p3}, Lcom/alibaba/fastjson/serializer/AwtCodec;->parsePoint(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;)Ljava/awt/Point;

    move-result-object p2

    goto :goto_4f

    .line 112
    :cond_35
    const-class v0, Ljava/awt/Rectangle;

    if-ne p2, v0, :cond_3e

    .line 113
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/AwtCodec;->parseRectangle(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/awt/Rectangle;

    move-result-object p2

    goto :goto_4f

    .line 114
    :cond_3e
    const-class v0, Ljava/awt/Color;

    if-ne p2, v0, :cond_47

    .line 115
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/AwtCodec;->parseColor(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/awt/Color;

    move-result-object p2

    goto :goto_4f

    .line 116
    :cond_47
    const-class v0, Ljava/awt/Font;

    if-ne p2, v0, :cond_5a

    .line 117
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/AwtCodec;->parseFont(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/awt/Font;

    move-result-object p2

    .line 122
    :goto_4f
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v0

    .line 123
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 124
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object p2

    .line 119
    :cond_5a
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "not support awt class : "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFastMatchToken()I
    .registers 2

    const/16 v0, 0xc

    return v0
.end method

.method protected parseColor(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/awt/Color;
    .registers 11

    .line 183
    iget-object p1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 187
    :cond_6
    :goto_6
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_17

    .line 188
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 225
    new-instance p1, Ljava/awt/Color;

    invoke-direct {p1, v0, v1, v2, v3}, Ljava/awt/Color;-><init>(IIII)V

    return-object p1

    .line 193
    :cond_17
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    const-string/jumbo v5, "syntax error"

    const/4 v6, 0x4

    if-ne v4, v6, :cond_84

    .line 194
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    .line 195
    invoke-interface {p1, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 201
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    if-ne v8, v7, :cond_7e

    .line 202
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v5

    .line 203
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 208
    const-string v7, "r"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_40

    move v0, v5

    goto :goto_5d

    .line 210
    :cond_40
    const-string v7, "g"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4a

    move v1, v5

    goto :goto_5d

    .line 212
    :cond_4a
    const-string v7, "b"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_54

    move v2, v5

    goto :goto_5d

    .line 214
    :cond_54
    const-string v3, "alpha"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_69

    move v3, v5

    .line 220
    :goto_5d
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_6

    .line 221
    invoke-interface {p1, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_6

    .line 217
    :cond_69
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "syntax error, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 205
    :cond_7e
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 197
    :cond_84
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected parseFont(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/awt/Font;
    .registers 10

    .line 130
    iget-object p1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    const/4 v1, 0x0

    .line 135
    :cond_6
    :goto_6
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_17

    .line 136
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 179
    new-instance p1, Ljava/awt/Font;

    invoke-direct {p1, v2, v0, v1}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    return-object p1

    .line 141
    :cond_17
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/4 v4, 0x4

    const-string/jumbo v5, "syntax error"

    if-ne v3, v4, :cond_9e

    .line 142
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    .line 143
    invoke-interface {p1, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 149
    const-string v7, "name"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 150
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    if-ne v2, v4, :cond_3f

    .line 151
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_77

    .line 154
    :cond_3f
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 156
    :cond_45
    const-string/jumbo v7, "style"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_62

    .line 157
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    if-ne v0, v6, :cond_5c

    .line 158
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v0

    .line 159
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_77

    .line 161
    :cond_5c
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 163
    :cond_62
    const-string v1, "size"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 164
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-ne v1, v6, :cond_83

    .line 165
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v1

    .line 166
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 174
    :goto_77
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v5, 0x10

    if-ne v3, v5, :cond_6

    .line 175
    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_6

    .line 168
    :cond_83
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 171
    :cond_89
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "syntax error, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 145
    :cond_9e
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected parsePoint(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;)Ljava/awt/Point;
    .registers 10

    .line 279
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 283
    :cond_4
    :goto_4
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_15

    .line 284
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 331
    new-instance p1, Ljava/awt/Point;

    invoke-direct {p1, v1, v2}, Ljava/awt/Point;-><init>(II)V

    return-object p1

    .line 289
    :cond_15
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_a9

    .line 290
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v3

    .line 292
    sget-object v5, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 293
    const-string v3, "java.awt.Point"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->acceptType(Ljava/lang/String;)V

    goto :goto_4

    .line 297
    :cond_2e
    const-string v5, "$ref"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 298
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/AwtCodec;->parseRef(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/awt/Point;

    return-object p1

    :cond_3d
    const/4 v5, 0x2

    .line 301
    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 306
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    if-ne v6, v5, :cond_4f

    .line 309
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v5

    .line 310
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_5a

    :cond_4f
    const/4 v5, 0x3

    if-ne v6, v5, :cond_90

    .line 312
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->floatValue()F

    move-result v5

    float-to-int v5, v5

    .line 313
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 318
    :goto_5a
    const-string/jumbo v6, "x"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_65

    move v1, v5

    goto :goto_6f

    .line 320
    :cond_65
    const-string/jumbo v2, "y"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7b

    move v2, v5

    .line 326
    :goto_6f
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v5, 0x10

    if-ne v3, v5, :cond_4

    .line 327
    invoke-interface {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_4

    .line 323
    :cond_7b
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "syntax error, "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 315
    :cond_90
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "syntax error : "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 303
    :cond_a9
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo p2, "syntax error"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected parseRectangle(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/awt/Rectangle;
    .registers 11

    .line 229
    iget-object p1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 233
    :cond_6
    :goto_6
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_17

    .line 234
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 275
    new-instance p1, Ljava/awt/Rectangle;

    invoke-direct {p1, v0, v1, v2, v3}, Ljava/awt/Rectangle;-><init>(IIII)V

    return-object p1

    .line 239
    :cond_17
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    const-string/jumbo v5, "syntax error"

    const/4 v6, 0x4

    if-ne v4, v6, :cond_93

    .line 240
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    .line 241
    invoke-interface {p1, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 247
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    if-ne v8, v7, :cond_37

    .line 249
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v5

    .line 250
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_42

    :cond_37
    const/4 v7, 0x3

    if-ne v8, v7, :cond_8d

    .line 252
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->floatValue()F

    move-result v5

    float-to-int v5, v5

    .line 253
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 258
    :goto_42
    const-string/jumbo v7, "x"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4d

    move v0, v5

    goto :goto_6c

    .line 260
    :cond_4d
    const-string/jumbo v7, "y"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_58

    move v1, v5

    goto :goto_6c

    .line 262
    :cond_58
    const-string/jumbo v7, "width"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_63

    move v2, v5

    goto :goto_6c

    .line 264
    :cond_63
    const-string v3, "height"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_78

    move v3, v5

    .line 270
    :goto_6c
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_6

    .line 271
    invoke-interface {p1, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_6

    .line 267
    :cond_78
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "syntax error, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 255
    :cond_8d
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 243
    :cond_93
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    if-nez p2, :cond_8

    .line 35
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void

    .line 41
    :cond_8
    instance-of p3, p2, Ljava/awt/Point;

    const-string/jumbo p4, "y"

    const-string/jumbo p5, "x"

    const/16 v0, 0x2c

    const/16 v1, 0x7b

    if-eqz p3, :cond_2a

    .line 42
    check-cast p2, Ljava/awt/Point;

    .line 44
    const-class p3, Ljava/awt/Point;

    invoke-virtual {p0, p1, p3, v1}, Lcom/alibaba/fastjson/serializer/AwtCodec;->writeClassName(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/lang/Class;C)C

    move-result p3

    .line 46
    iget v1, p2, Ljava/awt/Point;->x:I

    invoke-virtual {p1, p3, p5, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    .line 47
    iget p2, p2, Ljava/awt/Point;->y:I

    invoke-virtual {p1, v0, p4, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    goto/16 :goto_af

    .line 48
    :cond_2a
    instance-of p3, p2, Ljava/awt/Font;

    if-eqz p3, :cond_53

    .line 49
    check-cast p2, Ljava/awt/Font;

    .line 51
    const-class p3, Ljava/awt/Font;

    invoke-virtual {p0, p1, p3, v1}, Lcom/alibaba/fastjson/serializer/AwtCodec;->writeClassName(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/lang/Class;C)C

    move-result p3

    .line 53
    const-string p4, "name"

    invoke-virtual {p2}, Ljava/awt/Font;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p3, p4, p5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string/jumbo p3, "style"

    invoke-virtual {p2}, Ljava/awt/Font;->getStyle()I

    move-result p4

    invoke-virtual {p1, v0, p3, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    .line 55
    const-string p3, "size"

    invoke-virtual {p2}, Ljava/awt/Font;->getSize()I

    move-result p2

    invoke-virtual {p1, v0, p3, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    goto :goto_af

    .line 56
    :cond_53
    instance-of p3, p2, Ljava/awt/Rectangle;

    if-eqz p3, :cond_79

    .line 57
    check-cast p2, Ljava/awt/Rectangle;

    .line 59
    const-class p3, Ljava/awt/Rectangle;

    invoke-virtual {p0, p1, p3, v1}, Lcom/alibaba/fastjson/serializer/AwtCodec;->writeClassName(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/lang/Class;C)C

    move-result p3

    .line 61
    iget v1, p2, Ljava/awt/Rectangle;->x:I

    invoke-virtual {p1, p3, p5, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    .line 62
    iget p3, p2, Ljava/awt/Rectangle;->y:I

    invoke-virtual {p1, v0, p4, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    .line 63
    const-string/jumbo p3, "width"

    iget p4, p2, Ljava/awt/Rectangle;->width:I

    invoke-virtual {p1, v0, p3, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    .line 64
    const-string p3, "height"

    iget p2, p2, Ljava/awt/Rectangle;->height:I

    invoke-virtual {p1, v0, p3, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    goto :goto_af

    .line 65
    :cond_79
    instance-of p3, p2, Ljava/awt/Color;

    if-eqz p3, :cond_b5

    .line 66
    check-cast p2, Ljava/awt/Color;

    .line 68
    const-class p3, Ljava/awt/Color;

    invoke-virtual {p0, p1, p3, v1}, Lcom/alibaba/fastjson/serializer/AwtCodec;->writeClassName(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/lang/Class;C)C

    move-result p3

    .line 70
    const-string p4, "r"

    invoke-virtual {p2}, Ljava/awt/Color;->getRed()I

    move-result p5

    invoke-virtual {p1, p3, p4, p5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    .line 71
    const-string p3, "g"

    invoke-virtual {p2}, Ljava/awt/Color;->getGreen()I

    move-result p4

    invoke-virtual {p1, v0, p3, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    .line 72
    const-string p3, "b"

    invoke-virtual {p2}, Ljava/awt/Color;->getBlue()I

    move-result p4

    invoke-virtual {p1, v0, p3, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    .line 73
    invoke-virtual {p2}, Ljava/awt/Color;->getAlpha()I

    move-result p3

    if-lez p3, :cond_af

    .line 74
    const-string p3, "alpha"

    invoke-virtual {p2}, Ljava/awt/Color;->getAlpha()I

    move-result p2

    invoke-virtual {p1, v0, p3, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    :cond_af
    :goto_af
    const/16 p2, 0x7d

    .line 80
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 77
    :cond_b5
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "not support awt class : "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected writeClassName(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/lang/Class;C)C
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/serializer/SerializeWriter;",
            "Ljava/lang/Class<",
            "*>;C)C"
        }
    .end annotation

    .line 85
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/16 p3, 0x7b

    .line 86
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 87
    sget-object p3, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    const/16 p1, 0x2c

    return p1

    :cond_1c
    return p3
.end method
