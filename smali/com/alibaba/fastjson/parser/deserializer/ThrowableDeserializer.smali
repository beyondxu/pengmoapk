###### Class com.alibaba.fastjson.parser.deserializer.ThrowableDeserializer (com.alibaba.fastjson.parser.deserializer.ThrowableDeserializer)
.class public Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
.source "ThrowableDeserializer.java"


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-void
.end method

.method private createException(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 168
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    move-object v6, v5

    move-object v7, v6

    const/4 v4, 0x0

    :goto_b
    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ge v4, v1, :cond_38

    aget-object v10, v0, v4

    .line 169
    invoke-virtual {v10}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    .line 170
    array-length v12, v11

    if-nez v12, :cond_1a

    move-object v7, v10

    goto :goto_35

    .line 175
    :cond_1a
    array-length v12, v11

    if-ne v12, v9, :cond_25

    aget-object v12, v11, v3

    const-class v13, Ljava/lang/String;

    if-ne v12, v13, :cond_25

    move-object v6, v10

    goto :goto_35

    .line 180
    :cond_25
    array-length v12, v11

    if-ne v12, v8, :cond_35

    aget-object v8, v11, v3

    const-class v12, Ljava/lang/String;

    if-ne v8, v12, :cond_35

    aget-object v8, v11, v9

    const-class v9, Ljava/lang/Throwable;

    if-ne v8, v9, :cond_35

    move-object v5, v10

    :cond_35
    :goto_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_38
    if-eqz v5, :cond_47

    .line 187
    new-array v0, v8, [Ljava/lang/Object;

    aput-object p1, v0, v3

    aput-object p2, v0, v9

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    return-object p1

    :cond_47
    if-eqz v6, :cond_54

    .line 191
    new-array v0, v9, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    return-object p1

    :cond_54
    if-eqz v7, :cond_5d

    .line 195
    invoke-virtual {v7, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    return-object p1

    :cond_5d
    return-object v2
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16
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

    .line 26
    iget-object p3, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 28
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_f

    .line 29
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    return-object v1

    .line 33
    :cond_f
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getResolveStatus()I

    move-result v0

    const/4 v3, 0x2

    const-string/jumbo v4, "syntax error"

    if-ne v0, v3, :cond_1e

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    goto :goto_26

    .line 36
    :cond_1e
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v3, 0xc

    if-ne v0, v3, :cond_187

    :goto_26
    if-eqz p2, :cond_37

    .line 44
    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_37

    .line 45
    check-cast p2, Ljava/lang/Class;

    .line 46
    const-class v0, Ljava/lang/Throwable;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_38

    :cond_37
    move-object p2, v1

    :goto_38
    move-object v0, v1

    move-object v3, v0

    move-object v5, v3

    move-object v6, v5

    .line 58
    :cond_3c
    :goto_3c
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v7

    invoke-interface {p3, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xd

    const/16 v9, 0x10

    if-nez v7, :cond_64

    .line 61
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    if-ne v10, v8, :cond_55

    .line 62
    invoke-interface {p3, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_ed

    .line 65
    :cond_55
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    if-ne v10, v9, :cond_64

    .line 66
    sget-object v10, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {p3, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v10

    if-eqz v10, :cond_64

    goto :goto_3c

    :cond_64
    const/4 v10, 0x4

    .line 72
    invoke-interface {p3, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 74
    sget-object v11, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_92

    .line 75
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p2

    if-ne p2, v10, :cond_8c

    .line 76
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object p2

    .line 77
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v7

    const-class v10, Ljava/lang/Throwable;

    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->getFeatures()I

    move-result v11

    invoke-virtual {v7, p2, v10, v11}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object p2

    .line 81
    invoke-interface {p3, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_e4

    .line 79
    :cond_8c
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_92
    const-string v11, "message"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b6

    .line 83
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-ne v5, v2, :cond_a2

    move-object v5, v1

    goto :goto_ac

    .line 85
    :cond_a2
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-ne v5, v10, :cond_b0

    .line 86
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v5

    .line 90
    :goto_ac
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_e4

    .line 88
    :cond_b0
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_b6
    const-string v10, "cause"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c5

    .line 92
    invoke-virtual {p0, p1, v1, v10}, Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    goto :goto_e4

    .line 93
    :cond_c5
    const-string v10, "stackTrace"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d6

    .line 94
    const-class v6, [Ljava/lang/StackTraceElement;

    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/StackTraceElement;

    goto :goto_e4

    :cond_d6
    if-nez v0, :cond_dd

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 99
    :cond_dd
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v0, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :goto_e4
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-ne v7, v8, :cond_3c

    .line 103
    invoke-interface {p3, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    :goto_ed
    if-nez p2, :cond_f5

    .line 110
    new-instance p3, Ljava/lang/Exception;

    invoke-direct {p3, v5, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_108

    .line 112
    :cond_f5
    const-class p3, Ljava/lang/Throwable;

    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_16e

    .line 117
    :try_start_fd
    invoke-direct {p0, v5, v3, p2}, Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;->createException(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;

    move-result-object p3

    if-nez p3, :cond_108

    .line 119
    new-instance p3, Ljava/lang/Exception;

    invoke-direct {p3, v5, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_108} :catch_165

    :cond_108
    :goto_108
    if-eqz v6, :cond_10d

    .line 127
    invoke-virtual {p3, v6}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    :cond_10d
    if-eqz v0, :cond_164

    if-eqz p2, :cond_126

    .line 134
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;->clazz:Ljava/lang/Class;

    if-ne p2, v2, :cond_117

    move-object v1, p0

    goto :goto_126

    .line 137
    :cond_117
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object p2

    .line 138
    instance-of v2, p2, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v2, :cond_126

    .line 139
    move-object v1, p2

    check-cast v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    :cond_126
    :goto_126
    if-eqz v1, :cond_164

    .line 145
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_130
    :goto_130
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_164

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 146
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 147
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 149
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v2

    if-eqz v2, :cond_130

    .line 151
    iget-object v3, v2, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 152
    iget-object v4, v3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_160

    .line 153
    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    .line 155
    :cond_160
    invoke-virtual {v2, p3, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_130

    :cond_164
    return-object p3

    :catch_165
    move-exception p1

    .line 122
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    const-string p3, "create instance error"

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 113
    :cond_16e
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "type not match, not Throwable. "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_187
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFastMatchToken()I
    .registers 2

    const/16 v0, 0xc

    return v0
.end method
