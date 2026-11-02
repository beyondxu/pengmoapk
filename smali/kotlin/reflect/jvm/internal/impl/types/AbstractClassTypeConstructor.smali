###### Class kotlin.reflect.jvm.internal.impl.types.AbstractClassTypeConstructor (kotlin.reflect.jvm.internal.impl.types.AbstractClassTypeConstructor)
.class public abstract Lkotlin/reflect/jvm/internal/impl/types/AbstractClassTypeConstructor;
.super Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;
.source "AbstractClassTypeConstructor.java"


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 10

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p0, v2, :cond_c

    if-eq p0, v1, :cond_c

    if-eq p0, v0, :cond_c

    const-string v3, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_e

    :cond_c
    const-string v3, "@NotNull method %s.%s must not return null"

    :goto_e
    const/4 v4, 0x2

    if-eq p0, v2, :cond_17

    if-eq p0, v1, :cond_17

    if-eq p0, v0, :cond_17

    const/4 v5, 0x3

    goto :goto_18

    :cond_17
    const/4 v5, 0x2

    :goto_18
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "kotlin/reflect/jvm/internal/impl/types/AbstractClassTypeConstructor"

    const/4 v7, 0x0

    if-eq p0, v2, :cond_2f

    if-eq p0, v4, :cond_2a

    if-eq p0, v1, :cond_2f

    if-eq p0, v0, :cond_2f

    const-string v8, "storageManager"

    aput-object v8, v5, v7

    goto :goto_31

    :cond_2a
    const-string v8, "classifier"

    aput-object v8, v5, v7

    goto :goto_31

    :cond_2f
    aput-object v6, v5, v7

    :goto_31
    if-eq p0, v2, :cond_3f

    if-eq p0, v1, :cond_3a

    if-eq p0, v0, :cond_3a

    aput-object v6, v5, v2

    goto :goto_43

    :cond_3a
    const-string v6, "getAdditionalNeighboursInSupertypeGraph"

    aput-object v6, v5, v2

    goto :goto_43

    :cond_3f
    const-string v6, "getBuiltIns"

    aput-object v6, v5, v2

    :goto_43
    if-eq p0, v2, :cond_54

    if-eq p0, v4, :cond_50

    if-eq p0, v1, :cond_54

    if-eq p0, v0, :cond_54

    const-string v6, "<init>"

    aput-object v6, v5, v4

    goto :goto_54

    :cond_50
    const-string v6, "isSameClassifier"

    aput-object v6, v5, v4

    :cond_54
    :goto_54
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eq p0, v2, :cond_64

    if-eq p0, v1, :cond_64

    if-eq p0, v0, :cond_64

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_69

    :cond_64
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_69
    throw p0
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;)V
    .registers 3

    if-nez p1, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/AbstractClassTypeConstructor;->$$$reportNull$$$0(I)V

    .line 35
    :cond_6
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;)V

    return-void
.end method


# virtual methods
.method protected defaultSupertypeIfEmpty()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .registers 2

    .line 100
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/AbstractClassTypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isSpecialClassWithNoSupertypes(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    return-object v0

    .line 103
    :cond_c
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/AbstractClassTypeConstructor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getAnyType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    return-object v0
.end method

.method protected getAdditionalNeighboursInSupertypeGraph(Z)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;"
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/AbstractClassTypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v0

    .line 64
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-nez v1, :cond_15

    .line 65
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-nez p1, :cond_14

    const/4 v0, 0x3

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/AbstractClassTypeConstructor;->$$$reportNull$$$0(I)V

    :cond_14
    return-object p1

    .line 68
    :cond_15
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;

    invoke-direct {v1}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;-><init>()V

    .line 76
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    .line 77
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getCompanionObjectDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v0

    if-eqz p1, :cond_32

    if-eqz v0, :cond_32

    .line 91
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_32
    return-object v1
.end method

.method public getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;
    .registers 3

    .line 51
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/AbstractClassTypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getBuiltIns(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/AbstractClassTypeConstructor;->$$$reportNull$$$0(I)V

    :cond_e
    return-object v0
.end method

.method public abstract getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;
.end method

.method public bridge synthetic getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/AbstractClassTypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected isSameClassifier(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;)Z
    .registers 3

    if-nez p1, :cond_6

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/AbstractClassTypeConstructor;->$$$reportNull$$$0(I)V

    .line 56
    :cond_6
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/AbstractClassTypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lkotlin/reflect/jvm/internal/impl/types/AbstractClassTypeConstructor;->areFqNamesEqual(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    const/4 p1, 0x0

    return p1
.end method
