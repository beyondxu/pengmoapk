###### Class com.alibaba.fastjson.util.JavaBeanInfo (com.alibaba.fastjson.util.JavaBeanInfo)
.class public Lcom/alibaba/fastjson/util/JavaBeanInfo;
.super Ljava/lang/Object;
.source "JavaBeanInfo.java"


# instance fields
.field public final buildMethod:Ljava/lang/reflect/Method;

.field public final builderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final creatorConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field public creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

.field public creatorConstructorParameters:[Ljava/lang/String;

.field public final defaultConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field public final defaultConstructorParameterSize:I

.field public final factoryMethod:Ljava/lang/reflect/Method;

.field public final fields:[Lcom/alibaba/fastjson/util/FieldInfo;

.field public final jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

.field public kotlin:Z

.field public kotlinDefaultConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field public orders:[Ljava/lang/String;

.field public final parserFeatures:I

.field public final sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

.field public final typeKey:Ljava/lang/String;

.field public final typeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->clazz:Ljava/lang/Class;

    .line 58
    iput-object p2, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->builderClass:Ljava/lang/Class;

    .line 59
    iput-object p3, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 60
    iput-object p4, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 61
    iput-object p5, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    .line 62
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getParserFeatures(Ljava/lang/Class;)I

    move-result p2

    iput p2, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    .line 63
    iput-object p6, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildMethod:Ljava/lang/reflect/Method;

    .line 65
    iput-object p7, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    const/4 p2, 0x0

    if-eqz p7, :cond_46

    .line 67
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONType;->typeName()Ljava/lang/String;

    move-result-object p6

    .line 68
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_29

    goto :goto_2a

    :cond_29
    move-object v0, p2

    :goto_2a
    iput-object v0, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeKey:Ljava/lang/String;

    .line 71
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_35

    .line 72
    iput-object p6, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    goto :goto_3b

    .line 74
    :cond_35
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p6

    iput-object p6, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    .line 76
    :goto_3b
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object p6

    .line 77
    array-length p7, p6

    if-nez p7, :cond_43

    move-object p6, p2

    :cond_43
    iput-object p6, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->orders:[Ljava/lang/String;

    goto :goto_50

    .line 79
    :cond_46
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p6

    iput-object p6, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeKey:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->orders:[Ljava/lang/String;

    .line 84
    :goto_50
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p6

    new-array p6, p6, [Lcom/alibaba/fastjson/util/FieldInfo;

    iput-object p6, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 85
    invoke-interface {p8, p6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 87
    array-length p7, p6

    new-array p7, p7, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 88
    iget-object v0, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->orders:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_b0

    .line 89
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p8

    invoke-direct {v0, p8}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 90
    array-length p8, p6

    const/4 v2, 0x0

    :goto_6e
    if-ge v2, p8, :cond_7a

    aget-object v3, p6, v2

    .line 91
    iget-object v4, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_6e

    .line 94
    :cond_7a
    iget-object p6, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->orders:[Ljava/lang/String;

    array-length p8, p6

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7f
    if-ge v2, p8, :cond_96

    aget-object v4, p6, v2

    .line 95
    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz v5, :cond_93

    add-int/lit8 v6, v3, 0x1

    .line 97
    aput-object v5, p7, v3

    .line 98
    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v6

    :cond_93
    add-int/lit8 v2, v2, 0x1

    goto :goto_7f

    .line 101
    :cond_96
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p6

    invoke-interface {p6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p6

    :goto_9e
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result p8

    if-eqz p8, :cond_b7

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Lcom/alibaba/fastjson/util/FieldInfo;

    add-int/lit8 v0, v3, 0x1

    .line 102
    aput-object p8, p7, v3

    move v3, v0

    goto :goto_9e

    .line 105
    :cond_b0
    array-length p8, p6

    invoke-static {p6, v1, p7, v1, p8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    invoke-static {p7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 109
    :cond_b7
    iget-object p6, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-static {p6, p7}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_c1

    .line 110
    iget-object p7, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 112
    :cond_c1
    iput-object p7, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz p3, :cond_cd

    .line 115
    invoke-virtual {p3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p3

    array-length p3, p3

    iput p3, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    goto :goto_d9

    :cond_cd
    if-eqz p5, :cond_d7

    .line 117
    invoke-virtual {p5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p3

    array-length p3, p3

    iput p3, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    goto :goto_d9

    .line 119
    :cond_d7
    iput v1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    :goto_d9
    if-eqz p4, :cond_14a

    .line 123
    invoke-virtual {p4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    .line 126
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isKotlin(Ljava/lang/Class;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->kotlin:Z

    if-eqz p3, :cond_128

    .line 128
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    .line 130
    :try_start_ef
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->kotlinDefaultConstructor:Ljava/lang/reflect/Constructor;
    :try_end_f5
    .catchall {:try_start_ef .. :try_end_f5} :catchall_f5

    .line 135
    :catchall_f5
    invoke-static {p4}, Lcom/alibaba/fastjson/util/TypeUtils;->getParameterAnnotations(Ljava/lang/reflect/Constructor;)[[Ljava/lang/annotation/Annotation;

    move-result-object p1

    const/4 p3, 0x0

    .line 136
    :goto_fa
    iget-object p4, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    array-length p4, p4

    if-ge p3, p4, :cond_14a

    array-length p4, p1

    if-ge p3, p4, :cond_14a

    .line 137
    aget-object p4, p1, p3

    .line 139
    array-length p5, p4

    const/4 p6, 0x0

    :goto_106
    if-ge p6, p5, :cond_114

    aget-object p7, p4, p6

    .line 140
    instance-of p8, p7, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz p8, :cond_111

    .line 141
    check-cast p7, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_115

    :cond_111
    add-int/lit8 p6, p6, 0x1

    goto :goto_106

    :cond_114
    move-object p7, p2

    :goto_115
    if-eqz p7, :cond_125

    .line 146
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object p4

    .line 147
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p5

    if-lez p5, :cond_125

    .line 148
    iget-object p5, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    aput-object p4, p5, p3

    :cond_125
    add-int/lit8 p3, p3, 0x1

    goto :goto_fa

    .line 154
    :cond_128
    iget-object p1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    array-length p1, p1

    iget-object p2, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length p2, p2

    if-eq p1, p2, :cond_131

    goto :goto_140

    .line 158
    :cond_131
    :goto_131
    iget-object p1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    array-length p2, p1

    if-ge v1, p2, :cond_14a

    .line 159
    aget-object p1, p1, v1

    iget-object p2, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object p2, p2, v1

    iget-object p2, p2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    if-eq p1, p2, :cond_147

    .line 167
    :goto_140
    invoke-static {p4}, Lcom/alibaba/fastjson/util/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    return-void

    :cond_147
    add-int/lit8 v1, v1, 0x1

    goto :goto_131

    :cond_14a
    return-void
.end method

.method static add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ")Z"
        }
    .end annotation

    .line 189
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_3e

    .line 190
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 192
    iget-object v3, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 193
    iget-boolean v3, v2, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-eqz v3, :cond_21

    iget-boolean v3, p1, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-nez v3, :cond_21

    goto :goto_3b

    .line 197
    :cond_21
    iget-object v3, v2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    iget-object v4, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 198
    invoke-interface {p0, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 202
    :cond_2f
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v2

    if-gez v2, :cond_39

    .line 205
    invoke-interface {p0, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_39
    const/4 p0, 0x0

    return p0

    :cond_3b
    :goto_3b
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 212
    :cond_3e
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method public static build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Lcom/alibaba/fastjson/util/JavaBeanInfo;"
        }
    .end annotation

    .line 218
    sget-boolean v4, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;ZZZ)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object p0

    return-object p0
.end method

.method public static build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;ZZ)Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            "ZZ)",
            "Lcom/alibaba/fastjson/util/JavaBeanInfo;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 261
    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;ZZZ)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object p0

    return-object p0
.end method

.method public static build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;ZZZ)Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .registers 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            "ZZZ)",
            "Lcom/alibaba/fastjson/util/JavaBeanInfo;"
        }
    .end annotation

    move-object/from16 v4, p0

    move-object/from16 v9, p1

    move/from16 v10, p5

    .line 271
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {v4, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/alibaba/fastjson/annotation/JSONType;

    if-eqz v7, :cond_1d

    .line 273
    invoke-interface {v7}, Lcom/alibaba/fastjson/annotation/JSONType;->naming()Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 274
    sget-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    if-eq v0, v1, :cond_1d

    move-object v13, v0

    goto :goto_1f

    :cond_1d
    move-object/from16 v13, p2

    .line 279
    :goto_1f
    invoke-static {v4, v7}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getBuilderClass(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;)Ljava/lang/Class;

    move-result-object v2

    .line 281
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v14

    .line 282
    invoke-virtual {v4}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v15

    .line 283
    invoke-static {v4}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildGenericInfo(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v12

    .line 285
    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->isKotlin(Ljava/lang/Class;)Z

    move-result v16

    .line 286
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v16, :cond_40

    .line 289
    array-length v3, v0

    if-ne v3, v1, :cond_3e

    goto :goto_40

    :cond_3e
    const/4 v3, 0x0

    goto :goto_4f

    :cond_40
    :goto_40
    if-nez v2, :cond_47

    .line 291
    invoke-static {v4, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getDefaultConstructor(Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    goto :goto_4f

    .line 293
    :cond_47
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getDefaultConstructor(Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 301
    :goto_4f
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v5, 0x0

    if-eqz p3, :cond_75

    move-object v0, v4

    :goto_59
    if-eqz v0, :cond_67

    .line 305
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 307
    invoke-static {v4, v9, v13, v8, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->computeFields(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/List;[Ljava/lang/reflect/Field;)V

    .line 304
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_59

    :cond_67
    if-eqz v3, :cond_6c

    .line 311
    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 314
    :cond_6c
    new-instance v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    const/4 v4, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    return-object v0

    :cond_75
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .line 317
    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-nez v2, :cond_92

    invoke-virtual {v4}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v2

    if-eqz v2, :cond_90

    goto :goto_92

    :cond_90
    const/4 v2, 0x0

    goto :goto_93

    :cond_92
    :goto_92
    const/4 v2, 0x1

    :goto_93
    if-nez v21, :cond_97

    if-eqz v20, :cond_99

    :cond_97
    if-eqz v2, :cond_400

    .line 320
    :cond_99
    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->getMixInAnnotations(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v7

    .line 321
    instance-of v1, v7, Ljava/lang/Class;

    if-eqz v1, :cond_b7

    .line 322
    check-cast v7, Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 323
    invoke-static {v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getCreatorConstructor([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    if-eqz v1, :cond_b7

    .line 326
    :try_start_ad
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1
    :try_end_b5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_ad .. :try_end_b5} :catch_b6

    goto :goto_b8

    :catch_b6
    nop

    :cond_b7
    const/4 v1, 0x0

    :goto_b8
    if-nez v1, :cond_be

    .line 334
    invoke-static {v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getCreatorConstructor([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    :cond_be
    move-object/from16 v22, v1

    if-eqz v22, :cond_187

    if-nez v2, :cond_187

    .line 338
    invoke-static/range {v22 .. v22}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 340
    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    .line 343
    array-length v0, v10

    if-lez v0, :cond_177

    .line 344
    invoke-static/range {v22 .. v22}, Lcom/alibaba/fastjson/util/TypeUtils;->getParameterAnnotations(Ljava/lang/reflect/Constructor;)[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 345
    :goto_d4
    array-length v7, v10

    if-ge v1, v7, :cond_177

    array-length v7, v0

    if-ge v1, v7, :cond_177

    .line 346
    aget-object v7, v0, v1

    .line 348
    array-length v3, v7

    const/4 v5, 0x0

    :goto_de
    if-ge v5, v3, :cond_ec

    aget-object v6, v7, v5

    .line 349
    instance-of v11, v6, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v11, :cond_e9

    .line 350
    check-cast v6, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_ed

    :cond_e9
    add-int/lit8 v5, v5, 0x1

    goto :goto_de

    :cond_ec
    const/4 v6, 0x0

    .line 355
    :goto_ed
    aget-object v3, v10, v1

    .line 356
    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v5

    aget-object v5, v5, v1

    if-eqz v6, :cond_118

    .line 362
    invoke-interface {v6}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7, v14}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 363
    invoke-interface {v6}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v11

    .line 364
    invoke-interface {v6}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v26

    .line 365
    invoke-interface {v6}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v27

    .line 366
    invoke-interface {v6}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v6

    goto :goto_11f

    :cond_118
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    :goto_11f
    if-eqz v6, :cond_127

    .line 369
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v28

    if-nez v28, :cond_12f

    :cond_127
    if-nez v2, :cond_12d

    .line 371
    invoke-static/range {v22 .. v22}, Lcom/alibaba/fastjson/util/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v2

    .line 373
    :cond_12d
    aget-object v6, v2, v1

    :cond_12f
    if-nez v7, :cond_14a

    if-nez v2, :cond_13e

    if-eqz v16, :cond_13a

    .line 379
    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_13e

    .line 381
    :cond_13a
    invoke-static/range {v22 .. v22}, Lcom/alibaba/fastjson/util/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v2

    :cond_13e
    :goto_13e
    move-object/from16 p5, v0

    .line 385
    array-length v0, v2

    if-le v0, v1, :cond_14c

    .line 386
    aget-object v0, v2, v1

    .line 387
    invoke-static {v4, v0, v14}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v7

    goto :goto_14c

    :cond_14a
    move-object/from16 p5, v0

    :cond_14c
    :goto_14c
    move-object/from16 v28, v2

    .line 391
    new-instance v0, Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v23, p5

    move/from16 v24, v1

    move-object v2, v4

    move-object v4, v5

    move-object v1, v6

    move-object v5, v7

    move v6, v11

    move/from16 v7, v26

    const/16 p2, 0x1

    const/16 p4, 0x0

    move-object v11, v8

    move-object/from16 v26, v13

    move/from16 v8, v27

    const/4 v13, 0x2

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    move-object v4, v2

    .line 393
    invoke-static {v11, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    add-int/lit8 v1, v24, 0x1

    move-object v8, v11

    move-object/from16 v0, v23

    move-object/from16 v13, v26

    move-object/from16 v2, v28

    goto/16 :goto_d4

    :cond_177
    move-object v11, v8

    move-object/from16 v26, v13

    const/16 p2, 0x1

    const/16 p4, 0x0

    const/4 v13, 0x2

    move-object v1, v4

    move-object v8, v11

    move-object/from16 v13, v20

    const/16 v23, 0x2

    goto/16 :goto_40b

    :cond_187
    move-object v11, v8

    move-object/from16 v26, v13

    const/16 p2, 0x1

    const/16 p4, 0x0

    const/4 v13, 0x2

    .line 398
    invoke-static {v4, v15, v10}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getFactoryMethod(Ljava/lang/Class;[Ljava/lang/reflect/Method;Z)Ljava/lang/reflect/Method;

    move-result-object v17

    if-eqz v17, :cond_23d

    .line 399
    invoke-static/range {v17 .. v17}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 402
    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 403
    array-length v1, v0

    if-lez v1, :cond_239

    .line 404
    invoke-static/range {v17 .. v17}, Lcom/alibaba/fastjson/util/TypeUtils;->getParameterAnnotations(Ljava/lang/reflect/Method;)[[Ljava/lang/annotation/Annotation;

    move-result-object v9

    const/4 v1, 0x0

    const/4 v12, 0x0

    .line 405
    :goto_1a5
    array-length v2, v0

    if-ge v12, v2, :cond_227

    .line 406
    aget-object v2, v9, v12

    .line 408
    array-length v3, v2

    const/4 v5, 0x0

    :goto_1ac
    if-ge v5, v3, :cond_1ba

    aget-object v6, v2, v5

    .line 409
    instance-of v7, v6, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v7, :cond_1b7

    .line 410
    check-cast v6, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_1bb

    :cond_1b7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1ac

    :cond_1ba
    const/4 v6, 0x0

    :goto_1bb
    if-nez v6, :cond_1ce

    if-eqz v10, :cond_1c6

    .line 414
    invoke-static/range {v17 .. v17}, Lcom/alibaba/fastjson/util/TypeUtils;->isJacksonCreator(Ljava/lang/reflect/Method;)Z

    move-result v2

    if-eqz v2, :cond_1c6

    goto :goto_1ce

    .line 415
    :cond_1c6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "illegal json creator"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1ce
    :goto_1ce
    if-eqz v6, :cond_1ec

    .line 422
    invoke-interface {v6}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v2

    .line 423
    invoke-interface {v6}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v3

    .line 424
    invoke-interface {v6}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v5

    .line 425
    invoke-interface {v6}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v6

    move v7, v5

    move v8, v6

    move v6, v3

    goto :goto_1f0

    :cond_1ec
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1f0
    if-eqz v2, :cond_1fc

    .line 428
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1f9

    goto :goto_1fc

    :cond_1f9
    :goto_1f9
    move-object v13, v1

    move-object v1, v2

    goto :goto_205

    :cond_1fc
    :goto_1fc
    if-nez v1, :cond_202

    .line 430
    invoke-static/range {v17 .. v17}, Lcom/alibaba/fastjson/util/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v1

    .line 432
    :cond_202
    aget-object v2, v1, v12

    goto :goto_1f9

    .line 435
    :goto_205
    aget-object v3, v0, v12

    .line 436
    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v2

    aget-object v2, v2, v12

    .line 438
    invoke-static {v4, v1, v14}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v5

    move-object v15, v0

    .line 439
    new-instance v0, Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v32, v4

    move-object v4, v2

    move-object/from16 v2, v32

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    .line 441
    invoke-static {v11, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, p0

    move-object v1, v13

    move-object v0, v15

    goto/16 :goto_1a5

    .line 444
    :cond_227
    new-instance v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object v8, v11

    move-object/from16 v5, v17

    move-object/from16 v7, v19

    move-object/from16 v2, v20

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    return-object v0

    :cond_239
    move-object/from16 v10, v17

    goto/16 :goto_3f7

    :cond_23d
    move-object/from16 v10, v17

    if-nez v2, :cond_3f7

    .line 447
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v16, :cond_25c

    .line 450
    array-length v2, v0

    if-lez v2, :cond_25c

    .line 451
    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v2

    .line 452
    invoke-static {v0, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getKotlinConstructor([Ljava/lang/reflect/Constructor;[Ljava/lang/String;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 453
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    move-object/from16 v22, v0

    move-object v13, v2

    const/16 v23, 0x2

    goto/16 :goto_30d

    .line 456
    :cond_25c
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_25f
    if-ge v5, v2, :cond_30a

    aget-object v6, v0, v5

    .line 457
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 459
    const-string v8, "org.springframework.security.web.authentication.WebAuthenticationDetails"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_291

    .line 460
    array-length v8, v7

    if-ne v8, v13, :cond_28d

    aget-object v8, v7, p4

    const/16 v23, 0x2

    const-class v13, Ljava/lang/String;

    if-ne v8, v13, :cond_303

    aget-object v7, v7, p2

    const-class v8, Ljava/lang/String;

    if-ne v7, v8, :cond_303

    const/4 v7, 0x1

    .line 462
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 463
    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v2

    :goto_288
    move-object v13, v2

    move-object/from16 v22, v6

    goto/16 :goto_30d

    :cond_28d
    const/16 v23, 0x2

    goto/16 :goto_303

    :cond_291
    const/16 v23, 0x2

    .line 470
    const-string v8, "org.springframework.security.web.authentication.preauth.PreAuthenticatedAuthenticationToken"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2c6

    .line 471
    array-length v8, v7

    const/4 v13, 0x3

    if-ne v8, v13, :cond_303

    aget-object v8, v7, p4

    const-class v13, Ljava/lang/Object;

    if-ne v8, v13, :cond_303

    const/4 v8, 0x1

    aget-object v13, v7, v8

    const-class v8, Ljava/lang/Object;

    if-ne v13, v8, :cond_303

    aget-object v7, v7, v23

    const-class v8, Ljava/util/Collection;

    if-ne v7, v8, :cond_303

    const/4 v7, 0x1

    .line 476
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v13, 0x3

    .line 477
    new-array v2, v13, [Ljava/lang/String;

    const-string v0, "principal"

    aput-object v0, v2, p4

    const-string v0, "credentials"

    aput-object v0, v2, v7

    const-string v0, "authorities"

    aput-object v0, v2, v23

    goto :goto_288

    .line 484
    :cond_2c6
    const-string v8, "org.springframework.security.core.authority.SimpleGrantedAuthority"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2df

    .line 485
    array-length v8, v7

    const/4 v13, 0x1

    if-ne v8, v13, :cond_303

    aget-object v7, v7, p4

    const-class v8, Ljava/lang/String;

    if-ne v7, v8, :cond_303

    .line 488
    new-array v2, v13, [Ljava/lang/String;

    const-string v0, "authority"

    aput-object v0, v2, p4

    goto :goto_288

    :cond_2df
    const/4 v13, 0x1

    .line 498
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v7

    and-int/2addr v7, v13

    if-eqz v7, :cond_2e9

    const/4 v7, 0x1

    goto :goto_2ea

    :cond_2e9
    const/4 v7, 0x0

    :goto_2ea
    if-nez v7, :cond_2ed

    goto :goto_303

    .line 502
    :cond_2ed
    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_303

    .line 503
    array-length v8, v7

    if-nez v8, :cond_2f7

    goto :goto_303

    :cond_2f7
    if-eqz v22, :cond_300

    if-eqz v3, :cond_300

    .line 507
    array-length v8, v7

    array-length v13, v3

    if-gt v8, v13, :cond_300

    goto :goto_303

    :cond_300
    move-object/from16 v22, v6

    move-object v3, v7

    :cond_303
    :goto_303
    add-int/lit8 v5, v5, 0x1

    const/16 p2, 0x1

    const/4 v13, 0x2

    goto/16 :goto_25f

    :cond_30a
    const/16 v23, 0x2

    move-object v13, v3

    :goto_30d
    if-eqz v13, :cond_314

    .line 519
    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    goto :goto_315

    :cond_314
    const/4 v0, 0x0

    :goto_315
    if-eqz v13, :cond_3e2

    .line 522
    array-length v2, v0

    array-length v3, v13

    if-ne v2, v3, :cond_3e2

    .line 524
    invoke-static/range {v22 .. v22}, Lcom/alibaba/fastjson/util/TypeUtils;->getParameterAnnotations(Ljava/lang/reflect/Constructor;)[[Ljava/lang/annotation/Annotation;

    move-result-object v17

    const/4 v2, 0x0

    .line 525
    :goto_320
    array-length v3, v0

    if-ge v2, v3, :cond_3b8

    .line 526
    aget-object v3, v17, v2

    .line 527
    aget-object v5, v13, v2

    .line 530
    array-length v6, v3

    const/4 v7, 0x0

    :goto_329
    if-ge v7, v6, :cond_33b

    aget-object v8, v3, v7

    move-object/from16 v27, v0

    .line 531
    instance-of v0, v8, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v0, :cond_336

    .line 532
    check-cast v8, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_33e

    :cond_336
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v27

    goto :goto_329

    :cond_33b
    move-object/from16 v27, v0

    const/4 v8, 0x0

    .line 537
    :goto_33e
    aget-object v3, v27, v2

    .line 538
    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v2

    .line 539
    invoke-static {v4, v5, v14}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v6

    if-eqz v6, :cond_357

    if-nez v8, :cond_357

    .line 542
    const-class v7, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v6, v7}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/alibaba/fastjson/annotation/JSONField;

    :cond_357
    if-nez v8, :cond_377

    .line 550
    const-string v7, "org.springframework.security.core.userdetails.User"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_371

    const-string v7, "password"

    .line 551
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_371

    .line 552
    sget-object v7, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v7, v7, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move-object v4, v0

    move v8, v7

    const/4 v7, 0x0

    goto :goto_374

    :cond_371
    move-object v4, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_374
    const/16 v28, 0x0

    goto :goto_397

    .line 557
    :cond_377
    invoke-interface {v8}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v7

    .line 558
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v28

    if-eqz v28, :cond_382

    move-object v5, v7

    .line 561
    :cond_382
    invoke-interface {v8}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v7

    .line 562
    invoke-interface {v8}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v28

    .line 563
    invoke-interface {v8}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v8

    invoke-static {v8}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v8

    move-object v4, v0

    .line 565
    :goto_397
    new-instance v0, Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v29, v27

    move-object/from16 v27, v1

    move-object v1, v5

    move-object v5, v6

    move v6, v7

    move/from16 v7, v28

    move-object/from16 v28, v29

    move/from16 v29, v2

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    .line 567
    invoke-static {v11, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    add-int/lit8 v2, v29, 0x1

    move-object/from16 v4, p0

    move-object/from16 v1, v27

    move-object/from16 v0, v28

    goto/16 :goto_320

    :cond_3b8
    if-nez v16, :cond_3d8

    .line 570
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javax.servlet.http.Cookie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d8

    .line 571
    new-instance v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object v8, v11

    move-object/from16 v7, v19

    move-object/from16 v2, v20

    move-object/from16 v4, v22

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    return-object v0

    :cond_3d8
    move-object/from16 v1, p0

    move-object v8, v11

    move-object/from16 v13, v20

    move-object/from16 v4, v22

    move-object/from16 v22, v4

    goto :goto_3fd

    :cond_3e2
    move-object v1, v4

    .line 574
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "default constructor not found. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f7
    :goto_3f7
    move-object v1, v4

    move-object v8, v11

    move-object/from16 v13, v20

    const/16 v23, 0x2

    :goto_3fd
    move-object/from16 v17, v10

    goto :goto_40b

    :cond_400
    move-object v1, v4

    move-object/from16 v26, v13

    move-object/from16 v13, v20

    const/16 p4, 0x0

    const/16 v23, 0x2

    const/16 v22, 0x0

    :goto_40b
    if-eqz v21, :cond_410

    .line 580
    invoke-static/range {v21 .. v21}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 583
    :cond_410
    const-string v0, "set"

    if-eqz v13, :cond_5cb

    .line 586
    const-class v2, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    invoke-static {v13, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    if-eqz v2, :cond_423

    .line 588
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;->withPrefix()Ljava/lang/String;

    move-result-object v2

    goto :goto_424

    :cond_423
    const/4 v2, 0x0

    :goto_424
    if-nez v2, :cond_429

    .line 592
    const-string/jumbo v2, "with"

    .line 595
    :cond_429
    invoke-virtual {v13}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_42f
    if-ge v5, v4, :cond_57d

    move-object v6, v2

    aget-object v2, v3, v5

    .line 596
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_451

    :goto_43e
    move-object/from16 v29, v3

    move/from16 v20, v4

    move/from16 v27, v5

    move-object/from16 v28, v6

    move-object/from16 p4, v13

    move-object/from16 v30, v14

    move-object/from16 p2, v15

    const/4 v13, 0x0

    move-object v15, v0

    move-object v14, v8

    goto/16 :goto_565

    .line 600
    :cond_451
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_45c

    goto :goto_43e

    .line 606
    :cond_45c
    const-class v7, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v2, v7}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lcom/alibaba/fastjson/annotation/JSONField;

    if-nez v7, :cond_46a

    .line 609
    invoke-static {v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getSuperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v7

    :cond_46a
    if-eqz v7, :cond_4d5

    .line 613
    invoke-interface {v7}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v10

    if-nez v10, :cond_473

    goto :goto_43e

    :cond_473
    move-object v10, v6

    .line 617
    invoke-interface {v7}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v6

    .line 618
    invoke-interface {v7}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v11

    invoke-static {v11}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    .line 619
    invoke-interface {v7}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v20

    .line 621
    invoke-interface {v7}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    if-eqz v27, :cond_4bf

    .line 622
    invoke-interface {v7}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v27, v0

    .line 623
    new-instance v0, Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v28, v10

    const/4 v10, 0x0

    move-object v9, v7

    move v7, v11

    const/4 v11, 0x0

    move-object/from16 v29, v3

    const/4 v3, 0x0

    move-object/from16 p4, v13

    move-object/from16 v30, v14

    move-object/from16 p2, v15

    move-object/from16 v15, v27

    const/4 v13, 0x0

    move/from16 v27, v5

    move-object v14, v8

    move/from16 v8, v20

    move-object/from16 v5, p1

    move/from16 v20, v4

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v14, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto/16 :goto_565

    :cond_4bf
    move-object v9, v7

    move-object/from16 v28, v10

    move v7, v11

    move-object/from16 v30, v14

    move-object v14, v8

    move/from16 v8, v20

    move-object/from16 v29, v3

    move/from16 v27, v5

    move-object/from16 p4, v13

    move-object/from16 p2, v15

    const/4 v13, 0x0

    move-object v15, v0

    move/from16 v20, v4

    goto :goto_4ea

    :cond_4d5
    move-object/from16 v28, v6

    move-object v9, v7

    move-object/from16 v30, v14

    move-object v14, v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v29, v3

    move/from16 v20, v4

    move/from16 v27, v5

    move-object/from16 p4, v13

    move-object/from16 p2, v15

    const/4 v13, 0x0

    move-object v15, v0

    .line 629
    :goto_4ea
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 631
    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_505

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x3

    if-le v1, v3, :cond_505

    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_510

    .line 634
    :cond_505
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_514

    .line 635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_510
    move-object v3, v1

    move-object/from16 v1, v28

    goto :goto_537

    :cond_514
    move-object/from16 v1, v28

    .line 637
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_51f

    :goto_51c
    move-object/from16 v28, v1

    goto :goto_565

    .line 641
    :cond_51f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v3, v4, :cond_52a

    goto :goto_51c

    .line 645
    :cond_52a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 649
    :goto_537
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 650
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_548

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-nez v4, :cond_548

    goto :goto_51c

    .line 654
    :cond_548
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-virtual {v3, v13, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 656
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v28, v1

    move-object v1, v0

    .line 658
    new-instance v0, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v14, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    :goto_565
    add-int/lit8 v5, v27, 0x1

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v13, p4

    move-object v8, v14

    move-object v0, v15

    move/from16 v4, v20

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    move-object/from16 v14, v30

    const/16 p4, 0x0

    move-object/from16 v15, p2

    goto/16 :goto_42f

    :cond_57d
    move-object/from16 p4, v13

    move-object/from16 v30, v14

    move-object/from16 p2, v15

    const/4 v13, 0x0

    move-object v15, v0

    move-object v14, v8

    if-eqz p4, :cond_5c8

    .line 663
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    if-eqz v0, :cond_599

    .line 667
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;->buildMethod()Ljava/lang/String;

    move-result-object v11

    goto :goto_59a

    :cond_599
    const/4 v11, 0x0

    :goto_59a
    if-eqz v11, :cond_5a2

    .line 670
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5a4

    .line 671
    :cond_5a2
    const-string v11, "build"

    :cond_5a4
    const/4 v0, 0x0

    .line 675
    :try_start_5a5
    invoke-virtual {v1, v11, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6
    :try_end_5a9
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5a5 .. :try_end_5a9} :catch_5aa
    .catch Ljava/lang/SecurityException; {:try_start_5a5 .. :try_end_5a9} :catch_5aa

    goto :goto_5ad

    :catch_5aa
    nop

    move-object/from16 v6, v18

    :goto_5ad
    if-nez v6, :cond_5b8

    .line 684
    :try_start_5af
    const-string v2, "create"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_5b5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5af .. :try_end_5b5} :catch_5b7
    .catch Ljava/lang/SecurityException; {:try_start_5af .. :try_end_5b5} :catch_5b7

    move-object v6, v2

    goto :goto_5b8

    :catch_5b7
    nop

    :cond_5b8
    :goto_5b8
    if-eqz v6, :cond_5c0

    .line 696
    invoke-static {v6}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    move-object/from16 v18, v6

    goto :goto_5d4

    .line 693
    :cond_5c0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "buildMethod not found."

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5c8
    move-object/from16 v1, p4

    goto :goto_5d3

    :cond_5cb
    move-object v1, v13

    move-object/from16 v30, v14

    move-object/from16 p2, v15

    const/4 v13, 0x0

    move-object v15, v0

    move-object v14, v8

    :goto_5d3
    const/4 v0, 0x0

    :goto_5d4
    move-object/from16 v2, p2

    .line 700
    array-length v3, v2

    const/4 v4, 0x0

    :goto_5d8
    const-string v5, "get"

    const/4 v6, 0x4

    if-ge v4, v3, :cond_8e3

    move-object v7, v2

    aget-object v2, v7, v4

    .line 702
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    .line 704
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v9

    if-eqz v9, :cond_60a

    :cond_5ee
    :goto_5ee
    move-object/from16 v9, p1

    move-object/from16 v28, v0

    move-object/from16 v20, v1

    move/from16 v23, v3

    move/from16 v25, v4

    move-object/from16 p2, v7

    move-object/from16 p4, v15

    move-object/from16 v15, v26

    move-object/from16 v13, v30

    const/16 v27, 0x2

    const/16 v29, 0x1

    const/16 v30, 0x0

    move-object/from16 v4, p0

    goto/16 :goto_8cd

    .line 709
    :cond_60a
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    .line 710
    sget-object v10, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_621

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_621

    goto :goto_5ee

    .line 714
    :cond_621
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Ljava/lang/Object;

    if-ne v9, v10, :cond_62a

    goto :goto_5ee

    .line 718
    :cond_62a
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    .line 720
    array-length v10, v9

    if-eqz v10, :cond_5ee

    array-length v10, v9

    const/4 v11, 0x2

    if-le v10, v11, :cond_636

    goto :goto_5ee

    .line 724
    :cond_636
    const-class v10, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v2, v10}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    check-cast v10, Lcom/alibaba/fastjson/annotation/JSONField;

    const/4 v0, 0x4

    move-object/from16 v20, v7

    move-object/from16 p2, v8

    const/4 v8, 0x0

    if-eqz v10, :cond_67e

    .line 725
    array-length v6, v9

    if-ne v6, v11, :cond_67e

    aget-object v6, v9, v13

    const-class v7, Ljava/lang/String;

    if-ne v6, v7, :cond_67e

    const/4 v7, 0x1

    aget-object v6, v9, v7

    const-class v7, Ljava/lang/Object;

    if-ne v6, v7, :cond_67e

    .line 729
    new-instance v0, Lcom/alibaba/fastjson/util/FieldInfo;

    move-object v9, v10

    const/4 v10, 0x0

    const/16 v23, 0x2

    const/4 v11, 0x0

    move-object v5, v1

    const-string v1, ""

    move v6, v3

    const/4 v3, 0x0

    move/from16 v25, v4

    move/from16 v23, v6

    move-object/from16 v29, v20

    const/16 p4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x1

    const/16 v27, 0x2

    const/16 v28, 0x0

    move-object/from16 v4, p0

    move-object/from16 v20, v5

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v14, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto :goto_694

    :cond_67e
    move/from16 v23, v3

    move/from16 v25, v4

    move-object/from16 v29, v20

    const/16 p4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x1

    const/16 v27, 0x2

    const/16 v28, 0x0

    move-object/from16 v4, p0

    move-object/from16 v20, v1

    .line 734
    array-length v1, v9

    if-eq v1, v13, :cond_6a4

    :cond_694
    :goto_694
    move-object/from16 v9, p1

    move-object/from16 p4, v15

    move-object/from16 v15, v26

    move-object/from16 p2, v29

    move-object/from16 v13, v30

    const/16 v29, 0x1

    const/16 v30, 0x0

    goto/16 :goto_8cd

    :cond_6a4
    if-nez v10, :cond_6aa

    .line 739
    invoke-static {v4, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getSuperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v10

    :cond_6aa
    if-nez v10, :cond_6b3

    .line 742
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v0, :cond_6b3

    goto :goto_694

    :cond_6b3
    if-eqz v10, :cond_6ed

    .line 747
    invoke-interface {v10}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v1

    if-nez v1, :cond_6bc

    goto :goto_694

    .line 751
    :cond_6bc
    invoke-interface {v10}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v6

    .line 752
    invoke-interface {v10}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v7

    .line 753
    invoke-interface {v10}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v8

    .line 755
    invoke-interface {v10}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6ed

    .line 756
    invoke-interface {v10}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    .line 757
    new-instance v0, Lcom/alibaba/fastjson/util/FieldInfo;

    move-object v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v14, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto :goto_694

    :cond_6ed
    move-object v1, v9

    move-object v9, v10

    move-object/from16 v3, p2

    if-nez v9, :cond_6f9

    .line 763
    invoke-virtual {v3, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_694

    :cond_6f9
    if-eqz v20, :cond_6fc

    goto :goto_694

    :cond_6fc
    const/4 v10, 0x3

    .line 767
    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eqz v16, :cond_728

    .line 775
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 p5, v1

    move-object/from16 v13, v29

    const/4 v0, 0x0

    .line 776
    :goto_70d
    array-length v1, v13

    if-ge v0, v1, :cond_72e

    .line 777
    aget-object v1, v13, v0

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_725

    .line 778
    aget-object v1, v13, v0

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_725
    add-int/lit8 v0, v0, 0x1

    goto :goto_70d

    :cond_728
    move-object/from16 p5, v1

    move-object/from16 v13, v29

    move-object/from16 v10, v28

    .line 783
    :cond_72e
    invoke-static {v11}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    const-string v1, "is"

    const-string v5, "g"

    if-nez v0, :cond_7d9

    const/16 v0, 0x200

    if-le v11, v0, :cond_73e

    goto/16 :goto_7d9

    :cond_73e
    const/16 v0, 0x5f

    if-ne v11, v0, :cond_797

    if-eqz v16, :cond_779

    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 804
    invoke-interface {v10, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_761

    const/4 v10, 0x3

    .line 805
    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_772

    :cond_761
    const/4 v10, 0x3

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_772
    move-object/from16 v5, v30

    .line 809
    invoke-static {v4, v0, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v11

    goto :goto_793

    :cond_779
    move-object/from16 v5, v30

    const/4 v0, 0x4

    const/4 v10, 0x3

    .line 811
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 812
    invoke-static {v4, v0, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v11

    if-nez v11, :cond_793

    .line 815
    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 816
    invoke-static {v4, v3, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v11

    if-nez v11, :cond_792

    goto :goto_793

    :cond_792
    move-object v0, v3

    :cond_793
    :goto_793
    move-object v3, v0

    move-object v0, v5

    goto/16 :goto_808

    :cond_797
    move-object/from16 v5, v30

    const/4 v10, 0x3

    const/16 v0, 0x66

    if-ne v11, v0, :cond_7a5

    .line 824
    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_7a2
    move-object v3, v0

    move-object v0, v5

    goto :goto_7f2

    .line 825
    :cond_7a5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v11, 0x5

    if-lt v0, v11, :cond_7c0

    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_7c0

    .line 826
    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7a2

    .line 828
    :cond_7c0
    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 829
    invoke-static {v4, v0, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v11

    if-nez v11, :cond_793

    move-object/from16 v9, p1

    move-object/from16 p2, v13

    move-object/from16 p4, v15

    move-object/from16 v15, v26

    const/16 v29, 0x1

    const/16 v30, 0x0

    move-object v13, v5

    goto/16 :goto_8cd

    :cond_7d9
    :goto_7d9
    move-object/from16 v0, v30

    if-eqz v16, :cond_7f5

    .line 789
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 790
    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->getPropertyNameByMethodName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_7f2
    move-object/from16 v11, v28

    goto :goto_808

    .line 792
    :cond_7f5
    sget-boolean v5, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-eqz v5, :cond_803

    const/4 v10, 0x3

    .line 793
    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_7f2

    .line 795
    :cond_803
    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->getPropertyNameByMethodName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_7f2

    :goto_808
    if-nez v11, :cond_80e

    .line 836
    invoke-static {v4, v3, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v11

    :cond_80e
    if-nez v11, :cond_838

    .line 839
    aget-object v5, p5, p4

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v5, v10, :cond_838

    .line 840
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 841
    invoke-static {v4, v5, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v11

    goto :goto_83a

    :cond_838
    const/4 v1, 0x0

    const/4 v10, 0x1

    :goto_83a
    if-eqz v11, :cond_8a8

    .line 846
    const-class v5, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v11, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v5, :cond_89f

    .line 849
    invoke-interface {v5}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v6

    if-nez v6, :cond_85b

    move-object/from16 v9, p1

    move-object/from16 p2, v13

    move-object/from16 p4, v15

    move-object/from16 v15, v26

    const/16 v29, 0x1

    const/16 v30, 0x0

    move-object v13, v0

    goto/16 :goto_8cd

    .line 853
    :cond_85b
    invoke-interface {v5}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v6

    .line 854
    invoke-interface {v5}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v7

    .line 855
    invoke-interface {v5}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v8

    invoke-static {v8}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v8

    .line 857
    invoke-interface {v5}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-eqz v29, :cond_89f

    const/16 v29, 0x0

    .line 858
    invoke-interface {v5}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v30, v0

    .line 859
    new-instance v0, Lcom/alibaba/fastjson/util/FieldInfo;

    move-object v3, v11

    const/4 v11, 0x0

    move-object v10, v5

    move-object/from16 p2, v13

    move-object/from16 v13, v30

    const/16 v29, 0x1

    const/16 v30, 0x0

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v14, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    move-object/from16 v4, p0

    move-object/from16 v9, p1

    move-object/from16 p4, v15

    move-object/from16 v15, v26

    goto :goto_8cd

    :cond_89f
    move-object v10, v5

    move-object/from16 p2, v13

    const/16 v29, 0x1

    const/16 v30, 0x0

    move-object v13, v0

    goto :goto_8b1

    :cond_8a8
    move-object/from16 p2, v13

    const/16 v29, 0x1

    const/16 v30, 0x0

    move-object v13, v0

    move-object/from16 v10, v28

    :goto_8b1
    if-eqz v26, :cond_8b9

    move-object/from16 v0, v26

    .line 868
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_8b9
    move-object v1, v3

    .line 871
    new-instance v0, Lcom/alibaba/fastjson/util/FieldInfo;

    move-object v3, v11

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 p4, v15

    move-object/from16 v15, v26

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;Ljava/util/Map;)V

    move-object v9, v5

    invoke-static {v14, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    :goto_8cd
    add-int/lit8 v0, v25, 0x1

    move-object/from16 v2, p2

    move v4, v0

    move-object/from16 v30, v13

    move-object/from16 v26, v15

    move-object/from16 v1, v20

    move/from16 v3, v23

    move-object/from16 v0, v28

    const/4 v13, 0x0

    const/16 v23, 0x2

    move-object/from16 v15, p4

    goto/16 :goto_5d8

    :cond_8e3
    move-object/from16 v4, p0

    move-object/from16 v9, p1

    move-object/from16 v28, v0

    move-object/from16 v20, v1

    move-object/from16 v15, v26

    move-object/from16 v13, v30

    const/16 v29, 0x1

    const/16 v30, 0x0

    .line 875
    invoke-virtual {v4}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 876
    invoke-static {v4, v9, v15, v14, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->computeFields(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/List;[Ljava/lang/reflect/Field;)V

    .line 878
    invoke-virtual {v4}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_900
    if-ge v2, v1, :cond_a03

    move/from16 v30, v2

    aget-object v2, v0, v30

    .line 879
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 880
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-ge v6, v7, :cond_91e

    :cond_911
    :goto_911
    move-object/from16 v23, v0

    move/from16 v16, v1

    move-object/from16 v24, v5

    move-object v5, v9

    const/16 v25, 0x3

    const/16 v31, 0x4

    goto/16 :goto_9f8

    .line 884
    :cond_91e
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-eqz v6, :cond_929

    goto :goto_911

    :cond_929
    if-nez v20, :cond_911

    .line 888
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_911

    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v8

    if-eqz v8, :cond_911

    .line 889
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v8, v8

    if-eqz v8, :cond_944

    goto :goto_911

    .line 893
    :cond_944
    const-class v8, Ljava/util/Collection;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_974

    const-class v8, Ljava/util/Map;

    .line 894
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_974

    const-class v8, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 895
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v10

    if-eq v8, v10, :cond_974

    const-class v8, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 896
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v10

    if-eq v8, v10, :cond_974

    const-class v8, Ljava/util/concurrent/atomic/AtomicLong;

    .line 897
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v10

    if-ne v8, v10, :cond_911

    .line 902
    :cond_974
    const-class v8, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v2, v8}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v8, :cond_985

    .line 903
    invoke-interface {v8}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v10

    if-eqz v10, :cond_985

    goto :goto_911

    :cond_985
    if-eqz v8, :cond_996

    .line 907
    invoke-interface {v8}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_996

    .line 908
    invoke-interface {v8}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    goto :goto_9cb

    .line 910
    :cond_996
    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->getPropertyNameByMethodName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 912
    invoke-static {v4, v3, v13}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v11

    if-eqz v11, :cond_9cb

    .line 914
    const-class v10, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v11, v10}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    check-cast v10, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v10, :cond_9b2

    .line 915
    invoke-interface {v10}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v10

    if-nez v10, :cond_9b2

    goto/16 :goto_911

    .line 919
    :cond_9b2
    const-class v10, Ljava/util/Collection;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_9cd

    const-class v6, Ljava/util/Map;

    .line 920
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_9cb

    goto :goto_9cd

    :cond_9cb
    :goto_9cb
    move-object/from16 v11, v28

    :cond_9cd
    :goto_9cd
    if-eqz v15, :cond_9d3

    .line 927
    invoke-virtual {v15, v3}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 930
    :cond_9d3
    invoke-static {v14, v3}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getField(Ljava/util/List;Ljava/lang/String;)Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v6

    if-eqz v6, :cond_9db

    goto/16 :goto_911

    :cond_9db
    move-object v6, v0

    .line 935
    new-instance v0, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v10, 0x0

    move/from16 v16, v1

    move-object v1, v3

    move-object v3, v11

    const/4 v11, 0x0

    move-object/from16 v23, v6

    const/4 v6, 0x0

    const/16 v31, 0x4

    const/4 v7, 0x0

    move-object v9, v8

    const/4 v8, 0x0

    move-object/from16 v24, v5

    const/16 v25, 0x3

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v14, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    :goto_9f8
    add-int/lit8 v2, v30, 0x1

    move-object v9, v5

    move/from16 v1, v16

    move-object/from16 v0, v23

    move-object/from16 v5, v24

    goto/16 :goto_900

    :cond_a03
    move-object v5, v9

    .line 940
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a20

    .line 941
    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->isXmlField(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a11

    goto :goto_a13

    :cond_a11
    move/from16 v29, p3

    :goto_a13
    if-eqz v29, :cond_a20

    move-object v0, v4

    :goto_a16
    if-eqz v0, :cond_a20

    .line 947
    invoke-static {v4, v5, v15, v14, v13}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->computeFields(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/List;[Ljava/lang/reflect/Field;)V

    .line 946
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_a16

    .line 952
    :cond_a20
    new-instance v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object v1, v4

    move-object v8, v14

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    return-object v0
.end method

.method private static buildGenericInfo(Ljava/lang/Class;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 223
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    :goto_8
    move-object v6, v0

    move-object v0, p0

    move-object p0, v6

    if-eqz p0, :cond_57

    .line 231
    const-class v2, Ljava/lang/Object;

    if-eq p0, v2, :cond_57

    .line 232
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_52

    .line 233
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 234
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    const/4 v3, 0x0

    .line 235
    :goto_28
    array-length v4, v0

    if-ge v3, v4, :cond_52

    if-nez v1, :cond_32

    .line 238
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 241
    :cond_32
    aget-object v4, v0, v3

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 242
    aget-object v4, v0, v3

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Type;

    .line 243
    aget-object v5, v2, v3

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4f

    .line 245
    :cond_48
    aget-object v4, v2, v3

    aget-object v5, v0, v3

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 231
    :cond_52
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_8

    :cond_57
    return-object v1
.end method

.method private static computeFields(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/List;[Ljava/lang/reflect/Field;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;[",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    .line 956
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildGenericInfo(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v14

    .line 958
    array-length v15, v1

    const/16 v16, 0x0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v15, :cond_cb

    aget-object v5, v1, v2

    .line 959
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    and-int/lit8 v4, v3, 0x8

    if-eqz v4, :cond_1e

    :cond_18
    :goto_18
    move/from16 v17, v2

    move-object/from16 v2, p3

    goto/16 :goto_c6

    :cond_1e
    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4e

    .line 965
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 966
    const-class v4, Ljava/util/Map;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_4e

    const-class v4, Ljava/util/Collection;

    .line 967
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_4e

    const-class v4, Ljava/util/concurrent/atomic/AtomicLong;

    .line 968
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4e

    const-class v4, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 969
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4e

    const-class v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 970
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 977
    :cond_4e
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_52
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 978
    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    goto :goto_18

    .line 989
    :cond_6b
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 991
    const-class v4, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v5, v4}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v12, :cond_a7

    .line 994
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v4

    if-nez v4, :cond_81

    goto :goto_18

    .line 998
    :cond_81
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v4

    .line 999
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v6

    .line 1000
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v7

    .line 1002
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_a3

    .line 1003
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    :cond_a3
    move v8, v4

    move v9, v6

    move v10, v7

    goto :goto_aa

    :cond_a7
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_aa
    if-eqz v0, :cond_b0

    .line 1008
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_b0
    move v4, v2

    .line 1011
    new-instance v2, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v11, 0x0

    const/4 v13, 0x0

    move v6, v4

    const/4 v4, 0x0

    move-object/from16 v7, p1

    move/from16 v17, v6

    move-object/from16 v6, p0

    invoke-direct/range {v2 .. v14}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;Ljava/util/Map;)V

    move-object v3, v2

    move-object/from16 v2, p3

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    :goto_c6
    add-int/lit8 v3, v17, 0x1

    move v2, v3

    goto/16 :goto_c

    :cond_cb
    return-void
.end method

.method public static getBuilderClass(Lcom/alibaba/fastjson/annotation/JSONType;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1135
    invoke-static {v0, p0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getBuilderClass(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static getBuilderClass(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-eqz p0, :cond_15

    .line 1139
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "org.springframework.security.web.savedrequest.DefaultSavedRequest"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    .line 1140
    const-string p0, "org.springframework.security.web.savedrequest.DefaultSavedRequest$Builder"

    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_15
    const/4 p0, 0x0

    if-nez p1, :cond_19

    return-object p0

    .line 1147
    :cond_19
    invoke-interface {p1}, Lcom/alibaba/fastjson/annotation/JSONType;->builder()Ljava/lang/Class;

    move-result-object p1

    .line 1149
    const-class v0, Ljava/lang/Void;

    if-ne p1, v0, :cond_22

    return-object p0

    :cond_22
    return-object p1
.end method

.method public static getCreatorConstructor([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Constructor;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 1049
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_4
    const-string v4, "multi-JSONCreator"

    if-ge v3, v0, :cond_21

    aget-object v5, p0, v3

    .line 1050
    const-class v6, Lcom/alibaba/fastjson/annotation/JSONCreator;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/annotation/JSONCreator;

    if-eqz v6, :cond_1e

    if-nez v1, :cond_18

    move-object v1, v5

    goto :goto_1e

    .line 1053
    :cond_18
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    :goto_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_21
    if-eqz v1, :cond_24

    return-object v1

    .line 1064
    :cond_24
    array-length v0, p0

    const/4 v3, 0x0

    :goto_26
    if-ge v3, v0, :cond_54

    aget-object v5, p0, v3

    .line 1065
    invoke-static {v5}, Lcom/alibaba/fastjson/util/TypeUtils;->getParameterAnnotations(Ljava/lang/reflect/Constructor;)[[Ljava/lang/annotation/Annotation;

    move-result-object v6

    .line 1067
    array-length v7, v6

    if-nez v7, :cond_32

    goto :goto_4b

    .line 1071
    :cond_32
    array-length v7, v6

    const/4 v8, 0x0

    :goto_34
    if-ge v8, v7, :cond_48

    aget-object v9, v6, v8

    .line 1073
    array-length v10, v9

    const/4 v11, 0x0

    :goto_3a
    if-ge v11, v10, :cond_4b

    aget-object v12, v9, v11

    .line 1074
    instance-of v12, v12, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v12, :cond_45

    add-int/lit8 v8, v8, 0x1

    goto :goto_34

    :cond_45
    add-int/lit8 v11, v11, 0x1

    goto :goto_3a

    :cond_48
    if-nez v1, :cond_4e

    move-object v1, v5

    :cond_4b
    :goto_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 1087
    :cond_4e
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_54
    return-object v1
.end method

.method static getDefaultConstructor(Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 1017
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return-object v1

    .line 1023
    :cond_c
    array-length v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v0, :cond_1f

    aget-object v4, p1, v3

    .line 1024
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_1c

    move-object v1, v4

    goto :goto_1f

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_1f
    :goto_1f
    if-nez v1, :cond_4f

    .line 1031
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 1033
    array-length v0, p1

    const/4 v3, 0x0

    :goto_33
    if-ge v3, v0, :cond_4f

    aget-object v4, p1, v3

    .line 1034
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4c

    aget-object v5, v5, v2

    .line 1035
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    return-object v4

    :cond_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    :cond_4f
    return-object v1
.end method

.method private static getFactoryMethod(Ljava/lang/Class;[Ljava/lang/reflect/Method;Z)Ljava/lang/reflect/Method;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Method;",
            "Z)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1100
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_37

    aget-object v4, p1, v3

    .line 1101
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_13

    goto :goto_34

    .line 1105
    :cond_13
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1e

    goto :goto_34

    .line 1109
    :cond_1e
    const-class v5, Lcom/alibaba/fastjson/annotation/JSONCreator;

    invoke-static {v4, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson/annotation/JSONCreator;

    if-eqz v5, :cond_34

    if-nez v1, :cond_2c

    move-object v1, v4

    goto :goto_34

    .line 1112
    :cond_2c
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    const-string p1, "multi-JSONCreator"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    :goto_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_37
    if-nez v1, :cond_4a

    if-eqz p2, :cond_4a

    .line 1121
    array-length p0, p1

    :goto_3c
    if-ge v2, p0, :cond_4a

    aget-object p2, p1, v2

    .line 1122
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->isJacksonCreator(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_47

    return-object p2

    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    :cond_4a
    return-object v1
.end method

.method private static getField(Ljava/util/List;Ljava/lang/String;)Lcom/alibaba/fastjson/util/FieldInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/fastjson/util/FieldInfo;"
        }
    .end annotation

    .line 174
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 175
    iget-object v1, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_2d

    .line 179
    :cond_19
    iget-object v1, v0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_4

    .line 180
    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_2d
    return-object v0

    :cond_2e
    const/4 p0, 0x0

    return-object p0
.end method
