###### Class com.alibaba.fastjson.serializer.JavaBeanSerializer (com.alibaba.fastjson.serializer.JavaBeanSerializer)
.class public Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
.super Lcom/alibaba/fastjson/serializer/SerializeFilterable;
.source "JavaBeanSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# instance fields
.field protected final beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

.field protected final getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

.field private volatile transient hashArray:[J

.field private volatile transient hashArrayMapping:[S

.field protected final sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)V
    .registers 8

    .line 87
    invoke-direct {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    .line 90
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v0, v0

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 91
    :goto_e
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v3, v2

    if-ge v1, v3, :cond_23

    .line 92
    new-instance v3, Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iget-object v4, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->beanType:Ljava/lang/Class;

    iget-object v5, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v5, v5, v1

    invoke-direct {v3, v4, v5}, Lcom/alibaba/fastjson/serializer/FieldSerializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 95
    :cond_23
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v2, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    if-ne v1, v2, :cond_2e

    .line 96
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    goto :goto_57

    .line 98
    :cond_2e
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v1, v1

    new-array v1, v1, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    const/4 v1, 0x0

    .line 100
    :goto_36
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v2, v2

    if-ge v1, v2, :cond_57

    .line 101
    iget-object v2, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldSerializer(Ljava/lang/String;)Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-result-object v2

    if-nez v2, :cond_50

    .line 109
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v3, v1

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_57

    .line 106
    :cond_50
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 113
    :cond_57
    :goto_57
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    if-eqz v1, :cond_77

    .line 114
    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {p1}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFilters()[Ljava/lang/Class;

    move-result-object p1

    array-length v1, p1

    :goto_62
    if-ge v0, v1, :cond_77

    aget-object v2, p1, v0

    const/4 v3, 0x0

    .line 116
    :try_start_67
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/serializer/SerializeFilter;

    .line 117
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->addFilter(Lcom/alibaba/fastjson/serializer/SerializeFilter;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_74} :catch_74

    :catch_74
    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    :cond_77
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 56
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 84
    invoke-static {p1, p2, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Class;[Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-static {p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->createAliasMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method static varargs createAliasMap([Ljava/lang/String;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 65
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_11

    aget-object v3, p0, v2

    .line 66
    invoke-interface {v0, v3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_11
    return-object v0
.end method


# virtual methods
.method protected applyLabel(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/String;)Z
    .registers 5

    .line 850
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->labelFilters:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 851
    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->labelFilters:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/LabelFilter;

    .line 852
    invoke-interface {v0, p2}, Lcom/alibaba/fastjson/serializer/LabelFilter;->apply(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    return v1

    .line 858
    :cond_1e
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->labelFilters:Ljava/util/List;

    if-eqz p1, :cond_3b

    .line 859
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->labelFilters:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_28
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/LabelFilter;

    .line 860
    invoke-interface {v0, p2}, Lcom/alibaba/fastjson/serializer/LabelFilter;->apply(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    return v1

    :cond_3b
    const/4 p1, 0x1

    return p1
.end method

.method protected getBeanContext(I)Lcom/alibaba/fastjson/serializer/BeanContext;
    .registers 3

    .line 807
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldContext:Lcom/alibaba/fastjson/serializer/BeanContext;

    return-object p1
.end method

.method public getFieldNames(Ljava/lang/Object;)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 767
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 768
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_1d

    aget-object v4, v1, v3

    .line 769
    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValueDirect(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1a

    .line 771
    iget-object v4, v4, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_1d
    return-object v0
.end method

.method public getFieldSerializer(J)Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .registers 15

    .line 653
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArray:[J

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_55

    .line 654
    invoke-static {}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->values()[Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-result-object v0

    .line 656
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v3, v3

    array-length v4, v0

    mul-int v3, v3, v4

    new-array v3, v3, [J

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 658
    :goto_14
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v7, v6

    if-ge v4, v7, :cond_48

    .line 659
    aget-object v6, v6, v4

    iget-object v6, v6, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    add-int/lit8 v7, v5, 0x1

    .line 660
    invoke-static {v6}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v3, v5

    move v5, v7

    const/4 v7, 0x0

    .line 662
    :goto_29
    array-length v8, v0

    if-ge v7, v8, :cond_45

    .line 663
    aget-object v8, v0, v7

    invoke-virtual {v8, v6}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 664
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_39

    goto :goto_42

    :cond_39
    add-int/lit8 v9, v5, 0x1

    .line 667
    invoke-static {v8}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v10

    aput-wide v10, v3, v5

    move v5, v9

    :goto_42
    add-int/lit8 v7, v7, 0x1

    goto :goto_29

    :cond_45
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 670
    :cond_48
    invoke-static {v3, v1, v5}, Ljava/util/Arrays;->sort([JII)V

    .line 672
    new-array v4, v5, [J

    iput-object v4, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArray:[J

    .line 673
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArray:[J

    invoke-static {v3, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_56

    :cond_55
    move-object v0, v2

    .line 676
    :goto_56
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArray:[J

    invoke-static {v3, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-gez p1, :cond_5f

    return-object v2

    .line 681
    :cond_5f
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArrayMapping:[S

    const/4 v3, -0x1

    if-nez p2, :cond_b5

    if-nez v0, :cond_6a

    .line 683
    invoke-static {}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->values()[Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-result-object v0

    .line 686
    :cond_6a
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArray:[J

    array-length p2, p2

    new-array p2, p2, [S

    .line 687
    invoke-static {p2, v3}, Ljava/util/Arrays;->fill([SS)V

    const/4 v4, 0x0

    .line 688
    :goto_73
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v6, v5

    if-ge v4, v6, :cond_b3

    .line 689
    aget-object v5, v5, v4

    iget-object v5, v5, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 691
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArray:[J

    .line 692
    invoke-static {v5}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v7

    .line 691
    invoke-static {v6, v7, v8}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v6

    if-ltz v6, :cond_8d

    int-to-short v7, v4

    .line 694
    aput-short v7, p2, v6

    :cond_8d
    const/4 v6, 0x0

    .line 697
    :goto_8e
    array-length v7, v0

    if-ge v6, v7, :cond_b0

    .line 698
    aget-object v7, v0, v6

    invoke-virtual {v7, v5}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 699
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9e

    goto :goto_ad

    .line 703
    :cond_9e
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArray:[J

    .line 704
    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v9

    .line 703
    invoke-static {v8, v9, v10}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v7

    if-ltz v7, :cond_ad

    int-to-short v8, v4

    .line 706
    aput-short v8, p2, v7

    :cond_ad
    :goto_ad
    add-int/lit8 v6, v6, 0x1

    goto :goto_8e

    :cond_b0
    add-int/lit8 v4, v4, 0x1

    goto :goto_73

    .line 710
    :cond_b3
    iput-object p2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArrayMapping:[S

    .line 713
    :cond_b5
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArrayMapping:[S

    aget-short p1, p2, p1

    if-eq p1, v3, :cond_c0

    .line 715
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object p1, p2, p1

    return-object p1

    :cond_c0
    return-object v2
.end method

.method public getFieldSerializer(Ljava/lang/String;)Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 630
    :cond_4
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_a
    if-gt v2, v1, :cond_2d

    add-int v3, v2, v1

    ushr-int/lit8 v3, v3, 0x1

    .line 635
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 637
    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_22

    add-int/lit8 v3, v3, 0x1

    move v2, v3

    goto :goto_a

    :cond_22
    if-lez v4, :cond_28

    add-int/lit8 v3, v3, -0x1

    move v1, v3

    goto :goto_a

    .line 644
    :cond_28
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object p1, p1, v3

    return-object p1

    :cond_2d
    return-object v0
.end method

.method protected getFieldType(I)Ljava/lang/reflect/Type;
    .registers 3

    .line 811
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object p1, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    return-object p1
.end method

.method public getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6

    .line 592
    const-string v0, "getFieldValue error."

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldSerializer(Ljava/lang/String;)Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 598
    :try_start_8
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_c} :catch_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 602
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_20
    move-exception p1

    .line 600
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 594
    :cond_33
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "field not found. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFieldValue(Ljava/lang/Object;Ljava/lang/String;JZ)Ljava/lang/Object;
    .registers 7

    .line 607
    const-string v0, "getFieldValue error."

    invoke-virtual {p0, p3, p4}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldSerializer(J)Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-result-object p3

    if-nez p3, :cond_20

    if-nez p5, :cond_c

    const/4 p1, 0x0

    return-object p1

    .line 610
    :cond_c
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "field not found. "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 616
    :cond_20
    :try_start_20
    invoke-virtual {p3, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_24
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_20 .. :try_end_24} :catch_38
    .catch Ljava/lang/IllegalAccessException; {:try_start_20 .. :try_end_24} :catch_25

    return-object p1

    :catch_25
    move-exception p1

    .line 620
    new-instance p3, Lcom/alibaba/fastjson/JSONException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :catch_38
    move-exception p1

    .line 618
    new-instance p3, Lcom/alibaba/fastjson/JSONException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public getFieldValues(Ljava/lang/Object;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 722
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 723
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1a

    aget-object v4, v1, v3

    .line 724
    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1a
    return-object v0
.end method

.method public getFieldValuesMap(Ljava/lang/Object;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 778
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 782
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_55

    aget-object v4, v1, v3

    .line 783
    iget v5, v4, Lcom/alibaba/fastjson/serializer/FieldSerializer;->features:I

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v5, v6}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v5

    .line 784
    iget-object v6, v4, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz v5, :cond_23

    if-eqz v6, :cond_23

    .line 786
    iget-boolean v5, v6, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    if-eqz v5, :cond_23

    goto :goto_52

    .line 790
    :cond_23
    iget-object v5, v4, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-boolean v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    if-eqz v5, :cond_47

    .line 791
    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 792
    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 793
    instance-of v6, v5, Ljava/util/Map;

    if-eqz v6, :cond_3b

    .line 794
    check-cast v5, Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_52

    .line 796
    :cond_3b
    iget-object v5, v4, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    .line 799
    :cond_47
    iget-object v5, v4, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_55
    return-object v0
.end method

.method public getJSONType()Lcom/alibaba/fastjson/annotation/JSONType;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    return-object v0
.end method

.method public getObjectFieldValues(Ljava/lang/Object;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 732
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 733
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_32

    aget-object v4, v1, v3

    .line 734
    iget-object v5, v4, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 735
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-eqz v6, :cond_1b

    goto :goto_2f

    .line 738
    :cond_1b
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "java.lang."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    goto :goto_2f

    .line 741
    :cond_28
    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_32
    return-object v0
.end method

.method public getSize(Ljava/lang/Object;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 749
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v2, v1, :cond_14

    aget-object v4, v0, v2

    .line 750
    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValueDirect(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_11

    add-int/lit8 v3, v3, 0x1

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_14
    return v3
.end method

.method public getType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->beanType:Ljava/lang/Class;

    return-object v0
.end method

.method protected isWriteAsArray(Lcom/alibaba/fastjson/serializer/JSONSerializer;)Z
    .registers 3

    const/4 v0, 0x0

    .line 581
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->isWriteAsArray(Lcom/alibaba/fastjson/serializer/JSONSerializer;I)Z

    move-result p1

    return p1
.end method

.method protected isWriteAsArray(Lcom/alibaba/fastjson/serializer/JSONSerializer;I)Z
    .registers 5

    .line 585
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 586
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    and-int/2addr v1, v0

    if-nez v1, :cond_18

    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    iget-boolean p1, p1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->beanToArray:Z

    if-nez p1, :cond_18

    and-int p1, p2, v0

    if-eqz p1, :cond_16

    goto :goto_18

    :cond_16
    const/4 p1, 0x0

    return p1

    :cond_18
    :goto_18
    const/4 p1, 0x1

    return p1
.end method

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

    .line 154
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V

    return-void
.end method

.method protected write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V
    .registers 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v8, p4

    move/from16 v7, p5

    .line 172
    iget-object v9, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    if-nez v4, :cond_12

    .line 175
    invoke-virtual {v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void

    .line 179
    :cond_12
    invoke-virtual {v1, v2, v4, v7}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeReference(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_19

    return-void

    .line 185
    :cond_19
    iget-boolean v0, v9, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sortField:Z

    if-eqz v0, :cond_20

    .line 186
    iget-object v0, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    goto :goto_22

    .line 188
    :cond_20
    iget-object v0, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    :goto_22
    move-object v10, v0

    .line 191
    iget-object v3, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 192
    iget-object v0, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->beanType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_38

    .line 193
    iget-object v0, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget v6, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    move-object/from16 v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;II)V

    :cond_38
    move-object v12, v3

    .line 196
    invoke-virtual {v1, v2, v7}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->isWriteAsArray(Lcom/alibaba/fastjson/serializer/JSONSerializer;I)Z

    move-result v13

    if-eqz v13, :cond_42

    const/16 v0, 0x5b

    goto :goto_44

    :cond_42
    const/16 v0, 0x7b

    :goto_44
    if-eqz v13, :cond_4b

    const/16 v3, 0x5d

    const/16 v14, 0x5d

    goto :goto_4f

    :cond_4b
    const/16 v3, 0x7d

    const/16 v14, 0x7d

    :goto_4f
    if-nez p6, :cond_54

    .line 203
    :try_start_51
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 206
    :cond_54
    array-length v0, v10

    if-lez v0, :cond_65

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 207
    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 208
    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 213
    :cond_65
    iget-object v0, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    const/16 v3, 0x2c

    const/4 v5, 0x0

    if-nez v0, :cond_80

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v7

    if-nez v0, :cond_80

    .line 215
    invoke-virtual {v2, v8, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isWriteClassName(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 216
    :cond_80
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v0, v8, :cond_8f

    .line 219
    instance-of v6, v8, Ljava/lang/reflect/WildcardType;

    if-eqz v6, :cond_8f

    .line 220
    invoke-static {v8}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    goto :goto_90

    :cond_8f
    move-object v6, v8

    :goto_90
    if-eq v0, v6, :cond_9c

    .line 226
    iget-object v0, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->typeKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v4}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeClassName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v0, 0x2c

    goto :goto_9d

    :cond_9c
    const/4 v0, 0x0

    .line 233
    :goto_9d
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v16

    .line 234
    invoke-virtual {v1, v2, v4, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result v0

    if-ne v0, v3, :cond_ab

    const/4 v0, 0x1

    goto :goto_ac

    :cond_ab
    const/4 v0, 0x0

    .line 237
    :goto_ac
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v17

    .line 238
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->IgnoreNonFieldGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v18
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_b8} :catch_4d4
    .catchall {:try_start_51 .. :try_end_b8} :catchall_4d1

    move/from16 v19, v0

    const/4 v3, 0x0

    const/16 v20, 0x0

    .line 240
    :goto_bd
    :try_start_bd
    array-length v0, v10
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_be} :catch_4cd
    .catchall {:try_start_bd .. :try_end_be} :catchall_4d1

    if-ge v3, v0, :cond_494

    .line 241
    :try_start_c0
    aget-object v15, v10, v3

    .line 243
    iget-object v0, v15, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    move/from16 v21, v13

    .line 244
    iget-object v13, v15, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v22, 0x0

    .line 245
    iget-object v5, v13, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 246
    iget-object v11, v13, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 248
    iget v6, v9, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v24, v3

    iget v3, v13, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v6, v3, v7}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(IILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v25

    .line 249
    iget-boolean v3, v9, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_de} :catch_490
    .catchall {:try_start_c0 .. :try_end_de} :catchall_48b

    if-eqz v3, :cond_e5

    if-nez v25, :cond_e5

    const/16 v26, 0x1

    goto :goto_e7

    :cond_e5
    const/16 v26, 0x0

    :goto_e7
    if-eqz v17, :cond_ee

    .line 252
    :try_start_e9
    iget-boolean v3, v13, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_eb} :catch_4cd
    .catchall {:try_start_e9 .. :try_end_eb} :catchall_4d1

    if-eqz v3, :cond_ee

    goto :goto_133

    :cond_ee
    if-eqz v18, :cond_f3

    if-nez v0, :cond_f3

    goto :goto_133

    .line 264
    :cond_f3
    :try_start_f3
    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_f7} :catch_490
    .catchall {:try_start_f3 .. :try_end_f7} :catchall_48b

    if-eqz v0, :cond_104

    :try_start_f9
    iget-object v0, v13, Lcom/alibaba/fastjson/util/FieldInfo;->label:Ljava/lang/String;

    .line 265
    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->applyLabel(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/String;)Z

    move-result v0
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_ff} :catch_4cd
    .catchall {:try_start_f9 .. :try_end_ff} :catchall_4d1

    if-nez v0, :cond_102

    goto :goto_104

    :cond_102
    const/4 v0, 0x0

    goto :goto_107

    :cond_104
    :goto_104
    if-eqz v21, :cond_133

    const/4 v0, 0x1

    .line 273
    :goto_107
    :try_start_107
    iget-object v3, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->typeKey:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_10f} :catch_490
    .catchall {:try_start_107 .. :try_end_10f} :catchall_48b

    if-eqz v3, :cond_118

    .line 274
    :try_start_111
    invoke-virtual {v2, v8, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isWriteClassName(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    move-result v3
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_115} :catch_4cd
    .catchall {:try_start_111 .. :try_end_115} :catchall_4d1

    if-eqz v3, :cond_118

    goto :goto_133

    :cond_118
    if-eqz v0, :cond_11c

    :goto_11a
    const/4 v0, 0x0

    goto :goto_12d

    .line 284
    :cond_11c
    :try_start_11c
    invoke-virtual {v15, v4}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValueDirect(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_120
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_11c .. :try_end_120} :catch_121
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_120} :catch_4cd
    .catchall {:try_start_11c .. :try_end_120} :catchall_4d1

    goto :goto_12d

    :catch_121
    move-exception v0

    .line 287
    :try_start_122
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->IgnoreErrorGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_128} :catch_47a
    .catchall {:try_start_122 .. :try_end_128} :catchall_48b

    if-eqz v3, :cond_475

    move-object/from16 v20, v15

    goto :goto_11a

    .line 295
    :goto_12d
    :try_start_12d
    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13b

    :cond_133
    :goto_133
    move-object/from16 v23, v12

    :goto_135
    const/4 v5, 0x1

    const/16 v8, 0x2c

    const/4 v12, 0x0

    goto/16 :goto_47e

    .line 299
    :cond_13b
    const-class v3, Ljava/lang/String;
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_13d} :catch_490
    .catchall {:try_start_12d .. :try_end_13d} :catchall_48b

    if-ne v11, v3, :cond_152

    :try_start_13f
    const-string/jumbo v3, "trim"

    iget-object v6, v13, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_152

    if-eqz v0, :cond_152

    .line 301
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_13f .. :try_end_152} :catch_4cd
    .catchall {:try_start_13f .. :try_end_152} :catchall_4d1

    :cond_152
    move-object v6, v0

    .line 306
    :try_start_153
    invoke-virtual {v1, v2, v4, v5, v6}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 309
    iget-object v3, v15, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldContext:Lcom/alibaba/fastjson/serializer/BeanContext;

    move/from16 v7, p5

    const/16 v8, 0x2c

    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3
    :try_end_161
    .catch Ljava/lang/Exception; {:try_start_153 .. :try_end_161} :catch_490
    .catchall {:try_start_153 .. :try_end_161} :catchall_48b

    .line 312
    const-string v7, ""

    if-nez v3, :cond_297

    .line 313
    :try_start_165
    iget v8, v13, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    .line 314
    invoke-virtual {v13}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v23

    move-object/from16 v27, v3

    .line 315
    iget-object v3, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    if-eqz v3, :cond_180

    .line 316
    iget-object v3, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v3

    or-int/2addr v8, v3

    :cond_180
    if-eqz v23, :cond_192

    .line 319
    invoke-interface/range {v23 .. v23}, Lcom/alibaba/fastjson/annotation/JSONField;->defaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_192

    .line 320
    invoke-interface/range {v23 .. v23}, Lcom/alibaba/fastjson/annotation/JSONField;->defaultValue()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_29b

    .line 321
    :cond_192
    const-class v3, Ljava/lang/Boolean;

    if-ne v11, v3, :cond_1ce

    .line 322
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v23, v3

    .line 323
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int v3, v23, v3

    if-nez v21, :cond_1b1

    and-int v28, v8, v3

    if-nez v28, :cond_1b1

    move/from16 v28, v3

    .line 324
    iget v3, v9, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int v3, v3, v28

    if-nez v3, :cond_1b1

    goto :goto_133

    :cond_1b1
    and-int v3, v8, v23

    if-eqz v3, :cond_1bb

    .line 327
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto/16 :goto_29b

    .line 328
    :cond_1bb
    iget v3, v9, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int v3, v3, v23

    if-eqz v3, :cond_299

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v3, v8

    if-nez v3, :cond_299

    .line 330
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto/16 :goto_29b

    .line 332
    :cond_1ce
    const-class v3, Ljava/lang/String;

    if-ne v11, v3, :cond_203

    .line 333
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v23, v3

    .line 334
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int v3, v23, v3

    if-nez v21, :cond_1ee

    and-int v28, v8, v3

    if-nez v28, :cond_1ee

    move/from16 v28, v3

    .line 335
    iget v3, v9, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int v3, v3, v28

    if-nez v3, :cond_1ee

    goto/16 :goto_133

    :cond_1ee
    and-int v3, v8, v23

    if-eqz v3, :cond_1f5

    :goto_1f2
    move-object v3, v7

    goto/16 :goto_29b

    .line 339
    :cond_1f5
    iget v3, v9, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int v3, v3, v23

    if-eqz v3, :cond_299

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v3, v8

    if-nez v3, :cond_299

    goto :goto_1f2

    .line 343
    :cond_203
    const-class v3, Ljava/lang/Number;

    invoke-virtual {v3, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_243

    .line 344
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v23, v3

    .line 345
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int v3, v23, v3

    if-nez v21, :cond_227

    and-int v28, v8, v3

    if-nez v28, :cond_227

    move/from16 v28, v3

    .line 346
    iget v3, v9, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int v3, v3, v28

    if-nez v3, :cond_227

    goto/16 :goto_133

    :cond_227
    and-int v3, v8, v23

    if-eqz v3, :cond_231

    .line 349
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_29b

    .line 350
    :cond_231
    iget v3, v9, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int v3, v3, v23

    if-eqz v3, :cond_299

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v3, v8

    if-nez v3, :cond_299

    .line 352
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_29b

    .line 354
    :cond_243
    const-class v3, Ljava/util/Collection;

    invoke-virtual {v3, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_27e

    .line 355
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v23, v3

    .line 356
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int v3, v23, v3

    if-nez v21, :cond_267

    and-int v28, v8, v3

    if-nez v28, :cond_267

    move/from16 v28, v3

    .line 357
    iget v3, v9, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int v3, v3, v28

    if-nez v3, :cond_267

    goto/16 :goto_133

    :cond_267
    and-int v3, v8, v23

    if-eqz v3, :cond_26e

    .line 360
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_29b

    .line 361
    :cond_26e
    iget v3, v9, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int v3, v3, v23

    if-eqz v3, :cond_299

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v3, v8

    if-nez v3, :cond_299

    .line 363
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_29b

    :cond_27e
    if-nez v21, :cond_299

    .line 365
    iget-boolean v3, v15, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeNull:Z

    if-nez v3, :cond_299

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 366
    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_299

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I
    :try_end_292
    .catch Ljava/lang/Exception; {:try_start_165 .. :try_end_292} :catch_4cd
    .catchall {:try_start_165 .. :try_end_292} :catchall_4d1

    and-int/2addr v3, v8

    if-nez v3, :cond_299

    goto/16 :goto_133

    :cond_297
    move-object/from16 v27, v3

    :cond_299
    move-object/from16 v3, v27

    :goto_29b
    if-eqz v3, :cond_34c

    .line 372
    :try_start_29d
    iget-boolean v8, v9, Lcom/alibaba/fastjson/serializer/SerializeWriter;->notWriteDefaultValue:Z
    :try_end_29f
    .catch Ljava/lang/Exception; {:try_start_29d .. :try_end_29f} :catch_490
    .catchall {:try_start_29d .. :try_end_29f} :catchall_48b

    if-nez v8, :cond_2bb

    :try_start_2a1
    iget v8, v13, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    move/from16 v23, v8

    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v8, v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int v8, v23, v8

    if-nez v8, :cond_2bb

    iget-object v8, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget v8, v8, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    move/from16 v23, v8

    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v8, v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I
    :try_end_2b7
    .catch Ljava/lang/Exception; {:try_start_2a1 .. :try_end_2b7} :catch_4cd
    .catchall {:try_start_2a1 .. :try_end_2b7} :catchall_4d1

    and-int v8, v23, v8

    if-eqz v8, :cond_34c

    .line 377
    :cond_2bb
    :try_start_2bb
    iget-object v8, v13, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;
    :try_end_2bd
    .catch Ljava/lang/Exception; {:try_start_2bb .. :try_end_2bd} :catch_490
    .catchall {:try_start_2bb .. :try_end_2bd} :catchall_48b

    move-object/from16 v23, v12

    .line 378
    :try_start_2bf
    sget-object v12, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v8, v12, :cond_2d2

    instance-of v12, v3, Ljava/lang/Byte;

    if-eqz v12, :cond_2d2

    move-object v12, v3

    check-cast v12, Ljava/lang/Byte;

    .line 379
    invoke-virtual {v12}, Ljava/lang/Byte;->byteValue()B

    move-result v12

    if-nez v12, :cond_2d2

    goto/16 :goto_361

    .line 381
    :cond_2d2
    sget-object v12, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v8, v12, :cond_2e5

    instance-of v12, v3, Ljava/lang/Short;

    if-eqz v12, :cond_2e5

    move-object v12, v3

    check-cast v12, Ljava/lang/Short;

    .line 382
    invoke-virtual {v12}, Ljava/lang/Short;->shortValue()S

    move-result v12

    if-nez v12, :cond_2e5

    goto/16 :goto_361

    .line 384
    :cond_2e5
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v8, v12, :cond_2f8

    instance-of v12, v3, Ljava/lang/Integer;

    if-eqz v12, :cond_2f8

    move-object v12, v3

    check-cast v12, Ljava/lang/Integer;

    .line 385
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-nez v12, :cond_2f8

    goto/16 :goto_361

    .line 387
    :cond_2f8
    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v8, v12, :cond_30e

    instance-of v12, v3, Ljava/lang/Long;

    if-eqz v12, :cond_30e

    move-object v12, v3

    check-cast v12, Ljava/lang/Long;

    .line 388
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    const-wide/16 v29, 0x0

    cmp-long v12, v27, v29

    if-nez v12, :cond_30e

    goto :goto_361

    .line 390
    :cond_30e
    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v8, v12, :cond_324

    instance-of v12, v3, Ljava/lang/Float;

    if-eqz v12, :cond_324

    move-object v12, v3

    check-cast v12, Ljava/lang/Float;

    .line 391
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    const/16 v27, 0x0

    cmpl-float v12, v12, v27

    if-nez v12, :cond_324

    goto :goto_361

    .line 393
    :cond_324
    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v8, v12, :cond_33a

    instance-of v12, v3, Ljava/lang/Double;

    if-eqz v12, :cond_33a

    move-object v12, v3

    check-cast v12, Ljava/lang/Double;

    .line 394
    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v27

    const-wide/16 v29, 0x0

    cmpl-double v12, v27, v29

    if-nez v12, :cond_33a

    goto :goto_361

    .line 396
    :cond_33a
    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v8, v12, :cond_34e

    instance-of v8, v3, Ljava/lang/Boolean;

    if-eqz v8, :cond_34e

    move-object v8, v3

    check-cast v8, Ljava/lang/Boolean;

    .line 397
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_34e

    goto :goto_361

    :cond_34c
    move-object/from16 v23, v12

    :cond_34e
    if-eqz v19, :cond_374

    .line 403
    iget-boolean v8, v13, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    if-eqz v8, :cond_363

    instance-of v8, v3, Ljava/util/Map;

    if-eqz v8, :cond_363

    move-object v8, v3

    check-cast v8, Ljava/util/Map;

    .line 405
    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    if-nez v8, :cond_363

    :goto_361
    goto/16 :goto_135

    :cond_363
    const/16 v8, 0x2c

    .line 409
    invoke-virtual {v9, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 410
    sget-object v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v9, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v12

    if-eqz v12, :cond_376

    .line 411
    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    goto :goto_376

    :cond_374
    const/16 v8, 0x2c

    :cond_376
    :goto_376
    if-eq v0, v5, :cond_386

    if-nez v21, :cond_37f

    const/4 v5, 0x1

    .line 417
    invoke-virtual {v9, v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    goto :goto_380

    :cond_37f
    const/4 v5, 0x1

    .line 420
    :goto_380
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    :goto_383
    const/4 v12, 0x0

    goto/16 :goto_445

    :cond_386
    const/4 v5, 0x1

    if-eq v6, v3, :cond_392

    if-nez v21, :cond_38e

    .line 423
    invoke-virtual {v15, v2}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writePrefix(Lcom/alibaba/fastjson/serializer/JSONSerializer;)V

    .line 425
    :cond_38e
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    goto :goto_383

    :cond_392
    if-nez v21, :cond_3ce

    .line 428
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    .line 429
    invoke-virtual {v11}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-nez v6, :cond_3ac

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v12, "java."

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3b0

    :cond_3ac
    const-class v6, Ljava/lang/Object;

    if-ne v11, v6, :cond_3b2

    :cond_3b0
    const/4 v6, 0x1

    goto :goto_3b3

    :cond_3b2
    const/4 v6, 0x0

    :goto_3b3
    if-nez v16, :cond_3bd

    .line 430
    iget-boolean v12, v13, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    if-eqz v12, :cond_3bd

    if-nez v0, :cond_3ce

    if-nez v6, :cond_3ce

    :cond_3bd
    if-eqz v26, :cond_3c9

    .line 432
    iget-object v0, v13, Lcom/alibaba/fastjson/util/FieldInfo;->name_chars:[C

    iget-object v6, v13, Lcom/alibaba/fastjson/util/FieldInfo;->name_chars:[C

    array-length v6, v6

    const/4 v12, 0x0

    invoke-virtual {v9, v0, v12, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    goto :goto_3cf

    :cond_3c9
    const/4 v12, 0x0

    .line 434
    invoke-virtual {v15, v2}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writePrefix(Lcom/alibaba/fastjson/serializer/JSONSerializer;)V

    goto :goto_3cf

    :cond_3ce
    const/4 v12, 0x0

    :goto_3cf
    if-nez v21, :cond_442

    .line 440
    invoke-virtual {v13}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v0

    .line 441
    const-class v6, Ljava/lang/String;

    if-ne v11, v6, :cond_42a

    if-eqz v0, :cond_3e3

    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->serializeUsing()Ljava/lang/Class;

    move-result-object v0

    const-class v6, Ljava/lang/Void;

    if-ne v0, v6, :cond_42a

    :cond_3e3
    if-nez v3, :cond_41d

    .line 443
    iget v0, v15, Lcom/alibaba/fastjson/serializer/FieldSerializer;->features:I

    .line 444
    iget-object v6, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v6, v6, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    if-eqz v6, :cond_3fa

    .line 445
    iget-object v6, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v6, v6, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {v6}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v6

    or-int/2addr v0, v6

    .line 447
    :cond_3fa
    iget v6, v9, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v11, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v11, v11, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v6, v11

    if-eqz v6, :cond_40e

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v6, v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v6, v0

    if-nez v6, :cond_40e

    .line 449
    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_445

    .line 450
    :cond_40e
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v6, v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v6

    if-eqz v0, :cond_419

    .line 451
    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_445

    .line 453
    :cond_419
    invoke-virtual {v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_445

    .line 456
    :cond_41d
    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    if-eqz v25, :cond_426

    .line 459
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    goto :goto_445

    .line 461
    :cond_426
    invoke-virtual {v9, v0, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_445

    .line 465
    :cond_42a
    iget-boolean v0, v13, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    if-eqz v0, :cond_43e

    instance-of v0, v3, Ljava/util/Map;

    if-eqz v0, :cond_43e

    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    .line 467
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_43e

    const/16 v19, 0x0

    goto :goto_47e

    .line 472
    :cond_43e
    invoke-virtual {v15, v2, v3}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V

    goto :goto_445

    .line 475
    :cond_442
    invoke-virtual {v15, v2, v3}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V

    .line 480
    :goto_445
    iget-boolean v0, v13, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    if-eqz v0, :cond_472

    instance-of v0, v3, Ljava/util/Map;

    if-eqz v0, :cond_472

    .line 482
    check-cast v3, Ljava/util/Map;

    .line 483
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_456

    goto :goto_47e

    .line 485
    :cond_456
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-nez v0, :cond_472

    .line 487
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_466
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3
    :try_end_470
    .catch Ljava/lang/Exception; {:try_start_2bf .. :try_end_470} :catch_4b4
    .catchall {:try_start_2bf .. :try_end_470} :catchall_4c4

    if-eqz v3, :cond_466

    :cond_472
    const/16 v19, 0x1

    goto :goto_47e

    :cond_475
    move-object/from16 v23, v12

    .line 290
    :try_start_477
    throw v0
    :try_end_478
    .catch Ljava/lang/Exception; {:try_start_477 .. :try_end_478} :catch_478
    .catchall {:try_start_477 .. :try_end_478} :catchall_4c4

    :catch_478
    move-exception v0

    goto :goto_4b7

    :catch_47a
    move-exception v0

    move-object/from16 v23, v12

    goto :goto_4d6

    :cond_47e
    :goto_47e
    add-int/lit8 v3, v24, 0x1

    move-object/from16 v8, p4

    move/from16 v7, p5

    move/from16 v13, v21

    move-object/from16 v12, v23

    const/4 v5, 0x0

    goto/16 :goto_bd

    :catchall_48b
    move-exception v0

    move-object/from16 v23, v12

    goto/16 :goto_57f

    :catch_490
    move-exception v0

    move-object/from16 v23, v12

    goto :goto_4ce

    :cond_494
    move-object/from16 v23, v12

    const/16 v8, 0x2c

    const/4 v12, 0x0

    if-eqz v19, :cond_49e

    const/16 v3, 0x2c

    goto :goto_49f

    :cond_49e
    const/4 v3, 0x0

    .line 504
    :goto_49f
    :try_start_49f
    invoke-virtual {v1, v2, v4, v3}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    .line 506
    array-length v0, v10
    :try_end_4a3
    .catch Ljava/lang/Exception; {:try_start_49f .. :try_end_4a3} :catch_4c9
    .catchall {:try_start_49f .. :try_end_4a3} :catchall_4c4

    if-lez v0, :cond_4ba

    :try_start_4a5
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_4ba

    .line 507
    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 508
    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    goto :goto_4ba

    :catch_4b4
    move-exception v0

    move-object/from16 v15, v20

    :goto_4b7
    move-object/from16 v12, v23

    goto :goto_4d6

    :cond_4ba
    :goto_4ba
    if-nez p6, :cond_4bf

    .line 512
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_4bf
    .catch Ljava/lang/Exception; {:try_start_4a5 .. :try_end_4bf} :catch_4b4
    .catchall {:try_start_4a5 .. :try_end_4bf} :catchall_4c4

    :cond_4bf
    move-object/from16 v12, v23

    .line 543
    iput-object v12, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    return-void

    :catchall_4c4
    move-exception v0

    move-object/from16 v12, v23

    goto/16 :goto_57f

    :catch_4c9
    move-exception v0

    move-object/from16 v12, v23

    goto :goto_4ce

    :catch_4cd
    move-exception v0

    :goto_4ce
    move-object/from16 v15, v20

    goto :goto_4d6

    :catchall_4d1
    move-exception v0

    goto/16 :goto_57f

    :catch_4d4
    move-exception v0

    const/4 v15, 0x0

    .line 515
    :goto_4d6
    :try_start_4d6
    const-string/jumbo v3, "write javaBean error, fastjson version 1.2.83"

    if-eqz v4, :cond_4f7

    .line 517
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", class "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_4f7
    .catchall {:try_start_4d6 .. :try_end_4f7} :catchall_4d1

    .line 519
    :cond_4f7
    const-string v4, ", fieldName : "

    if-eqz p3, :cond_510

    .line 520
    :try_start_4fb
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p3

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_54d

    :cond_510
    if-eqz v15, :cond_54d

    .line 521
    iget-object v5, v15, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz v5, :cond_54d

    .line 522
    iget-object v5, v15, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 523
    iget-object v6, v5, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_537

    .line 524
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", method : "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_54d

    .line 526
    :cond_537
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 529
    :cond_54d
    :goto_54d
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_56b

    .line 530
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 534
    :cond_56b
    instance-of v4, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v4, :cond_574

    .line 535
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v15

    goto :goto_575

    :cond_574
    const/4 v15, 0x0

    :goto_575
    if-nez v15, :cond_578

    goto :goto_579

    :cond_578
    move-object v0, v15

    .line 541
    :goto_579
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v4, v3, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_57f
    .catchall {:try_start_4fb .. :try_end_57f} :catchall_4d1

    .line 543
    :goto_57f
    iput-object v12, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 544
    throw v0
.end method

.method protected writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C
    .registers 6

    .line 834
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->afterFilters:Ljava/util/List;

    if-eqz v0, :cond_1b

    .line 835
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->afterFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/serializer/AfterFilter;

    .line 836
    invoke-virtual {v1, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/AfterFilter;->writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result p3

    goto :goto_a

    .line 840
    :cond_1b
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->afterFilters:Ljava/util/List;

    if-eqz v0, :cond_36

    .line 841
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->afterFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/serializer/AfterFilter;

    .line 842
    invoke-virtual {v1, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/AfterFilter;->writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result p3

    goto :goto_25

    :cond_36
    return p3
.end method

.method public writeAsArray(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    return-void
.end method

.method public writeAsArrayNonContext(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    return-void
.end method

.method protected writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C
    .registers 6

    .line 817
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->beforeFilters:Ljava/util/List;

    if-eqz v0, :cond_1b

    .line 818
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->beforeFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    .line 819
    invoke-virtual {v1, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/BeforeFilter;->writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result p3

    goto :goto_a

    .line 823
    :cond_1b
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beforeFilters:Ljava/util/List;

    if-eqz v0, :cond_36

    .line 824
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beforeFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    .line 825
    invoke-virtual {v1, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/BeforeFilter;->writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result p3

    goto :goto_25

    :cond_36
    return p3
.end method

.method protected writeClassName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    if-nez p2, :cond_6

    .line 549
    iget-object p2, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    iget-object p2, p2, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    .line 551
    :cond_6
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 552
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object p2, p2, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->typeName:Ljava/lang/String;

    if-nez p2, :cond_24

    .line 554
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 556
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->isProxy(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_20

    .line 557
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    .line 560
    :cond_20
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    .line 562
    :cond_24
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public writeDirectNonContext(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    return-void
.end method

.method public writeNoneASM(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
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

    .line 162
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V

    return-void
.end method

.method public writeReference(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;I)Z
    .registers 7

    .line 566
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 567
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    .line 568
    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerialContext;->features:I

    and-int/2addr v0, v1

    if-nez v0, :cond_23

    and-int/2addr p3, v1

    if-eqz p3, :cond_12

    goto :goto_23

    .line 572
    :cond_12
    iget-object p3, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    if-eqz p3, :cond_23

    iget-object p3, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    invoke-virtual {p3, p2}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_23

    .line 573
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_23
    :goto_23
    return v2
.end method
