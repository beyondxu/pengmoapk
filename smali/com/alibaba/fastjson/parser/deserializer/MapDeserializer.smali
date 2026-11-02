###### Class com.alibaba.fastjson.parser.deserializer.MapDeserializer (com.alibaba.fastjson.parser.deserializer.MapDeserializer)
.class public Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/ContextObjectDeserializer;
.source "MapDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/deserializer/ContextObjectDeserializer;-><init>()V

    return-void
.end method

.method public static parseMap(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 258
    iget-object p4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 260
    invoke-interface {p4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v1, 0xc

    const/16 v2, 0x10

    if-eq v0, v1, :cond_2c

    invoke-interface {p4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    if-ne v0, v2, :cond_13

    goto :goto_2c

    .line 261
    :cond_13
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "syntax error, expect {, actual "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p4}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 264
    :cond_2c
    :goto_2c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    .line 265
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    .line 266
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v3

    invoke-interface {p4, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 268
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v3

    .line 271
    :cond_47
    :goto_47
    :try_start_47
    invoke-interface {p4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_56

    .line 272
    invoke-interface {p4, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_52
    .catchall {:try_start_47 .. :try_end_52} :catchall_18c

    .line 357
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object p1

    .line 276
    :cond_56
    :try_start_56
    invoke-interface {p4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x4

    if-ne v4, v7, :cond_dc

    .line 277
    invoke-interface {p4}, Lcom/alibaba/fastjson/parser/JSONLexer;->isRef()Z

    move-result v4

    if-eqz v4, :cond_dc

    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 278
    invoke-interface {p4, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v4

    if-nez v4, :cond_dc

    .line 282
    invoke-interface {p4, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 283
    invoke-interface {p4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p1

    if-ne p1, v7, :cond_bd

    .line 284
    invoke-interface {p4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object p1

    .line 285
    const-string p2, ".."

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_86

    .line 286
    iget-object p1, v3, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 287
    iget-object v6, p1, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_a5

    .line 288
    :cond_86
    const-string p2, "$"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_99

    move-object p1, v3

    .line 290
    :goto_8f
    iget-object p2, p1, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz p2, :cond_96

    .line 291
    iget-object p1, p1, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    goto :goto_8f

    .line 294
    :cond_96
    iget-object v6, p1, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_a5

    .line 296
    :cond_99
    new-instance p2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {p2, v3, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/4 p1, 0x1

    .line 297
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .line 303
    :goto_a5
    invoke-interface {p4, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 304
    invoke-interface {p4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p1

    if-ne p1, v5, :cond_b5

    .line 307
    invoke-interface {p4, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_b1
    .catchall {:try_start_56 .. :try_end_b1} :catchall_18c

    .line 357
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v6

    .line 305
    :cond_b5
    :try_start_b5
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "illegal ref"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 300
    :cond_bd
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "illegal ref, "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p3

    invoke-static {p3}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 315
    :cond_dc
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_116

    .line 316
    invoke-interface {p4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    if-ne v4, v7, :cond_116

    sget-object v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    .line 317
    invoke-interface {p4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_116

    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 318
    invoke-interface {p4, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v4

    if-nez v4, :cond_116

    .line 319
    invoke-interface {p4, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 320
    invoke-interface {p4, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 321
    invoke-interface {p4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    if-ne v4, v5, :cond_10f

    .line 322
    invoke-interface {p4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_10b
    .catchall {:try_start_b5 .. :try_end_10b} :catchall_18c

    .line 357
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object p1

    .line 325
    :cond_10f
    :try_start_10f
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v4

    invoke-interface {p4, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 329
    :cond_116
    invoke-interface {p4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    if-ne v4, v7, :cond_144

    instance-of v4, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v4, :cond_144

    .line 332
    invoke-interface {p4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v4

    .line 333
    invoke-interface {p4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 334
    new-instance v5, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v7

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v8

    invoke-interface {v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->getFeatures()I

    move-result v8

    invoke-direct {v5, v4, v7, v8}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 335
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getDateFomartPattern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setDateFormat(Ljava/lang/String;)V

    .line 336
    invoke-interface {v0, v5, p2, v6}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_148

    .line 338
    :cond_144
    invoke-interface {v0, p0, p2, v6}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 341
    :goto_148
    invoke-interface {p4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    const/16 v6, 0x11

    if-ne v5, v6, :cond_170

    .line 345
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v5

    invoke-interface {p4, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 347
    invoke-interface {v1, p0, p3, v4}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 348
    invoke-virtual {p0, p1, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkMapResolve(Ljava/util/Map;Ljava/lang/Object;)V

    .line 350
    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    invoke-interface {p4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    if-ne v4, v2, :cond_47

    .line 353
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v4

    invoke-interface {p4, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_47

    .line 342
    :cond_170
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "syntax error, expect :, actual "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_18c
    .catchall {:try_start_10f .. :try_end_18c} :catchall_18c

    :catchall_18c
    move-exception p1

    .line 357
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 358
    throw p1
.end method

.method public static parseMap(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 79
    invoke-static {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->parseMap(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static parseMap(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/util/Map;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "I)",
            "Ljava/util/Map;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 86
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq v1, v2, :cond_9f

    const/4 p1, 0x4

    if-ne v1, p1, :cond_22

    .line 89
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object p2

    .line 90
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p4

    if-eqz p4, :cond_21

    const-string p4, "null"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_22

    :cond_21
    return-object v4

    .line 95
    :cond_22
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "syntax error, expect {, actual "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 96
    instance-of p4, p3, Ljava/lang/String;

    if-eqz p4, :cond_59

    .line 97
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", fieldName "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 98
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 100
    :cond_59
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 101
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eq v1, p1, :cond_99

    .line 104
    new-instance p1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 105
    invoke-virtual {p0, p1, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 107
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result p0

    const/4 p3, 0x1

    if-ne p0, p3, :cond_99

    .line 108
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 109
    instance-of p1, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz p1, :cond_99

    .line 110
    check-cast p0, Lcom/alibaba/fastjson/JSONObject;

    return-object p0

    .line 115
    :cond_99
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 118
    :cond_9f
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v1

    .line 121
    :goto_a3
    :try_start_a3
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 122
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v2

    .line 123
    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v5

    if-eqz v5, :cond_c1

    :goto_b2
    const/16 v5, 0x2c

    if-ne v2, v5, :cond_c1

    .line 125
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 126
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 127
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v2
    :try_end_c0
    .catchall {:try_start_a3 .. :try_end_c0} :catchall_259

    goto :goto_b2

    .line 132
    :cond_c1
    const-string v5, "expect \':\' at "

    const/16 v6, 0x3a

    const/16 v7, 0x22

    const/16 v8, 0x10

    if-ne v2, v7, :cond_f7

    .line 133
    :try_start_cb
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v2

    invoke-interface {v0, v2, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v2

    .line 134
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 135
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v9

    if-ne v9, v6, :cond_de

    goto/16 :goto_161

    .line 137
    :cond_de
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f7
    const/16 v9, 0x7d

    if-ne v2, v9, :cond_108

    .line 140
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 141
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->resetStringPosition()V

    .line 142
    invoke-interface {v0, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_104
    .catchall {:try_start_cb .. :try_end_104} :catchall_259

    .line 251
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object p1

    .line 144
    :cond_108
    const-string/jumbo v9, "syntax error"

    const/16 v10, 0x27

    if-ne v2, v10, :cond_148

    .line 145
    :try_start_10f
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v2

    if-eqz v2, :cond_142

    .line 149
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v2

    invoke-interface {v0, v2, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 151
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v9

    if-ne v9, v6, :cond_129

    goto :goto_161

    .line 153
    :cond_129
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 146
    :cond_142
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 156
    :cond_148
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v2

    if-eqz v2, :cond_253

    .line 160
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 162
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v9

    if-ne v9, v6, :cond_232

    .line 168
    :goto_161
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 169
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 170
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    .line 172
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->resetStringPosition()V

    .line 174
    sget-object v5, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    const/16 v6, 0xd

    if-ne v2, v5, :cond_1ef

    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 175
    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v5

    if-nez v5, :cond_1ef

    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 176
    invoke-static {p4, v5}, Lcom/alibaba/fastjson/parser/Feature;->isEnabled(ILcom/alibaba/fastjson/parser/Feature;)Z

    move-result v5

    if-nez v5, :cond_1ef

    .line 178
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v2

    invoke-interface {v0, v2, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v5

    .line 183
    const-string v7, "java.util.HashMap"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19a

    .line 184
    const-class v2, Ljava/util/HashMap;

    goto :goto_1b9

    .line 185
    :cond_19a
    const-string v7, "java.util.LinkedHashMap"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a5

    .line 186
    const-class v2, Ljava/util/LinkedHashMap;

    goto :goto_1b9

    .line 187
    :cond_1a5
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/ParserConfig;->isSafeMode()Z

    move-result v7

    if-eqz v7, :cond_1ae

    .line 188
    const-class v2, Ljava/util/HashMap;
    :try_end_1ad
    .catchall {:try_start_10f .. :try_end_1ad} :catchall_259

    goto :goto_1b9

    .line 191
    :cond_1ae
    :try_start_1ae
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->getFeatures()I

    move-result v7

    invoke-virtual {v5, v2, v4, v7}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v2
    :try_end_1b6
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1ae .. :try_end_1b6} :catch_1b7
    .catchall {:try_start_1ae .. :try_end_1b6} :catchall_259

    goto :goto_1b9

    .line 194
    :catch_1b7
    :try_start_1b7
    const-class v2, Ljava/util/HashMap;

    .line 198
    :goto_1b9
    const-class v7, Ljava/util/Map;

    invoke-virtual {v7, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1d1

    .line 199
    invoke-interface {v0, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 200
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    if-ne v2, v6, :cond_22a

    .line 201
    invoke-interface {v0, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_1cd
    .catchall {:try_start_1b7 .. :try_end_1cd} :catchall_259

    .line 251
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object p1

    .line 207
    :cond_1d1
    :try_start_1d1
    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object p1

    .line 209
    invoke-interface {v0, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const/4 p2, 0x2

    .line 211
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    if-eqz v1, :cond_1e5

    .line 213
    instance-of p2, p3, Ljava/lang/Integer;

    if-nez p2, :cond_1e5

    .line 214
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->popContext()V

    .line 217
    :cond_1e5
    invoke-interface {p1, p0, v2, p3}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_1eb
    .catchall {:try_start_1d1 .. :try_end_1eb} :catchall_259

    .line 251
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object p1

    .line 221
    :cond_1ef
    :try_start_1ef
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    if-eqz v3, :cond_1f7

    .line 224
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 227
    :cond_1f7
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    const/16 v7, 0x8

    if-ne v5, v7, :cond_204

    .line 229
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    move-object v5, v4

    goto :goto_208

    .line 231
    :cond_204
    invoke-virtual {p0, p2, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 234
    :goto_208
    invoke-interface {p1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkMapResolve(Ljava/util/Map;Ljava/lang/Object;)V

    .line 237
    invoke-virtual {p0, v1, v5, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 238
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 240
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/16 v5, 0x14

    if-eq v2, v5, :cond_22e

    const/16 v5, 0xf

    if-ne v2, v5, :cond_221

    goto :goto_22e

    :cond_221
    if-ne v2, v6, :cond_22a

    .line 246
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_226
    .catchall {:try_start_1ef .. :try_end_226} :catchall_259

    .line 251
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object p1

    :cond_22a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_a3

    :cond_22e
    :goto_22e
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object p1

    .line 164
    :cond_232
    :try_start_232
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", actual "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 157
    :cond_253
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_259
    .catchall {:try_start_232 .. :try_end_259} :catchall_259

    :catchall_259
    move-exception p1

    .line 251
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 252
    throw p1
.end method


# virtual methods
.method public createMap(Ljava/lang/reflect/Type;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 364
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->createMap(Ljava/lang/reflect/Type;I)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public createMap(Ljava/lang/reflect/Type;I)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 369
    const-class v0, Ljava/util/Properties;

    if-ne p1, v0, :cond_a

    .line 370
    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    return-object p1

    .line 373
    :cond_a
    const-class v0, Ljava/util/Hashtable;

    if-ne p1, v0, :cond_14

    .line 374
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    return-object p1

    .line 377
    :cond_14
    const-class v0, Ljava/util/IdentityHashMap;

    if-ne p1, v0, :cond_1e

    .line 378
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    return-object p1

    .line 381
    :cond_1e
    const-class v0, Ljava/util/SortedMap;

    if-eq p1, v0, :cond_d3

    const-class v0, Ljava/util/TreeMap;

    if-ne p1, v0, :cond_28

    goto/16 :goto_d3

    .line 385
    :cond_28
    const-class v0, Ljava/util/concurrent/ConcurrentMap;

    if-eq p1, v0, :cond_cd

    const-class v0, Ljava/util/concurrent/ConcurrentHashMap;

    if-ne p1, v0, :cond_32

    goto/16 :goto_cd

    .line 389
    :cond_32
    const-class v0, Ljava/util/Map;

    if-ne p1, v0, :cond_49

    .line 390
    sget-object p1, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    iget p1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_43

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p1

    :cond_43
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    .line 395
    :cond_49
    const-class v0, Ljava/util/HashMap;

    if-ne p1, v0, :cond_53

    .line 396
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    .line 399
    :cond_53
    const-class v0, Ljava/util/LinkedHashMap;

    if-ne p1, v0, :cond_5d

    .line 400
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p1

    .line 403
    :cond_5d
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_83

    .line 404
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 406
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 407
    const-class v1, Ljava/util/EnumMap;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 408
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    .line 409
    new-instance p2, Ljava/util/EnumMap;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Class;

    invoke-direct {p2, p1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    return-object p2

    .line 412
    :cond_7e
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->createMap(Ljava/lang/reflect/Type;I)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 415
    :cond_83
    move-object p2, p1

    check-cast p2, Ljava/lang/Class;

    .line 416
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    const-string/jumbo v1, "unsupport type "

    if-nez v0, :cond_bb

    .line 420
    const-string v0, "java.util.Collections$UnmodifiableMap"

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 421
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    .line 425
    :cond_a1
    :try_start_a1
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_a7} :catch_a8

    return-object p2

    :catch_a8
    move-exception p2

    .line 427
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 417
    :cond_bb
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 386
    :cond_cd
    :goto_cd
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object p1

    .line 382
    :cond_d3
    :goto_d3
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    return-object p1
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "I)TT;"
        }
    .end annotation

    .line 22
    const-class p4, Lcom/alibaba/fastjson/JSONObject;

    if-ne p2, p4, :cond_f

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getFieldTypeResolver()Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    move-result-object p4

    if-nez p4, :cond_f

    .line 23
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    return-object p1

    .line 26
    :cond_f
    iget-object p4, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 27
    invoke-interface {p4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_20

    const/16 p1, 0x10

    .line 28
    invoke-interface {p4, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const/4 p1, 0x0

    return-object p1

    .line 32
    :cond_20
    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_35

    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.util.Collections$UnmodifiableMap"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v0, 0x1

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    .line 35
    :goto_36
    invoke-interface {p4}, Lcom/alibaba/fastjson/parser/JSONLexer;->getFeatures()I

    move-result v1

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    iget v2, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_4a

    .line 36
    invoke-interface {p4}, Lcom/alibaba/fastjson/parser/JSONLexer;->getFeatures()I

    move-result p4

    invoke-virtual {p0, p2, p4}, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->createMap(Ljava/lang/reflect/Type;I)Ljava/util/Map;

    move-result-object p4

    goto :goto_4e

    .line 37
    :cond_4a
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->createMap(Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object p4

    :goto_4e
    move-object v5, p4

    .line 39
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object p4

    .line 42
    :try_start_53
    invoke-virtual {p1, p4, v5, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_6d

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p5

    .line 43
    :try_start_5b
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/util/Map;I)Ljava/lang/Object;

    move-result-object p1

    if-eqz v0, :cond_67

    .line 45
    check-cast p1, Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1
    :try_end_67
    .catchall {:try_start_5b .. :try_end_67} :catchall_6b

    .line 49
    :cond_67
    invoke-virtual {v2, p4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object p1

    :catchall_6b
    move-exception v0

    goto :goto_6f

    :catchall_6d
    move-exception v0

    move-object v2, p1

    :goto_6f
    move-object p1, v0

    invoke-virtual {v2, p4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 50
    throw p1
.end method

.method protected deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 54
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/util/Map;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/util/Map;I)Ljava/lang/Object;
    .registers 9

    .line 59
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_35

    .line 60
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 61
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 63
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.springframework.util.LinkedMultiValueMap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 64
    const-class p2, Ljava/util/List;

    goto :goto_27

    .line 66
    :cond_20
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p2

    const/4 v1, 0x1

    aget-object p2, p2, v1

    .line 68
    :goto_27
    const-class v1, Ljava/lang/String;

    if-ne v1, v0, :cond_30

    .line 69
    invoke-static {p1, p4, p2, p3, p5}, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->parseMap(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 71
    :cond_30
    invoke-static {p1, p4, v0, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->parseMap(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 74
    :cond_35
    invoke-virtual {p1, p4, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getFastMatchToken()I
    .registers 2

    const/16 v0, 0xc

    return v0
.end method
