###### Class com.alibaba.fastjson.parser.deserializer.EnumDeserializer (com.alibaba.fastjson.parser.deserializer.EnumDeserializer)
.class public Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;
.super Ljava/lang/Object;
.source "EnumDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# instance fields
.field protected final enumClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected enumNameHashCodes:[J

.field protected final enums:[Ljava/lang/Enum;

.field protected final ordinalEnums:[Ljava/lang/Enum;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 26
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v1, v0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumClass:Ljava/lang/Class;

    .line 29
    invoke-virtual {v1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Enum;

    check-cast v2, [Ljava/lang/Enum;

    iput-object v2, v0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->ordinalEnums:[Ljava/lang/Enum;

    .line 31
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    .line 32
    :goto_19
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->ordinalEnums:[Ljava/lang/Enum;

    array-length v6, v5

    if-ge v4, v6, :cond_c5

    .line 33
    aget-object v5, v5, v4

    .line 34
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 38
    :try_start_25
    invoke-virtual {v1, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 39
    const-class v9, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v8, v9}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Lcom/alibaba/fastjson/annotation/JSONField;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_31} :catch_42

    if-eqz v8, :cond_43

    .line 41
    :try_start_33
    invoke-interface {v8}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_43

    .line 42
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3d} :catch_41

    if-lez v9, :cond_43

    move-object v6, v7

    goto :goto_43

    :catch_41
    move-object v7, v8

    :catch_42
    move-object v8, v7

    :cond_43
    :goto_43
    const/4 v7, 0x0

    const-wide v11, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    const-wide v13, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 52
    :goto_4e
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    const-wide v16, 0x100000001b3L

    if-ge v7, v15, :cond_77

    .line 53
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v18, v4

    int-to-long v3, v15

    xor-long/2addr v3, v11

    const/16 v11, 0x41

    if-lt v15, v11, :cond_6b

    const/16 v11, 0x5a

    if-gt v15, v11, :cond_6b

    add-int/lit8 v15, v15, 0x20

    :cond_6b
    int-to-long v11, v15

    xor-long/2addr v11, v13

    mul-long v3, v3, v16

    mul-long v13, v11, v16

    add-int/lit8 v7, v7, 0x1

    move-wide v11, v3

    move/from16 v4, v18

    goto :goto_4e

    :cond_77
    move/from16 v18, v4

    .line 62
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    cmp-long v3, v11, v13

    if-eqz v3, :cond_8b

    .line 64
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8b
    if-eqz v8, :cond_c1

    .line 68
    invoke-interface {v8}, Lcom/alibaba/fastjson/annotation/JSONField;->alternateNames()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v6, 0x0

    :goto_93
    if-ge v6, v4, :cond_c1

    aget-object v7, v3, v6

    const/4 v8, 0x0

    const-wide v19, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 70
    :goto_9d
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v8, v15, :cond_af

    .line 71
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v15

    int-to-long v9, v15

    xor-long v9, v19, v9

    mul-long v19, v9, v16

    add-int/lit8 v8, v8, 0x1

    goto :goto_9d

    :cond_af
    cmp-long v7, v19, v11

    if-eqz v7, :cond_be

    cmp-long v7, v19, v13

    if-eqz v7, :cond_be

    .line 76
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_be
    add-int/lit8 v6, v6, 0x1

    goto :goto_93

    :cond_c1
    add-int/lit8 v4, v18, 0x1

    goto/16 :goto_19

    .line 82
    :cond_c5
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [J

    iput-object v1, v0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumNameHashCodes:[J

    .line 85
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_d6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ee

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 86
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumNameHashCodes:[J

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    aput-wide v7, v5, v3

    move v3, v6

    goto :goto_d6

    .line 88
    :cond_ee
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumNameHashCodes:[J

    invoke-static {v1}, Ljava/util/Arrays;->sort([J)V

    .line 91
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumNameHashCodes:[J

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Enum;

    iput-object v1, v0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enums:[Ljava/lang/Enum;

    const/4 v3, 0x0

    .line 92
    :goto_fb
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumNameHashCodes:[J

    array-length v4, v1

    if-ge v3, v4, :cond_113

    .line 93
    aget-wide v4, v1, v3

    .line 94
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    .line 95
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enums:[Ljava/lang/Enum;

    aput-object v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_fb

    :cond_113
    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
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

    .line 121
    :try_start_0
    iget-object p2, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 122
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p3
    :try_end_6
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_6} :catch_ef
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_e4

    const/4 v0, 0x2

    .line 123
    const-string v1, " error, value : "

    const/16 v2, 0x10

    const-string v3, "parse enum "

    if-ne p3, v0, :cond_3e

    .line 124
    :try_start_f
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result p1

    .line 125
    invoke-interface {p2, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    if-ltz p1, :cond_20

    .line 127
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->ordinalEnums:[Ljava/lang/Enum;

    array-length p3, p2

    if-ge p1, p3, :cond_20

    .line 131
    aget-object p1, p2, p1

    return-object p1

    .line 128
    :cond_20
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3e
    const/4 v0, 0x4

    const/4 v4, 0x0

    if-ne p3, v0, :cond_ba

    .line 133
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-interface {p2, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_50

    return-object v4

    :cond_50
    const-wide v0, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    const/4 p3, 0x0

    move-wide v2, v0

    .line 142
    :goto_57
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge p3, v4, :cond_7b

    .line 143
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-long v5, v4

    xor-long/2addr v0, v5

    const/16 v5, 0x41

    if-lt v4, v5, :cond_6d

    const/16 v5, 0x5a

    if-gt v4, v5, :cond_6d

    add-int/lit8 v4, v4, 0x20

    :cond_6d
    int-to-long v4, v4

    xor-long/2addr v2, v4

    const-wide v4, 0x100000001b3L

    mul-long v0, v0, v4

    mul-long v2, v2, v4

    add-int/lit8 p3, p3, 0x1

    goto :goto_57

    .line 152
    :cond_7b
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->getEnumByHashCode(J)Ljava/lang/Enum;

    move-result-object p3

    if-nez p3, :cond_89

    cmp-long v4, v2, v0

    if-eqz v4, :cond_89

    .line 154
    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->getEnumByHashCode(J)Ljava/lang/Enum;

    move-result-object p3

    :cond_89
    if-nez p3, :cond_b9

    .line 157
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->ErrorOnEnumNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result p2

    if-nez p2, :cond_94

    goto :goto_b9

    .line 158
    :cond_94
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not match enum value, "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_b9
    :goto_b9
    return-object p3

    :cond_ba
    const/16 v0, 0x8

    if-ne p3, v0, :cond_c2

    .line 163
    invoke-interface {p2, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    return-object v4

    .line 167
    :cond_c2
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p1

    .line 170
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_e4
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_f .. :try_end_e4} :catch_ef
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_e4} :catch_e4

    :catch_e4
    move-exception p1

    .line 174
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_ef
    move-exception p1

    .line 172
    throw p1
.end method

.method public getEnumByHashCode(J)Ljava/lang/Enum;
    .registers 5

    .line 100
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enums:[Ljava/lang/Enum;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 104
    :cond_6
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumNameHashCodes:[J

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-gez p1, :cond_f

    return-object v1

    .line 110
    :cond_f
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enums:[Ljava/lang/Enum;

    aget-object p1, p2, p1

    return-object p1
.end method

.method public getFastMatchToken()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public valueOf(I)Ljava/lang/Enum;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->ordinalEnums:[Ljava/lang/Enum;

    aget-object p1, v0, p1

    return-object p1
.end method
