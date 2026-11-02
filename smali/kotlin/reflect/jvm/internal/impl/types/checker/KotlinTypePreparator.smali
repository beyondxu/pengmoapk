###### Class kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypePreparator (kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypePreparator)
.class public abstract Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;
.super Lkotlin/reflect/jvm/internal/impl/types/AbstractTypePreparator;
.source "KotlinTypePreparator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$Default;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKotlinTypePreparator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KotlinTypePreparator.kt\norg/jetbrains/kotlin/types/checker/KotlinTypePreparator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 IntersectionTypeConstructor.kt\norg/jetbrains/kotlin/types/IntersectionTypeConstructorKt\n+ 5 IntersectionTypeConstructor.kt\norg/jetbrains/kotlin/types/IntersectionTypeConstructorKt$transformComponents$1\n*L\n1#1,76:1\n1#2:77\n1563#3:78\n1634#3,3:79\n1563#3:82\n1634#3,3:83\n1563#3:92\n1634#3,2:93\n1636#3:102\n98#4,6:86\n104#4:95\n105#4,5:97\n112#4,7:103\n99#5:96\n*S KotlinDebug\n*F\n+ 1 KotlinTypePreparator.kt\norg/jetbrains/kotlin/types/checker/KotlinTypePreparator\n*L\n27#1:78\n27#1:79,3\n37#1:82\n37#1:83,3\n48#1:92\n48#1:93,2\n48#1:102\n48#1:86,6\n48#1:95\n48#1:97,5\n48#1:103,7\n48#1:96\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypePreparator;-><init>()V

    return-void
.end method

.method private final transformToNewType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .registers 16

    .line 19
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    .line 21
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-eqz v1, :cond_86

    .line 22
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;->getProjection()Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v4

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne v4, v5, :cond_1a

    goto :goto_1b

    :cond_1a
    move-object v1, v3

    :goto_1b
    if-eqz v1, :cond_27

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v3

    :cond_27
    move-object v7, v3

    .line 25
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;->getNewTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;

    move-result-object v1

    if-nez v1, :cond_69

    .line 27
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;->getProjection()Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    move-result-object v9

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;->getSupertypes()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 78
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 79
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 80
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 27
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v2

    .line 80
    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 81
    :cond_5b
    move-object v10, v3

    check-cast v10, Ljava/util/List;

    .line 27
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;-><init>(Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 26
    invoke-virtual {v0, v8}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;->setNewTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;)V

    .line 29
    :cond_69
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedType;

    .line 30
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;->FOR_SUBTYPING:Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;->getNewTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 31
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getAttributes()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v8

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->isMarkedNullable()Z

    move-result v9

    const/16 v11, 0x20

    const/4 v12, 0x0

    const/4 v10, 0x0

    .line 29
    invoke-direct/range {v4 .. v12}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedType;-><init>(Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    return-object v4

    .line 35
    :cond_86
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/IntegerValueTypeConstructor;

    const/4 v4, 0x0

    if-eqz v1, :cond_db

    .line 37
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/IntegerValueTypeConstructor;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/IntegerValueTypeConstructor;->getSupertypes()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 83
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bf

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 84
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 37
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->isMarkedNullable()Z

    move-result v3

    invoke-static {v2, v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeNullableAsSpecified(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Z)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v2

    const-string v3, "makeNullableAsSpecified(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a2

    .line 85
    :cond_bf
    check-cast v1, Ljava/util/List;

    .line 82
    check-cast v1, Ljava/util/Collection;

    .line 37
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;-><init>(Ljava/util/Collection;)V

    .line 39
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getAttributes()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v1

    .line 40
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 41
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 43
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p1

    .line 38
    invoke-static {v1, v0, v2, v4, p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->simpleTypeWithNonTrivialMemberScope(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    return-object p1

    .line 47
    :cond_db
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    if-eqz v1, :cond_133

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->isMarkedNullable()Z

    move-result v1

    if-eqz v1, :cond_133

    .line 48
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    .line 91
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->getSupertypes()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 93
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_fc
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_111

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 94
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 48
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->makeNullable(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v2

    .line 94
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    goto :goto_fc

    .line 102
    :cond_111
    check-cast v1, Ljava/util/List;

    if-nez v4, :cond_116

    goto :goto_12b

    .line 105
    :cond_116
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->getAlternativeType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p1

    if-eqz p1, :cond_120

    .line 48
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->makeNullable(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v3

    .line 109
    :cond_120
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {p1, v1}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v3}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->setAlternative(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    move-result-object v3

    :goto_12b
    if-nez v3, :cond_12e

    goto :goto_12f

    :cond_12e
    move-object v0, v3

    .line 49
    :goto_12f
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->createType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    :cond_133
    return-object p1
.end method


# virtual methods
.method public prepareType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    .registers 6

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    if-eqz v0, :cond_5b

    .line 59
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p1

    .line 61
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    if-eqz v0, :cond_1d

    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;->transformToNewType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    goto :goto_47

    .line 62
    :cond_1d
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    if-eqz v0, :cond_55

    .line 63
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->getLowerBound()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;->transformToNewType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    .line 64
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->getUpperBound()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v2

    invoke-direct {p0, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;->transformToNewType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v2

    .line 65
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->getLowerBound()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v3

    if-ne v1, v3, :cond_43

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->getUpperBound()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    if-eq v2, v0, :cond_41

    goto :goto_43

    :cond_41
    move-object v0, p1

    goto :goto_47

    .line 66
    :cond_43
    :goto_43
    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->flexibleType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v0

    .line 71
    :goto_47
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$prepareType$1;

    invoke-direct {v1, p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$prepareType$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeWithEnhancementKt;->inheritEnhancement(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p1

    return-object p1

    .line 60
    :cond_55
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 58
    :cond_5b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic prepareType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    .registers 2

    .line 16
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;->prepareType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    return-object p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypePreparator.Default (kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypePreparator$Default)
.class public final Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$Default;
.super Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;
.source "KotlinTypePreparator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Default"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$Default;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$Default;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$Default;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$Default;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$Default;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;-><init>()V

    return-void
.end method

###### Class kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypePreparator.AnonymousClass1 (kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypePreparator$prepareType$1)
.class final synthetic Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$prepareType$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "KotlinTypePreparator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;->prepareType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;",
        "Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 9

    const-class v3, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;

    const-string v5, "prepareType(Lorg/jetbrains/kotlin/types/model/KotlinTypeMarker;)Lorg/jetbrains/kotlin/types/UnwrappedType;"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-string v4, "prepareType"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 71
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$prepareType$1;->invoke(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    .registers 3

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$prepareType$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;->prepareType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p1

    return-object p1
.end method
