###### Class kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor (kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor)
.class public final Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;
.super Ljava/lang/Object;
.source "IntersectionTypeConstructor.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;
.implements Lkotlin/reflect/jvm/internal/impl/types/model/IntersectionTypeConstructorMarker;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIntersectionTypeConstructor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntersectionTypeConstructor.kt\norg/jetbrains/kotlin/types/IntersectionTypeConstructor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 IntersectionTypeConstructor.kt\norg/jetbrains/kotlin/types/IntersectionTypeConstructorKt\n+ 5 IntersectionTypeConstructor.kt\norg/jetbrains/kotlin/types/IntersectionTypeConstructorKt$transformComponents$1\n*L\n1#1,120:1\n1#2:121\n1056#3:122\n1563#3:129\n1634#3,2:130\n1636#3:139\n98#4,6:123\n104#4:132\n105#4,5:134\n112#4,7:140\n99#5:133\n*S KotlinDebug\n*F\n+ 1 IntersectionTypeConstructor.kt\norg/jetbrains/kotlin/types/IntersectionTypeConstructor\n*L\n66#1:122\n89#1:129\n89#1:130,2\n89#1:139\n89#1:123,6\n89#1:132\n89#1:134,5\n89#1:140,7\n89#1:133\n*E\n"
.end annotation


# instance fields
.field private alternative:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

.field private final hashCode:I

.field private final intersectedTypes:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "typesToIntersect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 43
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->intersectedTypes:Ljava/util/LinkedHashSet;

    .line 44
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->hashCode()I

    move-result p1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->hashCode:I

    return-void
.end method

.method private constructor <init>(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;-><init>(Ljava/util/Collection;)V

    .line 36
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->alternative:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    return-void
.end method

.method static synthetic accessor$IntersectionTypeConstructor$lambda0(Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/CharSequence;
    .registers 2

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->makeDebugNameForIntersectionType$lambda$3(Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static synthetic accessor$IntersectionTypeConstructor$lambda1(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->makeDebugNameForIntersectionType$lambda$1(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic accessor$IntersectionTypeConstructor$lambda2(Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .registers 2

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->createType$lambda$4(Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    return-object p0
.end method

.method private static final createType$lambda$4(Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .registers 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->createType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic makeDebugNameForIntersectionType$default(Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 65
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor$$Lambda$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor$$Lambda$1;

    :cond_6
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->makeDebugNameForIntersectionType(Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final makeDebugNameForIntersectionType$lambda$1(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/String;
    .registers 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final makeDebugNameForIntersectionType$lambda$3(Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/CharSequence;
    .registers 2

    .line 67
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public final createScopeForKotlinType()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .registers 4

    .line 52
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope;->Companion:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope$Companion;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->intersectedTypes:Ljava/util/LinkedHashSet;

    check-cast v1, Ljava/util/Collection;

    const-string v2, "member scope for intersection type"

    invoke-virtual {v0, v2, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope$Companion;->create(Ljava/lang/String;Ljava/util/Collection;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v0

    return-object v0
.end method

.method public final createType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .registers 8

    .line 80
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->getEmpty()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->createScopeForKotlinType()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v5

    .line 79
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor$$Lambda$2;

    invoke-direct {v6, p0}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor$$Lambda$2;-><init>(Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;)V

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->simpleTypeWithNonTrivialMemberScope(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 72
    :cond_4
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 74
    :cond_a
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->intersectedTypes:Ljava/util/LinkedHashSet;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->intersectedTypes:Ljava/util/LinkedHashSet;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getAlternativeType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .registers 2

    .line 95
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->alternative:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    return-object v0
.end method

.method public getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;
    .registers 3

    .line 61
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->intersectedTypes:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object v0

    const-string v1, "getBuiltIns(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;"
        }
    .end annotation

    .line 46
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupertypes()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->intersectedTypes:Ljava/util/LinkedHashSet;

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 85
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->hashCode:I

    return v0
.end method

.method public isDenotable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final makeDebugNameForIntersectionType(Lkotlin/jvm/functions/Function1;)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "getProperTypeRelatedToStringify"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->intersectedTypes:Ljava/util/LinkedHashSet;

    check-cast v0, Ljava/lang/Iterable;

    .line 122
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor$makeDebugNameForIntersectionType$$inlined$sortedBy$1;

    invoke-direct {v1, p1}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor$makeDebugNameForIntersectionType$$inlined$sortedBy$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .line 67
    const-string v0, " & "

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const-string v0, "{"

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    const-string v0, "}"

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    new-instance v7, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor$$Lambda$0;

    invoke-direct {v7, p1}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor$$Lambda$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    const/16 v8, 0x18

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;
    .registers 6

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->getSupertypes()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 130
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 131
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 89
    invoke-virtual {v2, p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v2

    .line 131
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_1d

    .line 139
    :cond_32
    check-cast v1, Ljava/util/List;

    const/4 v0, 0x0

    if-nez v2, :cond_38

    goto :goto_4d

    .line 142
    :cond_38
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->getAlternativeType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 89
    invoke-virtual {v2, p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    .line 146
    :cond_42
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {p1, v1}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->setAlternative(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    move-result-object v0

    :goto_4d
    if-nez v0, :cond_50

    return-object p0

    :cond_50
    return-object v0
.end method

.method public bridge synthetic refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;
    .registers 2

    .line 29
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    return-object p1
.end method

.method public final setAlternative(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;
    .registers 4

    .line 92
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->intersectedTypes:Ljava/util/LinkedHashSet;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;-><init>(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 63
    invoke-static {p0, v0, v1, v0}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->makeDebugNameForIntersectionType$default(Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor$$Lambda$0 (kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor$$Lambda$0)
.class Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field private final arg$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor$$Lambda$0;->arg$0:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor$$Lambda$0;->arg$0:Lkotlin/jvm/functions/Function1;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v0, p1}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->accessor$IntersectionTypeConstructor$lambda0(Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor$$Lambda$1 (kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor$$Lambda$1)
.class Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor$$Lambda$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor$$Lambda$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor$$Lambda$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor$$Lambda$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor$$Lambda$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->accessor$IntersectionTypeConstructor$lambda1(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor$$Lambda$2 (kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor$$Lambda$2)
.class Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field private final arg$0:Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor$$Lambda$2;->arg$0:Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor$$Lambda$2;->arg$0:Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;

    invoke-static {v0, p1}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->accessor$IntersectionTypeConstructor$lambda2(Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    return-object p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor$makeDebugNameForIntersectionType$$inlined$sortedBy$1 (kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor$makeDebugNameForIntersectionType$$inlined$sortedBy$1)
.class public final Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor$makeDebugNameForIntersectionType$$inlined$sortedBy$1;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->makeDebugNameForIntersectionType(Lkotlin/jvm/functions/Function1;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 IntersectionTypeConstructor.kt\norg/jetbrains/kotlin/types/IntersectionTypeConstructor\n*L\n1#1,328:1\n66#2:329\n*E\n"
.end annotation


# instance fields
.field final synthetic $getProperTypeRelatedToStringify$inlined:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 2

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor$makeDebugNameForIntersectionType$$inlined$sortedBy$1;->$getProperTypeRelatedToStringify$inlined:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 102
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 329
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor$makeDebugNameForIntersectionType$$inlined$sortedBy$1;->$getProperTypeRelatedToStringify$inlined:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 102
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 329
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor$makeDebugNameForIntersectionType$$inlined$sortedBy$1;->$getProperTypeRelatedToStringify$inlined:Lkotlin/jvm/functions/Function1;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 102
    check-cast p2, Ljava/lang/Comparable;

    invoke-static {p1, p2}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
