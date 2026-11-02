###### Class kotlin.reflect.jvm.internal.impl.util.EmptyArrayMap (kotlin.reflect.jvm.internal.impl.util.EmptyArrayMap)
.class public final Lkotlin/reflect/jvm/internal/impl/util/EmptyArrayMap;
.super Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;
.source "ArrayMap.kt"


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/EmptyArrayMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/EmptyArrayMap;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/util/EmptyArrayMap;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/EmptyArrayMap;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/EmptyArrayMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    .line 17
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/util/EmptyArrayMap;->get(I)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/lang/Void;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSize()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    .line 32
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/EmptyArrayMap$iterator$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/util/EmptyArrayMap$iterator$1;-><init>()V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)V
    .registers 3

    .line 17
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/util/EmptyArrayMap;->set(ILjava/lang/Void;)V

    return-void
.end method

.method public set(ILjava/lang/Void;)V
    .registers 3

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.util.EmptyArrayMap.AnonymousClass1 (kotlin.reflect.jvm.internal.impl.util.EmptyArrayMap$iterator$1)
.class public final Lkotlin/reflect/jvm/internal/impl/util/EmptyArrayMap$iterator$1;
.super Ljava/lang/Object;
.source "ArrayMap.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/util/EmptyArrayMap;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/util/EmptyArrayMap$iterator$1;->next()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/Void;
    .registers 2

    .line 35
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
