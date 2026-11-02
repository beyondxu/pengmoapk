###### Class com.alibaba.fastjson.support.spring.FastJsonHttpMessageConverter (com.alibaba.fastjson.support.spring.FastJsonHttpMessageConverter)
.class public Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;
.super Lorg/springframework/http/converter/AbstractHttpMessageConverter;
.source "FastJsonHttpMessageConverter.java"

# interfaces
.implements Lorg/springframework/http/converter/GenericHttpMessageConverter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/springframework/http/converter/AbstractHttpMessageConverter<",
        "Ljava/lang/Object;",
        ">;",
        "Lorg/springframework/http/converter/GenericHttpMessageConverter<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final APPLICATION_JAVASCRIPT:Lorg/springframework/http/MediaType;


# instance fields
.field protected dateFormat:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

.field protected features:[Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected filters:[Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private setLengthError:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 59
    new-instance v0, Lorg/springframework/http/MediaType;

    const-string v1, "application"

    const-string v2, "javascript"

    invoke-direct {v0, v1, v2}, Lorg/springframework/http/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->APPLICATION_JAVASCRIPT:Lorg/springframework/http/MediaType;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 98
    sget-object v0, Lorg/springframework/http/MediaType;->ALL:Lorg/springframework/http/MediaType;

    invoke-direct {p0, v0}, Lorg/springframework/http/converter/AbstractHttpMessageConverter;-><init>(Lorg/springframework/http/MediaType;)V

    const/4 v0, 0x0

    .line 61
    new-array v1, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iput-object v1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->features:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 64
    new-array v1, v0, [Lcom/alibaba/fastjson/serializer/SerializeFilter;

    iput-object v1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->filters:[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    .line 70
    iput-boolean v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->setLengthError:Z

    .line 75
    new-instance v0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-direct {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    return-void
.end method

.method private readType(Ljava/lang/reflect/Type;Lorg/springframework/http/HttpInputMessage;)Ljava/lang/Object;
    .registers 10

    .line 264
    :try_start_0
    invoke-interface {p2}, Lorg/springframework/http/HttpInputMessage;->getBody()Ljava/io/InputStream;

    move-result-object v0

    .line 265
    iget-object p2, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 266
    invoke-virtual {p2}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    iget-object p2, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 268
    invoke-virtual {p2}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getParserConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v3

    iget-object p2, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 269
    invoke-virtual {p2}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getParseProcess()Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;

    move-result-object v4

    sget v5, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    iget-object p2, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 271
    invoke-virtual {p2}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v6

    move-object v2, p1

    .line 265
    invoke-static/range {v0 .. v6}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p1
    :try_end_23
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_23} :catch_2e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_23} :catch_24

    return-object p1

    :catch_24
    move-exception v0

    move-object p1, v0

    .line 275
    new-instance p2, Lorg/springframework/http/converter/HttpMessageNotReadableException;

    const-string v0, "I/O error while reading input message"

    invoke-direct {p2, v0, p1}, Lorg/springframework/http/converter/HttpMessageNotReadableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2e
    move-exception v0

    move-object p1, v0

    .line 273
    new-instance p2, Lorg/springframework/http/converter/HttpMessageNotReadableException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JSON parse error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/springframework/http/converter/HttpMessageNotReadableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private strangeCodeForJackson(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    if-eqz p1, :cond_16

    .line 348
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 349
    const-string v1, "com.fasterxml.jackson.databind.node.ObjectNode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 350
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_16
    return-object p1
.end method


# virtual methods
.method public addSerializeFilter(Lcom/alibaba/fastjson/serializer/SerializeFilter;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 210
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializeFilters()[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v1, v0, 0x1

    .line 211
    new-array v1, v1, [Lcom/alibaba/fastjson/serializer/SerializeFilter;

    .line 212
    iget-object v2, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializeFilters()[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    aput-object p1, v1, v0

    .line 214
    iget-object p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->setSerializeFilters([Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    return-void
.end method

.method public canRead(Ljava/lang/reflect/Type;Ljava/lang/Class;Lorg/springframework/http/MediaType;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/springframework/http/MediaType;",
            ")Z"
        }
    .end annotation

    .line 224
    invoke-super {p0, p2, p3}, Lorg/springframework/http/converter/AbstractHttpMessageConverter;->canRead(Ljava/lang/Class;Lorg/springframework/http/MediaType;)Z

    move-result p1

    return p1
.end method

.method public canWrite(Ljava/lang/reflect/Type;Ljava/lang/Class;Lorg/springframework/http/MediaType;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/springframework/http/MediaType;",
            ")Z"
        }
    .end annotation

    .line 229
    invoke-super {p0, p2, p3}, Lorg/springframework/http/converter/AbstractHttpMessageConverter;->canWrite(Ljava/lang/Class;Lorg/springframework/http/MediaType;)Z

    move-result p1

    return p1
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public getDateFormat()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getDateFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFastJsonConfig()Lcom/alibaba/fastjson/support/config/FastJsonConfig;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    return-object v0
.end method

.method public getFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializerFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v0

    return-object v0
.end method

.method public getFilters()[Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializeFilters()[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    move-result-object v0

    return-object v0
.end method

.method protected getType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 357
    invoke-static {}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->access$000()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 358
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->access$100(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p1

    :cond_a
    return-object p1
.end method

.method public read(Ljava/lang/reflect/Type;Ljava/lang/Class;Lorg/springframework/http/HttpInputMessage;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/springframework/http/HttpInputMessage;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/springframework/http/converter/HttpMessageNotReadableException;
        }
    .end annotation

    .line 239
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->getType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->readType(Ljava/lang/reflect/Type;Lorg/springframework/http/HttpInputMessage;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected readInternal(Ljava/lang/Class;Lorg/springframework/http/HttpInputMessage;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/springframework/http/HttpInputMessage;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/springframework/http/converter/HttpMessageNotReadableException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 258
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->getType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->readType(Ljava/lang/reflect/Type;Lorg/springframework/http/HttpInputMessage;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->setCharset(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->setDateFormat(Ljava/lang/String;)V

    return-void
.end method

.method public setFastJsonConfig(Lcom/alibaba/fastjson/support/config/FastJsonConfig;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    return-void
.end method

.method public varargs setFeatures([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->setSerializerFeatures([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    return-void
.end method

.method public varargs setFilters([Lcom/alibaba/fastjson/serializer/SerializeFilter;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->setSerializeFilters([Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    return-void
.end method

.method protected supports(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public write(Ljava/lang/Object;Ljava/lang/reflect/Type;Lorg/springframework/http/MediaType;Lorg/springframework/http/HttpOutputMessage;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/springframework/http/converter/HttpMessageNotWritableException;
        }
    .end annotation

    .line 246
    invoke-super {p0, p1, p3, p4}, Lorg/springframework/http/converter/AbstractHttpMessageConverter;->write(Ljava/lang/Object;Lorg/springframework/http/MediaType;Lorg/springframework/http/HttpOutputMessage;)V

    return-void
.end method

.method protected writeInternal(Ljava/lang/Object;Lorg/springframework/http/HttpOutputMessage;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/springframework/http/converter/HttpMessageNotWritableException;
        }
    .end annotation

    const-string v1, "Could not write JSON: "

    .line 282
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 284
    :try_start_7
    invoke-interface {p2}, Lorg/springframework/http/HttpOutputMessage;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v0

    .line 287
    iget-object v3, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializeFilters()[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    move-result-object v3

    .line 288
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 293
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->strangeCodeForJackson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 295
    instance-of v3, p1, Lcom/alibaba/fastjson/support/spring/FastJsonContainer;

    if-eqz v3, :cond_33

    .line 296
    check-cast p1, Lcom/alibaba/fastjson/support/spring/FastJsonContainer;

    .line 297
    invoke-virtual {p1}, Lcom/alibaba/fastjson/support/spring/FastJsonContainer;->getFilters()Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;

    move-result-object v3

    .line 298
    invoke-virtual {v3}, Lcom/alibaba/fastjson/support/spring/PropertyPreFilters;->getFilters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 299
    invoke-virtual {p1}, Lcom/alibaba/fastjson/support/spring/FastJsonContainer;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 305
    :cond_33
    instance-of v3, p1, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;

    const/4 v10, 0x1

    if-eqz v3, :cond_46

    .line 306
    move-object v3, p1

    check-cast v3, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;->getJsonpFunction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/springframework/util/StringUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    goto :goto_4a

    .line 309
    :cond_46
    instance-of v3, p1, Lcom/alibaba/fastjson/JSONPObject;

    if-eqz v3, :cond_4c

    :goto_4a
    const/4 v11, 0x1

    goto :goto_4e

    :cond_4c
    const/4 v3, 0x0

    const/4 v11, 0x0

    .line 314
    :goto_4e
    iget-object v3, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 315
    invoke-virtual {v3}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    iget-object v5, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 317
    invoke-virtual {v5}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializeConfig()Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-result-object v5

    .line 319
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lcom/alibaba/fastjson/serializer/SerializeFilter;

    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, [Lcom/alibaba/fastjson/serializer/SerializeFilter;

    iget-object v4, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 320
    invoke-virtual {v4}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getDateFormat()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    iget-object v4, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 322
    invoke-virtual {v4}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializerFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v9

    move-object v4, p1

    .line 314
    invoke-static/range {v2 .. v9}, Lcom/alibaba/fastjson/JSON;->writeJSONStringWithFastJsonConfig(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result p1

    if-eqz v11, :cond_81

    .line 325
    sget-object v3, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->APPLICATION_JAVASCRIPT:Lorg/springframework/http/MediaType;

    invoke-virtual {v0, v3}, Lorg/springframework/http/HttpHeaders;->setContentType(Lorg/springframework/http/MediaType;)V

    .line 328
    :cond_81
    iget-object v3, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->isWriteContentLength()Z

    move-result v3

    if-eqz v3, :cond_94

    iget-boolean v3, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->setLengthError:Z
    :try_end_8b
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_7 .. :try_end_8b} :catch_a2
    .catchall {:try_start_7 .. :try_end_8b} :catchall_9f

    if-nez v3, :cond_94

    int-to-long v3, p1

    .line 330
    :try_start_8e
    invoke-virtual {v0, v3, v4}, Lorg/springframework/http/HttpHeaders;->setContentLength(J)V
    :try_end_91
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_8e .. :try_end_91} :catch_92
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_8e .. :try_end_91} :catch_a2
    .catchall {:try_start_8e .. :try_end_91} :catchall_9f

    goto :goto_94

    .line 333
    :catch_92
    :try_start_92
    iput-boolean v10, p0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;->setLengthError:Z

    .line 337
    :cond_94
    :goto_94
    invoke-interface {p2}, Lorg/springframework/http/HttpOutputMessage;->getBody()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_9b
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_92 .. :try_end_9b} :catch_a2
    .catchall {:try_start_92 .. :try_end_9b} :catchall_9f

    .line 342
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    return-void

    :catchall_9f
    move-exception v0

    move-object p1, v0

    goto :goto_ba

    :catch_a2
    move-exception v0

    move-object p1, v0

    .line 340
    :try_start_a4
    new-instance p2, Lorg/springframework/http/converter/HttpMessageNotWritableException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/springframework/http/converter/HttpMessageNotWritableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_ba
    .catchall {:try_start_a4 .. :try_end_ba} :catchall_9f

    .line 342
    :goto_ba
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 343
    throw p1
.end method

###### Class com.alibaba.fastjson.support.spring.FastJsonHttpMessageConverter.Spring4TypeResolvableHelper (com.alibaba.fastjson.support.spring.FastJsonHttpMessageConverter$Spring4TypeResolvableHelper)
.class Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;
.super Ljava/lang/Object;
.source "FastJsonHttpMessageConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Spring4TypeResolvableHelper"
.end annotation


# static fields
.field private static hasClazzResolvableType:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 370
    :try_start_0
    const-string v0, "org.springframework.core.ResolvableType"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    .line 371
    sput-boolean v0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->hasClazzResolvableType:Z
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    const/4 v0, 0x0

    .line 373
    sput-boolean v0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->hasClazzResolvableType:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 365
    invoke-static {}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->isSupport()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .registers 2

    .line 365
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->getType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method private static getType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    if-eqz p1, :cond_79

    .line 384
    invoke-static {p0}, Lorg/springframework/core/ResolvableType;->forType(Ljava/lang/reflect/Type;)Lorg/springframework/core/ResolvableType;

    move-result-object v0

    .line 385
    instance-of v1, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_1e

    .line 386
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-static {p1}, Lorg/springframework/core/ResolvableType;->forClass(Ljava/lang/Class;)Lorg/springframework/core/ResolvableType;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->resolveVariable(Ljava/lang/reflect/TypeVariable;Lorg/springframework/core/ResolvableType;)Lorg/springframework/core/ResolvableType;

    move-result-object p1

    .line 387
    sget-object v0, Lorg/springframework/core/ResolvableType;->NONE:Lorg/springframework/core/ResolvableType;

    if-eq p1, v0, :cond_79

    .line 388
    invoke-virtual {p1}, Lorg/springframework/core/ResolvableType;->resolve()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 390
    :cond_1e
    instance-of v1, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_79

    invoke-virtual {v0}, Lorg/springframework/core/ResolvableType;->hasUnresolvableGenerics()Z

    move-result v1

    if-eqz v1, :cond_79

    .line 391
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 392
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Class;

    .line 393
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 v2, 0x0

    .line 395
    :goto_36
    array-length v3, p0

    if-ge v2, v3, :cond_6d

    .line 396
    aget-object v3, p0, v2

    .line 397
    instance-of v4, v3, Ljava/lang/reflect/TypeVariable;

    if-eqz v4, :cond_60

    .line 398
    move-object v4, v3

    check-cast v4, Ljava/lang/reflect/TypeVariable;

    invoke-static {p1}, Lorg/springframework/core/ResolvableType;->forClass(Ljava/lang/Class;)Lorg/springframework/core/ResolvableType;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->resolveVariable(Ljava/lang/reflect/TypeVariable;Lorg/springframework/core/ResolvableType;)Lorg/springframework/core/ResolvableType;

    move-result-object v4

    .line 399
    sget-object v5, Lorg/springframework/core/ResolvableType;->NONE:Lorg/springframework/core/ResolvableType;

    if-eq v4, v5, :cond_55

    .line 400
    invoke-virtual {v4}, Lorg/springframework/core/ResolvableType;->resolve()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_6a

    .line 402
    :cond_55
    invoke-static {v3}, Lorg/springframework/core/ResolvableType;->forType(Ljava/lang/reflect/Type;)Lorg/springframework/core/ResolvableType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/springframework/core/ResolvableType;->resolve()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_6a

    .line 405
    :cond_60
    invoke-static {v3}, Lorg/springframework/core/ResolvableType;->forType(Ljava/lang/reflect/Type;)Lorg/springframework/core/ResolvableType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/springframework/core/ResolvableType;->resolve()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    :goto_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 409
    :cond_6d
    invoke-virtual {v0}, Lorg/springframework/core/ResolvableType;->getRawClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v1}, Lorg/springframework/core/ResolvableType;->forClassWithGenerics(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/springframework/core/ResolvableType;

    move-result-object p0

    invoke-virtual {p0}, Lorg/springframework/core/ResolvableType;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    :cond_79
    return-object p0
.end method

.method private static isSupport()Z
    .registers 1

    .line 378
    sget-boolean v0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->hasClazzResolvableType:Z

    return v0
.end method

.method private static resolveVariable(Ljava/lang/reflect/TypeVariable;Lorg/springframework/core/ResolvableType;)Lorg/springframework/core/ResolvableType;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Lorg/springframework/core/ResolvableType;",
            ")",
            "Lorg/springframework/core/ResolvableType;"
        }
    .end annotation

    .line 418
    invoke-virtual {p1}, Lorg/springframework/core/ResolvableType;->hasGenerics()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 419
    invoke-static {p0, p1}, Lorg/springframework/core/ResolvableType;->forType(Ljava/lang/reflect/Type;Lorg/springframework/core/ResolvableType;)Lorg/springframework/core/ResolvableType;

    move-result-object v0

    .line 420
    invoke-virtual {v0}, Lorg/springframework/core/ResolvableType;->resolve()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_11

    return-object v0

    .line 425
    :cond_11
    invoke-virtual {p1}, Lorg/springframework/core/ResolvableType;->getSuperType()Lorg/springframework/core/ResolvableType;

    move-result-object v0

    .line 426
    sget-object v1, Lorg/springframework/core/ResolvableType;->NONE:Lorg/springframework/core/ResolvableType;

    if-eq v0, v1, :cond_24

    .line 427
    invoke-static {p0, v0}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->resolveVariable(Ljava/lang/reflect/TypeVariable;Lorg/springframework/core/ResolvableType;)Lorg/springframework/core/ResolvableType;

    move-result-object v0

    .line 428
    invoke-virtual {v0}, Lorg/springframework/core/ResolvableType;->resolve()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_24

    return-object v0

    .line 432
    :cond_24
    invoke-virtual {p1}, Lorg/springframework/core/ResolvableType;->getInterfaces()[Lorg/springframework/core/ResolvableType;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2a
    if-ge v1, v0, :cond_3c

    aget-object v2, p1, v1

    .line 433
    invoke-static {p0, v2}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->resolveVariable(Ljava/lang/reflect/TypeVariable;Lorg/springframework/core/ResolvableType;)Lorg/springframework/core/ResolvableType;

    move-result-object v2

    .line 434
    invoke-virtual {v2}, Lorg/springframework/core/ResolvableType;->resolve()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_39

    return-object v2

    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 438
    :cond_3c
    sget-object p0, Lorg/springframework/core/ResolvableType;->NONE:Lorg/springframework/core/ResolvableType;

    return-object p0
.end method
