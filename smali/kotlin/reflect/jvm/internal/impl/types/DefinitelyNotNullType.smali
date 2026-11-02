###### Class kotlin.reflect.jvm.internal.impl.types.DefinitelyNotNullType (kotlin.reflect.jvm.internal.impl.types.DefinitelyNotNullType)
.class public final Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;
.super Lkotlin/reflect/jvm/internal/impl/types/DelegatingSimpleType;
.source "SpecialTypes.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/types/CustomTypeParameter;
.implements Lkotlin/reflect/jvm/internal/impl/types/model/DefinitelyNotNullTypeMarker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType$Companion;


# instance fields
.field private final original:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

.field private final useCorrectedNullabilityForTypeParameters:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;->Companion:Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType$Companion;

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Z)V
    .registers 3

    .line 95
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/types/DelegatingSimpleType;-><init>()V

    .line 93
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;->original:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 94
    iput-boolean p2, p0, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;->useCorrectedNullabilityForTypeParameters:Z

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;-><init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Z)V

    return-void
.end method


# virtual methods
.method protected getDelegate()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .registers 2

    .line 166
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;->original:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    return-object v0
.end method

.method public final getOriginal()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .registers 2

    .line 93
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;->original:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    return-object v0
.end method

.method public isMarkedNullable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isTypeParameter()Z
    .registers 2

    .line 172
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;->getDelegate()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    instance-of v0, v0, Lkotlin/reflect/jvm/internal/impl/types/checker/NewTypeVariableConstructor;

    if-nez v0, :cond_1f

    .line 173
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;->getDelegate()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v0

    instance-of v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    return v0

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    return v0
.end method

.method public makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .registers 3

    if-eqz p1, :cond_b

    .line 182
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;->getDelegate()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    return-object p1

    :cond_b
    move-object p1, p0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    return-object p1
.end method

.method public bridge synthetic makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    .registers 2

    .line 92
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    return-object p1
.end method

.method public replaceAttributes(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .registers 4

    const-string v0, "newAttributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;->getDelegate()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    invoke-virtual {v1, p1}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->replaceAttributes(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    iget-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;->useCorrectedNullabilityForTypeParameters:Z

    invoke-direct {v0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;-><init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Z)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    return-object v0
.end method

.method public bridge synthetic replaceAttributes(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    .registers 2

    .line 92
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;->replaceAttributes(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    return-object p1
.end method

.method public replaceDelegate(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;
    .registers 4

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;

    iget-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;->useCorrectedNullabilityForTypeParameters:Z

    invoke-direct {v0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;-><init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Z)V

    return-object v0
.end method

.method public bridge synthetic replaceDelegate(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/DelegatingSimpleType;
    .registers 2

    .line 92
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;->replaceDelegate(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/DelegatingSimpleType;

    return-object p1
.end method

.method public substitutionResult(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .registers 3

    const-string v0, "replacement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p1

    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;->useCorrectedNullabilityForTypeParameters:Z

    invoke-static {p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/SpecialTypesKt;->makeDefinitelyNotNullOrNotNull(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Z)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;->getDelegate()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " & Any"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.types.DefinitelyNotNullType.Companion (kotlin.reflect.jvm.internal.impl.types.DefinitelyNotNullType$Companion)
.class public final Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType$Companion;
.super Ljava/lang/Object;
.source "SpecialTypes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType$Companion;-><init>()V

    return-void
.end method

.method private final canHaveUndefinedNullability(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;)Z
    .registers 3

    .line 158
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    instance-of v0, v0, Lkotlin/reflect/jvm/internal/impl/types/checker/NewTypeVariableConstructor;

    if-nez v0, :cond_1f

    .line 159
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v0

    instance-of v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    if-nez v0, :cond_1f

    .line 160
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedType;

    if-nez v0, :cond_1f

    .line 161
    instance-of p1, p1, Lkotlin/reflect/jvm/internal/impl/types/StubTypeForBuilderInference;

    if-eqz p1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p1, 0x0

    return p1

    :cond_1f
    :goto_1f
    const/4 p1, 0x1

    return p1
.end method

.method public static synthetic makeDefinitelyNotNull$default(Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType$Companion;Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;ZZILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;
    .registers 7

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    const/4 p2, 0x0

    :cond_6
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_b

    const/4 p3, 0x0

    .line 100
    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType$Companion;->makeDefinitelyNotNull(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;ZZ)Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;

    move-result-object p0

    return-object p0
.end method

.method private final makesSenseToBeDefinitelyNotNull(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Z)Z
    .registers 5

    .line 133
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType$Companion;->canHaveUndefinedNullability(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 135
    :cond_8
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/types/StubTypeForBuilderInference;

    if-eqz v0, :cond_13

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->isNullableType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result p1

    return p1

    .line 137
    :cond_13
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v0

    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;

    if-eqz v1, :cond_22

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    const/4 v1, 0x1

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2d

    return v1

    :cond_2d
    if-eqz p2, :cond_42

    .line 147
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p2

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object p2

    instance-of p2, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    if-eqz p2, :cond_42

    .line 149
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->isNullableType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result p1

    return p1

    .line 154
    :cond_42
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/types/checker/NullabilityChecker;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/checker/NullabilityChecker;

    invoke-virtual {p2, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/NullabilityChecker;->isSubtypeOfAny(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method


# virtual methods
.method public final makeDefinitelyNotNull(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;ZZ)Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;
    .registers 6

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;

    if-eqz v0, :cond_c

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;

    return-object p1

    :cond_c
    const/4 v0, 0x0

    if-nez p3, :cond_17

    .line 114
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType$Companion;->makesSenseToBeDefinitelyNotNull(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Z)Z

    move-result p3

    if-eqz p3, :cond_16

    goto :goto_17

    :cond_16
    return-object v0

    .line 115
    :cond_17
    :goto_17
    instance-of p3, p1, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    if-eqz p3, :cond_31

    .line 116
    move-object p3, p1

    check-cast p3, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->getLowerBound()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v1

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->getUpperBound()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p3

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p3

    invoke-static {v1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    :cond_31
    new-instance p3, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleTypesKt;->lowerIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    invoke-direct {p3, p1, p2, v0}, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;-><init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p3
.end method
