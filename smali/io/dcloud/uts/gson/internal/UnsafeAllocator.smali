###### Class io.dcloud.uts.gson.internal.UnsafeAllocator (io.dcloud.uts.gson.internal.UnsafeAllocator)
.class public abstract Lio/dcloud/uts/gson/internal/UnsafeAllocator;
.super Ljava/lang/Object;
.source "UnsafeAllocator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static assertInstantiable(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    .line 116
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    move-result v1

    if-nez v1, :cond_29

    .line 119
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 120
    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Abstract class can\'t be instantiated! Class name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_29
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Interface can\'t be instantiated! Interface name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create()Lio/dcloud/uts/gson/internal/UnsafeAllocator;
    .registers 9

    .line 40
    const-string v0, "newInstance"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_5
    const-string v4, "sun.misc.Unsafe"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 41
    const-string v5, "theUnsafe"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 42
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 43
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 44
    const-string v6, "allocateInstance"

    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Class;

    aput-object v8, v7, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 45
    new-instance v6, Lio/dcloud/uts/gson/internal/UnsafeAllocator$1;

    invoke-direct {v6, v4, v5}, Lio/dcloud/uts/gson/internal/UnsafeAllocator$1;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_29} :catch_2a

    return-object v6

    :catch_2a
    const/4 v4, 0x2

    .line 62
    :try_start_2b
    const-class v5, Ljava/io/ObjectStreamClass;

    const-string v6, "getConstructorId"

    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Class;

    aput-object v8, v7, v2

    .line 63
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 64
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 65
    new-array v6, v3, [Ljava/lang/Object;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v2

    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 66
    const-class v5, Ljava/io/ObjectStreamClass;

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Class;

    aput-object v7, v6, v2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    .line 67
    invoke-virtual {v5, v0, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 68
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 69
    new-instance v6, Lio/dcloud/uts/gson/internal/UnsafeAllocator$2;

    invoke-direct {v6, v5, v1}, Lio/dcloud/uts/gson/internal/UnsafeAllocator$2;-><init>(Ljava/lang/reflect/Method;I)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_64} :catch_65

    return-object v6

    .line 86
    :catch_65
    :try_start_65
    const-class v1, Ljava/io/ObjectInputStream;

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Class;

    aput-object v5, v4, v2

    aput-object v5, v4, v3

    .line 87
    invoke-virtual {v1, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 88
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 89
    new-instance v1, Lio/dcloud/uts/gson/internal/UnsafeAllocator$3;

    invoke-direct {v1, v0}, Lio/dcloud/uts/gson/internal/UnsafeAllocator$3;-><init>(Ljava/lang/reflect/Method;)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_7b} :catch_7c

    return-object v1

    .line 101
    :catch_7c
    new-instance v0, Lio/dcloud/uts/gson/internal/UnsafeAllocator$4;

    invoke-direct {v0}, Lio/dcloud/uts/gson/internal/UnsafeAllocator$4;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

###### Class io.dcloud.uts.gson.internal.UnsafeAllocator.AnonymousClass1 (io.dcloud.uts.gson.internal.UnsafeAllocator$1)
.class Lio/dcloud/uts/gson/internal/UnsafeAllocator$1;
.super Lio/dcloud/uts/gson/internal/UnsafeAllocator;
.source "UnsafeAllocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/uts/gson/internal/UnsafeAllocator;->create()Lio/dcloud/uts/gson/internal/UnsafeAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$allocateInstance:Ljava/lang/reflect/Method;

.field final synthetic val$unsafe:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .registers 3

    .line 45
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/UnsafeAllocator$1;->val$allocateInstance:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lio/dcloud/uts/gson/internal/UnsafeAllocator$1;->val$unsafe:Ljava/lang/Object;

    invoke-direct {p0}, Lio/dcloud/uts/gson/internal/UnsafeAllocator;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    invoke-static {p1}, Lio/dcloud/uts/gson/internal/UnsafeAllocator$1;->assertInstantiable(Ljava/lang/Class;)V

    .line 50
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/UnsafeAllocator$1;->val$allocateInstance:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lio/dcloud/uts/gson/internal/UnsafeAllocator$1;->val$unsafe:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class io.dcloud.uts.gson.internal.UnsafeAllocator.AnonymousClass2 (io.dcloud.uts.gson.internal.UnsafeAllocator$2)
.class Lio/dcloud/uts/gson/internal/UnsafeAllocator$2;
.super Lio/dcloud/uts/gson/internal/UnsafeAllocator;
.source "UnsafeAllocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/uts/gson/internal/UnsafeAllocator;->create()Lio/dcloud/uts/gson/internal/UnsafeAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$constructorId:I

.field final synthetic val$newInstance:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;I)V
    .registers 3

    .line 69
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/UnsafeAllocator$2;->val$newInstance:Ljava/lang/reflect/Method;

    iput p2, p0, Lio/dcloud/uts/gson/internal/UnsafeAllocator$2;->val$constructorId:I

    invoke-direct {p0}, Lio/dcloud/uts/gson/internal/UnsafeAllocator;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    invoke-static {p1}, Lio/dcloud/uts/gson/internal/UnsafeAllocator$2;->assertInstantiable(Ljava/lang/Class;)V

    .line 74
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/UnsafeAllocator$2;->val$newInstance:Ljava/lang/reflect/Method;

    iget v1, p0, Lio/dcloud/uts/gson/internal/UnsafeAllocator$2;->val$constructorId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v1, v2, p1

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class io.dcloud.uts.gson.internal.UnsafeAllocator.AnonymousClass3 (io.dcloud.uts.gson.internal.UnsafeAllocator$3)
.class Lio/dcloud/uts/gson/internal/UnsafeAllocator$3;
.super Lio/dcloud/uts/gson/internal/UnsafeAllocator;
.source "UnsafeAllocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/uts/gson/internal/UnsafeAllocator;->create()Lio/dcloud/uts/gson/internal/UnsafeAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$newInstance:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/UnsafeAllocator$3;->val$newInstance:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Lio/dcloud/uts/gson/internal/UnsafeAllocator;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 93
    invoke-static {p1}, Lio/dcloud/uts/gson/internal/UnsafeAllocator$3;->assertInstantiable(Ljava/lang/Class;)V

    .line 94
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/UnsafeAllocator$3;->val$newInstance:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-class p1, Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class io.dcloud.uts.gson.internal.UnsafeAllocator.AnonymousClass4 (io.dcloud.uts.gson.internal.UnsafeAllocator$4)
.class Lio/dcloud/uts/gson/internal/UnsafeAllocator$4;
.super Lio/dcloud/uts/gson/internal/UnsafeAllocator;
.source "UnsafeAllocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/uts/gson/internal/UnsafeAllocator;->create()Lio/dcloud/uts/gson/internal/UnsafeAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 101
    invoke-direct {p0}, Lio/dcloud/uts/gson/internal/UnsafeAllocator;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot allocate "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
