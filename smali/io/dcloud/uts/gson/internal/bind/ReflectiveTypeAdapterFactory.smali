###### Class io.dcloud.uts.gson.internal.bind.ReflectiveTypeAdapterFactory (io.dcloud.uts.gson.internal.bind.ReflectiveTypeAdapterFactory)
.class public final Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory;
.super Ljava/lang/Object;
.source "ReflectiveTypeAdapterFactory.java"

# interfaces
.implements Lio/dcloud/uts/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;,
        Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    }
.end annotation


# instance fields
.field private final accessor:Lio/dcloud/uts/gson/internal/reflect/ReflectionAccessor;

.field private final constructorConstructor:Lio/dcloud/uts/gson/internal/ConstructorConstructor;

.field private final excluder:Lio/dcloud/uts/gson/internal/Excluder;

.field private final fieldNamingPolicy:Lio/dcloud/uts/gson/FieldNamingStrategy;

.field private final jsonAdapterFactory:Lio/dcloud/uts/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;


# direct methods
.method public constructor <init>(Lio/dcloud/uts/gson/internal/ConstructorConstructor;Lio/dcloud/uts/gson/FieldNamingStrategy;Lio/dcloud/uts/gson/internal/Excluder;Lio/dcloud/uts/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;)V
    .registers 6

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Lio/dcloud/uts/gson/internal/reflect/ReflectionAccessor;->getInstance()Lio/dcloud/uts/gson/internal/reflect/ReflectionAccessor;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory;->accessor:Lio/dcloud/uts/gson/internal/reflect/ReflectionAccessor;

    .line 64
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lio/dcloud/uts/gson/internal/ConstructorConstructor;

    .line 65
    iput-object p2, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lio/dcloud/uts/gson/FieldNamingStrategy;

    .line 66
    iput-object p3, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lio/dcloud/uts/gson/internal/Excluder;

    .line 67
    iput-object p4, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory;->jsonAdapterFactory:Lio/dcloud/uts/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    return-void
.end method

.method private createBoundField(Lio/dcloud/uts/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lio/dcloud/uts/gson/reflect/TypeToken;ZZ)Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/gson/Gson;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            "Lio/dcloud/uts/gson/reflect/TypeToken<",
            "*>;ZZ)",
            "Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;"
        }
    .end annotation

    move-object/from16 v9, p4

    .line 114
    invoke-virtual {v9}, Lio/dcloud/uts/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/uts/gson/internal/Primitives;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v10

    .line 116
    const-class v0, Lio/dcloud/uts/gson/annotations/JsonAdapter;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lio/dcloud/uts/gson/annotations/JsonAdapter;

    if-eqz v0, :cond_1d

    .line 119
    iget-object v1, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory;->jsonAdapterFactory:Lio/dcloud/uts/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    iget-object v2, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lio/dcloud/uts/gson/internal/ConstructorConstructor;

    invoke-virtual {v1, v2, p1, v9, v0}, Lio/dcloud/uts/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->getTypeAdapter(Lio/dcloud/uts/gson/internal/ConstructorConstructor;Lio/dcloud/uts/gson/Gson;Lio/dcloud/uts/gson/reflect/TypeToken;Lio/dcloud/uts/gson/annotations/JsonAdapter;)Lio/dcloud/uts/gson/TypeAdapter;

    move-result-object v0

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    if-eqz v0, :cond_23

    const/4 v1, 0x1

    const/4 v6, 0x1

    goto :goto_25

    :cond_23
    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_25
    if-nez v0, :cond_2b

    .line 123
    invoke-virtual {p1, v9}, Lio/dcloud/uts/gson/Gson;->getAdapter(Lio/dcloud/uts/gson/reflect/TypeToken;)Lio/dcloud/uts/gson/TypeAdapter;

    move-result-object v0

    :cond_2b
    move-object v7, v0

    .line 125
    const-class v0, Lio/dcloud/uts/JsonNotNull;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lio/dcloud/uts/JsonNotNull;

    .line 128
    new-instance v0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$1;

    move-object v1, p0

    move-object v8, p1

    move-object v5, p2

    move-object v2, p3

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-direct/range {v0 .. v11}, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$1;-><init>(Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLio/dcloud/uts/gson/TypeAdapter;Lio/dcloud/uts/gson/Gson;Lio/dcloud/uts/gson/reflect/TypeToken;ZLio/dcloud/uts/JsonNotNull;)V

    return-object v0
.end method

.method static excludeField(Ljava/lang/reflect/Field;ZLio/dcloud/uts/gson/internal/Excluder;)Z
    .registers 4

    .line 75
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lio/dcloud/uts/gson/internal/Excluder;->excludeClass(Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p2, p0, p1}, Lio/dcloud/uts/gson/internal/Excluder;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private getBoundFields(Lio/dcloud/uts/gson/Gson;Lio/dcloud/uts/gson/reflect/TypeToken;Ljava/lang/Class;)Ljava/util/Map;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/gson/Gson;",
            "Lio/dcloud/uts/gson/reflect/TypeToken<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 159
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 160
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_f

    goto/16 :goto_a2

    .line 164
    :cond_f
    invoke-virtual/range {p2 .. p2}, Lio/dcloud/uts/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 165
    :goto_16
    const-class v1, Ljava/lang/Object;

    if-eq v9, v1, :cond_a2

    .line 166
    invoke-virtual {v9}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    .line 167
    array-length v11, v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_21
    if-ge v13, v11, :cond_8a

    aget-object v2, v10, v13

    const/4 v1, 0x1

    .line 168
    invoke-virtual {v0, v2, v1}, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result v1

    .line 169
    invoke-virtual {v0, v2, v12}, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result v6

    if-nez v1, :cond_33

    if-nez v6, :cond_33

    goto :goto_85

    .line 173
    :cond_33
    iget-object v3, v0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory;->accessor:Lio/dcloud/uts/gson/internal/reflect/ReflectionAccessor;

    invoke-virtual {v3, v2}, Lio/dcloud/uts/gson/internal/reflect/ReflectionAccessor;->makeAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 174
    invoke-virtual {v8}, Lio/dcloud/uts/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v3, v9, v4}, Lio/dcloud/uts/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v14

    .line 175
    invoke-direct {v0, v2}, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory;->getFieldNames(Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object v15

    .line 177
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v16, v4

    const/4 v4, 0x0

    :goto_50
    if-ge v4, v3, :cond_85

    .line 178
    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v4, :cond_5b

    const/4 v1, 0x0

    :cond_5b
    move/from16 v17, v4

    .line 181
    invoke-static {v14}, Lio/dcloud/uts/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lio/dcloud/uts/gson/reflect/TypeToken;

    move-result-object v4

    move/from16 v18, v17

    move/from16 v17, v3

    move-object v3, v5

    move v5, v1

    move-object/from16 v1, p1

    .line 180
    invoke-direct/range {v0 .. v6}, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory;->createBoundField(Lio/dcloud/uts/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lio/dcloud/uts/gson/reflect/TypeToken;ZZ)Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    move-result-object v4

    .line 182
    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    .line 186
    invoke-interface {v7, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    if-nez v16, :cond_7d

    move-object/from16 v16, v0

    :cond_7d
    add-int/lit8 v4, v18, 0x1

    move-object/from16 v0, p0

    move v1, v5

    move/from16 v3, v17

    goto :goto_50

    :cond_85
    :goto_85
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    goto :goto_21

    .line 200
    :cond_8a
    invoke-virtual {v8}, Lio/dcloud/uts/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v9, v1}, Lio/dcloud/uts/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/uts/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lio/dcloud/uts/gson/reflect/TypeToken;

    move-result-object v8

    .line 201
    invoke-virtual {v8}, Lio/dcloud/uts/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v9

    move-object/from16 v0, p0

    goto/16 :goto_16

    :cond_a2
    :goto_a2
    return-object v7
.end method

.method private getFieldNames(Ljava/lang/reflect/Field;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80
    const-class v0, Lio/dcloud/uts/gson/annotations/SerializedName;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lio/dcloud/uts/gson/annotations/SerializedName;

    if-nez v0, :cond_15

    .line 82
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lio/dcloud/uts/gson/FieldNamingStrategy;

    invoke-interface {v0, p1}, Lio/dcloud/uts/gson/FieldNamingStrategy;->translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 86
    :cond_15
    invoke-interface {v0}, Lio/dcloud/uts/gson/annotations/SerializedName;->value()Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-interface {v0}, Lio/dcloud/uts/gson/annotations/SerializedName;->alternate()[Ljava/lang/String;

    move-result-object v0

    .line 88
    array-length v1, v0

    if-nez v1, :cond_25

    .line 89
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 92
    :cond_25
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    array-length p1, v0

    const/4 v2, 0x0

    :goto_32
    if-ge v2, p1, :cond_3c

    aget-object v3, v0, v2

    .line 95
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_3c
    return-object v1
.end method


# virtual methods
.method public create(Lio/dcloud/uts/gson/Gson;Lio/dcloud/uts/gson/reflect/TypeToken;)Lio/dcloud/uts/gson/TypeAdapter;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/dcloud/uts/gson/Gson;",
            "Lio/dcloud/uts/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lio/dcloud/uts/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 101
    invoke-virtual {p2}, Lio/dcloud/uts/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 103
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 p1, 0x0

    return-object p1

    .line 107
    :cond_e
    iget-object v1, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lio/dcloud/uts/gson/internal/ConstructorConstructor;

    invoke-virtual {v1, p2}, Lio/dcloud/uts/gson/internal/ConstructorConstructor;->get(Lio/dcloud/uts/gson/reflect/TypeToken;)Lio/dcloud/uts/gson/internal/ObjectConstructor;

    move-result-object v1

    .line 108
    new-instance v2, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

    invoke-direct {p0, p1, p2, v0}, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory;->getBoundFields(Lio/dcloud/uts/gson/Gson;Lio/dcloud/uts/gson/reflect/TypeToken;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;-><init>(Lio/dcloud/uts/gson/internal/ObjectConstructor;Ljava/util/Map;)V

    return-object v2
.end method

.method public excludeField(Ljava/lang/reflect/Field;Z)Z
    .registers 4

    .line 71
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lio/dcloud/uts/gson/internal/Excluder;

    invoke-static {p1, p2, v0}, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;ZLio/dcloud/uts/gson/internal/Excluder;)Z

    move-result p1

    return p1
.end method

###### Class io.dcloud.uts.gson.internal.bind.ReflectiveTypeAdapterFactory.AnonymousClass1 (io.dcloud.uts.gson.internal.bind.ReflectiveTypeAdapterFactory$1)
.class Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$1;
.super Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
.source "ReflectiveTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory;->createBoundField(Lio/dcloud/uts/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lio/dcloud/uts/gson/reflect/TypeToken;ZZ)Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory;

.field final synthetic val$context:Lio/dcloud/uts/gson/Gson;

.field final synthetic val$field:Ljava/lang/reflect/Field;

.field final synthetic val$fieldType:Lio/dcloud/uts/gson/reflect/TypeToken;

.field final synthetic val$isPrimitive:Z

.field final synthetic val$jsonAdapterPresent:Z

.field final synthetic val$jsonNotNullAnno:Lio/dcloud/uts/JsonNotNull;

.field final synthetic val$typeAdapter:Lio/dcloud/uts/gson/TypeAdapter;


# direct methods
.method constructor <init>(Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLio/dcloud/uts/gson/TypeAdapter;Lio/dcloud/uts/gson/Gson;Lio/dcloud/uts/gson/reflect/TypeToken;ZLio/dcloud/uts/JsonNotNull;)V
    .registers 12

    .line 128
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->this$0:Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory;

    iput-object p5, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$field:Ljava/lang/reflect/Field;

    iput-boolean p6, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$jsonAdapterPresent:Z

    iput-object p7, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$typeAdapter:Lio/dcloud/uts/gson/TypeAdapter;

    iput-object p8, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$context:Lio/dcloud/uts/gson/Gson;

    iput-object p9, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$fieldType:Lio/dcloud/uts/gson/reflect/TypeToken;

    iput-boolean p10, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$isPrimitive:Z

    iput-object p11, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$jsonNotNullAnno:Lio/dcloud/uts/JsonNotNull;

    invoke-direct {p0, p2, p3, p4}, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method isShouldNotNull()Z
    .registers 2

    .line 147
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$jsonNotNullAnno:Lio/dcloud/uts/JsonNotNull;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method read(Lio/dcloud/uts/gson/stream/JsonReader;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$typeAdapter:Lio/dcloud/uts/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lio/dcloud/uts/gson/TypeAdapter;->read(Lio/dcloud/uts/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_e

    .line 140
    iget-boolean v0, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$isPrimitive:Z

    if-nez v0, :cond_d

    goto :goto_e

    :cond_d
    return-void

    .line 141
    :cond_e
    :goto_e
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method write(Lio/dcloud/uts/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 133
    iget-boolean v0, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$jsonAdapterPresent:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$typeAdapter:Lio/dcloud/uts/gson/TypeAdapter;

    goto :goto_1c

    .line 134
    :cond_d
    new-instance v0, Lio/dcloud/uts/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    iget-object v1, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$context:Lio/dcloud/uts/gson/Gson;

    iget-object v2, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$typeAdapter:Lio/dcloud/uts/gson/TypeAdapter;

    iget-object v3, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$fieldType:Lio/dcloud/uts/gson/reflect/TypeToken;

    invoke-virtual {v3}, Lio/dcloud/uts/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lio/dcloud/uts/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lio/dcloud/uts/gson/Gson;Lio/dcloud/uts/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    .line 135
    :goto_1c
    invoke-virtual {v0, p1, p2}, Lio/dcloud/uts/gson/TypeAdapter;->write(Lio/dcloud/uts/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public writeField(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 151
    iget-boolean v0, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->serialized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 152
    :cond_6
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    return v1
.end method

###### Class io.dcloud.uts.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter (io.dcloud.uts.gson.internal.bind.ReflectiveTypeAdapterFactory$Adapter)
.class public final Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;
.super Lio/dcloud/uts/gson/TypeAdapter;
.source "ReflectiveTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/dcloud/uts/gson/TypeAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final boundFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;",
            ">;"
        }
    .end annotation
.end field

.field private final constructor:Lio/dcloud/uts/gson/internal/ObjectConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/gson/internal/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation
.end field

.field private notReadFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/dcloud/uts/gson/internal/ObjectConstructor;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/gson/internal/ObjectConstructor<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;",
            ">;)V"
        }
    .end annotation

    .line 239
    invoke-direct {p0}, Lio/dcloud/uts/gson/TypeAdapter;-><init>()V

    .line 240
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->constructor:Lio/dcloud/uts/gson/internal/ObjectConstructor;

    .line 241
    iput-object p2, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->boundFields:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public read(Lio/dcloud/uts/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonReader;->peek()Lio/dcloud/uts/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lio/dcloud/uts/gson/stream/JsonToken;->NULL:Lio/dcloud/uts/gson/stream/JsonToken;

    if-ne v0, v1, :cond_d

    .line 246
    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonReader;->nextNull()V

    const/4 p1, 0x0

    return-object p1

    .line 250
    :cond_d
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->constructor:Lio/dcloud/uts/gson/internal/ObjectConstructor;

    invoke-interface {v0}, Lio/dcloud/uts/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v0

    .line 251
    invoke-virtual {p0}, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->reset()V

    .line 254
    :try_start_16
    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonReader;->beginObject()V

    .line 255
    :goto_19
    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 256
    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 257
    iget-object v2, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->boundFields:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    if-eqz v2, :cond_3b

    .line 258
    iget-boolean v3, v2, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->deserialized:Z

    if-nez v3, :cond_32

    goto :goto_3b

    .line 262
    :cond_32
    invoke-virtual {v2, p1, v0}, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->read(Lio/dcloud/uts/gson/stream/JsonReader;Ljava/lang/Object;)V

    .line 264
    iget-object v2, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->notReadFields:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 260
    :cond_3b
    :goto_3b
    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonReader;->skipValue()V
    :try_end_3e
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_3e} :catch_92
    .catch Ljava/lang/IllegalAccessException; {:try_start_16 .. :try_end_3e} :catch_8b

    goto :goto_19

    .line 272
    :cond_3f
    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonReader;->endObject()V

    .line 274
    iget-object p1, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->notReadFields:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8a

    .line 276
    iget-object p1, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->notReadFields:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 278
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_54
    :goto_54
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 279
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    if-eqz v1, :cond_54

    .line 280
    invoke-virtual {v1}, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->isShouldNotNull()Z

    move-result v2

    if-nez v2, :cond_6f

    goto :goto_54

    .line 281
    :cond_6f
    iget-object p1, v1, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->name:Ljava/lang/String;

    .line 282
    new-instance v0, Lio/dcloud/uts/gson/JsonParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Value of non-nullable member "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cannot be null"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/dcloud/uts/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8a
    return-object v0

    :catch_8b
    move-exception p1

    .line 270
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_92
    move-exception p1

    .line 268
    new-instance v0, Lio/dcloud/uts/gson/JsonSyntaxException;

    invoke-direct {v0, p1}, Lio/dcloud/uts/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public reset()V
    .registers 3

    .line 236
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->boundFields:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->notReadFields:Ljava/util/Map;

    return-void
.end method

.method public write(Lio/dcloud/uts/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_6

    .line 293
    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonWriter;->nullValue()Lio/dcloud/uts/gson/stream/JsonWriter;

    return-void

    .line 297
    :cond_6
    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonWriter;->beginObject()Lio/dcloud/uts/gson/stream/JsonWriter;

    .line 299
    :try_start_9
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->boundFields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    .line 300
    invoke-virtual {v1, p2}, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->writeField(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 301
    iget-object v2, v1, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lio/dcloud/uts/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lio/dcloud/uts/gson/stream/JsonWriter;

    .line 302
    invoke-virtual {v1, p1, p2}, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->write(Lio/dcloud/uts/gson/stream/JsonWriter;Ljava/lang/Object;)V
    :try_end_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_2d} :catch_32

    goto :goto_13

    .line 308
    :cond_2e
    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonWriter;->endObject()Lio/dcloud/uts/gson/stream/JsonWriter;

    return-void

    :catch_32
    move-exception p1

    .line 306
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

###### Class io.dcloud.uts.gson.internal.bind.ReflectiveTypeAdapterFactory.BoundField (io.dcloud.uts.gson.internal.bind.ReflectiveTypeAdapterFactory$BoundField)
.class abstract Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
.super Ljava/lang/Object;
.source "ReflectiveTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BoundField"
.end annotation


# instance fields
.field final deserialized:Z

.field final name:Ljava/lang/String;

.field final serialized:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZZ)V
    .registers 4

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->name:Ljava/lang/String;

    .line 213
    iput-boolean p2, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->serialized:Z

    .line 214
    iput-boolean p3, p0, Lio/dcloud/uts/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->deserialized:Z

    return-void
.end method


# virtual methods
.method abstract isShouldNotNull()Z
.end method

.method abstract read(Lio/dcloud/uts/gson/stream/JsonReader;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method abstract write(Lio/dcloud/uts/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method abstract writeField(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method
