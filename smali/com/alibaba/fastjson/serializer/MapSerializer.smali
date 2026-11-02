###### Class com.alibaba.fastjson.serializer.MapSerializer (com.alibaba.fastjson.serializer.MapSerializer)
.class public Lcom/alibaba/fastjson/serializer/MapSerializer;
.super Lcom/alibaba/fastjson/serializer/SerializeFilterable;
.source "MapSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field private static final NON_STRINGKEY_AS_STRING:I

.field public static instance:Lcom/alibaba/fastjson/serializer/MapSerializer;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 31
    new-instance v0, Lcom/alibaba/fastjson/serializer/MapSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/MapSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->instance:Lcom/alibaba/fastjson/serializer/MapSerializer;

    const/4 v0, 0x3

    .line 33
    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v0

    sput v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->NON_STRINGKEY_AS_STRING:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 44
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/serializer/MapSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V

    return-void
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v8, p4

    .line 54
    iget-object v9, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    if-nez v4, :cond_10

    .line 57
    invoke-virtual {v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void

    .line 61
    :cond_10
    move-object v0, v4

    check-cast v0, Ljava/util/Map;

    .line 62
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->MapSortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 63
    iget v5, v9, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v5, v3

    if-nez v5, :cond_23

    and-int v3, p5, v3

    if-eqz v3, :cond_21

    goto :goto_23

    :cond_21
    :goto_21
    move-object v10, v0

    goto :goto_3e

    .line 64
    :cond_23
    :goto_23
    instance-of v3, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v3, :cond_2d

    .line 65
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->getInnerMap()Ljava/util/Map;

    move-result-object v0

    .line 68
    :cond_2d
    instance-of v3, v0, Ljava/util/SortedMap;

    if-nez v3, :cond_21

    instance-of v3, v0, Ljava/util/LinkedHashMap;

    if-nez v3, :cond_21

    .line 70
    :try_start_35
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3a} :catch_3c

    move-object v10, v3

    goto :goto_3e

    :catch_3c
    nop

    goto :goto_21

    .line 77
    :goto_3e
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 78
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    return-void

    .line 82
    :cond_48
    iget-object v11, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    const/4 v12, 0x0

    move-object/from16 v0, p3

    .line 83
    invoke-virtual {v2, v11, v4, v0, v12}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    if-nez p6, :cond_57

    const/16 v0, 0x7b

    .line 86
    :try_start_54
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 89
    :cond_57
    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 96
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    const/4 v13, 0x1

    if-eqz v0, :cond_8e

    .line 97
    iget-object v0, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    .line 98
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 99
    const-class v5, Lcom/alibaba/fastjson/JSONObject;

    if-eq v3, v5, :cond_77

    const-class v5, Ljava/util/HashMap;

    if-eq v3, v5, :cond_77

    const-class v5, Ljava/util/LinkedHashMap;

    if-ne v3, v5, :cond_7e

    .line 100
    :cond_77
    invoke-interface {v10, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7e

    goto :goto_8e

    .line 102
    :cond_7e
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_8f

    :cond_8e
    :goto_8e
    const/4 v0, 0x1

    .line 108
    :goto_8f
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/4 v3, 0x0

    const/16 v16, 0x0

    :goto_9a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 109
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 111
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 114
    iget-object v7, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyPreFilters:Ljava/util/List;

    if-eqz v7, :cond_e6

    .line 115
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_e6

    if-eqz v5, :cond_d8

    .line 116
    instance-of v7, v5, Ljava/lang/String;

    if-eqz v7, :cond_bf

    goto :goto_d8

    .line 120
    :cond_bf
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-nez v7, :cond_cd

    instance-of v7, v5, Ljava/lang/Number;

    if-eqz v7, :cond_e6

    .line 121
    :cond_cd
    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 122
    invoke-virtual {v1, v2, v4, v7}, Lcom/alibaba/fastjson/serializer/MapSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_e6

    goto :goto_e1

    .line 117
    :cond_d8
    :goto_d8
    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v7}, Lcom/alibaba/fastjson/serializer/MapSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_e6

    :goto_e1
    move/from16 v5, p5

    move-object v12, v3

    goto/16 :goto_228

    .line 129
    :cond_e6
    iget-object v7, v1, Lcom/alibaba/fastjson/serializer/MapSerializer;->propertyPreFilters:Ljava/util/List;

    if-eqz v7, :cond_11a

    .line 130
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_11a

    if-eqz v5, :cond_110

    .line 131
    instance-of v7, v5, Ljava/lang/String;

    if-eqz v7, :cond_f7

    goto :goto_110

    .line 135
    :cond_f7
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-nez v7, :cond_105

    instance-of v7, v5, Ljava/lang/Number;

    if-eqz v7, :cond_11a

    .line 136
    :cond_105
    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 137
    invoke-virtual {v1, v2, v4, v7}, Lcom/alibaba/fastjson/serializer/MapSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_11a

    goto :goto_e1

    .line 132
    :cond_110
    :goto_110
    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v7}, Lcom/alibaba/fastjson/serializer/MapSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_11a

    goto :goto_e1

    .line 145
    :cond_11a
    iget-object v7, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyFilters:Ljava/util/List;

    if-eqz v7, :cond_14e

    .line 146
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_14e

    if-eqz v5, :cond_144

    .line 147
    instance-of v7, v5, Ljava/lang/String;

    if-eqz v7, :cond_12b

    goto :goto_144

    .line 151
    :cond_12b
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-nez v7, :cond_139

    instance-of v7, v5, Ljava/lang/Number;

    if-eqz v7, :cond_14e

    .line 152
    :cond_139
    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 153
    invoke-virtual {v1, v2, v4, v7, v6}, Lcom/alibaba/fastjson/serializer/MapSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14e

    goto :goto_e1

    .line 148
    :cond_144
    :goto_144
    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v7, v6}, Lcom/alibaba/fastjson/serializer/MapSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14e

    goto :goto_e1

    .line 160
    :cond_14e
    iget-object v7, v1, Lcom/alibaba/fastjson/serializer/MapSerializer;->propertyFilters:Ljava/util/List;

    if-eqz v7, :cond_184

    .line 161
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_184

    if-eqz v5, :cond_179

    .line 162
    instance-of v7, v5, Ljava/lang/String;

    if-eqz v7, :cond_15f

    goto :goto_179

    .line 166
    :cond_15f
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-nez v7, :cond_16d

    instance-of v7, v5, Ljava/lang/Number;

    if-eqz v7, :cond_184

    .line 167
    :cond_16d
    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 168
    invoke-virtual {v1, v2, v4, v7, v6}, Lcom/alibaba/fastjson/serializer/MapSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_184

    goto/16 :goto_e1

    .line 163
    :cond_179
    :goto_179
    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v7, v6}, Lcom/alibaba/fastjson/serializer/MapSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_184

    goto/16 :goto_e1

    .line 176
    :cond_184
    iget-object v7, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->nameFilters:Ljava/util/List;

    if-eqz v7, :cond_1b2

    .line 177
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1b2

    if-eqz v5, :cond_1ac

    .line 178
    instance-of v7, v5, Ljava/lang/String;

    if-eqz v7, :cond_195

    goto :goto_1ac

    .line 180
    :cond_195
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-nez v7, :cond_1a3

    instance-of v7, v5, Ljava/lang/Number;

    if-eqz v7, :cond_1b2

    .line 181
    :cond_1a3
    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 182
    invoke-virtual {v1, v2, v4, v5, v6}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1b2

    .line 179
    :cond_1ac
    :goto_1ac
    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v5, v6}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 187
    :cond_1b2
    :goto_1b2
    iget-object v7, v1, Lcom/alibaba/fastjson/serializer/MapSerializer;->nameFilters:Ljava/util/List;

    if-eqz v7, :cond_1e0

    .line 188
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1e0

    if-eqz v5, :cond_1da

    .line 189
    instance-of v7, v5, Ljava/lang/String;

    if-eqz v7, :cond_1c3

    goto :goto_1da

    .line 191
    :cond_1c3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-nez v7, :cond_1d1

    instance-of v7, v5, Ljava/lang/Number;

    if-eqz v7, :cond_1e0

    .line 192
    :cond_1d1
    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 193
    invoke-virtual {v1, v2, v4, v5, v6}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1e0

    .line 190
    :cond_1da
    :goto_1da
    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v5, v6}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5
    :try_end_1e0
    .catchall {:try_start_54 .. :try_end_1e0} :catchall_2f4

    :cond_1e0
    :goto_1e0
    if-eqz v5, :cond_209

    .line 199
    :try_start_1e2
    instance-of v7, v5, Ljava/lang/String;

    if-eqz v7, :cond_1e7

    goto :goto_209

    .line 202
    :cond_1e7
    instance-of v7, v5, Ljava/util/Map;

    if-nez v7, :cond_202

    instance-of v7, v5, Ljava/util/Collection;

    if-eqz v7, :cond_1f0

    goto :goto_202

    :cond_1f0
    move-object v7, v5

    .line 204
    invoke-static {v7}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v17, v3

    const/4 v3, 0x0

    move-object v15, v7

    move-object/from16 v12, v17

    move/from16 v7, p5

    .line 205
    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_204

    :cond_202
    :goto_202
    move-object v12, v3

    move-object v15, v5

    :goto_204
    move-object/from16 v2, p1

    move/from16 v5, p5

    goto :goto_21c

    :cond_209
    :goto_209
    move-object v12, v3

    move-object v15, v5

    .line 200
    move-object v5, v15

    check-cast v5, Ljava/lang/String;
    :try_end_20e
    .catchall {:try_start_1e2 .. :try_end_20e} :catchall_2d2

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move/from16 v7, p5

    :try_start_217
    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    move v5, v7

    :goto_21c
    if-nez v6, :cond_230

    .line 211
    iget v1, v9, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v1, v5, v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(IILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-nez v1, :cond_230

    :goto_228
    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object v3, v12

    :goto_22d
    const/4 v12, 0x0

    goto/16 :goto_9a

    .line 216
    :cond_230
    instance-of v1, v15, Ljava/lang/String;

    const/16 v3, 0x2c

    if-eqz v1, :cond_24d

    .line 217
    move-object v1, v15

    check-cast v1, Ljava/lang/String;

    if-nez v0, :cond_23e

    .line 220
    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 223
    :cond_23e
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_249

    .line 224
    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 226
    :cond_249
    invoke-virtual {v9, v1, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    goto :goto_276

    :cond_24d
    if-nez v0, :cond_252

    .line 229
    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 232
    :cond_252
    sget v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->NON_STRINGKEY_AS_STRING:I

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_262

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v5, v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_26e

    :cond_262
    instance-of v0, v15, Ljava/lang/Enum;

    if-nez v0, :cond_26e

    .line 234
    invoke-static {v15}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    goto :goto_271

    .line 237
    :cond_26e
    invoke-virtual {v2, v15}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    :goto_271
    const/16 v0, 0x3a

    .line 240
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_276
    if-nez v6, :cond_282

    .line 246
    invoke-virtual {v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    :goto_27f
    move-object v3, v12

    const/4 v0, 0x0

    goto :goto_22d

    .line 250
    :cond_282
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v0, v12, :cond_28d

    .line 254
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v16

    move-object v12, v0

    :cond_28d
    move-object/from16 v7, v16

    .line 257
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v5, v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0
    :try_end_295
    .catchall {:try_start_217 .. :try_end_295} :catchall_2f4

    if-eqz v0, :cond_2bc

    :try_start_297
    instance-of v0, v7, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eqz v0, :cond_2bc

    .line 260
    instance-of v0, v8, Ljava/lang/reflect/ParameterizedType;
    :try_end_29d
    .catchall {:try_start_297 .. :try_end_29d} :catchall_2d2

    if-eqz v0, :cond_2ae

    .line 261
    :try_start_29f
    move-object v0, v8

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 262
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 263
    array-length v1, v0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2ae

    .line 264
    aget-object v0, v0, v13
    :try_end_2ac
    .catchall {:try_start_29f .. :try_end_2ac} :catchall_2f4

    move-object v4, v0

    goto :goto_2af

    :cond_2ae
    const/4 v4, 0x0

    .line 268
    :goto_2af
    :try_start_2af
    move-object v0, v7

    check-cast v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-object v1, v2

    move-object v2, v6

    move-object v3, v15

    .line 269
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeNoneASM(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    :try_end_2b8
    .catchall {:try_start_2af .. :try_end_2b8} :catchall_2d2

    move-object/from16 v2, p1

    move-object v0, v7

    goto :goto_2c8

    :cond_2bc
    move-object v2, v6

    move-object v3, v15

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move/from16 v5, p5

    move-object v0, v7

    .line 271
    :try_start_2c4
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    :try_end_2c7
    .catchall {:try_start_2c4 .. :try_end_2c7} :catchall_2cf

    move-object v2, v1

    :goto_2c8
    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v16, v0

    goto :goto_27f

    :catchall_2cf
    move-exception v0

    move-object v2, v1

    goto :goto_2f5

    :catchall_2d2
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_2f5

    .line 275
    :cond_2d6
    iput-object v11, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 278
    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 279
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_2ec

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2ec

    .line 280
    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    :cond_2ec
    if-nez p6, :cond_2f3

    const/16 v0, 0x7d

    .line 284
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_2f3
    return-void

    :catchall_2f4
    move-exception v0

    .line 275
    :goto_2f5
    iput-object v11, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 276
    throw v0
.end method
