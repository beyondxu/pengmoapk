###### Class com.alibaba.fastjson.TypeReference (com.alibaba.fastjson.TypeReference)
.class public Lcom/alibaba/fastjson/TypeReference;
.super Ljava/lang/Object;
.source "TypeReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final LIST_STRING:Ljava/lang/reflect/Type;

.field static classTypeCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final type:Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    const/16 v3, 0x10

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lcom/alibaba/fastjson/TypeReference;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    .line 140
    new-instance v0, Lcom/alibaba/fastjson/TypeReference$1;

    invoke-direct {v0}, Lcom/alibaba/fastjson/TypeReference$1;-><init>()V

    invoke-virtual {v0}, Lcom/alibaba/fastjson/TypeReference$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/TypeReference;->LIST_STRING:Ljava/lang/reflect/Type;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 46
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 48
    sget-object v1, Lcom/alibaba/fastjson/TypeReference;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    if-nez v1, :cond_2c

    .line 50
    sget-object v1, Lcom/alibaba/fastjson/TypeReference;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v1, Lcom/alibaba/fastjson/TypeReference;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/Type;

    .line 54
    :cond_2c
    iput-object v1, p0, Lcom/alibaba/fastjson/TypeReference;->type:Ljava/lang/reflect/Type;

    return-void
.end method

.method protected varargs constructor <init>([Ljava/lang/reflect/Type;)V
    .registers 9

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 65
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 66
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 67
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v4, 0x0

    .line 70
    :goto_1f
    array-length v5, v1

    if-ge v2, v5, :cond_51

    .line 71
    aget-object v5, v1, v2

    instance-of v5, v5, Ljava/lang/reflect/TypeVariable;

    if-eqz v5, :cond_32

    array-length v5, p1

    if-ge v4, v5, :cond_32

    add-int/lit8 v5, v4, 0x1

    .line 73
    aget-object v4, p1, v4

    aput-object v4, v1, v2

    move v4, v5

    .line 76
    :cond_32
    aget-object v5, v1, v2

    instance-of v6, v5, Ljava/lang/reflect/GenericArrayType;

    if-eqz v6, :cond_40

    .line 77
    check-cast v5, Ljava/lang/reflect/GenericArrayType;

    invoke-static {v5}, Lcom/alibaba/fastjson/util/TypeUtils;->checkPrimitiveArray(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/reflect/Type;

    move-result-object v5

    aput-object v5, v1, v2

    .line 82
    :cond_40
    aget-object v5, v1, v2

    instance-of v6, v5, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_4e

    .line 83
    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    invoke-direct {p0, v5, p1, v4}, Lcom/alibaba/fastjson/TypeReference;->handlerParameterizedType(Ljava/lang/reflect/ParameterizedType;[Ljava/lang/reflect/Type;I)Ljava/lang/reflect/Type;

    move-result-object v5

    aput-object v5, v1, v2

    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 87
    :cond_51
    new-instance p1, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    invoke-direct {p1, v1, v0, v3}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 88
    sget-object v0, Lcom/alibaba/fastjson/TypeReference;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    if-nez v0, :cond_6e

    .line 90
    sget-object v0, Lcom/alibaba/fastjson/TypeReference;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/alibaba/fastjson/TypeReference;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/Type;

    .line 94
    :cond_6e
    iput-object v0, p0, Lcom/alibaba/fastjson/TypeReference;->type:Ljava/lang/reflect/Type;

    return-void
.end method

.method private handlerParameterizedType(Ljava/lang/reflect/ParameterizedType;[Ljava/lang/reflect/Type;I)Ljava/lang/reflect/Type;
    .registers 9

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 109
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 110
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v2, 0x0

    .line 112
    :goto_d
    array-length v3, p1

    if-ge v2, v3, :cond_3f

    .line 113
    aget-object v3, p1, v2

    instance-of v3, v3, Ljava/lang/reflect/TypeVariable;

    if-eqz v3, :cond_20

    array-length v3, p2

    if-ge p3, v3, :cond_20

    add-int/lit8 v3, p3, 0x1

    .line 114
    aget-object p3, p2, p3

    aput-object p3, p1, v2

    move p3, v3

    .line 118
    :cond_20
    aget-object v3, p1, v2

    instance-of v4, v3, Ljava/lang/reflect/GenericArrayType;

    if-eqz v4, :cond_2e

    .line 119
    check-cast v3, Ljava/lang/reflect/GenericArrayType;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->checkPrimitiveArray(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/reflect/Type;

    move-result-object v3

    aput-object v3, p1, v2

    .line 124
    :cond_2e
    aget-object v3, p1, v2

    instance-of v4, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_3c

    .line 125
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-direct {p0, v3, p2, p3}, Lcom/alibaba/fastjson/TypeReference;->handlerParameterizedType(Ljava/lang/reflect/ParameterizedType;[Ljava/lang/reflect/Type;I)Ljava/lang/reflect/Type;

    move-result-object v3

    aput-object v3, p1, v2

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 129
    :cond_3f
    new-instance p2, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    invoke-direct {p2, p1, v0, v1}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    return-object p2
.end method

.method public static intern(Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;)Ljava/lang/reflect/Type;
    .registers 2

    .line 98
    sget-object v0, Lcom/alibaba/fastjson/TypeReference;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    if-nez v0, :cond_18

    .line 100
    sget-object v0, Lcom/alibaba/fastjson/TypeReference;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, p0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/alibaba/fastjson/TypeReference;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Type;

    return-object p0

    :cond_18
    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/reflect/Type;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/alibaba/fastjson/TypeReference;->type:Ljava/lang/reflect/Type;

    return-object v0
.end method

###### Class com.alibaba.fastjson.TypeReference.AnonymousClass1 (com.alibaba.fastjson.TypeReference$1)
.class final Lcom/alibaba/fastjson/TypeReference$1;
.super Lcom/alibaba/fastjson/TypeReference;
.source "TypeReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/TypeReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/fastjson/TypeReference<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 140
    invoke-direct {p0}, Lcom/alibaba/fastjson/TypeReference;-><init>()V

    return-void
.end method
