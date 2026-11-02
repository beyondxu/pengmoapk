###### Class com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer (com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer)
.class public Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
.super Ljava/lang/Object;
.source "JavaBeanDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# instance fields
.field private final alterNameFieldDeserializers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;",
            ">;"
        }
    .end annotation
.end field

.field private final autoTypeCheckHandler:Lcom/alibaba/fastjson/parser/ParserConfig$AutoTypeCheckHandler;

.field public final beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

.field protected final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private fieldDeserializerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

.field private transient hashArray:[J

.field private transient hashArrayMapping:[S

.field private transient smartMatchHashArray:[J

.field private transient smartMatchHashArrayMapping:[S

.field protected final sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;)V
    .registers 12

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget-object v0, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->clazz:Ljava/lang/Class;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    .line 54
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    .line 57
    iget-object v0, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    iget-object v0, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->autoTypeCheckHandler()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/alibaba/fastjson/parser/ParserConfig$AutoTypeCheckHandler;

    if-eq v0, v2, :cond_25

    .line 59
    :try_start_18
    iget-object v0, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->autoTypeCheckHandler()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/ParserConfig$AutoTypeCheckHandler;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_24} :catch_25

    goto :goto_26

    :catch_25
    :cond_25
    move-object v0, v1

    .line 64
    :goto_26
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->autoTypeCheckHandler:Lcom/alibaba/fastjson/parser/ParserConfig$AutoTypeCheckHandler;

    .line 67
    iget-object v0, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v0, v0

    new-array v0, v0, [Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 68
    iget-object v0, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v0, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_34
    if-ge v3, v0, :cond_70

    .line 69
    iget-object v4, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v4, v4, v3

    .line 70
    invoke-virtual {p1, p1, p2, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->createFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v5

    .line 72
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aput-object v5, v6, v3

    const/16 v6, 0x80

    if-le v0, v6, :cond_58

    .line 75
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializerMap:Ljava/util/Map;

    if-nez v6, :cond_51

    .line 76
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializerMap:Ljava/util/Map;

    .line 78
    :cond_51
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializerMap:Ljava/util/Map;

    iget-object v7, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_58
    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->alternateNames:[Ljava/lang/String;

    array-length v6, v4

    const/4 v7, 0x0

    :goto_5c
    if-ge v7, v6, :cond_6d

    aget-object v8, v4, v7

    if-nez v1, :cond_67

    .line 83
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 85
    :cond_67
    invoke-interface {v1, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_5c

    :cond_6d
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 88
    :cond_70
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->alterNameFieldDeserializers:Ljava/util/Map;

    .line 90
    iget-object p1, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length p1, p1

    new-array p1, p1, [Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 91
    iget-object p1, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length p1, p1

    :goto_7c
    if-ge v2, p1, :cond_8f

    .line 92
    iget-object v0, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v0, v0, v2

    .line 93
    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aput-object v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7c

    :cond_8f
    return-void
.end method

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

    .line 43
    invoke-direct {p0, p1, p2, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 47
    iget-object v2, p1, Lcom/alibaba/fastjson/parser/ParserConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    iget-boolean v3, p1, Lcom/alibaba/fastjson/parser/ParserConfig;->fieldBased:Z

    iget-boolean v4, p1, Lcom/alibaba/fastjson/parser/ParserConfig;->compatibleWithJavaBean:Z

    .line 48
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->isJacksonCompatible()Z

    move-result v5

    move-object v0, p2

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;ZZZ)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object p2

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;)V

    return-void
.end method

.method private createFactoryInstance(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1370
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object p1, p1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected static getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .registers 9

    .line 1630
    iget-object v0, p1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 1634
    :cond_6
    iget-object p1, p1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {p1}, Lcom/alibaba/fastjson/annotation/JSONType;->seeAlso()[Ljava/lang/Class;

    move-result-object p1

    array-length v0, p1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_31

    aget-object v3, p1, v2

    .line 1635
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v3

    .line 1636
    instance-of v4, v3, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v4, :cond_2e

    .line 1637
    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 1639
    iget-object v4, v3, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    .line 1640
    iget-object v5, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    return-object v3

    .line 1644
    :cond_27
    invoke-static {p0, v4, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v3

    if-eqz v3, :cond_2e

    return-object v3

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_31
    return-object v1
.end method

.method static isSetFlag(I[I)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 185
    :cond_4
    div-int/lit8 v1, p0, 0x20

    .line 186
    array-length v2, p1

    if-ge v1, v2, :cond_14

    aget p1, p1, v1

    rem-int/lit8 p0, p0, 0x20

    const/4 v1, 0x1

    shl-int p0, v1, p0

    and-int/2addr p0, p1

    if-eqz p0, :cond_14

    return v1

    :cond_14
    return v0
.end method

.method protected static parseArray(Ljava/util/Collection;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    .registers 11

    .line 1661
    iget-object p4, p2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    check-cast p4, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    .line 1662
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v0

    const/16 v1, 0x8

    const/16 v2, 0x10

    if-ne v0, v1, :cond_15

    .line 1664
    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 1665
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    return-void

    :cond_15
    const/16 v1, 0xe

    if-eq v0, v1, :cond_1c

    .line 1670
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->throwException(I)V

    .line 1672
    :cond_1c
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result v0

    const/16 v3, 0x5b

    if-ne v0, v3, :cond_2b

    .line 1674
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1675
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->setToken(I)V

    goto :goto_2e

    .line 1677
    :cond_2b
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 1680
    :goto_2e
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v0

    const/16 v4, 0xf

    if-ne v0, v4, :cond_3a

    .line 1681
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    return-void

    :cond_3a
    const/4 v0, 0x0

    .line 1687
    :goto_3b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, p2, p3, v5}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1688
    invoke-interface {p0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    .line 1690
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v5

    if-ne v5, v2, :cond_5f

    .line 1691
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result v5

    if-ne v5, v3, :cond_5b

    .line 1693
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1694
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->setToken(I)V

    goto :goto_3b

    .line 1696
    :cond_5b
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    goto :goto_3b

    .line 1703
    :cond_5f
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result p0

    if-eq p0, v4, :cond_68

    .line 1705
    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->throwException(I)V

    .line 1708
    :cond_68
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result p0

    const/16 p1, 0x2c

    if-ne p0, p1, :cond_77

    .line 1710
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1711
    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->setToken(I)V

    return-void

    .line 1713
    :cond_77
    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    return-void
.end method


# virtual methods
.method protected check(Lcom/alibaba/fastjson/parser/JSONLexer;I)V
    .registers 3

    .line 382
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p1

    if-ne p1, p2, :cond_7

    return-void

    .line 383
    :cond_7
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo p2, "syntax error"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 13

    .line 191
    const-string v0, "create instance error, class "

    instance-of v1, p2, Ljava/lang/Class;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_28

    .line 192
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 193
    check-cast p2, Ljava/lang/Class;

    .line 194
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 195
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 196
    new-array v1, v2, [Ljava/lang/Class;

    aput-object p2, v1, v3

    invoke-static {p1, v1, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 201
    :cond_28
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x0

    if-nez v1, :cond_36

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_36

    return-object v4

    .line 205
    :cond_36
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget v1, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    if-lez v1, :cond_43

    return-object v4

    .line 211
    :cond_43
    :try_start_43
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 212
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget v5, v5, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    if-nez v5, :cond_5f

    if-eqz v1, :cond_55

    .line 214
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto/16 :goto_eb

    .line 216
    :cond_55
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object p2, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p2, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto/16 :goto_eb

    .line 219
    :cond_5f
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v5
    :try_end_63
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_43 .. :try_end_63} :catch_154
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_63} :catch_13b

    .line 220
    const-string v6, "can\'t create non-static inner class instance."

    if-eqz v5, :cond_135

    :try_start_67
    iget-object v7, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v7, :cond_135

    .line 225
    instance-of v7, p2, Ljava/lang/Class;

    if-eqz v7, :cond_12f

    .line 226
    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const/16 v7, 0x24

    .line 231
    invoke-virtual {p2, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 232
    invoke-virtual {p2, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 234
    iget-object v7, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 235
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 238
    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d4

    .line 239
    iget-object v5, v5, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v5, :cond_d2

    .line 240
    iget-object v9, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v9, :cond_d2

    const-string v9, "java.util.ArrayList"

    .line 242
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_bf

    const-string v9, "java.util.List"

    .line 243
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_bf

    const-string v9, "java.util.Collection"

    .line 244
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_bf

    const-string v9, "java.util.Map"

    .line 245
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_bf

    const-string v9, "java.util.HashMap"

    .line 246
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d2

    .line 247
    :cond_bf
    iget-object v7, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 248
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d3

    .line 249
    iget-object v4, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_d3

    :cond_d2
    move-object v4, v7

    :cond_d3
    :goto_d3
    move-object v7, v4

    :cond_d4
    if-eqz v7, :cond_129

    .line 258
    instance-of p2, v7, Ljava/util/Collection;

    if-eqz p2, :cond_e3

    move-object p2, v7

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_129

    .line 262
    :cond_e3
    new-array p2, v2, [Ljava/lang/Object;

    aput-object v7, p2, v3

    invoke-virtual {v1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_eb
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_67 .. :try_end_eb} :catch_154
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_eb} :catch_13b

    :goto_eb
    if-eqz p1, :cond_128

    .line 270
    iget-object p1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    .line 271
    invoke-interface {p1, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result p1

    if-eqz p1, :cond_128

    .line 272
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object p1, p1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v1, p1

    :goto_fc
    if-ge v3, v1, :cond_128

    aget-object v2, p1, v3

    .line 273
    iget-object v4, v2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    if-ne v4, v5, :cond_125

    .line 275
    :try_start_106
    const-string v4, ""

    invoke-virtual {v2, p2, v4}, Lcom/alibaba/fastjson/util/FieldInfo;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_10b} :catch_10c

    goto :goto_125

    :catch_10c
    move-exception p1

    .line 277
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_125
    :goto_125
    add-int/lit8 v3, v3, 0x1

    goto :goto_fc

    :cond_128
    return-object p2

    .line 259
    :cond_129
    :try_start_129
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 228
    :cond_12f
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 221
    :cond_135
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_13b
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_129 .. :try_end_13b} :catch_154
    .catch Ljava/lang/Exception; {:try_start_129 .. :try_end_13b} :catch_13b

    :catch_13b
    move-exception p1

    .line 267
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_154
    move-exception p1

    .line 265
    throw p1
.end method

.method public createInstance(Ljava/util/Map;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1379
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_17c

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_17c

    .line 1380
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {p0, v3, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 1382
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_163

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1383
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1384
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 1386
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatch(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v5

    if-nez v5, :cond_3a

    goto :goto_1d

    .line 1391
    :cond_3a
    iget-object v6, v5, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1392
    iget-object v7, v5, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 1393
    iget-object v8, v6, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 1395
    iget-object v9, v6, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 1396
    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v10

    .line 1398
    iget-object v11, v6, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    if-eqz v11, :cond_7b

    .line 1399
    invoke-virtual {v9, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5c

    if-eqz v10, :cond_7b

    .line 1400
    invoke-interface {v10}, Lcom/alibaba/fastjson/annotation/JSONField;->deserializeUsing()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Ljava/lang/Void;

    if-eq v9, v10, :cond_7b

    .line 1403
    :cond_5c
    instance-of v6, v4, Ljava/lang/String;

    if-eqz v6, :cond_6e

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    .line 1404
    invoke-static {v6}, Lcom/alibaba/fastjson/JSONValidator;->from(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONValidator;

    move-result-object v7

    .line 1405
    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONValidator;->validate()Z

    move-result v7

    if-eqz v7, :cond_6e

    goto :goto_72

    .line 1409
    :cond_6e
    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1412
    :goto_72
    new-instance v4, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-direct {v4, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;)V

    .line 1413
    invoke-virtual {v5, v4, v0, v8, v3}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    goto :goto_1d

    :cond_7b
    if-eqz v7, :cond_128

    .line 1417
    iget-object v9, v6, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-nez v9, :cond_128

    .line 1418
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    .line 1419
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v9, v10, :cond_99

    .line 1420
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v4, v9, :cond_91

    .line 1421
    invoke-virtual {v7, v0, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto :goto_1d

    .line 1425
    :cond_91
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v4, v9, :cond_128

    .line 1426
    invoke-virtual {v7, v0, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto :goto_1d

    .line 1429
    :cond_99
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v9, v10, :cond_ac

    .line 1430
    instance-of v9, v4, Ljava/lang/Number;

    if-eqz v9, :cond_128

    .line 1431
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v7, v0, v4}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto/16 :goto_1d

    .line 1434
    :cond_ac
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v9, v10, :cond_bf

    .line 1435
    instance-of v9, v4, Ljava/lang/Number;

    if-eqz v9, :cond_128

    .line 1436
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-virtual {v7, v0, v4, v5}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto/16 :goto_1d

    .line 1439
    :cond_bf
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v11, 0xa

    if-ne v9, v10, :cond_ee

    .line 1440
    instance-of v9, v4, Ljava/lang/Number;

    if-eqz v9, :cond_d4

    .line 1441
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-virtual {v7, v0, v4}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto/16 :goto_1d

    .line 1443
    :cond_d4
    instance-of v9, v4, Ljava/lang/String;

    if-eqz v9, :cond_128

    .line 1444
    check-cast v4, Ljava/lang/String;

    .line 1446
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v11, :cond_e5

    .line 1447
    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->parseFloat(Ljava/lang/String;)F

    move-result v4

    goto :goto_e9

    .line 1449
    :cond_e5
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 1452
    :goto_e9
    invoke-virtual {v7, v0, v4}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto/16 :goto_1d

    .line 1455
    :cond_ee
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v9, v10, :cond_11b

    .line 1456
    instance-of v9, v4, Ljava/lang/Number;

    if-eqz v9, :cond_101

    .line 1457
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v7, v0, v4, v5}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto/16 :goto_1d

    .line 1459
    :cond_101
    instance-of v9, v4, Ljava/lang/String;

    if-eqz v9, :cond_128

    .line 1460
    check-cast v4, Ljava/lang/String;

    .line 1462
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v11, :cond_112

    .line 1463
    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    goto :goto_116

    .line 1465
    :cond_112
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 1468
    :goto_116
    invoke-virtual {v7, v0, v4, v5}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto/16 :goto_1d

    :cond_11b
    if-eqz v4, :cond_128

    .line 1471
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    if-ne v8, v9, :cond_128

    .line 1472
    invoke-virtual {v7, v0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1d

    .line 1477
    :cond_128
    iget-object v6, v6, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    if-eqz v6, :cond_135

    .line 1478
    const-class v7, Ljava/util/Date;

    if-ne v8, v7, :cond_135

    .line 1479
    invoke-static {v4, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    goto :goto_15e

    :cond_135
    if-eqz v6, :cond_14f

    .line 1480
    instance-of v7, v8, Ljava/lang/Class;

    if-eqz v7, :cond_14f

    move-object v7, v8

    check-cast v7, Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "java.time.LocalDateTime"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14f

    .line 1481
    invoke-static {v4, v6}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->castToLocalDateTime(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_15e

    .line 1483
    :cond_14f
    instance-of v6, v8, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_15a

    .line 1484
    check-cast v8, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v4, v8, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_15e

    .line 1486
    :cond_15a
    invoke-static {v4, v8, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v4

    .line 1490
    :goto_15e
    invoke-virtual {v5, v0, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1d

    .line 1493
    :cond_163
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object p1, p1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildMethod:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_17b

    .line 1496
    :try_start_169
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object p1, p1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_171
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_171} :catch_172

    return-object p1

    :catch_172
    move-exception p1

    .line 1498
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "build object error"

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_17b
    return-object v0

    .line 1508
    :cond_17c
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1509
    array-length v4, v0

    .line 1510
    new-array v5, v4, [Ljava/lang/Object;

    move-object v7, v3

    const/4 v6, 0x0

    :goto_185
    if-ge v6, v4, :cond_1f6

    .line 1513
    aget-object v8, v0, v6

    .line 1514
    iget-object v9, v8, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_1f1

    .line 1517
    iget-object v10, v8, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 1518
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_19c

    .line 1519
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_1e1

    .line 1520
    :cond_19c
    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_1a7

    const-wide/16 v9, 0x0

    .line 1521
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto :goto_1e1

    .line 1522
    :cond_1a7
    sget-object v11, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_1b0

    .line 1523
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    goto :goto_1e1

    .line 1524
    :cond_1b0
    sget-object v11, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_1b9

    .line 1525
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    goto :goto_1e1

    .line 1526
    :cond_1b9
    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_1c3

    const/4 v9, 0x0

    .line 1527
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    goto :goto_1e1

    .line 1528
    :cond_1c3
    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_1ce

    const-wide/16 v9, 0x0

    .line 1529
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto :goto_1e1

    .line 1530
    :cond_1ce
    sget-object v11, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_1d9

    const/16 v9, 0x30

    .line 1531
    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    goto :goto_1e1

    .line 1532
    :cond_1d9
    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_1e1

    .line 1533
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    :cond_1e1
    :goto_1e1
    if-nez v7, :cond_1e8

    .line 1536
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1538
    :cond_1e8
    iget-object v8, v8, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1540
    :cond_1f1
    aput-object v9, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_185

    :cond_1f6
    if-eqz v7, :cond_22f

    .line 1544
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_200
    :goto_200
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1545
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1546
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 1548
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatch(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v6

    if-eqz v6, :cond_200

    .line 1550
    iget-object v6, v6, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_200

    .line 1552
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput-object v0, v5, v6

    goto :goto_200

    .line 1558
    :cond_22f
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object p1, p1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    if-eqz p1, :cond_2ef

    .line 1560
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-boolean p1, p1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->kotlin:Z

    if-eqz p1, :cond_27d

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_23d
    if-ge p1, v4, :cond_27e

    .line 1562
    aget-object v6, v5, p1

    if-nez v6, :cond_25e

    .line 1564
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz v6, :cond_27a

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v6, v6

    if-ge p1, v6, :cond_27a

    .line 1565
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v6, v6, p1

    .line 1566
    iget-object v6, v6, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    if-ne v6, v7, :cond_27a

    const/4 v0, 0x1

    goto :goto_27a

    .line 1570
    :cond_25e
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v8, v8, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v8, v8, p1

    iget-object v8, v8, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    if-eq v7, v8, :cond_27a

    .line 1571
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v7, v7, p1

    iget-object v7, v7, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-static {v6, v7, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, p1

    :cond_27a
    :goto_27a
    add-int/lit8 p1, p1, 0x1

    goto :goto_23d

    :cond_27d
    const/4 v0, 0x0

    .line 1576
    :cond_27e
    const-string p1, "create instance error, "

    if-eqz v0, :cond_2cb

    iget-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object p2, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->kotlinDefaultConstructor:Ljava/lang/reflect/Constructor;

    if-eqz p2, :cond_2cb

    .line 1578
    :try_start_288
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object p2, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->kotlinDefaultConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {p2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_290
    if-ge v2, v4, :cond_2af

    .line 1581
    aget-object v0, v5, v2

    if-eqz v0, :cond_2ac

    .line 1582
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz v1, :cond_2ac

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v1, v1

    if-ge v2, v1, :cond_2ac

    .line 1583
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v1, v1, v2

    .line 1584
    invoke-virtual {v1, p2, v0}, Lcom/alibaba/fastjson/util/FieldInfo;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2ac
    .catch Ljava/lang/Exception; {:try_start_288 .. :try_end_2ac} :catch_2b0

    :cond_2ac
    add-int/lit8 v2, v2, 0x1

    goto :goto_290

    :cond_2af
    return-object p2

    :catch_2b0
    move-exception p2

    .line 1588
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object p1, p1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 1589
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1593
    :cond_2cb
    :try_start_2cb
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object p2, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {p2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2d3
    .catch Ljava/lang/Exception; {:try_start_2cb .. :try_end_2d3} :catch_2d4

    return-object p1

    :catch_2d4
    move-exception p2

    .line 1595
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object p1, p1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 1596
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1599
    :cond_2ef
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object p1, p1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_31b

    .line 1601
    :try_start_2f5
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object p1, p1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p1, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2fd
    .catch Ljava/lang/Exception; {:try_start_2f5 .. :try_end_2fd} :catch_2fe

    return-object p1

    :catch_2fe
    move-exception p1

    .line 1603
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "create factory method error, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_31b
    return-object v3
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
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

    const/4 v0, 0x0

    .line 287
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "I)TT;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 291
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;
    .registers 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "I[I)TT;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move-object/from16 v0, p3

    .line 398
    const-class v3, Lcom/alibaba/fastjson/JSON;

    if-eq v5, v3, :cond_91f

    const-class v3, Lcom/alibaba/fastjson/JSONObject;

    if-ne v5, v3, :cond_12

    goto/16 :goto_91f

    .line 402
    :cond_12
    iget-object v3, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object v8, v3

    check-cast v8, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    .line 403
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v9

    .line 405
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v3

    const/16 v4, 0x8

    const/16 v10, 0x10

    const/4 v11, 0x0

    if-ne v3, v4, :cond_2a

    .line 407
    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    return-object v11

    .line 411
    :cond_2a
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v4

    if-eqz p4, :cond_34

    if-eqz v4, :cond_34

    .line 413
    iget-object v4, v4, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_34
    move-object v12, v4

    const/16 v13, 0xd

    if-ne v3, v13, :cond_4e

    .line 421
    :try_start_39
    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    if-nez p4, :cond_43

    .line 423
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_49

    goto :goto_45

    :cond_43
    move-object/from16 v0, p4

    .line 1085
    :goto_45
    invoke-virtual {v2, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v0

    :catchall_49
    move-exception v0

    move-object/from16 v3, p4

    goto/16 :goto_917

    :cond_4e
    const/16 v4, 0xe

    if-ne v3, v4, :cond_71

    .line 429
    :try_start_52
    sget-object v6, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    iget v6, v6, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    .line 430
    iget-object v7, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget v7, v7, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    and-int/2addr v7, v6

    if-nez v7, :cond_69

    sget-object v7, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    .line 431
    invoke-virtual {v8, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v7

    if-nez v7, :cond_69

    and-int v6, p5, v6

    if-eqz v6, :cond_71

    .line 435
    :cond_69
    invoke-virtual/range {p0 .. p4}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6d
    .catchall {:try_start_52 .. :try_end_6d} :catchall_49

    .line 1085
    invoke-virtual {v2, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v0

    :cond_71
    const/16 v6, 0xc

    const/4 v7, 0x2

    const/4 v14, 0x4

    move-object/from16 v16, v11

    const/4 v11, 0x1

    if-eq v3, v6, :cond_16f

    if-eq v3, v10, :cond_16f

    .line 440
    :try_start_7c
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isBlankInput()Z

    move-result v5
    :try_end_80
    .catchall {:try_start_7c .. :try_end_80} :catchall_168

    if-eqz v5, :cond_86

    .line 1085
    invoke-virtual {v2, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v16

    :cond_86
    if-ne v3, v14, :cond_c3

    .line 445
    :try_start_88
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v5

    .line 446
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_99

    .line 447
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V
    :try_end_95
    .catchall {:try_start_88 .. :try_end_95} :catchall_168

    .line 1085
    invoke-virtual {v2, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v16

    .line 451
    :cond_99
    :try_start_99
    iget-object v6, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    if-eqz v6, :cond_c3

    .line 452
    iget-object v6, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {v6}, Lcom/alibaba/fastjson/annotation/JSONType;->seeAlso()[Ljava/lang/Class;

    move-result-object v6

    array-length v10, v6

    const/4 v13, 0x0

    :goto_a9
    if-ge v13, v10, :cond_c3

    const/16 v17, 0x0

    aget-object v15, v6, v13

    .line 453
    const-class v14, Ljava/lang/Enum;

    invoke-virtual {v14, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14
    :try_end_b5
    .catchall {:try_start_99 .. :try_end_b5} :catchall_168

    if-eqz v14, :cond_bf

    .line 455
    :try_start_b7
    invoke-static {v15, v5}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0
    :try_end_bb
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b7 .. :try_end_bb} :catch_bf
    .catchall {:try_start_b7 .. :try_end_bb} :catchall_168

    .line 1085
    invoke-virtual {v2, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v0

    :catch_bf
    :cond_bf
    add-int/lit8 v13, v13, 0x1

    const/4 v14, 0x4

    goto :goto_a9

    :cond_c3
    const/16 v17, 0x0

    if-ne v3, v4, :cond_d9

    .line 465
    :try_start_c7
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result v4

    const/16 v5, 0x5d

    if-ne v4, v5, :cond_d9

    .line 466
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 467
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V
    :try_end_d5
    .catchall {:try_start_c7 .. :try_end_d5} :catchall_168

    .line 1085
    invoke-virtual {v2, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v16

    .line 471
    :cond_d9
    :try_start_d9
    iget-object v4, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_12a

    iget-object v4, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v4, v4
    :try_end_e4
    .catchall {:try_start_d9 .. :try_end_e4} :catchall_168

    if-ne v4, v11, :cond_12a

    .line 473
    :try_start_e6
    iget-object v4, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v4, v4, v17

    .line 474
    iget-object v5, v4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v6, Ljava/lang/Integer;

    if-ne v5, v6, :cond_107

    if-ne v3, v7, :cond_12a

    .line 476
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->intValue()I

    move-result v0

    .line 477
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 478
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createFactoryInstance(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_103} :catch_11f
    .catchall {:try_start_e6 .. :try_end_103} :catchall_168

    .line 1085
    invoke-virtual {v2, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v0

    .line 480
    :cond_107
    :try_start_107
    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    if-ne v4, v5, :cond_12a

    const/4 v4, 0x4

    if-ne v3, v4, :cond_12a

    .line 482
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 483
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 484
    invoke-direct {v1, v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createFactoryInstance(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_11b} :catch_11f
    .catchall {:try_start_107 .. :try_end_11b} :catchall_168

    .line 1085
    invoke-virtual {v2, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v0

    :catch_11f
    move-exception v0

    .line 488
    :try_start_120
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 492
    :cond_12a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syntax error, expect {, actual "

    .line 493
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->tokenName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", pos "

    .line 495
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 498
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_154

    .line 499
    const-string v4, ", fieldName "

    .line 500
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 504
    :cond_154
    const-string v0, ", fastjson-version "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "1.2.83"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_168
    .catchall {:try_start_120 .. :try_end_168} :catchall_168

    :catchall_168
    move-exception v0

    move-object/from16 v3, p4

    move-object/from16 v11, v16

    goto/16 :goto_917

    :cond_16f
    const/16 v17, 0x0

    .line 509
    :try_start_171
    iget v3, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I
    :try_end_173
    .catchall {:try_start_171 .. :try_end_173} :catchall_911

    if-ne v3, v7, :cond_178

    const/4 v3, 0x0

    .line 510
    :try_start_176
    iput v3, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I
    :try_end_178
    .catchall {:try_start_176 .. :try_end_178} :catchall_168

    .line 513
    :cond_178
    :try_start_178
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v14, v3, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeKey:Ljava/lang/String;
    :try_end_17c
    .catchall {:try_start_178 .. :try_end_17c} :catchall_911

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v7, v16

    move-object/from16 v18, v7

    const/4 v6, 0x0

    const/4 v15, 0x0

    .line 521
    :goto_186
    :try_start_186
    iget-object v11, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v13, v11
    :try_end_189
    .catchall {:try_start_186 .. :try_end_189} :catchall_90d

    if-ge v15, v13, :cond_1a8

    if-ge v6, v10, :cond_1a8

    .line 522
    :try_start_18d
    aget-object v11, v11, v15

    .line 523
    iget-object v13, v11, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 524
    iget-object v10, v13, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 525
    invoke-virtual {v13}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v20

    if-eqz v20, :cond_1a5

    move-object/from16 p4, v4

    .line 526
    instance-of v4, v11, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    if-eqz v4, :cond_1b0

    .line 527
    move-object v4, v11

    check-cast v4, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    iget-boolean v4, v4, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->customDeserilizer:Z

    goto :goto_1b1

    :cond_1a5
    move-object/from16 p4, v4

    goto :goto_1b0

    :cond_1a8
    move-object/from16 p4, v4

    move-object/from16 v10, v16

    move-object v11, v10

    move-object v13, v11

    move-object/from16 v20, v13

    :cond_1b0
    :goto_1b0
    const/4 v4, 0x0

    :goto_1b1
    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    if-eqz v11, :cond_37a

    move/from16 p6, v4

    .line 536
    iget-object v4, v13, Lcom/alibaba/fastjson/util/FieldInfo;->name_chars:[C

    if-eqz p6, :cond_1ce

    .line 537
    invoke-virtual {v8, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchField([C)Z

    move-result v26

    if-eqz v26, :cond_1ce

    move/from16 v26, v6

    move/from16 p6, v15

    :goto_1c9
    move-object/from16 v4, v16

    const/4 v6, 0x1

    goto/16 :goto_381

    :cond_1ce
    move/from16 v26, v6

    .line 539
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move/from16 p6, v15

    const/4 v15, -0x2

    if-eq v10, v6, :cond_352

    const-class v6, Ljava/lang/Integer;

    if-ne v10, v6, :cond_1dd

    goto/16 :goto_352

    .line 554
    :cond_1dd
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v10, v6, :cond_332

    const-class v6, Ljava/lang/Long;

    if-ne v10, v6, :cond_1e7

    goto/16 :goto_332

    .line 569
    :cond_1e7
    const-class v6, Ljava/lang/String;

    if-ne v10, v6, :cond_1fd

    .line 570
    invoke-virtual {v8, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldString([C)Ljava/lang/String;

    move-result-object v4

    .line 572
    iget v6, v8, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v6, :cond_1f7

    :goto_1f3
    const/4 v6, 0x1

    const/4 v15, 0x1

    goto/16 :goto_382

    .line 575
    :cond_1f7
    iget v6, v8, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-ne v6, v15, :cond_380

    goto/16 :goto_36f

    .line 579
    :cond_1fd
    const-class v6, Ljava/util/Date;

    if-ne v10, v6, :cond_214

    iget-object v6, v13, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    if-nez v6, :cond_214

    .line 580
    invoke-virtual {v8, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldDate([C)Ljava/util/Date;

    move-result-object v4

    .line 582
    iget v6, v8, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v6, :cond_20e

    goto :goto_1f3

    .line 585
    :cond_20e
    iget v6, v8, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-ne v6, v15, :cond_380

    goto/16 :goto_36f

    .line 589
    :cond_214
    const-class v6, Ljava/math/BigDecimal;

    if-ne v10, v6, :cond_227

    .line 590
    invoke-virtual {v8, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldDecimal([C)Ljava/math/BigDecimal;

    move-result-object v4

    .line 592
    iget v6, v8, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v6, :cond_221

    goto :goto_1f3

    .line 595
    :cond_221
    iget v6, v8, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-ne v6, v15, :cond_380

    goto/16 :goto_36f

    .line 599
    :cond_227
    const-class v6, Ljava/math/BigInteger;

    if-ne v10, v6, :cond_23a

    .line 600
    invoke-virtual {v8, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldBigInteger([C)Ljava/math/BigInteger;

    move-result-object v4

    .line 602
    iget v6, v8, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v6, :cond_234

    goto :goto_1f3

    .line 605
    :cond_234
    iget v6, v8, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-ne v6, v15, :cond_380

    goto/16 :goto_36f

    .line 609
    :cond_23a
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v10, v6, :cond_316

    const-class v6, Ljava/lang/Boolean;

    if-ne v10, v6, :cond_244

    goto/16 :goto_316

    .line 625
    :cond_244
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v10, v6, :cond_2f6

    const-class v6, Ljava/lang/Float;

    if-ne v10, v6, :cond_24e

    goto/16 :goto_2f6

    .line 640
    :cond_24e
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v10, v6, :cond_2d5

    const-class v6, Ljava/lang/Double;

    if-ne v10, v6, :cond_258

    goto/16 :goto_2d5

    .line 655
    :cond_258
    invoke-virtual {v10}, Ljava/lang/Class;->isEnum()Z

    move-result v6

    if-eqz v6, :cond_28e

    .line 656
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v6

    instance-of v6, v6, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    if-eqz v6, :cond_28e

    if-eqz v20, :cond_274

    .line 657
    invoke-interface/range {v20 .. v20}, Lcom/alibaba/fastjson/annotation/JSONField;->deserializeUsing()Ljava/lang/Class;

    move-result-object v6

    const-class v15, Ljava/lang/Void;

    if-ne v6, v15, :cond_28e

    .line 659
    :cond_274
    instance-of v6, v11, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    if-eqz v6, :cond_37e

    .line 660
    move-object v6, v11

    check-cast v6, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    iget-object v6, v6, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->fieldValueDeserilizer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 661
    invoke-virtual {v1, v8, v4, v6}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->scanEnum(Lcom/alibaba/fastjson/parser/JSONLexerBase;[CLcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)Ljava/lang/Enum;

    move-result-object v4

    .line 663
    iget v6, v8, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v6, :cond_287

    goto/16 :goto_1f3

    .line 666
    :cond_287
    iget v6, v8, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v15, -0x2

    if-ne v6, v15, :cond_380

    goto/16 :goto_36f

    .line 671
    :cond_28e
    const-class v6, [I

    if-ne v10, v6, :cond_2a3

    .line 672
    invoke-virtual {v8, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldIntArray([C)[I

    move-result-object v4

    .line 674
    iget v6, v8, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v6, :cond_29c

    goto/16 :goto_1f3

    .line 677
    :cond_29c
    iget v6, v8, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v15, -0x2

    if-ne v6, v15, :cond_380

    goto/16 :goto_36f

    .line 681
    :cond_2a3
    const-class v6, [F

    if-ne v10, v6, :cond_2b8

    .line 682
    invoke-virtual {v8, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldFloatArray([C)[F

    move-result-object v4

    .line 684
    iget v6, v8, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v6, :cond_2b1

    goto/16 :goto_1f3

    .line 687
    :cond_2b1
    iget v6, v8, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v15, -0x2

    if-ne v6, v15, :cond_380

    goto/16 :goto_36f

    .line 691
    :cond_2b8
    const-class v6, [[F

    if-ne v10, v6, :cond_2cd

    .line 692
    invoke-virtual {v8, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldFloatArray2([C)[[F

    move-result-object v4

    .line 694
    iget v6, v8, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v6, :cond_2c6

    goto/16 :goto_1f3

    .line 697
    :cond_2c6
    iget v6, v8, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v15, -0x2

    if-ne v6, v15, :cond_380

    goto/16 :goto_36f

    .line 701
    :cond_2cd
    invoke-virtual {v8, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchField([C)Z

    move-result v4

    if-eqz v4, :cond_542

    goto/16 :goto_1c9

    .line 641
    :cond_2d5
    :goto_2d5
    invoke-virtual {v8, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldDouble([C)D

    move-result-wide v28

    cmpl-double v4, v28, v21

    if-nez v4, :cond_2e5

    .line 642
    iget v4, v8, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v6, 0x5

    if-ne v4, v6, :cond_2e5

    move-object/from16 v4, v16

    goto :goto_2e9

    .line 645
    :cond_2e5
    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 648
    :goto_2e9
    iget v6, v8, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v6, :cond_2ef

    goto/16 :goto_1f3

    .line 651
    :cond_2ef
    iget v6, v8, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v15, -0x2

    if-ne v6, v15, :cond_380

    goto/16 :goto_36f

    .line 626
    :cond_2f6
    :goto_2f6
    invoke-virtual {v8, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldFloat([C)F

    move-result v4

    cmpl-float v6, v4, v23

    if-nez v6, :cond_306

    .line 627
    iget v6, v8, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v15, 0x5

    if-ne v6, v15, :cond_306

    move-object/from16 v4, v16

    goto :goto_30a

    .line 630
    :cond_306
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 633
    :goto_30a
    iget v6, v8, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v6, :cond_310

    goto/16 :goto_1f3

    .line 636
    :cond_310
    iget v6, v8, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v15, -0x2

    if-ne v6, v15, :cond_380

    goto :goto_36f

    .line 610
    :cond_316
    :goto_316
    invoke-virtual {v8, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldBoolean([C)Z

    move-result v4

    .line 612
    iget v6, v8, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v15, 0x5

    if-ne v6, v15, :cond_322

    move-object/from16 v4, v16

    goto :goto_326

    .line 615
    :cond_322
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 618
    :goto_326
    iget v6, v8, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v6, :cond_32c

    goto/16 :goto_1f3

    .line 621
    :cond_32c
    iget v6, v8, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v15, -0x2

    if-ne v6, v15, :cond_380

    goto :goto_36f

    .line 555
    :cond_332
    :goto_332
    invoke-virtual {v8, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldLong([C)J

    move-result-wide v28

    cmp-long v4, v28, v24

    if-nez v4, :cond_342

    .line 556
    iget v4, v8, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v15, 0x5

    if-ne v4, v15, :cond_342

    move-object/from16 v4, v16

    goto :goto_346

    .line 559
    :cond_342
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 562
    :goto_346
    iget v6, v8, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v6, :cond_34c

    goto/16 :goto_1f3

    .line 565
    :cond_34c
    iget v6, v8, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v15, -0x2

    if-ne v6, v15, :cond_380

    goto :goto_36f

    .line 540
    :cond_352
    :goto_352
    invoke-virtual {v8, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldInt([C)I

    move-result v4

    if-nez v4, :cond_360

    .line 541
    iget v6, v8, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v15, 0x5

    if-ne v6, v15, :cond_360

    move-object/from16 v4, v16

    goto :goto_364

    .line 544
    :cond_360
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 547
    :goto_364
    iget v6, v8, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v6, :cond_36a

    goto/16 :goto_1f3

    .line 550
    :cond_36a
    iget v6, v8, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v15, -0x2

    if-ne v6, v15, :cond_380

    :goto_36f
    add-int/lit8 v6, v26, 0x1

    move-object/from16 v4, p4

    move/from16 v26, v6

    goto/16 :goto_544

    :catchall_377
    move-exception v0

    goto/16 :goto_90f

    :cond_37a
    move/from16 v26, v6

    move/from16 p6, v15

    :cond_37e
    move-object/from16 v4, v16

    :cond_380
    const/4 v6, 0x0

    :goto_381
    const/4 v15, 0x0

    :goto_382
    if-nez v6, :cond_55d

    move/from16 v20, v6

    .line 709
    iget-object v6, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v8, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3af

    move/from16 v27, v15

    .line 712
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v15

    move-object/from16 v28, v10

    const/16 v10, 0xd

    if-ne v15, v10, :cond_3a1

    const/16 v10, 0x10

    .line 714
    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    goto/16 :goto_53e

    :cond_3a1
    const/16 v10, 0x10

    if-ne v15, v10, :cond_3b3

    .line 718
    sget-object v10, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v10

    if-eqz v10, :cond_3b3

    goto/16 :goto_542

    :cond_3af
    move-object/from16 v28, v10

    move/from16 v27, v15

    .line 724
    :cond_3b3
    const-string v10, "$ref"

    if-ne v10, v6, :cond_492

    if-eqz v12, :cond_492

    const/4 v10, 0x4

    .line 725
    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithColon(I)V

    .line 726
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    if-ne v4, v10, :cond_477

    .line 728
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v4

    .line 729
    const-string v5, "@"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d5

    .line 730
    iget-object v3, v12, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    :goto_3d1
    const/16 v10, 0xd

    goto/16 :goto_456

    .line 731
    :cond_3d5
    const-string v5, ".."

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f2

    .line 732
    iget-object v5, v12, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 733
    iget-object v6, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v6, :cond_3e6

    .line 734
    iget-object v3, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_3d1

    .line 736
    :cond_3e6
    new-instance v6, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v6, v5, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/4 v4, 0x1

    .line 737
    iput v4, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto :goto_3d1

    .line 739
    :cond_3f2
    const-string v5, "$"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_415

    move-object v5, v12

    .line 741
    :goto_3fb
    iget-object v6, v5, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v6, :cond_402

    .line 742
    iget-object v5, v5, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    goto :goto_3fb

    .line 745
    :cond_402
    iget-object v6, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v6, :cond_409

    .line 746
    iget-object v3, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_3d1

    .line 748
    :cond_409
    new-instance v6, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v6, v5, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/4 v4, 0x1

    .line 749
    iput v4, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto :goto_3d1

    :cond_415
    const/16 v5, 0x5c

    .line 752
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_441

    .line 753
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    .line 754
    :goto_423
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v15, v9, :cond_43d

    .line 755
    invoke-virtual {v4, v15}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v5, :cond_435

    add-int/lit8 v15, v15, 0x1

    .line 757
    invoke-virtual {v4, v15}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 759
    :cond_435
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v19, 0x1

    add-int/lit8 v15, v15, 0x1

    goto :goto_423

    .line 761
    :cond_43d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 763
    :cond_441
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_449

    move-object v3, v5

    goto :goto_3d1

    .line 767
    :cond_449
    new-instance v5, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v5, v12, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/4 v4, 0x1

    .line 768
    iput v4, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto/16 :goto_3d1

    .line 775
    :goto_456
    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 776
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    if-ne v4, v10, :cond_46f

    const/16 v10, 0x10

    .line 779
    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 781
    invoke-virtual {v2, v12, v3, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_467
    .catchall {:try_start_18d .. :try_end_467} :catchall_377

    if-eqz v7, :cond_46b

    .line 1083
    iput-object v3, v7, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1085
    :cond_46b
    invoke-virtual {v2, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v3

    .line 777
    :cond_46f
    :try_start_46f
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v4, "illegal ref"

    invoke-direct {v0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 772
    :cond_477
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "illegal ref, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_492
    if-eqz v14, :cond_49a

    .line 786
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_49e

    :cond_49a
    sget-object v10, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    if-ne v10, v6, :cond_557

    :cond_49e
    const/4 v10, 0x4

    .line 788
    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithColon(I)V

    .line 789
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    if-ne v4, v10, :cond_54e

    .line 790
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v4

    const/16 v10, 0x10

    .line 791
    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 793
    iget-object v6, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_533

    sget-object v6, Lcom/alibaba/fastjson/parser/Feature;->IgnoreAutoType:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v6

    if-eqz v6, :cond_4c5

    goto/16 :goto_533

    .line 802
    :cond_4c5
    iget-object v6, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    invoke-static {v9, v6, v4}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v6

    if-nez v6, :cond_514

    .line 806
    invoke-static {v5}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    .line 808
    iget-object v10, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->autoTypeCheckHandler:Lcom/alibaba/fastjson/parser/ParserConfig$AutoTypeCheckHandler;

    if-eqz v10, :cond_4de

    .line 809
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getFeatures()I

    move-result v11

    invoke-interface {v10, v4, v6, v11}, Lcom/alibaba/fastjson/parser/ParserConfig$AutoTypeCheckHandler;->handler(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v10

    goto :goto_4e0

    :cond_4de
    move-object/from16 v10, v16

    :goto_4e0
    if-nez v10, :cond_4fe

    .line 813
    const-string v11, "java.util.HashMap"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4f2

    const-string v11, "java.util.LinkedHashMap"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4fe

    .line 814
    :cond_4f2
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/16 v10, 0xd

    if-ne v4, v10, :cond_542

    .line 815
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    goto :goto_53e

    :cond_4fe
    if-nez v10, :cond_50a

    .line 823
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getFeatures()I

    move-result v5

    invoke-virtual {v9, v4, v6, v5}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v5

    move-object v11, v5

    goto :goto_50b

    :cond_50a
    move-object v11, v10

    .line 825
    :goto_50b
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v6

    goto :goto_516

    :cond_514
    move-object/from16 v11, v16

    .line 828
    :goto_516
    invoke-interface {v6, v2, v11, v0}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 829
    instance-of v5, v6, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v5, :cond_52b

    .line 830
    check-cast v6, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v14, :cond_52b

    .line 832
    invoke-virtual {v6, v14}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v5

    if-eqz v5, :cond_52b

    .line 834
    invoke-virtual {v5, v0, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_52b
    .catchall {:try_start_46f .. :try_end_52b} :catchall_377

    :cond_52b
    if-eqz v7, :cond_52f

    .line 1083
    iput-object v3, v7, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1085
    :cond_52f
    invoke-virtual {v2, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v0

    .line 794
    :cond_533
    :goto_533
    :try_start_533
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/16 v10, 0xd

    if-ne v4, v10, :cond_542

    .line 795
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    :goto_53e
    move-object/from16 v15, v18

    goto/16 :goto_665

    :cond_542
    :goto_542
    move-object/from16 v4, p4

    :goto_544
    move-object/from16 v13, v16

    const/4 v5, 0x1

    const/16 v6, 0xd

    const/4 v11, 0x4

    const/16 v17, 0x0

    goto/16 :goto_8d2

    .line 840
    :cond_54e
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v4, "syntax error"

    invoke-direct {v0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_557
    .catchall {:try_start_533 .. :try_end_557} :catchall_377

    :cond_557
    move-object/from16 v30, v6

    move-object v6, v3

    move-object/from16 v3, v30

    goto :goto_566

    :cond_55d
    move/from16 v20, v6

    move-object/from16 v28, v10

    move/from16 v27, v15

    move-object v6, v3

    move-object/from16 v3, v16

    :goto_566
    if-nez v6, :cond_595

    if-nez v18, :cond_595

    .line 846
    :try_start_56a
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_57a

    .line 848
    new-instance v10, Ljava/util/HashMap;

    iget-object v15, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v15, v15

    invoke-direct {v10, v15}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v18, v10

    .line 850
    :cond_57a
    invoke-virtual {v2, v12, v6, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v7

    if-nez p4, :cond_595

    .line 852
    iget-object v10, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v10, v10

    div-int/lit8 v10, v10, 0x20

    const/16 v19, 0x1

    add-int/lit8 v10, v10, 0x1

    new-array v10, v10, [I
    :try_end_58b
    .catchall {:try_start_56a .. :try_end_58b} :catchall_591

    move-object v15, v10

    move-object v10, v7

    move-object v7, v15

    move-object/from16 v15, v18

    goto :goto_59a

    :catchall_591
    move-exception v0

    move-object v3, v6

    goto/16 :goto_90f

    :cond_595
    move-object v10, v7

    move-object/from16 v15, v18

    move-object/from16 v7, p4

    :goto_59a
    if-eqz v20, :cond_613

    if-nez v27, :cond_5a8

    .line 858
    :try_start_59e
    invoke-virtual {v11, v2, v6, v5, v15}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    move-object v4, v6

    const/4 v11, 0x4

    goto/16 :goto_64f

    :catchall_5a5
    move-exception v0

    goto/16 :goto_624

    :cond_5a8
    if-nez v6, :cond_5b0

    .line 861
    iget-object v3, v13, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v15, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5f7

    :cond_5b0
    if-nez v4, :cond_5cc

    .line 863
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v13, v28

    if-eq v13, v3, :cond_5f7

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v13, v3, :cond_5f7

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v13, v3, :cond_5f7

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v13, v3, :cond_5f7

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v13, v3, :cond_5f7

    .line 869
    invoke-virtual {v11, v6, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5cb
    .catchall {:try_start_59e .. :try_end_5cb} :catchall_5a5

    goto :goto_5f7

    :cond_5cc
    move-object/from16 v3, v28

    .line 872
    :try_start_5ce
    const-class v2, Ljava/lang/String;

    if-ne v3, v2, :cond_5f4

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->TrimStringFieldValue:Lcom/alibaba/fastjson/parser/Feature;

    iget v2, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int v2, p5, v2

    if-nez v2, :cond_5ee

    iget-object v2, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget v2, v2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->TrimStringFieldValue:Lcom/alibaba/fastjson/parser/Feature;

    iget v3, v3, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v2, v3

    if-nez v2, :cond_5ee

    iget v2, v13, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->TrimStringFieldValue:Lcom/alibaba/fastjson/parser/Feature;

    iget v3, v3, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_5f4

    .line 876
    :cond_5ee
    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 879
    :cond_5f4
    invoke-virtual {v11, v6, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5f7
    :goto_5f7
    if-eqz v7, :cond_606

    .line 883
    div-int/lit8 v2, p6, 0x20

    .line 884
    rem-int/lit8 v3, p6, 0x20

    .line 885
    aget v4, v7, v2

    const/16 v19, 0x1

    shl-int v3, v19, v3

    or-int/2addr v3, v4

    aput v3, v7, v2

    .line 888
    :cond_606
    iget v2, v8, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v11, 0x4

    if-ne v2, v11, :cond_60f

    move-object/from16 v2, p1

    move-object v4, v6

    goto :goto_663

    :cond_60f
    move-object/from16 v2, p1

    move-object v4, v6

    goto :goto_64f

    :cond_613
    const/4 v11, 0x4

    if-nez v15, :cond_628

    .line 893
    new-instance v2, Ljava/util/HashMap;

    iget-object v4, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v4, v4

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V
    :try_end_61e
    .catchall {:try_start_5ce .. :try_end_61e} :catchall_621

    move-object v4, v6

    move-object v6, v2

    goto :goto_62a

    :catchall_621
    move-exception v0

    move-object/from16 v2, p1

    :goto_624
    move-object v3, v6

    :goto_625
    move-object v11, v10

    goto/16 :goto_917

    :cond_628
    move-object v4, v6

    move-object v6, v15

    :goto_62a
    move-object/from16 v2, p1

    :try_start_62c
    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;[I)Z

    move-result v3

    if-nez v3, :cond_647

    .line 897
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v3

    const/16 v5, 0xd

    if-ne v3, v5, :cond_63e

    .line 898
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    goto :goto_663

    :cond_63e
    :goto_63e
    move-object/from16 v13, v16

    const/4 v5, 0x1

    const/16 v6, 0xd

    const/16 v17, 0x0

    goto/16 :goto_8cd

    .line 903
    :cond_647
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v3

    const/16 v5, 0x11

    if-eq v3, v5, :cond_900

    .line 908
    :goto_64f
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v3

    const/16 v5, 0x10

    if-ne v3, v5, :cond_658

    goto :goto_63e

    .line 912
    :cond_658
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v3

    const/16 v6, 0xd

    if-ne v3, v6, :cond_8ba

    .line 913
    invoke-virtual {v8, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V
    :try_end_663
    .catchall {:try_start_62c .. :try_end_663} :catchall_909

    :goto_663
    move-object v3, v4

    move-object v7, v10

    :goto_665
    if-nez v3, :cond_896

    if-nez v15, :cond_67b

    .line 924
    :try_start_669
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    if-nez v7, :cond_673

    .line 926
    invoke-virtual {v2, v12, v3, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v7
    :try_end_673
    .catchall {:try_start_669 .. :try_end_673} :catchall_377

    :cond_673
    if-eqz v7, :cond_677

    .line 1083
    iput-object v3, v7, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1085
    :cond_677
    invoke-virtual {v2, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v3

    .line 931
    :cond_67b
    :try_start_67b
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v4, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;
    :try_end_67f
    .catchall {:try_start_67b .. :try_end_67f} :catchall_377

    .line 933
    const-string v0, ""

    if-eqz v4, :cond_733

    .line 934
    :try_start_683
    array-length v5, v4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 935
    :goto_687
    array-length v8, v4

    if-ge v6, v8, :cond_7a1

    .line 936
    aget-object v8, v4, v6

    .line 938
    invoke-interface {v15, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_6f1

    .line 940
    iget-object v9, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v9, v9, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    aget-object v9, v9, v6

    .line 941
    iget-object v10, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v10, v10, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v10, v10, v6

    .line 942
    sget-object v11, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v9, v11, :cond_6aa

    const/16 v17, 0x0

    .line 943
    invoke-static/range {v17 .. v17}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    goto/16 :goto_72d

    :cond_6aa
    const/16 v17, 0x0

    .line 944
    sget-object v11, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v9, v11, :cond_6b6

    .line 945
    invoke-static/range {v17 .. v17}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    goto/16 :goto_72d

    .line 946
    :cond_6b6
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v9, v11, :cond_6c0

    .line 947
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto/16 :goto_72d

    .line 948
    :cond_6c0
    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v9, v11, :cond_6c9

    .line 949
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_72d

    .line 950
    :cond_6c9
    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v9, v11, :cond_6d2

    .line 951
    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    goto :goto_72d

    .line 952
    :cond_6d2
    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v9, v11, :cond_6db

    .line 953
    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    goto :goto_72d

    .line 954
    :cond_6db
    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v9, v11, :cond_6e2

    .line 955
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_72d

    .line 956
    :cond_6e2
    const-class v11, Ljava/lang/String;

    if-ne v9, v11, :cond_72d

    iget v9, v10, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    sget-object v10, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v10, v10, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v9, v10

    if-eqz v9, :cond_72d

    move-object v8, v0

    goto :goto_72d

    .line 961
    :cond_6f1
    iget-object v9, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v9, v9, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    if-eqz v9, :cond_72d

    iget-object v9, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v9, v9, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    array-length v9, v9

    if-ge v6, v9, :cond_72d

    .line 962
    iget-object v9, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v9, v9, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    aget-object v9, v9, v6

    .line 963
    instance-of v10, v9, Ljava/lang/Class;

    if-eqz v10, :cond_72d

    .line 964
    check-cast v9, Ljava/lang/Class;

    .line 965
    invoke-virtual {v9, v8}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_72d

    .line 966
    instance-of v10, v8, Ljava/util/List;

    if-eqz v10, :cond_72d

    .line 967
    move-object v10, v8

    check-cast v10, Ljava/util/List;

    .line 968
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_72d

    const/4 v11, 0x0

    .line 969
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 970
    invoke-virtual {v9, v13}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_72d

    .line 971
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 979
    :cond_72d
    :goto_72d
    aput-object v8, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_687

    .line 982
    :cond_733
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 983
    array-length v6, v5

    .line 984
    new-array v8, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    :goto_73b
    if-ge v9, v6, :cond_7a0

    .line 986
    aget-object v10, v5, v9

    .line 987
    iget-object v11, v10, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v15, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_799

    .line 989
    iget-object v13, v10, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 990
    sget-object v14, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v13, v14, :cond_754

    const/16 v17, 0x0

    .line 991
    invoke-static/range {v17 .. v17}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    goto :goto_79b

    :cond_754
    const/16 v17, 0x0

    .line 992
    sget-object v14, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v13, v14, :cond_75f

    .line 993
    invoke-static/range {v17 .. v17}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v11

    goto :goto_79b

    .line 994
    :cond_75f
    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v13, v14, :cond_768

    .line 995
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_79b

    .line 996
    :cond_768
    sget-object v14, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v13, v14, :cond_771

    .line 997
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    goto :goto_79b

    .line 998
    :cond_771
    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v13, v14, :cond_77a

    .line 999
    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    goto :goto_79b

    .line 1000
    :cond_77a
    sget-object v14, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v13, v14, :cond_783

    .line 1001
    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    goto :goto_79b

    .line 1002
    :cond_783
    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v13, v14, :cond_78a

    .line 1003
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_79b

    .line 1004
    :cond_78a
    const-class v14, Ljava/lang/String;

    if-ne v13, v14, :cond_79b

    iget v10, v10, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    sget-object v13, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v13, v13, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v10, v13

    if-eqz v10, :cond_79b

    move-object v11, v0

    goto :goto_79b

    :cond_799
    const/16 v17, 0x0

    .line 1009
    :cond_79b
    :goto_79b
    aput-object v11, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_73b

    :cond_7a0
    move-object v5, v8

    :cond_7a1
    const/16 v17, 0x0

    .line 1013
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_861

    .line 1015
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-boolean v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->kotlin:Z

    if-eqz v0, :cond_806

    const/4 v0, 0x0

    .line 1016
    :goto_7b0
    array-length v6, v5

    if-ge v0, v6, :cond_806

    .line 1017
    aget-object v6, v5, v0

    if-nez v6, :cond_801

    iget-object v6, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz v6, :cond_801

    iget-object v6, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v6, v6

    if-ge v0, v6, :cond_801

    .line 1018
    iget-object v6, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v0, v6, v0

    .line 1019
    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v6, Ljava/lang/String;
    :try_end_7ce
    .catchall {:try_start_683 .. :try_end_7ce} :catchall_377

    if-ne v0, v6, :cond_806

    .line 1028
    :try_start_7d0
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->kotlinDefaultConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_806

    .line 1029
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->kotlinDefaultConstructor:Ljava/lang/reflect/Constructor;

    move-object/from16 v6, v16

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v0, 0x0

    .line 1031
    :goto_7e1
    array-length v6, v5

    if-ge v0, v6, :cond_80f

    .line 1032
    aget-object v6, v5, v0

    if-eqz v6, :cond_7fe

    .line 1033
    iget-object v8, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v8, v8, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz v8, :cond_7fe

    iget-object v8, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v8, v8, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v8, v8

    if-ge v0, v8, :cond_7fe

    .line 1034
    iget-object v8, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v8, v8, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v8, v8, v0

    .line 1035
    invoke-virtual {v8, v3, v6}, Lcom/alibaba/fastjson/util/FieldInfo;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7fe
    add-int/lit8 v0, v0, 0x1

    goto :goto_7e1

    :cond_801
    add-int/lit8 v0, v0, 0x1

    const/16 v16, 0x0

    goto :goto_7b0

    .line 1039
    :cond_806
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_80e
    .catch Ljava/lang/Exception; {:try_start_7d0 .. :try_end_80e} :catch_839
    .catchall {:try_start_7d0 .. :try_end_80e} :catchall_377

    move-object v3, v0

    :cond_80f
    if-eqz v4, :cond_892

    .line 1047
    :try_start_811
    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_819
    :goto_819
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_892

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1048
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v5

    if-eqz v5, :cond_819

    .line 1050
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_819

    :catch_839
    move-exception v0

    .line 1042
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "create instance error, "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 1043
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 1054
    :cond_861
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;
    :try_end_865
    .catchall {:try_start_811 .. :try_end_865} :catchall_377

    if-eqz v0, :cond_892

    .line 1056
    :try_start_867
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_870
    .catch Ljava/lang/Exception; {:try_start_867 .. :try_end_870} :catch_872
    .catchall {:try_start_867 .. :try_end_870} :catchall_377

    move-object v3, v0

    goto :goto_892

    :catch_872
    move-exception v0

    .line 1058
    :try_start_873
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create factory method error, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_892
    :goto_892
    if-eqz v7, :cond_896

    .line 1063
    iput-object v3, v7, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1067
    :cond_896
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildMethod:Ljava/lang/reflect/Method;
    :try_end_89a
    .catchall {:try_start_873 .. :try_end_89a} :catchall_377

    if-nez v0, :cond_8a4

    if-eqz v7, :cond_8a0

    .line 1083
    iput-object v3, v7, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1085
    :cond_8a0
    invoke-virtual {v2, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v3

    :cond_8a4
    const/4 v13, 0x0

    .line 1075
    :try_start_8a5
    invoke-virtual {v0, v3, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8a9
    .catch Ljava/lang/Exception; {:try_start_8a5 .. :try_end_8a9} :catch_8b1
    .catchall {:try_start_8a5 .. :try_end_8a9} :catchall_377

    if-eqz v7, :cond_8ad

    .line 1083
    iput-object v3, v7, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1085
    :cond_8ad
    invoke-virtual {v2, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v0

    :catch_8b1
    move-exception v0

    .line 1077
    :try_start_8b2
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "build object error"

    invoke-direct {v4, v5, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_8ba
    .catchall {:try_start_8b2 .. :try_end_8ba} :catchall_377

    :cond_8ba
    move-object/from16 v13, v16

    const/16 v17, 0x0

    .line 917
    :try_start_8be
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v3

    const/16 v5, 0x12

    if-eq v3, v5, :cond_8e0

    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_8e0

    :goto_8cd
    move-object v3, v4

    move-object v4, v7

    move-object v7, v10

    move-object/from16 v18, v15

    :goto_8d2
    add-int/lit8 v15, p6, 0x1

    move-object/from16 v5, p2

    move-object/from16 v16, v13

    move/from16 v6, v26

    const/16 v10, 0x10

    const/16 v13, 0xd

    goto/16 :goto_186

    .line 918
    :cond_8e0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "syntax error, unexpect token "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v5

    invoke-static {v5}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 904
    :cond_900
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v3, "syntax error, unexpect token \':\'"

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_909
    .catchall {:try_start_8be .. :try_end_909} :catchall_909

    :catchall_909
    move-exception v0

    move-object v3, v4

    goto/16 :goto_625

    :catchall_90d
    move-exception v0

    move-object v6, v3

    :goto_90f
    move-object v11, v7

    goto :goto_917

    :catchall_911
    move-exception v0

    move-object/from16 v13, v16

    move-object/from16 v3, p4

    move-object v11, v13

    :goto_917
    if-eqz v11, :cond_91b

    .line 1083
    iput-object v3, v11, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1085
    :cond_91b
    invoke-virtual {v2, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 1086
    throw v0

    .line 399
    :cond_91f
    :goto_91f
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 296
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 297
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_145

    .line 302
    iget-object v1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanTypeName(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 303
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    invoke-static {v3, v4, v1}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v3

    if-nez v3, :cond_36

    .line 307
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    .line 308
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v4

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->getFeatures()I

    move-result v5

    invoke-virtual {v4, v1, v3, v5}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v1

    .line 309
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v3

    .line 312
    :cond_36
    instance-of v1, v3, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v1, :cond_41

    .line 313
    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 317
    :cond_41
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    .line 319
    iget-object p3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length p3, p3

    const/4 p4, 0x0

    :goto_49
    const/16 v1, 0x10

    if-ge p4, p3, :cond_141

    add-int/lit8 v3, p3, -0x1

    const/16 v4, 0x5d

    if-ne p4, v3, :cond_56

    const/16 v3, 0x5d

    goto :goto_58

    :cond_56
    const/16 v3, 0x2c

    .line 321
    :goto_58
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v5, v5, p4

    .line 322
    iget-object v6, v5, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 323
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_6d

    .line 324
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanInt(C)I

    move-result v1

    .line 325
    invoke-virtual {v5, p2, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;I)V

    goto/16 :goto_13d

    .line 326
    :cond_6d
    const-class v7, Ljava/lang/String;

    if-ne v6, v7, :cond_7a

    .line 327
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString(C)Ljava/lang/String;

    move-result-object v1

    .line 328
    invoke-virtual {v5, p2, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_13d

    .line 329
    :cond_7a
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_87

    .line 330
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLong(C)J

    move-result-wide v3

    .line 331
    invoke-virtual {v5, p2, v3, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;J)V

    goto/16 :goto_13d

    .line 332
    :cond_87
    invoke-virtual {v6}, Ljava/lang/Class;->isEnum()Z

    move-result v7

    if-eqz v7, :cond_ca

    .line 333
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v1

    const/16 v4, 0x22

    if-eq v1, v4, :cond_bd

    const/16 v4, 0x6e

    if-ne v1, v4, :cond_9a

    goto :goto_bd

    :cond_9a
    const/16 v4, 0x30

    if-lt v1, v4, :cond_b8

    const/16 v4, 0x39

    if-gt v1, v4, :cond_b8

    .line 339
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanInt(C)I

    move-result v1

    .line 341
    move-object v3, v5

    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->getFieldValueDeserilizer(Lcom/alibaba/fastjson/parser/ParserConfig;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    .line 342
    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->valueOf(I)Ljava/lang/Enum;

    move-result-object v1

    goto :goto_c5

    .line 344
    :cond_b8
    invoke-virtual {p0, v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->scanEnum(Lcom/alibaba/fastjson/parser/JSONLexer;C)Ljava/lang/Enum;

    move-result-object v1

    goto :goto_c5

    .line 337
    :cond_bd
    :goto_bd
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v1

    invoke-interface {v0, v6, v1, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanEnum(Ljava/lang/Class;Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/Enum;

    move-result-object v1

    .line 347
    :goto_c5
    invoke-virtual {v5, p2, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_13d

    .line 348
    :cond_ca
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_d6

    .line 349
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanBoolean(C)Z

    move-result v1

    .line 350
    invoke-virtual {v5, p2, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Z)V

    goto :goto_13d

    .line 351
    :cond_d6
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_e6

    .line 352
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFloat(C)F

    move-result v1

    .line 353
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v5, p2, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13d

    .line 354
    :cond_e6
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_f6

    .line 355
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanDouble(C)D

    move-result-wide v3

    .line 356
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v5, p2, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13d

    .line 357
    :cond_f6
    const-class v7, Ljava/util/Date;

    if-ne v6, v7, :cond_10f

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v7

    const/16 v8, 0x31

    if-ne v7, v8, :cond_10f

    .line 358
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLong(C)J

    move-result-wide v3

    .line 359
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, p2, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13d

    .line 360
    :cond_10f
    const-class v7, Ljava/math/BigDecimal;

    if-ne v6, v7, :cond_11b

    .line 361
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanDecimal(C)Ljava/math/BigDecimal;

    move-result-object v1

    .line 362
    invoke-virtual {v5, p2, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13d

    .line 364
    :cond_11b
    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 365
    iget-object v6, v5, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    iget-object v7, v5, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 366
    invoke-virtual {v5, p2, v6}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 368
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    const/16 v6, 0xf

    if-ne v5, v6, :cond_136

    goto :goto_141

    :cond_136
    if-ne v3, v4, :cond_13a

    const/16 v1, 0xf

    .line 372
    :cond_13a
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->check(Lcom/alibaba/fastjson/parser/JSONLexer;I)V

    :goto_13d
    add-int/lit8 p4, p4, 0x1

    goto/16 :goto_49

    .line 376
    :cond_141
    :goto_141
    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    return-object p2

    .line 298
    :cond_145
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "error"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFastMatchToken()I
    .registers 2

    const/16 v0, 0xc

    return v0
.end method

.method public getFieldDeserializer(J)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .registers 10

    .line 145
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArray:[J

    const/4 v1, 0x0

    if-nez v0, :cond_24

    .line 146
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v0, v0

    new-array v0, v0, [J

    const/4 v2, 0x0

    .line 147
    :goto_b
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v4, v3

    if-ge v2, v4, :cond_1f

    .line 148
    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 150
    :cond_1f
    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    .line 151
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArray:[J

    .line 154
    :cond_24
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArray:[J

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    const/4 p2, 0x0

    if-gez p1, :cond_2e

    return-object p2

    .line 159
    :cond_2e
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArrayMapping:[S

    const/4 v2, -0x1

    if-nez v0, :cond_5a

    .line 160
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArray:[J

    array-length v0, v0

    new-array v0, v0, [S

    .line 161
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([SS)V

    .line 162
    :goto_3b
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v4, v3

    if-ge v1, v4, :cond_58

    .line 163
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArray:[J

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 164
    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v5

    .line 163
    invoke-static {v4, v5, v6}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v3

    if-ltz v3, :cond_55

    int-to-short v4, v1

    .line 166
    aput-short v4, v0, v3

    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 169
    :cond_58
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArrayMapping:[S

    .line 172
    :cond_5a
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArrayMapping:[S

    aget-short p1, v0, p1

    if-eq p1, v2, :cond_65

    .line 174
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object p1, p2, p1

    return-object p1

    :cond_65
    return-object p2
.end method

.method public getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .registers 3

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;[I)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object p1

    return-object p1
.end method

.method public getFieldDeserializer(Ljava/lang/String;[I)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 107
    :cond_4
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializerMap:Ljava/util/Map;

    if-eqz v1, :cond_11

    .line 108
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    if-eqz v1, :cond_11

    return-object v1

    .line 115
    :cond_11
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_17
    if-gt v2, v1, :cond_41

    add-int v3, v2, v1

    ushr-int/lit8 v3, v3, 0x1

    .line 120
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 122
    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_2f

    add-int/lit8 v3, v3, 0x1

    move v2, v3

    goto :goto_17

    :cond_2f
    if-lez v4, :cond_35

    add-int/lit8 v3, v3, -0x1

    move v1, v3

    goto :goto_17

    .line 129
    :cond_35
    invoke-static {v3, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->isSetFlag(I[I)Z

    move-result p1

    if-eqz p1, :cond_3c

    return-object v0

    .line 133
    :cond_3c
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object p1, p1, v3

    return-object p1

    .line 137
    :cond_41
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->alterNameFieldDeserializers:Ljava/util/Map;

    if-eqz p2, :cond_4c

    .line 138
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    return-object p1

    :cond_4c
    return-object v0
.end method

.method public getFieldType(I)Ljava/lang/reflect/Type;
    .registers 3

    .line 1611
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object p1, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    return-object p1
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1121
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;[I)Z

    move-result p1

    return p1
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;[I)Z
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[I)Z"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v3, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    .line 1126
    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1128
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->DisableFieldSmartMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget v2, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    .line 1129
    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v4, v4, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    .line 1131
    invoke-interface {v15, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_3e

    iget-object v5, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget v5, v5, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_26

    goto :goto_3e

    .line 1133
    :cond_26
    invoke-interface {v15, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_39

    iget-object v2, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget v2, v2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_34

    goto :goto_39

    .line 1136
    :cond_34
    invoke-virtual {v1, v3, v14}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatch(Ljava/lang/String;[I)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v2

    goto :goto_42

    .line 1134
    :cond_39
    :goto_39
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatch(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v2

    goto :goto_42

    .line 1132
    :cond_3e
    :goto_3e
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v2

    .line 1139
    :goto_42
    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->SupportNonPublicField:Lcom/alibaba/fastjson/parser/Feature;

    iget v4, v4, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    const/16 v16, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_108

    .line 1141
    invoke-interface {v15, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(I)Z

    move-result v6

    if-nez v6, :cond_58

    iget-object v6, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget v6, v6, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    and-int/2addr v4, v6

    if-eqz v4, :cond_108

    .line 1143
    :cond_58
    iget-object v4, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    if-nez v4, :cond_c6

    .line 1144
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v6, 0x3f400000    # 0.75f

    invoke-direct {v4, v5, v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 1145
    iget-object v6, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    :goto_65
    if-eqz v6, :cond_c1

    const-class v7, Ljava/lang/Object;

    if-eq v6, v7, :cond_c1

    .line 1146
    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    .line 1147
    array-length v8, v7

    const/4 v9, 0x0

    :goto_71
    if-ge v9, v8, :cond_b9

    aget-object v10, v7, v9

    .line 1148
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1149
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v18

    if-eqz v18, :cond_80

    goto :goto_b1

    .line 1152
    :cond_80
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v18

    and-int/lit8 v19, v18, 0x10

    if-nez v19, :cond_b1

    and-int/lit8 v18, v18, 0x8

    if-eqz v18, :cond_8d

    goto :goto_b1

    :cond_8d
    move-object/from16 v18, v2

    .line 1156
    const-class v2, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v10, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v2, :cond_a9

    .line 1158
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v19, v5

    .line 1159
    const-string v5, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ab

    move-object v5, v2

    goto :goto_ad

    :cond_a9
    move-object/from16 v19, v5

    :cond_ab
    move-object/from16 v5, v19

    .line 1163
    :goto_ad
    invoke-virtual {v4, v5, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b3

    :cond_b1
    :goto_b1
    move-object/from16 v18, v2

    :goto_b3
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, v18

    const/4 v5, 0x1

    goto :goto_71

    :cond_b9
    move-object/from16 v18, v2

    .line 1145
    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    const/4 v5, 0x1

    goto :goto_65

    :cond_c1
    move-object/from16 v18, v2

    .line 1166
    iput-object v4, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    goto :goto_c8

    :cond_c6
    move-object/from16 v18, v2

    .line 1169
    :goto_c8
    iget-object v2, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_10a

    .line 1171
    instance-of v4, v2, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    if-eqz v4, :cond_d9

    .line 1172
    check-cast v2, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    const/16 v17, 0x1

    goto :goto_10e

    .line 1174
    :cond_d9
    move-object v7, v2

    check-cast v7, Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    .line 1175
    invoke-virtual {v7, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/16 v17, 0x1

    .line 1176
    new-instance v2, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    .line 1177
    new-instance v4, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v5

    iget-object v6, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-direct {v4, v5, v6, v2}, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 1178
    iget-object v2, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v3, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v4

    goto :goto_10e

    :cond_108
    move-object/from16 v18, v2

    :cond_10a
    const/16 v17, 0x1

    move-object/from16 v2, v18

    :goto_10e
    if-nez v2, :cond_1f9

    .line 1184
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v15, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v2

    if-eqz v2, :cond_1d7

    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 1189
    :goto_11a
    iget-object v6, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v7, v6

    if-ge v2, v7, :cond_1c2

    .line 1190
    aget-object v6, v6, v2

    .line 1192
    iget-object v7, v6, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1193
    iget-boolean v8, v7, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    if-eqz v8, :cond_1be

    instance-of v8, v6, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    if-eqz v8, :cond_1be

    .line 1195
    iget-object v8, v7, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    const-string v9, "parse unwrapped field error."

    if-eqz v8, :cond_199

    .line 1196
    move-object v8, v6

    check-cast v8, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    .line 1197
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->getFieldValueDeserilizer(Lcom/alibaba/fastjson/parser/ParserConfig;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v10

    .line 1198
    instance-of v4, v10, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v4, :cond_16e

    .line 1199
    move-object v4, v10

    check-cast v4, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 1200
    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v4

    if-eqz v4, :cond_1be

    .line 1204
    :try_start_149
    iget-object v5, v7, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_15c

    .line 1206
    check-cast v10, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    iget-object v5, v7, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    invoke-virtual {v10, v0, v5}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .line 1207
    invoke-virtual {v6, v11, v5}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1209
    :cond_15c
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->getFastMatchToken()I

    move-result v6

    invoke-interface {v15, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 1210
    invoke-virtual {v4, v0, v5, v12, v13}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    :try_end_166
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_166} :catch_167

    goto :goto_1b5

    :catch_167
    move-exception v0

    .line 1213
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v2, v9, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1216
    :cond_16e
    instance-of v4, v10, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    if-eqz v4, :cond_1be

    .line 1217
    check-cast v10, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    .line 1221
    :try_start_174
    iget-object v4, v7, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_187

    .line 1223
    iget-object v4, v7, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    invoke-virtual {v10, v4}, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->createMap(Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object v4

    .line 1224
    invoke-virtual {v6, v11, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1227
    :cond_187
    invoke-interface {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon()V

    .line 1228
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1229
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_191
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_191} :catch_192

    goto :goto_1b5

    :catch_192
    move-exception v0

    .line 1231
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v2, v9, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1235
    :cond_199
    iget-object v4, v7, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1be

    .line 1236
    invoke-interface {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon()V

    .line 1237
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1239
    :try_start_1aa
    iget-object v5, v7, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v16

    aput-object v4, v6, v17

    invoke-virtual {v5, v11, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b5
    .catch Ljava/lang/Exception; {:try_start_1aa .. :try_end_1b5} :catch_1b7

    :goto_1b5
    move v5, v2

    goto :goto_1be

    :catch_1b7
    move-exception v0

    .line 1241
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v2, v9, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1be
    :goto_1be
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_11a

    :cond_1c2
    const/4 v2, -0x1

    if-eq v5, v2, :cond_1d3

    if-eqz v14, :cond_1d2

    .line 1250
    div-int/lit8 v0, v5, 0x20

    .line 1251
    rem-int/lit8 v5, v5, 0x20

    .line 1252
    aget v2, v14, v0

    shl-int v3, v17, v5

    or-int/2addr v2, v3

    aput v2, v14, v0

    :cond_1d2
    return v17

    .line 1257
    :cond_1d3
    invoke-virtual {v0, v11, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseExtra(Ljava/lang/Object;Ljava/lang/String;)V

    return v16

    .line 1185
    :cond_1d7
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "setter not found, class "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", property "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f9
    const/4 v4, 0x0

    .line 1263
    :goto_1fa
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v6, v5

    if-ge v4, v6, :cond_207

    .line 1264
    aget-object v5, v5, v4

    if-ne v5, v2, :cond_204

    goto :goto_208

    :cond_204
    add-int/lit8 v4, v4, 0x1

    goto :goto_1fa

    :cond_207
    const/4 v4, -0x1

    :goto_208
    const/4 v5, -0x1

    if-eq v4, v5, :cond_21f

    if-eqz v14, :cond_21f

    .line 1269
    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21f

    .line 1270
    invoke-static {v4, v14}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->isSetFlag(I[I)Z

    move-result v5

    if-eqz v5, :cond_21f

    .line 1271
    invoke-virtual {v0, v11, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseExtra(Ljava/lang/Object;Ljava/lang/String;)V

    return v16

    .line 1276
    :cond_21f
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->getFastMatchToken()I

    move-result v3

    invoke-interface {v15, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 1278
    invoke-virtual {v2, v0, v11, v12, v13}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    if-eqz v14, :cond_236

    .line 1281
    div-int/lit8 v0, v4, 0x20

    .line 1282
    rem-int/lit8 v4, v4, 0x20

    .line 1283
    aget v2, v14, v0

    shl-int v3, v17, v4

    or-int/2addr v2, v3

    aput v2, v14, v0

    :cond_236
    return v17
.end method

.method protected parseRest(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 14

    const/4 v0, 0x0

    .line 1615
    new-array v7, v0, [I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->parseRest(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected parseRest(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;
    .registers 7

    .line 1624
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected scanEnum(Lcom/alibaba/fastjson/parser/JSONLexer;C)Ljava/lang/Enum;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/JSONLexer;",
            "C)",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation

    .line 388
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "illegal enum. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected scanEnum(Lcom/alibaba/fastjson/parser/JSONLexerBase;[CLcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)Ljava/lang/Enum;
    .registers 10

    .line 1091
    instance-of v0, p3, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1092
    check-cast p3, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    goto :goto_9

    :cond_8
    move-object p3, v1

    :goto_9
    if-nez p3, :cond_f

    const/4 p2, -0x1

    .line 1096
    iput p2, p1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v1

    .line 1100
    :cond_f
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanEnumSymbol([C)J

    move-result-wide v2

    .line 1101
    iget p2, p1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez p2, :cond_47

    .line 1102
    invoke-virtual {p3, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->getEnumByHashCode(J)Ljava/lang/Enum;

    move-result-object p2

    if-nez p2, :cond_46

    const-wide v4, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    cmp-long v0, v2, v4

    if-nez v0, :cond_27

    return-object v1

    .line 1108
    :cond_27
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->ErrorOnEnumNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result p1

    if-nez p1, :cond_30

    goto :goto_46

    .line 1109
    :cond_30
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "not match enum value, "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p3, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumClass:Ljava/lang/Class;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_46
    :goto_46
    return-object p2

    :cond_47
    return-object v1
.end method

.method public smartMatch(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .registers 3

    const/4 v0, 0x0

    .line 1290
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatch(Ljava/lang/String;[I)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object p1

    return-object p1
.end method

.method public smartMatch(Ljava/lang/String;[I)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .registers 13

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 1298
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;[I)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v1

    if-nez v1, :cond_b0

    .line 1301
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    const/4 v3, 0x0

    if-nez v2, :cond_2a

    .line 1302
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v2, v2

    new-array v2, v2, [J

    const/4 v4, 0x0

    .line 1303
    :goto_15
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v6, v5

    if-ge v4, v6, :cond_25

    .line 1304
    aget-object v5, v5, v4

    iget-object v5, v5, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-wide v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode:J

    aput-wide v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 1306
    :cond_25
    invoke-static {v2}, Ljava/util/Arrays;->sort([J)V

    .line 1307
    iput-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    .line 1311
    :cond_2a
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64_lower(Ljava/lang/String;)J

    move-result-wide v4

    .line 1312
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    invoke-static {v2, v4, v5}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    if-gez v2, :cond_40

    .line 1314
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64_extract(Ljava/lang/String;)J

    move-result-wide v4

    .line 1315
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    invoke-static {v2, v4, v5}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    :cond_40
    if-gez v2, :cond_5a

    .line 1319
    const-string v4, "is"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5b

    const/4 v2, 0x2

    .line 1320
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64_extract(Ljava/lang/String;)J

    move-result-wide v5

    .line 1321
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    invoke-static {p1, v5, v6}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    goto :goto_5b

    :cond_5a
    const/4 v4, 0x0

    :cond_5b
    :goto_5b
    if-ltz v2, :cond_95

    .line 1325
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArrayMapping:[S

    const/4 v5, -0x1

    if-nez p1, :cond_85

    .line 1326
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    array-length p1, p1

    new-array p1, p1, [S

    .line 1327
    invoke-static {p1, v5}, Ljava/util/Arrays;->fill([SS)V

    .line 1328
    :goto_6a
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v7, v6

    if-ge v3, v7, :cond_83

    .line 1329
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-wide v8, v6, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode:J

    invoke-static {v7, v8, v9}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v6

    if-ltz v6, :cond_80

    int-to-short v7, v3

    .line 1331
    aput-short v7, p1, v6

    :cond_80
    add-int/lit8 v3, v3, 0x1

    goto :goto_6a

    .line 1334
    :cond_83
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArrayMapping:[S

    .line 1337
    :cond_85
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArrayMapping:[S

    aget-short p1, p1, v2

    if-eq p1, v5, :cond_95

    .line 1339
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->isSetFlag(I[I)Z

    move-result p2

    if-nez p2, :cond_95

    .line 1340
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v1, p2, p1

    :cond_95
    if-eqz v1, :cond_b0

    .line 1346
    iget-object p1, v1, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1347
    iget p2, p1, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->DisableFieldSmartMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget v2, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p2, v2

    if-eqz p2, :cond_a3

    return-object v0

    .line 1351
    :cond_a3
    iget-object p1, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    if-eqz v4, :cond_b0

    .line 1352
    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, p2, :cond_b0

    const-class p2, Ljava/lang/Boolean;

    if-eq p1, p2, :cond_b0

    return-object v0

    :cond_b0
    return-object v1
.end method
