###### Class com.alibaba.fastjson.JSONObject (com.alibaba.fastjson.JSONObject)
.class public Lcom/alibaba/fastjson/JSONObject;
.super Lcom/alibaba/fastjson/JSON;
.source "JSONObject.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/JSONObject$SecureObjectInputStream;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/fastjson/JSON;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;",
        "Ljava/lang/reflect/InvocationHandler;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    const/16 v0, 0x10

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/JSONObject;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 3

    .line 75
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSON;-><init>()V

    if-eqz p2, :cond_d

    .line 77
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object p2, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    return-void

    .line 79
    :cond_d
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object p2, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSON;-><init>()V

    if-eqz p1, :cond_8

    .line 64
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    return-void

    .line 62
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "map is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Z)V
    .registers 3

    const/16 v0, 0x10

    .line 68
    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/JSONObject;-><init>(IZ)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 520
    invoke-static {}, Lcom/alibaba/fastjson/JSONObject$SecureObjectInputStream;->ensureFields()V

    .line 521
    sget-object v0, Lcom/alibaba/fastjson/JSONObject$SecureObjectInputStream;->fields:[Ljava/lang/reflect/Field;

    if-eqz v0, :cond_14

    sget-boolean v0, Lcom/alibaba/fastjson/JSONObject$SecureObjectInputStream;->fields_error:Z

    if-nez v0, :cond_14

    .line 522
    new-instance v0, Lcom/alibaba/fastjson/JSONObject$SecureObjectInputStream;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONObject$SecureObjectInputStream;-><init>(Ljava/io/ObjectInputStream;)V

    .line 524
    :try_start_10
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->defaultReadObject()V
    :try_end_13
    .catch Ljava/io/NotActiveException; {:try_start_10 .. :try_end_13} :catch_14

    return-void

    .line 531
    :catch_14
    :cond_14
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 532
    iget-object p1, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_21
    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 533
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 535
    sget-object v2, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/Class;)Ljava/lang/Class;

    .line 538
    :cond_3c
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 540
    sget-object v1, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/Class;)Ljava/lang/Class;

    goto :goto_21

    :cond_4c
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 376
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public clone()Lcom/alibaba/fastjson/JSONObject;
    .registers 4

    .line 407
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    instance-of v1, v1, Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_10

    new-instance v1, Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    goto :goto_17

    :cond_10
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :goto_17
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->clone()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 4

    .line 92
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 94
    instance-of v1, p1, Ljava/lang/Number;

    if-nez v1, :cond_18

    instance-of v1, p1, Ljava/lang/Character;

    if-nez v1, :cond_18

    instance-of v1, p1, Ljava/lang/Boolean;

    if-nez v1, :cond_18

    instance-of v1, p1, Ljava/util/UUID;

    if-eqz v1, :cond_23

    .line 99
    :cond_18
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_23
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3

    .line 106
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 419
    :cond_4
    instance-of v0, p1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_13

    .line 420
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    iget-object p1, p1, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 423
    :cond_13
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public fluentClear()Lcom/alibaba/fastjson/JSONObject;
    .registers 2

    .line 380
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public fluentPut(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson/JSONObject;
    .registers 4

    .line 362
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public fluentPutAll(Ljava/util/Map;)Lcom/alibaba/fastjson/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/alibaba/fastjson/JSONObject;"
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public fluentRemove(Ljava/lang/Object;)Lcom/alibaba/fastjson/JSONObject;
    .registers 3

    .line 389
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 110
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_23

    .line 113
    instance-of v1, p1, Ljava/lang/Number;

    if-nez v1, :cond_18

    instance-of v1, p1, Ljava/lang/Character;

    if-nez v1, :cond_18

    instance-of v1, p1, Ljava/lang/Boolean;

    if-nez v1, :cond_18

    instance-of v1, p1, Ljava/util/UUID;

    if-eqz v1, :cond_23

    .line 118
    :cond_18
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_23
    return-object v0
.end method

.method public getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .registers 2

    .line 318
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 320
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public getBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .registers 2

    .line 324
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 326
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2

    .line 185
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 191
    :cond_8
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getBooleanValue(Ljava/lang/String;)Z
    .registers 2

    .line 205
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 207
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_c

    const/4 p1, 0x0

    return p1

    .line 212
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getByte(Ljava/lang/String;)Ljava/lang/Byte;
    .registers 2

    .line 216
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 218
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToByte(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public getByteValue(Ljava/lang/String;)B
    .registers 2

    .line 222
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 224
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToByte(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object p1

    if-nez p1, :cond_c

    const/4 p1, 0x0

    return p1

    .line 229
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    return p1
.end method

.method public getBytes(Ljava/lang/String;)[B
    .registers 2

    .line 195
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 201
    :cond_8
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBytes(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 2

    .line 340
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 342
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public getDouble(Ljava/lang/String;)Ljava/lang/Double;
    .registers 2

    .line 301
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 303
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public getDoubleValue(Ljava/lang/String;)D
    .registers 4

    .line 307
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 309
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p1

    if-nez p1, :cond_d

    const-wide/16 v0, 0x0

    return-wide v0

    .line 314
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(Ljava/lang/String;)Ljava/lang/Float;
    .registers 2

    .line 284
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 286
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public getFloatValue(Ljava/lang/String;)F
    .registers 2

    .line 290
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 292
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p1

    if-nez p1, :cond_c

    const/4 p1, 0x0

    return p1

    .line 297
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method public getInnerMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 514
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    return-object v0
.end method

.method public getIntValue(Ljava/lang/String;)I
    .registers 2

    .line 256
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 258
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_c

    const/4 p1, 0x0

    return p1

    .line 263
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2

    .line 250
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 252
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 151
    instance-of v0, p1, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_d

    .line 152
    check-cast p1, Lcom/alibaba/fastjson/JSONArray;

    return-object p1

    .line 155
    :cond_d
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_19

    .line 156
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    check-cast p1, Ljava/util/List;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONArray;-><init>(Ljava/util/List;)V

    return-object v0

    .line 159
    :cond_19
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_26

    .line 160
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/JSONArray;

    return-object p1

    .line 163
    :cond_26
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/JSONArray;

    return-object p1
.end method

.method public getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 133
    instance-of v0, p1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_d

    .line 134
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    return-object p1

    .line 137
    :cond_d
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_19

    .line 138
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    check-cast p1, Ljava/util/Map;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v0

    .line 141
    :cond_19
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 142
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    return-object p1

    .line 145
    :cond_24
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    return-object p1
.end method

.method public getLong(Ljava/lang/String;)Ljava/lang/Long;
    .registers 2

    .line 267
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 269
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getLongValue(Ljava/lang/String;)J
    .registers 4

    .line 273
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 275
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_d

    const-wide/16 v0, 0x0

    return-wide v0

    .line 280
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/TypeReference;",
            ")TT;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p2, :cond_9

    return-object p1

    .line 181
    :cond_9
    invoke-virtual {p2}, Lcom/alibaba/fastjson/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 168
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToJavaBean(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 173
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 127
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    return-object p1

    :cond_7
    return-object p2
.end method

.method public getShort(Ljava/lang/String;)Ljava/lang/Short;
    .registers 2

    .line 233
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 235
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToShort(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public getShortValue(Ljava/lang/String;)S
    .registers 2

    .line 239
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 241
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToShort(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object p1

    if-nez p1, :cond_c

    const/4 p1, 0x0

    return p1

    .line 246
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1
.end method

.method public getSqlDate(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 346
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 348
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToSqlDate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 330
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 336
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTimestamp(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 352
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 354
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToTimestamp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .registers 2

    .line 428
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 432
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    .line 433
    array-length v0, p1

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_94

    .line 434
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "equals"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 435
    aget-object p1, p3, v3

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 438
    :cond_22
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    .line 439
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v5, "illegal setter"

    if-ne p1, v0, :cond_8e

    .line 444
    const-class p1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {p2, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz p1, :cond_45

    .line 446
    invoke-interface {p1}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_45

    .line 447
    invoke-interface {p1}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object p1

    goto :goto_46

    :cond_45
    move-object p1, v2

    :goto_46
    if-nez p1, :cond_86

    .line 452
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    .line 454
    const-string p2, "set"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_80

    .line 458
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 459
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_7a

    .line 462
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_86

    .line 460
    :cond_7a
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 455
    :cond_80
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 465
    :cond_86
    :goto_86
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    aget-object p3, p3, v3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    .line 440
    :cond_8e
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 469
    :cond_94
    array-length p1, p1

    if-nez p1, :cond_166

    .line 470
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    .line 471
    sget-object p3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v0, "illegal getter"

    if-eq p1, p3, :cond_160

    .line 476
    const-class p1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {p2, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz p1, :cond_b9

    .line 478
    invoke-interface {p1}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_b9

    .line 479
    invoke-interface {p1}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v2

    :cond_b9
    if-nez v2, :cond_14d

    .line 484
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    .line 485
    const-string p3, "get"

    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_f3

    .line 486
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 487
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_ed

    .line 490
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_14d

    .line 488
    :cond_ed
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 491
    :cond_f3
    const-string p3, "is"

    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_128

    const/4 p3, 0x2

    .line 492
    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 493
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_122

    .line 496
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_14d

    .line 494
    :cond_122
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 497
    :cond_128
    const-string p2, "hashCode"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_139

    .line 498
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 499
    :cond_139
    const-string/jumbo p2, "toString"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_147

    .line 500
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 502
    :cond_147
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 506
    :cond_14d
    :goto_14d
    iget-object p1, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 507
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 472
    :cond_160
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 510
    :cond_166
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->toGenericString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isEmpty()Z
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 394
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 49
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 358
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 385
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toJavaObject(Ljava/lang/Class;)Ljava/lang/Object;
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

    .line 621
    const-class v0, Ljava/util/Map;

    if-eq p1, v0, :cond_23

    const-class v0, Lcom/alibaba/fastjson/JSONObject;

    if-eq p1, v0, :cond_23

    const-class v0, Lcom/alibaba/fastjson/JSON;

    if-ne p1, v0, :cond_d

    goto :goto_23

    .line 625
    :cond_d
    const-class v0, Ljava/lang/Object;

    if-ne p1, v0, :cond_1a

    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_23

    .line 629
    :cond_1a
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_23
    :goto_23
    return-object p0
.end method

.method public toJavaObject(Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "I)TT;"
        }
    .end annotation

    .line 633
    const-class p3, Ljava/util/Map;

    if-ne p1, p3, :cond_5

    goto :goto_11

    .line 637
    :cond_5
    const-class p3, Ljava/lang/Object;

    if-ne p1, p3, :cond_12

    sget-object p3, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_12

    :goto_11
    return-object p0

    .line 641
    :cond_12
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 398
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

###### Class com.alibaba.fastjson.JSONObject.SecureObjectInputStream (com.alibaba.fastjson.JSONObject$SecureObjectInputStream)
.class Lcom/alibaba/fastjson/JSONObject$SecureObjectInputStream;
.super Ljava/io/ObjectInputStream;
.source "JSONObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SecureObjectInputStream"
.end annotation


# static fields
.field static fields:[Ljava/lang/reflect/Field;

.field static volatile fields_error:Z


# direct methods
.method public constructor <init>(Ljava/io/ObjectInputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 572
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    .line 574
    :goto_4
    :try_start_4
    sget-object v1, Lcom/alibaba/fastjson/JSONObject$SecureObjectInputStream;->fields:[Ljava/lang/reflect/Field;

    array-length v2, v1

    if-ge v0, v2, :cond_15

    .line 575
    aget-object v1, v1, v0

    .line 576
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 577
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_12} :catch_16

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_15
    return-void

    :catch_16
    const/4 p1, 0x1

    .line 580
    sput-boolean p1, Lcom/alibaba/fastjson/JSONObject$SecureObjectInputStream;->fields_error:Z

    return-void
.end method

.method static ensureFields()V
    .registers 8

    .line 550
    sget-object v0, Lcom/alibaba/fastjson/JSONObject$SecureObjectInputStream;->fields:[Ljava/lang/reflect/Field;

    if-nez v0, :cond_36

    sget-boolean v0, Lcom/alibaba/fastjson/JSONObject$SecureObjectInputStream;->fields_error:Z

    if-nez v0, :cond_36

    const/4 v0, 0x1

    .line 552
    :try_start_9
    const-class v1, Ljava/io/ObjectInputStream;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 553
    const-string v2, "bin"

    const-string v3, "passHandle"

    const-string v4, "handles"

    const-string v5, "curContext"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    .line 554
    new-array v4, v3, [Ljava/lang/reflect/Field;

    const/4 v5, 0x0

    :goto_1f
    if-ge v5, v3, :cond_31

    .line 556
    const-class v6, Ljava/io/ObjectInputStream;

    aget-object v7, v2, v5

    .line 557
    invoke-static {v6, v7, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 561
    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 562
    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 564
    :cond_31
    sput-object v4, Lcom/alibaba/fastjson/JSONObject$SecureObjectInputStream;->fields:[Ljava/lang/reflect/Field;
    :try_end_33
    .catchall {:try_start_9 .. :try_end_33} :catchall_34

    return-void

    .line 566
    :catchall_34
    sput-boolean v0, Lcom/alibaba/fastjson/JSONObject$SecureObjectInputStream;->fields_error:Z

    :cond_36
    return-void
.end method


# virtual methods
.method protected readStreamHeader()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    return-void
.end method

.method protected resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 586
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v0

    .line 587
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_4f

    const/16 v1, 0x5b

    .line 588
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v1, v3, :cond_1a

    add-int/2addr v1, v4

    .line 590
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 592
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_3f

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4c

    if-ne v1, v2, :cond_3f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_3f

    .line 593
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 596
    :cond_3f
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getClassFromMapping(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_4f

    .line 597
    sget-object v1, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->SupportAutoType:Lcom/alibaba/fastjson/parser/Feature;

    iget v2, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    .line 600
    :cond_4f
    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method protected resolveProxyClass([Ljava/lang/String;)Ljava/lang/Class;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 605
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_15

    aget-object v2, p1, v1

    .line 607
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClassFromMapping(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_12

    .line 608
    sget-object v3, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 611
    :cond_15
    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveProxyClass([Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
