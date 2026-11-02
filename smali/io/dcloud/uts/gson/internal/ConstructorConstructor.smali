###### Class io.dcloud.uts.gson.internal.ConstructorConstructor (io.dcloud.uts.gson.internal.ConstructorConstructor)
.class public final Lio/dcloud/uts/gson/internal/ConstructorConstructor;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"


# instance fields
.field private final accessor:Lio/dcloud/uts/gson/internal/reflect/ReflectionAccessor;

.field private final instanceCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lio/dcloud/uts/gson/InstanceCreator<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lio/dcloud/uts/gson/InstanceCreator<",
            "*>;>;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {}, Lio/dcloud/uts/gson/internal/reflect/ReflectionAccessor;->getInstance()Lio/dcloud/uts/gson/internal/reflect/ReflectionAccessor;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/uts/gson/internal/ConstructorConstructor;->accessor:Lio/dcloud/uts/gson/internal/reflect/ReflectionAccessor;

    .line 57
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    return-void
.end method

.method private newDefaultConstructor(Ljava/lang/Class;)Lio/dcloud/uts/gson/internal/ObjectConstructor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lio/dcloud/uts/gson/internal/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 104
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_10

    .line 106
    iget-object v1, p0, Lio/dcloud/uts/gson/internal/ConstructorConstructor;->accessor:Lio/dcloud/uts/gson/internal/reflect/ReflectionAccessor;

    invoke-virtual {v1, p1}, Lio/dcloud/uts/gson/internal/reflect/ReflectionAccessor;->makeAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 108
    :cond_10
    new-instance v1, Lio/dcloud/uts/gson/internal/ConstructorConstructor$3;

    invoke-direct {v1, p0, p1}, Lio/dcloud/uts/gson/internal/ConstructorConstructor$3;-><init>(Lio/dcloud/uts/gson/internal/ConstructorConstructor;Ljava/lang/reflect/Constructor;)V
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_15} :catch_16

    return-object v1

    :catch_16
    return-object v0
.end method

.method private newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lio/dcloud/uts/gson/internal/ObjectConstructor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lio/dcloud/uts/gson/internal/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation

    .line 139
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 140
    const-class v0, Ljava/util/SortedSet;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 141
    new-instance p1, Lio/dcloud/uts/gson/internal/ConstructorConstructor$4;

    invoke-direct {p1, p0}, Lio/dcloud/uts/gson/internal/ConstructorConstructor$4;-><init>(Lio/dcloud/uts/gson/internal/ConstructorConstructor;)V

    return-object p1

    .line 146
    :cond_16
    const-class v0, Ljava/util/EnumSet;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 147
    new-instance p2, Lio/dcloud/uts/gson/internal/ConstructorConstructor$5;

    invoke-direct {p2, p0, p1}, Lio/dcloud/uts/gson/internal/ConstructorConstructor$5;-><init>(Lio/dcloud/uts/gson/internal/ConstructorConstructor;Ljava/lang/reflect/Type;)V

    return-object p2

    .line 162
    :cond_24
    const-class p1, Ljava/util/Set;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 163
    new-instance p1, Lio/dcloud/uts/gson/internal/ConstructorConstructor$6;

    invoke-direct {p1, p0}, Lio/dcloud/uts/gson/internal/ConstructorConstructor$6;-><init>(Lio/dcloud/uts/gson/internal/ConstructorConstructor;)V

    return-object p1

    .line 168
    :cond_32
    const-class p1, Ljava/util/Queue;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_40

    .line 169
    new-instance p1, Lio/dcloud/uts/gson/internal/ConstructorConstructor$7;

    invoke-direct {p1, p0}, Lio/dcloud/uts/gson/internal/ConstructorConstructor$7;-><init>(Lio/dcloud/uts/gson/internal/ConstructorConstructor;)V

    return-object p1

    .line 175
    :cond_40
    new-instance p1, Lio/dcloud/uts/gson/internal/ConstructorConstructor$8;

    invoke-direct {p1, p0}, Lio/dcloud/uts/gson/internal/ConstructorConstructor$8;-><init>(Lio/dcloud/uts/gson/internal/ConstructorConstructor;)V

    return-object p1

    .line 183
    :cond_46
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 184
    const-class v0, Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 185
    new-instance p1, Lio/dcloud/uts/gson/internal/ConstructorConstructor$9;

    invoke-direct {p1, p0}, Lio/dcloud/uts/gson/internal/ConstructorConstructor$9;-><init>(Lio/dcloud/uts/gson/internal/ConstructorConstructor;)V

    return-object p1

    .line 190
    :cond_5c
    const-class v0, Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 191
    new-instance p1, Lio/dcloud/uts/gson/internal/ConstructorConstructor$10;

    invoke-direct {p1, p0}, Lio/dcloud/uts/gson/internal/ConstructorConstructor$10;-><init>(Lio/dcloud/uts/gson/internal/ConstructorConstructor;)V

    return-object p1

    .line 196
    :cond_6a
    const-class v0, Ljava/util/SortedMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_78

    .line 197
    new-instance p1, Lio/dcloud/uts/gson/internal/ConstructorConstructor$11;

    invoke-direct {p1, p0}, Lio/dcloud/uts/gson/internal/ConstructorConstructor$11;-><init>(Lio/dcloud/uts/gson/internal/ConstructorConstructor;)V

    return-object p1

    .line 202
    :cond_78
    instance-of p2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz p2, :cond_9b

    const-class p2, Ljava/lang/String;

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 203
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p1}, Lio/dcloud/uts/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lio/dcloud/uts/gson/reflect/TypeToken;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/uts/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p1

    .line 202
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_9b

    .line 204
    new-instance p1, Lio/dcloud/uts/gson/internal/ConstructorConstructor$12;

    invoke-direct {p1, p0}, Lio/dcloud/uts/gson/internal/ConstructorConstructor$12;-><init>(Lio/dcloud/uts/gson/internal/ConstructorConstructor;)V

    return-object p1

    .line 210
    :cond_9b
    new-instance p1, Lio/dcloud/uts/gson/internal/ConstructorConstructor$13;

    invoke-direct {p1, p0}, Lio/dcloud/uts/gson/internal/ConstructorConstructor$13;-><init>(Lio/dcloud/uts/gson/internal/ConstructorConstructor;)V

    return-object p1

    :cond_a1
    const/4 p1, 0x0

    return-object p1
.end method

.method private newUnsafeAllocator(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lio/dcloud/uts/gson/internal/ObjectConstructor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lio/dcloud/uts/gson/internal/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation

    .line 223
    new-instance v0, Lio/dcloud/uts/gson/internal/ConstructorConstructor$14;

    invoke-direct {v0, p0, p2, p1}, Lio/dcloud/uts/gson/internal/ConstructorConstructor$14;-><init>(Lio/dcloud/uts/gson/internal/ConstructorConstructor;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-object v0
.end method


# virtual methods
.method public get(Lio/dcloud/uts/gson/reflect/TypeToken;)Lio/dcloud/uts/gson/internal/ObjectConstructor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/dcloud/uts/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lio/dcloud/uts/gson/internal/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation

    .line 61
    invoke-virtual {p1}, Lio/dcloud/uts/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 62
    invoke-virtual {p1}, Lio/dcloud/uts/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p1

    .line 67
    iget-object v1, p0, Lio/dcloud/uts/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/uts/gson/InstanceCreator;

    if-eqz v1, :cond_18

    .line 69
    new-instance p1, Lio/dcloud/uts/gson/internal/ConstructorConstructor$1;

    invoke-direct {p1, p0, v1, v0}, Lio/dcloud/uts/gson/internal/ConstructorConstructor$1;-><init>(Lio/dcloud/uts/gson/internal/ConstructorConstructor;Lio/dcloud/uts/gson/InstanceCreator;Ljava/lang/reflect/Type;)V

    return-object p1

    .line 78
    :cond_18
    iget-object v1, p0, Lio/dcloud/uts/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    .line 79
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/uts/gson/InstanceCreator;

    if-eqz v1, :cond_28

    .line 81
    new-instance p1, Lio/dcloud/uts/gson/internal/ConstructorConstructor$2;

    invoke-direct {p1, p0, v1, v0}, Lio/dcloud/uts/gson/internal/ConstructorConstructor$2;-><init>(Lio/dcloud/uts/gson/internal/ConstructorConstructor;Lio/dcloud/uts/gson/InstanceCreator;Ljava/lang/reflect/Type;)V

    return-object p1

    .line 88
    :cond_28
    invoke-direct {p0, p1}, Lio/dcloud/uts/gson/internal/ConstructorConstructor;->newDefaultConstructor(Ljava/lang/Class;)Lio/dcloud/uts/gson/internal/ObjectConstructor;

    move-result-object v1

    if-eqz v1, :cond_2f

    return-object v1

    .line 93
    :cond_2f
    invoke-direct {p0, v0, p1}, Lio/dcloud/uts/gson/internal/ConstructorConstructor;->newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lio/dcloud/uts/gson/internal/ObjectConstructor;

    move-result-object v1

    if-eqz v1, :cond_36

    return-object v1

    .line 99
    :cond_36
    invoke-direct {p0, v0, p1}, Lio/dcloud/uts/gson/internal/ConstructorConstructor;->newUnsafeAllocator(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lio/dcloud/uts/gson/internal/ObjectConstructor;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 239
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.dcloud.uts.gson.internal.ConstructorConstructor.AnonymousClass1 (io.dcloud.uts.gson.internal.ConstructorConstructor$1)
.class Lio/dcloud/uts/gson/internal/ConstructorConstructor$1;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lio/dcloud/uts/gson/internal/ObjectConstructor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/uts/gson/internal/ConstructorConstructor;->get(Lio/dcloud/uts/gson/reflect/TypeToken;)Lio/dcloud/uts/gson/internal/ObjectConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/dcloud/uts/gson/internal/ObjectConstructor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/uts/gson/internal/ConstructorConstructor;

.field final synthetic val$type:Ljava/lang/reflect/Type;

.field final synthetic val$typeCreator:Lio/dcloud/uts/gson/InstanceCreator;


# direct methods
.method constructor <init>(Lio/dcloud/uts/gson/internal/ConstructorConstructor;Lio/dcloud/uts/gson/InstanceCreator;Ljava/lang/reflect/Type;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/ConstructorConstructor$1;->this$0:Lio/dcloud/uts/gson/internal/ConstructorConstructor;

    iput-object p2, p0, Lio/dcloud/uts/gson/internal/ConstructorConstructor$1;->val$typeCreator:Lio/dcloud/uts/gson/InstanceCreator;

    iput-object p3, p0, Lio/dcloud/uts/gson/internal/ConstructorConstructor$1;->val$type:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/ConstructorConstructor$1;->val$typeCreator:Lio/dcloud/uts/gson/InstanceCreator;

    iget-object v1, p0, Lio/dcloud/uts/gson/internal/ConstructorConstructor$1;->val$type:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lio/dcloud/uts/gson/InstanceCreator;->createInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class io.dcloud.uts.gson.internal.ConstructorConstructor.AnonymousClass10 (io.dcloud.uts.gson.internal.ConstructorConstructor$10)
.class Lio/dcloud/uts/gson/internal/ConstructorConstructor$10;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lio/dcloud/uts/gson/internal/ObjectConstructor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/uts/gson/internal/ConstructorConstructor;->newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lio/dcloud/uts/gson/internal/ObjectConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/dcloud/uts/gson/internal/ObjectConstructor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/uts/gson/internal/ConstructorConstructor;


# direct methods
.method constructor <init>(Lio/dcloud/uts/gson/internal/ConstructorConstructor;)V
    .registers 2

    .line 191
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/ConstructorConstructor$10;->this$0:Lio/dcloud/uts/gson/internal/ConstructorConstructor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 193
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0
.end method

###### Class io.dcloud.uts.gson.internal.ConstructorConstructor.AnonymousClass11 (io.dcloud.uts.gson.internal.ConstructorConstructor$11)
.class Lio/dcloud/uts/gson/internal/ConstructorConstructor$11;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lio/dcloud/uts/gson/internal/ObjectConstructor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/uts/gson/internal/ConstructorConstructor;->newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lio/dcloud/uts/gson/internal/ObjectConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/dcloud/uts/gson/internal/ObjectConstructor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/uts/gson/internal/ConstructorConstructor;


# direct methods
.method constructor <init>(Lio/dcloud/uts/gson/internal/ConstructorConstructor;)V
    .registers 2

    .line 197
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/ConstructorConstructor$11;->this$0:Lio/dcloud/uts/gson/internal/ConstructorConstructor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 199
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    return-object v0
.end method

###### Class io.dcloud.uts.gson.internal.ConstructorConstructor.AnonymousClass12 (io.dcloud.uts.gson.internal.ConstructorConstructor$12)
.class Lio/dcloud/uts/gson/internal/ConstructorConstructor$12;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lio/dcloud/uts/gson/internal/ObjectConstructor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/uts/gson/internal/ConstructorConstructor;->newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lio/dcloud/uts/gson/internal/ObjectConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/dcloud/uts/gson/internal/ObjectConstructor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/uts/gson/internal/ConstructorConstructor;


# direct methods
.method constructor <init>(Lio/dcloud/uts/gson/internal/ConstructorConstructor;)V
    .registers 2

    .line 204
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/ConstructorConstructor$12;->this$0:Lio/dcloud/uts/gson/internal/ConstructorConstructor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 206
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

###### Class io.dcloud.uts.gson.internal.ConstructorConstructor.AnonymousClass13 (io.dcloud.uts.gson.internal.ConstructorConstructor$13)
.class Lio/dcloud/uts/gson/internal/ConstructorConstructor$13;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lio/dcloud/uts/gson/internal/ObjectConstructor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/uts/gson/internal/ConstructorConstructor;->newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lio/dcloud/uts/gson/internal/ObjectConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/dcloud/uts/gson/internal/ObjectConstructor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/uts/gson/internal/ConstructorConstructor;


# direct methods
.method constructor <init>(Lio/dcloud/uts/gson/internal/ConstructorConstructor;)V
    .registers 2

    .line 210
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/ConstructorConstructor$13;->this$0:Lio/dcloud/uts/gson/internal/ConstructorConstructor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 212
    new-instance v0, Lio/dcloud/uts/gson/internal/LinkedTreeMap;

    invoke-direct {v0}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;-><init>()V

    return-object v0
.end method

###### Class io.dcloud.uts.gson.internal.ConstructorConstructor.AnonymousClass14 (io.dcloud.uts.gson.internal.ConstructorConstructor$14)
.class Lio/dcloud/uts/gson/internal/ConstructorConstructor$14;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lio/dcloud/uts/gson/internal/ObjectConstructor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/uts/gson/internal/ConstructorConstructor;->newUnsafeAllocator(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lio/dcloud/uts/gson/internal/ObjectConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/dcloud/uts/gson/internal/ObjectConstructor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/uts/gson/internal/ConstructorConstructor;

.field private final unsafeAllocator:Lio/dcloud/uts/gson/internal/UnsafeAllocator;

.field final synthetic val$rawType:Ljava/lang/Class;

.field final synthetic val$type:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lio/dcloud/uts/gson/internal/ConstructorConstructor;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 223
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/ConstructorConstructor$14;->this$0:Lio/dcloud/uts/gson/internal/ConstructorConstructor;

    iput-object p2, p0, Lio/dcloud/uts/gson/internal/ConstructorConstructor$14;->val$rawType:Ljava/lang/Class;

    iput-object p3, p0, Lio/dcloud/uts/gson/internal/ConstructorConstructor$14;->val$type:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    invoke-static {}, Lio/dcloud/uts/gson/internal/UnsafeAllocator;->create()Lio/dcloud/uts/gson/internal/UnsafeAllocator;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/uts/gson/internal/ConstructorConstructor$14;->unsafeAllocator:Lio/dcloud/uts/gson/internal/UnsafeAllocator;

    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 228
    :try_start_0
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/ConstructorConstructor$14;->unsafeAllocator:Lio/dcloud/uts/gson/internal/UnsafeAllocator;

    iget-object v1, p0, Lio/dcloud/uts/gson/internal/ConstructorConstructor$14;->val$rawType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lio/dcloud/uts/gson/internal/UnsafeAllocator;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    .line 231
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to invoke no-args constructor for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/dcloud/uts/gson/internal/ConstructorConstructor$14;->val$type:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Registering an InstanceCreator with Gson for this type may fix this problem."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

###### Class io.dcloud.uts.gson.internal.ConstructorConstructor.AnonymousClass2 (io.dcloud.uts.gson.internal.ConstructorConstructor$2)
.class Lio/dcloud/uts/gson/internal/ConstructorConstructor$2;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lio/dcloud/uts/gson/internal/ObjectConstructor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/uts/gson/internal/ConstructorConstructor;->get(Lio/dcloud/uts/gson/reflect/TypeToken;)Lio/dcloud/uts/gson/internal/ObjectConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/dcloud/uts/gson/internal/ObjectConstructor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/uts/gson/internal/ConstructorConstructor;

.field final synthetic val$rawTypeCreator:Lio/dcloud/uts/gson/InstanceCreator;

.field final synthetic val$type:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lio/dcloud/uts/gson/internal/ConstructorConstructor;Lio/dcloud/uts/gson/InstanceCreator;Ljava/lang/reflect/Type;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/ConstructorConstructor$2;->this$0:Lio/dcloud/uts/gson/internal/ConstructorConstructor;

    iput-object p2, p0, Lio/dcloud/uts/gson/internal/ConstructorConstructor$2;->val$rawTypeCreator:Lio/dcloud/uts/gson/InstanceCreator;

    iput-object p3, p0, Lio/dcloud/uts/gson/internal/ConstructorConstructor$2;->val$type:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/ConstructorConstructor$2;->val$rawTypeCreator:Lio/dcloud/uts/gson/InstanceCreator;

    iget-object v1, p0, Lio/dcloud/uts/gson/internal/ConstructorConstructor$2;->val$type:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lio/dcloud/uts/gson/InstanceCreator;->createInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class io.dcloud.uts.gson.internal.ConstructorConstructor.AnonymousClass3 (io.dcloud.uts.gson.internal.ConstructorConstructor$3)
.class Lio/dcloud/uts/gson/internal/ConstructorConstructor$3;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lio/dcloud/uts/gson/internal/ObjectConstructor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/uts/gson/internal/ConstructorConstructor;->newDefaultConstructor(Ljava/lang/Class;)Lio/dcloud/uts/gson/internal/ObjectConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/dcloud/uts/gson/internal/ObjectConstructor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/uts/gson/internal/ConstructorConstructor;

.field final synthetic val$constructor:Ljava/lang/reflect/Constructor;


# direct methods
.method constructor <init>(Lio/dcloud/uts/gson/internal/ConstructorConstructor;Ljava/lang/reflect/Constructor;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/ConstructorConstructor$3;->this$0:Lio/dcloud/uts/gson/internal/ConstructorConstructor;

    iput-object p2, p0, Lio/dcloud/uts/gson/internal/ConstructorConstructor$3;->val$constructor:Ljava/lang/reflect/Constructor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 112
    const-string v0, " with no args"

    const-string v1, "Failed to invoke "

    .line 113
    :try_start_4
    iget-object v2, p0, Lio/dcloud/uts/gson/internal/ConstructorConstructor$3;->val$constructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_b} :catch_2f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_b} :catch_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    .line 123
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_13
    move-exception v2

    .line 120
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/dcloud/uts/gson/internal/ConstructorConstructor$3;->val$constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_2f
    move-exception v2

    .line 116
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/dcloud/uts/gson/internal/ConstructorConstructor$3;->val$constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

###### Class io.dcloud.uts.gson.internal.ConstructorConstructor.AnonymousClass4 (io.dcloud.uts.gson.internal.ConstructorConstructor$4)
.class Lio/dcloud/uts/gson/internal/ConstructorConstructor$4;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lio/dcloud/uts/gson/internal/ObjectConstructor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/uts/gson/internal/ConstructorConstructor;->newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lio/dcloud/uts/gson/internal/ObjectConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/dcloud/uts/gson/internal/ObjectConstructor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/uts/gson/internal/ConstructorConstructor;


# direct methods
.method constructor <init>(Lio/dcloud/uts/gson/internal/ConstructorConstructor;)V
    .registers 2

    .line 141
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/ConstructorConstructor$4;->this$0:Lio/dcloud/uts/gson/internal/ConstructorConstructor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    return-object v0
.end method

###### Class io.dcloud.uts.gson.internal.ConstructorConstructor.AnonymousClass5 (io.dcloud.uts.gson.internal.ConstructorConstructor$5)
.class Lio/dcloud/uts/gson/internal/ConstructorConstructor$5;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lio/dcloud/uts/gson/internal/ObjectConstructor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/uts/gson/internal/ConstructorConstructor;->newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lio/dcloud/uts/gson/internal/ObjectConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/dcloud/uts/gson/internal/ObjectConstructor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/uts/gson/internal/ConstructorConstructor;

.field final synthetic val$type:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lio/dcloud/uts/gson/internal/ConstructorConstructor;Ljava/lang/reflect/Type;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/ConstructorConstructor$5;->this$0:Lio/dcloud/uts/gson/internal/ConstructorConstructor;

    iput-object p2, p0, Lio/dcloud/uts/gson/internal/ConstructorConstructor$5;->val$type:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/ConstructorConstructor$5;->val$type:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    const-string v2, "Invalid EnumSet type: "

    if-eqz v1, :cond_34

    .line 151
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 152
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_1c

    .line 153
    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0

    .line 155
    :cond_1c
    new-instance v0, Lio/dcloud/uts/gson/JsonIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/dcloud/uts/gson/internal/ConstructorConstructor$5;->val$type:Ljava/lang/reflect/Type;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/dcloud/uts/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_34
    new-instance v0, Lio/dcloud/uts/gson/JsonIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/dcloud/uts/gson/internal/ConstructorConstructor$5;->val$type:Ljava/lang/reflect/Type;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/dcloud/uts/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class io.dcloud.uts.gson.internal.ConstructorConstructor.AnonymousClass6 (io.dcloud.uts.gson.internal.ConstructorConstructor$6)
.class Lio/dcloud/uts/gson/internal/ConstructorConstructor$6;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lio/dcloud/uts/gson/internal/ObjectConstructor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/uts/gson/internal/ConstructorConstructor;->newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lio/dcloud/uts/gson/internal/ObjectConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/dcloud/uts/gson/internal/ObjectConstructor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/uts/gson/internal/ConstructorConstructor;


# direct methods
.method constructor <init>(Lio/dcloud/uts/gson/internal/ConstructorConstructor;)V
    .registers 2

    .line 163
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/ConstructorConstructor$6;->this$0:Lio/dcloud/uts/gson/internal/ConstructorConstructor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 165
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method

###### Class io.dcloud.uts.gson.internal.ConstructorConstructor.AnonymousClass7 (io.dcloud.uts.gson.internal.ConstructorConstructor$7)
.class Lio/dcloud/uts/gson/internal/ConstructorConstructor$7;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lio/dcloud/uts/gson/internal/ObjectConstructor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/uts/gson/internal/ConstructorConstructor;->newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lio/dcloud/uts/gson/internal/ObjectConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/dcloud/uts/gson/internal/ObjectConstructor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/uts/gson/internal/ConstructorConstructor;


# direct methods
.method constructor <init>(Lio/dcloud/uts/gson/internal/ConstructorConstructor;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/ConstructorConstructor$7;->this$0:Lio/dcloud/uts/gson/internal/ConstructorConstructor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    return-object v0
.end method

###### Class io.dcloud.uts.gson.internal.ConstructorConstructor.AnonymousClass8 (io.dcloud.uts.gson.internal.ConstructorConstructor$8)
.class Lio/dcloud/uts/gson/internal/ConstructorConstructor$8;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lio/dcloud/uts/gson/internal/ObjectConstructor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/uts/gson/internal/ConstructorConstructor;->newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lio/dcloud/uts/gson/internal/ObjectConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/dcloud/uts/gson/internal/ObjectConstructor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/uts/gson/internal/ConstructorConstructor;


# direct methods
.method constructor <init>(Lio/dcloud/uts/gson/internal/ConstructorConstructor;)V
    .registers 2

    .line 175
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/ConstructorConstructor$8;->this$0:Lio/dcloud/uts/gson/internal/ConstructorConstructor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

###### Class io.dcloud.uts.gson.internal.ConstructorConstructor.AnonymousClass9 (io.dcloud.uts.gson.internal.ConstructorConstructor$9)
.class Lio/dcloud/uts/gson/internal/ConstructorConstructor$9;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lio/dcloud/uts/gson/internal/ObjectConstructor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/uts/gson/internal/ConstructorConstructor;->newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lio/dcloud/uts/gson/internal/ObjectConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/dcloud/uts/gson/internal/ObjectConstructor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/uts/gson/internal/ConstructorConstructor;


# direct methods
.method constructor <init>(Lio/dcloud/uts/gson/internal/ConstructorConstructor;)V
    .registers 2

    .line 185
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/ConstructorConstructor$9;->this$0:Lio/dcloud/uts/gson/internal/ConstructorConstructor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 187
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    return-object v0
.end method
