###### Class com.alibaba.fastjson.serializer.ListSerializer (com.alibaba.fastjson.serializer.ListSerializer)
.class public final Lcom/alibaba/fastjson/serializer/ListSerializer;
.super Ljava/lang/Object;
.source "ListSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/ListSerializer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Lcom/alibaba/fastjson/serializer/ListSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/ListSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/ListSerializer;->instance:Lcom/alibaba/fastjson/serializer/ListSerializer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v0, p5

    .line 34
    iget-object v3, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1c

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 35
    invoke-static {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v6, 0x0

    goto :goto_1e

    :cond_1c
    :goto_1c
    const/4 v3, 0x1

    const/4 v6, 0x1

    .line 37
    :goto_1e
    iget-object v8, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    if-eqz v6, :cond_27

    .line 41
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    goto :goto_28

    :cond_27
    const/4 v3, 0x0

    :goto_28
    move-object v9, v3

    if-nez v2, :cond_31

    .line 45
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    return-void

    .line 49
    :cond_31
    move-object v7, v2

    check-cast v7, Ljava/util/List;

    .line 51
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_40

    .line 52
    const-string v0, "[]"

    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    return-void

    .line 56
    :cond_40
    iget-object v3, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    move-object/from16 v5, p3

    .line 57
    invoke-virtual {v1, v3, v2, v5, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 61
    :try_start_47
    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v10
    :try_end_4d
    .catchall {:try_start_47 .. :try_end_4d} :catchall_1ad

    const/16 v11, 0x2c

    const/16 v12, 0x5d

    const/16 v13, 0x5b

    if-eqz v10, :cond_c7

    .line 62
    :try_start_55
    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 63
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 66
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v13, 0x0

    :goto_60
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14
    :try_end_6a
    .catchall {:try_start_55 .. :try_end_6a} :catchall_c2

    if-eqz v13, :cond_6f

    .line 68
    :try_start_6c
    invoke-virtual {v8, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_1ad

    .line 71
    :cond_6f
    :try_start_6f
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    if-eqz v14, :cond_a1

    .line 73
    invoke-virtual {v1, v14}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v4
    :try_end_78
    .catchall {:try_start_6f .. :try_end_78} :catchall_c2

    if-eqz v4, :cond_80

    .line 74
    :try_start_7a
    invoke-virtual {v1, v14}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_1ad

    move-object v6, v3

    move-object v3, v9

    goto :goto_a8

    .line 76
    :cond_80
    :try_start_80
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v15

    .line 77
    new-instance v2, Lcom/alibaba/fastjson/serializer/SerialContext;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/fastjson/serializer/SerialContext;-><init>(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;II)V
    :try_end_91
    .catchall {:try_start_80 .. :try_end_91} :catchall_c2

    move-object v6, v3

    .line 78
    :try_start_92
    iput-object v2, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 79
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move v5, v0

    move-object v4, v9

    move-object v2, v14

    move-object v0, v15

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    move-object v3, v4

    goto :goto_a8

    :cond_a1
    move-object v6, v3

    move-object v3, v9

    .line 82
    iget-object v0, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    :goto_a8
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p2

    move-object/from16 v5, p3

    move/from16 v0, p5

    move-object v9, v3

    move-object v3, v6

    goto :goto_60

    :cond_b3
    move-object v6, v3

    .line 87
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 88
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 89
    invoke-virtual {v8, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_bd
    .catchall {:try_start_92 .. :try_end_bd} :catchall_c0

    .line 144
    iput-object v6, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    return-void

    :catchall_c0
    move-exception v0

    goto :goto_c4

    :catchall_c2
    move-exception v0

    move-object v6, v3

    :goto_c4
    move-object v9, v6

    goto/16 :goto_1af

    :cond_c7
    move-object/from16 v16, v9

    move-object v9, v3

    move-object/from16 v3, v16

    .line 93
    :try_start_cc
    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 94
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    const/4 v13, 0x0

    :goto_d4
    if-ge v13, v10, :cond_1a5

    .line 95
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v13, :cond_df

    .line 97
    invoke-virtual {v8, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    :cond_df
    if-nez v2, :cond_e9

    .line 101
    const-string v0, "null"

    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    :goto_e6
    move-object v4, v3

    goto/16 :goto_196

    .line 103
    :cond_e9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 105
    const-class v4, Ljava/lang/Integer;

    if-ne v0, v4, :cond_fb

    .line 106
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    goto :goto_e6

    .line 107
    :cond_fb
    const-class v4, Ljava/lang/Long;

    if-ne v0, v4, :cond_114

    .line 108
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    if-eqz v6, :cond_110

    .line 110
    invoke-virtual {v8, v4, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    const/16 v0, 0x4c

    .line 111
    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_e6

    .line 113
    :cond_110
    invoke-virtual {v8, v4, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    goto :goto_e6

    .line 116
    :cond_114
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I
    :try_end_118
    .catchall {:try_start_cc .. :try_end_118} :catchall_1ab

    and-int v0, v0, p5

    if-eqz v0, :cond_138

    .line 117
    :try_start_11c
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    move-object v4, v3

    .line 118
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move/from16 v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    :try_end_12e
    .catchall {:try_start_11c .. :try_end_12e} :catchall_134

    move-object v14, v1

    move-object v15, v4

    :goto_130
    move-object v1, v14

    move-object v4, v15

    goto/16 :goto_196

    :catchall_134
    move-exception v0

    move-object v14, v1

    goto/16 :goto_1af

    :cond_138
    move-object v14, v1

    move-object v15, v3

    .line 120
    :try_start_13a
    iget-boolean v0, v8, Lcom/alibaba/fastjson/serializer/SerializeWriter;->disableCircularReferenceDetect:Z
    :try_end_13c
    .catchall {:try_start_13a .. :try_end_13c} :catchall_1a2

    if-nez v0, :cond_152

    .line 121
    :try_start_13e
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerialContext;
    :try_end_140
    .catchall {:try_start_13e .. :try_end_140} :catchall_14e

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p3

    move-object v1, v9

    move-object v9, v2

    move-object/from16 v2, p2

    :try_start_148
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson/serializer/SerialContext;-><init>(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 122
    iput-object v0, v14, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    goto :goto_154

    :catchall_14e
    move-exception v0

    move-object v1, v9

    goto/16 :goto_1a3

    :cond_152
    move-object v1, v9

    move-object v9, v2

    .line 125
    :goto_154
    invoke-virtual {v14, v9}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15f

    .line 126
    invoke-virtual {v14, v9}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    move-object v9, v1

    goto :goto_130

    .line 128
    :cond_15f
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    .line 129
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I
    :try_end_16b
    .catchall {:try_start_148 .. :try_end_16b} :catchall_19f

    and-int v2, v2, p5

    if-eqz v2, :cond_188

    :try_start_16f
    instance-of v2, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eqz v2, :cond_188

    .line 132
    check-cast v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 133
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_179
    .catchall {:try_start_16f .. :try_end_179} :catchall_185

    move/from16 v5, p5

    move-object v2, v9

    move-object v4, v15

    move-object v9, v1

    move-object v1, v14

    :try_start_17f
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeNoneASM(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    move-object/from16 v1, p1

    goto :goto_196

    :catchall_185
    move-exception v0

    move-object v9, v1

    goto :goto_19c

    :cond_188
    move-object v2, v9

    move-object v4, v15

    move-object v9, v1

    .line 135
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_18f
    .catchall {:try_start_17f .. :try_end_18f} :catchall_19b

    move-object/from16 v1, p1

    move/from16 v5, p5

    :try_start_193
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    :goto_196
    add-int/lit8 v13, v13, 0x1

    move-object v3, v4

    goto/16 :goto_d4

    :catchall_19b
    move-exception v0

    :goto_19c
    move-object/from16 v1, p1

    goto :goto_1af

    :catchall_19f
    move-exception v0

    move-object v9, v1

    goto :goto_1a3

    :catchall_1a2
    move-exception v0

    :goto_1a3
    move-object v1, v14

    goto :goto_1af

    .line 142
    :cond_1a5
    invoke-virtual {v8, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_1a8
    .catchall {:try_start_193 .. :try_end_1a8} :catchall_1ab

    .line 144
    iput-object v9, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    return-void

    :catchall_1ab
    move-exception v0

    goto :goto_1af

    :catchall_1ad
    move-exception v0

    move-object v9, v3

    :goto_1af
    iput-object v9, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 145
    throw v0
.end method
