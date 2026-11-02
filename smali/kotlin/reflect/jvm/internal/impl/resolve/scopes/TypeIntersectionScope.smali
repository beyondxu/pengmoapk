###### Class kotlin.reflect.jvm.internal.impl.resolve.scopes.TypeIntersectionScope (kotlin.reflect.jvm.internal.impl.resolve.scopes.TypeIntersectionScope)
.class public final Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope;
.super Lkotlin/reflect/jvm/internal/impl/resolve/scopes/AbstractScopeAdapter;
.source "TypeIntersectionScope.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTypeIntersectionScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypeIntersectionScope.kt\norg/jetbrains/kotlin/resolve/scopes/TypeIntersectionScope\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,59:1\n3301#2,10:60\n*S KotlinDebug\n*F\n+ 1 TypeIntersectionScope.kt\norg/jetbrains/kotlin/resolve/scopes/TypeIntersectionScope\n*L\n36#1:60,10\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope$Companion;


# instance fields
.field private final debugName:Ljava/lang/String;

.field private final workerScope:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope;->Companion:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;)V
    .registers 3

    .line 28
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/AbstractScopeAdapter;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope;->debugName:Ljava/lang/String;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope;->workerScope:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope;-><init>(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;)V

    return-void
.end method

.method static synthetic accessor$TypeIntersectionScope$lambda0(Lkotlin/reflect/jvm/internal/impl/descriptors/SimpleFunctionDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;
    .registers 1

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope;->getContributedFunctions$lambda$0(Lkotlin/reflect/jvm/internal/impl/descriptors/SimpleFunctionDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic accessor$TypeIntersectionScope$lambda1(Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;
    .registers 1

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope;->getContributedVariables$lambda$1(Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic accessor$TypeIntersectionScope$lambda2(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;
    .registers 1

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope;->getContributedDescriptors$lambda$3(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Ljava/lang/String;Ljava/util/Collection;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope;->Companion:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope$Companion;

    invoke-virtual {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope$Companion;->create(Ljava/lang/String;Ljava/util/Collection;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p0

    return-object p0
.end method

.method private static final getContributedDescriptors$lambda$3(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;
    .registers 2

    const-string v0, "$this$selectMostSpecificInEachOverridableGroup"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final getContributedFunctions$lambda$0(Lkotlin/reflect/jvm/internal/impl/descriptors/SimpleFunctionDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;
    .registers 2

    const-string v0, "$this$selectMostSpecificInEachOverridableGroup"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;

    return-object p0
.end method

.method private static final getContributedVariables$lambda$1(Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;
    .registers 2

    const-string v0, "$this$selectMostSpecificInEachOverridableGroup"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;

    return-object p0
.end method


# virtual methods
.method public getContributedDescriptors(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/DescriptorKindFilter;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/DescriptorKindFilter;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;",
            ">;"
        }
    .end annotation

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-super {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/AbstractScopeAdapter;->getContributedDescriptors(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/DescriptorKindFilter;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 60
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 63
    move-object v2, v1

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    .line 36
    instance-of v2, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;

    if-eqz v2, :cond_33

    .line 64
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 66
    :cond_33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 69
    :cond_37
    new-instance p1, Lkotlin/Pair;

    invoke-direct {p1, p2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 39
    const-string v0, "null cannot be cast to non-null type kotlin.collections.Collection<org.jetbrains.kotlin.descriptors.CallableDescriptor>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/util/Collection;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope$$Lambda$2;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope$$Lambda$2;

    invoke-static {p2, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtilsKt;->selectMostSpecificInEachOverridableGroup(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;

    move-result-object p2

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p2, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public getContributedFunctions(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            "Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;",
            ")",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/SimpleFunctionDescriptor;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-super {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/AbstractScopeAdapter;->getContributedFunctions(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;)Ljava/util/Collection;

    move-result-object p1

    sget-object p2, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope$$Lambda$0;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope$$Lambda$0;

    invoke-static {p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtilsKt;->selectMostSpecificInEachOverridableGroup(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getContributedVariables(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            "Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;",
            ")",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-super {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/AbstractScopeAdapter;->getContributedVariables(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;)Ljava/util/Collection;

    move-result-object p1

    sget-object p2, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope$$Lambda$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope$$Lambda$1;

    invoke-static {p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtilsKt;->selectMostSpecificInEachOverridableGroup(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method protected getWorkerScope()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .registers 2

    .line 28
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope;->workerScope:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.resolve.scopes.TypeIntersectionScope.Companion (kotlin.reflect.jvm.internal.impl.resolve.scopes.TypeIntersectionScope$Companion)
.class public final Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope$Companion;
.super Ljava/lang/Object;
.source "TypeIntersectionScope.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTypeIntersectionScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypeIntersectionScope.kt\norg/jetbrains/kotlin/resolve/scopes/TypeIntersectionScope$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,59:1\n1563#2:60\n1634#2,3:61\n*S KotlinDebug\n*F\n+ 1 TypeIntersectionScope.kt\norg/jetbrains/kotlin/resolve/scopes/TypeIntersectionScope$Companion\n*L\n50#1:60\n50#1:61,3\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/String;Ljava/util/Collection;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "types"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    check-cast p2, Ljava/lang/Iterable;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 61
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 62
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 50
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v1

    .line 62
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 63
    :cond_31
    check-cast v0, Ljava/util/List;

    .line 60
    check-cast v0, Ljava/lang/Iterable;

    .line 50
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/util/collectionUtils/ScopeUtilsKt;->listOfNonEmptyScopes(Ljava/lang/Iterable;)Lkotlin/reflect/jvm/internal/impl/utils/SmartList;

    move-result-object p2

    .line 51
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ChainedMemberScope;->Companion:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ChainedMemberScope$Companion;

    move-object v1, p2

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ChainedMemberScope$Companion;->createOrSingle$descriptors(Ljava/lang/String;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v0

    .line 53
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->size()I

    move-result p2

    const/4 v1, 0x1

    if-gt p2, v1, :cond_4a

    return-object v0

    .line 55
    :cond_4a
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope;

    const/4 v1, 0x0

    invoke-direct {p2, p1, v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope;-><init>(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    return-object p2
.end method

###### Class kotlin.reflect.jvm.internal.impl.resolve.scopes.TypeIntersectionScope$$Lambda$0 (kotlin.reflect.jvm.internal.impl.resolve.scopes.TypeIntersectionScope$$Lambda$0)
.class Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope$$Lambda$0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope$$Lambda$0;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope$$Lambda$0;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope$$Lambda$0;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope$$Lambda$0;

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

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/SimpleFunctionDescriptor;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope;->accessor$TypeIntersectionScope$lambda0(Lkotlin/reflect/jvm/internal/impl/descriptors/SimpleFunctionDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;

    move-result-object p1

    return-object p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.resolve.scopes.TypeIntersectionScope$$Lambda$1 (kotlin.reflect.jvm.internal.impl.resolve.scopes.TypeIntersectionScope$$Lambda$1)
.class Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope$$Lambda$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope$$Lambda$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope$$Lambda$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope$$Lambda$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope$$Lambda$1;

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

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope;->accessor$TypeIntersectionScope$lambda1(Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;

    move-result-object p1

    return-object p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.resolve.scopes.TypeIntersectionScope$$Lambda$2 (kotlin.reflect.jvm.internal.impl.resolve.scopes.TypeIntersectionScope$$Lambda$2)
.class Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope$$Lambda$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope$$Lambda$2;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope$$Lambda$2;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope$$Lambda$2;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope$$Lambda$2;

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

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope;->accessor$TypeIntersectionScope$lambda2(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;

    move-result-object p1

    return-object p1
.end method
