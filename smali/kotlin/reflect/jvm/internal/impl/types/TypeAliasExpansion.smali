###### Class kotlin.reflect.jvm.internal.impl.types.TypeAliasExpansion (kotlin.reflect.jvm.internal.impl.types.TypeAliasExpansion)
.class public final Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;
.super Ljava/lang/Object;
.source "TypeAliasExpansion.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion$Companion;


# instance fields
.field private final arguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;",
            ">;"
        }
    .end annotation
.end field

.field private final descriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;

.field private final mapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;",
            ">;"
        }
    .end annotation
.end field

.field private final parent:Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion$Companion;

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;Ljava/util/List;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;",
            ">;",
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;->parent:Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;

    .line 13
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;->descriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;

    .line 14
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;->arguments:Ljava/util/List;

    .line 15
    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;->mapping:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;Ljava/util/List;Ljava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;-><init>(Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final getArguments()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;->arguments:Ljava/util/List;

    return-object v0
.end method

.method public final getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;
    .registers 2

    .line 13
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;->descriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;

    return-object v0
.end method

.method public final getReplacement(Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;
    .registers 3

    const-string v0, "constructor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object p1

    .line 19
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    if-eqz v0, :cond_16

    .line 20
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;->mapping:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    return-object p1

    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

.method public final isRecursion(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;)Z
    .registers 4

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;->descriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;->parent:Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;->isRecursion(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;)Z

    move-result p1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    if-eqz p1, :cond_1b

    goto :goto_1c

    :cond_1b
    return v1

    :cond_1c
    :goto_1c
    const/4 p1, 0x1

    return p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.types.TypeAliasExpansion.Companion (kotlin.reflect.jvm.internal.impl.types.TypeAliasExpansion$Companion)
.class public final Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion$Companion;
.super Ljava/lang/Object;
.source "TypeAliasExpansion.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTypeAliasExpansion.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypeAliasExpansion.kt\norg/jetbrains/kotlin/types/TypeAliasExpansion$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,43:1\n1563#2:44\n1634#2,3:45\n*S KotlinDebug\n*F\n+ 1 TypeAliasExpansion.kt\norg/jetbrains/kotlin/types/TypeAliasExpansion$Companion\n*L\n34#1:44\n34#1:45,3\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;"
        }
    .end annotation

    const-string v0, "typeAliasDescriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v0

    const-string v1, "getParameters(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 45
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 46
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 34
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    move-result-object v2

    .line 46
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 47
    :cond_3e
    check-cast v1, Ljava/util/List;

    .line 35
    check-cast v1, Ljava/lang/Iterable;

    move-object v0, p3

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->zip(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v5

    .line 36
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;-><init>(Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;Ljava/util/List;Ljava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method
