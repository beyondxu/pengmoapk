###### Class com.alibaba.fastjson.support.spring.FastJsonJsonView (com.alibaba.fastjson.support.spring.FastJsonJsonView)
.class public Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;
.super Lorg/springframework/web/servlet/view/AbstractView;
.source "FastJsonJsonView.java"


# static fields
.field private static final CALLBACK_PARAM_PATTERN:Ljava/util/regex/Pattern;

.field public static final DEFAULT_CONTENT_TYPE:Ljava/lang/String; = "application/json;charset=UTF-8"

.field public static final DEFAULT_JSONP_CONTENT_TYPE:Ljava/lang/String; = "application/javascript"


# instance fields
.field protected charset:Ljava/nio/charset/Charset;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected dateFormat:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private disableCaching:Z

.field private extractValueFromSingleKeyModel:Z

.field private fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

.field protected features:[Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected filters:[Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private jsonpParameterNames:[Ljava/lang/String;

.field private renderedAttributes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private updateContentLength:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    const-string v0, "[0-9A-Za-z_\\.]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->CALLBACK_PARAM_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 96
    invoke-direct {p0}, Lorg/springframework/web/servlet/view/AbstractView;-><init>()V

    .line 51
    const-string v0, "UTF-8"

    .line 52
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->charset:Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    .line 54
    new-array v1, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iput-object v1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->features:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 57
    new-array v1, v0, [Lcom/alibaba/fastjson/serializer/SerializeFilter;

    iput-object v1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->filters:[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    const/4 v1, 0x1

    .line 71
    iput-boolean v1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->disableCaching:Z

    .line 76
    iput-boolean v1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->updateContentLength:Z

    .line 81
    iput-boolean v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->extractValueFromSingleKeyModel:Z

    .line 86
    new-instance v1, Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-direct {v1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;-><init>()V

    iput-object v1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 91
    const-string v1, "jsonp"

    const-string v2, "callback"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->jsonpParameterNames:[Ljava/lang/String;

    .line 98
    const-string v1, "application/json;charset=UTF-8"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->setContentType(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->setExposePathVariables(Z)V

    return-void
.end method

.method private getJsonpParameterValue(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;
    .registers 9

    .line 269
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->jsonpParameterNames:[Ljava/lang/String;

    if-eqz v0, :cond_33

    .line 270
    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_33

    aget-object v3, v0, v2

    .line 271
    invoke-interface {p1, v3}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 273
    invoke-static {v3}, Lcom/alibaba/fastjson/util/IOUtils;->isValidJsonpQueryParam(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    return-object v3

    .line 277
    :cond_15
    iget-object v4, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 278
    iget-object v4, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->logger:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Ignoring invalid jsonp parameter value: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_33
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected filterModel(Ljava/util/Map;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 367
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 368
    iget-object v1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->renderedAttributes:Ljava/util/Set;

    invoke-static {v1}, Lorg/springframework/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->renderedAttributes:Ljava/util/Set;

    goto :goto_18

    .line 370
    :cond_14
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 372
    :goto_18
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_20
    :goto_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 373
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/springframework/validation/BindingResult;

    if-nez v3, :cond_20

    .line 374
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 375
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    .line 378
    :cond_4a
    iget-boolean p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->extractValueFromSingleKeyModel:Z

    if-eqz p1, :cond_6e

    .line 379
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_6e

    .line 380
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 381
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_6e
    return-object v0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public getDateFormat()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getDateFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFastJsonConfig()Lcom/alibaba/fastjson/support/config/FastJsonConfig;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    return-object v0
.end method

.method public getFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializerFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v0

    return-object v0
.end method

.method public getFilters()[Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializeFilters()[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    move-result-object v0

    return-object v0
.end method

.method public isExtractValueFromSingleKeyModel()Z
    .registers 2

    .line 241
    iget-boolean v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->extractValueFromSingleKeyModel:Z

    return v0
.end method

.method protected prepareResponse(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .registers 5

    .line 325
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->setResponseContentType(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 326
    iget-object p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpServletResponse;->setCharacterEncoding(Ljava/lang/String;)V

    .line 327
    iget-boolean p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->disableCaching:Z

    if-eqz p1, :cond_29

    .line 328
    const-string p1, "Pragma"

    const-string v0, "no-cache"

    invoke-interface {p2, p1, v0}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string p1, "Cache-Control"

    const-string v0, "no-cache, no-store, max-age=0"

    invoke-interface {p2, p1, v0}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string p1, "Expires"

    const-wide/16 v0, 0x1

    invoke-interface {p2, p1, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->addDateHeader(Ljava/lang/String;J)V

    :cond_29
    return-void
.end method

.method protected renderMergedOutputModel(Ljava/util/Map;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljavax/servlet/http/HttpServletRequest;",
            "Ljavax/servlet/http/HttpServletResponse;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 290
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->filterModel(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    .line 291
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->getJsonpParameterValue(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_14

    .line 293
    new-instance v0, Lcom/alibaba/fastjson/JSONPObject;

    invoke-direct {v0, p2}, Lcom/alibaba/fastjson/JSONPObject;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONPObject;->addParameter(Ljava/lang/Object;)V

    move-object v3, v0

    goto :goto_15

    :cond_14
    move-object v3, p1

    .line 298
    :goto_15
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 300
    iget-object p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 301
    invoke-virtual {p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    iget-object p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 303
    invoke-virtual {p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializeConfig()Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-result-object v4

    iget-object p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 304
    invoke-virtual {p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializeFilters()[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    move-result-object v5

    iget-object p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 305
    invoke-virtual {p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getDateFormat()Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    iget-object p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 307
    invoke-virtual {p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializerFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v8

    .line 300
    invoke-static/range {v1 .. v8}, Lcom/alibaba/fastjson/JSON;->writeJSONStringWithFastJsonConfig(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result p1

    .line 309
    iget-boolean p2, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->updateContentLength:Z

    if-eqz p2, :cond_45

    .line 311
    invoke-interface {p3, p1}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 315
    :cond_45
    invoke-interface {p3}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object p1

    .line 316
    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 317
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 318
    invoke-virtual {p1}, Ljavax/servlet/ServletOutputStream;->flush()V

    return-void
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->setCharset(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->setDateFormat(Ljava/lang/String;)V

    return-void
.end method

.method public setDisableCaching(Z)V
    .registers 2

    .line 341
    iput-boolean p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->disableCaching:Z

    return-void
.end method

.method public setExtractValueFromSingleKeyModel(Z)V
    .registers 2

    .line 250
    iput-boolean p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->extractValueFromSingleKeyModel:Z

    return-void
.end method

.method public setFastJsonConfig(Lcom/alibaba/fastjson/support/config/FastJsonConfig;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    return-void
.end method

.method public varargs setFeatures([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->setSerializerFeatures([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    return-void
.end method

.method public varargs setFilters([Lcom/alibaba/fastjson/serializer/SerializeFilter;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->setSerializeFilters([Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    return-void
.end method

.method public setJsonpParameterNames(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 263
    const-string v0, "jsonpParameterName cannot be empty"

    invoke-static {p1, v0}, Lorg/springframework/util/Assert;->notEmpty(Ljava/util/Collection;Ljava/lang/String;)V

    .line 264
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->jsonpParameterNames:[Ljava/lang/String;

    return-void
.end method

.method public setRenderedAttributes(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 232
    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->renderedAttributes:Ljava/util/Set;

    return-void
.end method

.method protected setResponseContentType(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .registers 4

    .line 390
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->getJsonpParameterValue(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 391
    const-string p1, "application/javascript"

    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    return-void

    .line 393
    :cond_c
    invoke-super {p0, p1, p2}, Lorg/springframework/web/servlet/view/AbstractView;->setResponseContentType(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    return-void
.end method

.method public varargs setSerializerFeature([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->setSerializerFeatures([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    return-void
.end method

.method public setUpdateContentLength(Z)V
    .registers 2

    .line 352
    iput-boolean p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonJsonView;->updateContentLength:Z

    return-void
.end method
