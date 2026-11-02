###### Class kotlin.reflect.jvm.internal.impl.load.java.SpecialBuiltinMembers (kotlin.reflect.jvm.internal.impl.load.java.SpecialBuiltinMembers)
.class public final Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers;
.super Ljava/lang/Object;
.source "specialBuiltinMembers.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nspecialBuiltinMembers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 specialBuiltinMembers.kt\norg/jetbrains/kotlin/load/java/SpecialBuiltinMembers\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,177:1\n1#2:178\n*E\n"
.end annotation


# direct methods
.method static synthetic accessor$SpecialBuiltinMembers$lambda0(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Z
    .registers 1

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers;->getOverriddenBuiltinWithDifferentJvmName$lambda$0(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Z

    move-result p0

    return p0
.end method

.method static synthetic accessor$SpecialBuiltinMembers$lambda1(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Z
    .registers 1

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers;->getOverriddenBuiltinWithDifferentJvmName$lambda$1(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Z

    move-result p0

    return p0
.end method

.method static synthetic accessor$SpecialBuiltinMembers$lambda2(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Z
    .registers 1

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers;->getOverriddenSpecialBuiltin$lambda$3(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Z

    move-result p0

    return p0
.end method

.method public static final doesOverrideBuiltinWithDifferentJvmName(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers;->getOverriddenBuiltinWithDifferentJvmName(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object p0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public static final getJvmMethodNameIfSpecial(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Ljava/lang/String;
    .registers 3

    const-string v0, "callableMemberDescriptor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers;->getOverriddenBuiltinThatAffectsJvmName(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_31

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getPropertyIfAccessor(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object p0

    if-nez p0, :cond_13

    goto :goto_31

    .line 133
    :cond_13
    instance-of v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    if-eqz v1, :cond_1e

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/ClassicBuiltinSpecialProperties;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/ClassicBuiltinSpecialProperties;

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/ClassicBuiltinSpecialProperties;->getBuiltinSpecialPropertyGetterName(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 134
    :cond_1e
    instance-of v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/SimpleFunctionDescriptor;

    if-eqz v1, :cond_31

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/BuiltinMethodsWithDifferentJvmName;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/BuiltinMethodsWithDifferentJvmName;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/SimpleFunctionDescriptor;

    invoke-virtual {v1, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/BuiltinMethodsWithDifferentJvmName;->getJvmName(Lkotlin/reflect/jvm/internal/impl/descriptors/SimpleFunctionDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object p0

    if-eqz p0, :cond_31

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_31
    :goto_31
    return-object v0
.end method

.method private static final getOverriddenBuiltinThatAffectsJvmName(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;
    .registers 2

    .line 142
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isBuiltIn(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers;->getOverriddenBuiltinWithDifferentJvmName(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object p0

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getOverriddenBuiltinWithDifferentJvmName(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;",
            ">(TT;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialGenericSignatures;->Companion:Lkotlin/reflect/jvm/internal/impl/load/java/SpecialGenericSignatures$Companion;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialGenericSignatures$Companion;->getORIGINAL_SHORT_NAMES()Ljava/util/Set;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/Named;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/Named;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2e

    .line 86
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/BuiltinSpecialProperties;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/BuiltinSpecialProperties;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/BuiltinSpecialProperties;->getSPECIAL_SHORT_NAMES()Ljava/util/Set;

    move-result-object v0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getPropertyIfAccessor(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    return-object v1

    .line 90
    :cond_2e
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_45

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyAccessorDescriptor;

    if-eqz v0, :cond_39

    goto :goto_45

    .line 92
    :cond_39
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/SimpleFunctionDescriptor;

    if-eqz v0, :cond_44

    .line 93
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers$$Lambda$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers$$Lambda$1;

    invoke-static {p0, v3, v0, v2, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->firstOverridden$default(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object p0

    return-object p0

    :cond_44
    return-object v1

    .line 91
    :cond_45
    :goto_45
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers$$Lambda$0;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers$$Lambda$0;

    invoke-static {p0, v3, v0, v2, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->firstOverridden$default(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object p0

    return-object p0
.end method

.method private static final getOverriddenBuiltinWithDifferentJvmName$lambda$0(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Z
    .registers 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/ClassicBuiltinSpecialProperties;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/ClassicBuiltinSpecialProperties;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getPropertyIfAccessor(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/ClassicBuiltinSpecialProperties;->hasBuiltinSpecialPropertyFqName(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Z

    move-result p0

    return p0
.end method

.method private static final getOverriddenBuiltinWithDifferentJvmName$lambda$1(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Z
    .registers 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/BuiltinMethodsWithDifferentJvmName;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/BuiltinMethodsWithDifferentJvmName;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/SimpleFunctionDescriptor;

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/BuiltinMethodsWithDifferentJvmName;->isBuiltinFunctionWithDifferentNameInJvm(Lkotlin/reflect/jvm/internal/impl/descriptors/SimpleFunctionDescriptor;)Z

    move-result p0

    return p0
.end method

.method public static final getOverriddenSpecialBuiltin(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;",
            ">(TT;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers;->getOverriddenBuiltinWithDifferentJvmName(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object v0

    if-eqz v0, :cond_c

    return-object v0

    .line 106
    :cond_c
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/BuiltinMethodsWithSpecialGenericSignature;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/BuiltinMethodsWithSpecialGenericSignature;

    move-object v1, p0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/Named;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/Named;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    const-string v2, "getName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/BuiltinMethodsWithSpecialGenericSignature;->getSameAsBuiltinMethodWithErasedValueParameters(Lkotlin/reflect/jvm/internal/impl/name/Name;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_22

    return-object v1

    .line 108
    :cond_22
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers$$Lambda$2;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers$$Lambda$2;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v2, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->firstOverridden$default(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object p0

    return-object p0
.end method

.method private static final getOverriddenSpecialBuiltin$lambda$3(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Z
    .registers 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isBuiltIn(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/BuiltinMethodsWithSpecialGenericSignature;->getSpecialSignatureInfo(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/load/java/SpecialGenericSignatures$SpecialSignatureInfo;

    move-result-object p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static final hasRealKotlinSuperClassWithOverrideOf(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;)Z
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "specialCallableDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    const-string v0, "getDefaultType(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getSuperClassDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object p0

    :goto_22
    if-eqz p0, :cond_45

    .line 153
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassDescriptor;

    if-nez v0, :cond_40

    .line 157
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-object v1, p1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->findCorrespondingSupertype(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 160
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isBuiltIn(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 164
    :cond_40
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getSuperClassDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object p0

    goto :goto_22

    :cond_45
    const/4 p0, 0x0

    return p0
.end method

.method public static final isFromJava(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getPropertyIfAccessor(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object p0

    .line 173
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object p0

    instance-of p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassDescriptor;

    return p0
.end method

.method public static final isFromJavaOrBuiltins(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers;->isFromJava(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Z

    move-result v0

    if-nez v0, :cond_16

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isBuiltIn(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result p0

    if-eqz p0, :cond_14

    goto :goto_16

    :cond_14
    const/4 p0, 0x0

    return p0

    :cond_16
    :goto_16
    const/4 p0, 0x1

    return p0
.end method

###### Class kotlin.reflect.jvm.internal.impl.load.java.SpecialBuiltinMembers$$Lambda$0 (kotlin.reflect.jvm.internal.impl.load.java.SpecialBuiltinMembers$$Lambda$0)
.class Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers$$Lambda$0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers$$Lambda$0;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers$$Lambda$0;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers$$Lambda$0;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers$$Lambda$0;

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

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers;->accessor$SpecialBuiltinMembers$lambda0(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.load.java.SpecialBuiltinMembers$$Lambda$1 (kotlin.reflect.jvm.internal.impl.load.java.SpecialBuiltinMembers$$Lambda$1)
.class Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers$$Lambda$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers$$Lambda$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers$$Lambda$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers$$Lambda$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers$$Lambda$1;

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

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers;->accessor$SpecialBuiltinMembers$lambda1(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.load.java.SpecialBuiltinMembers$$Lambda$2 (kotlin.reflect.jvm.internal.impl.load.java.SpecialBuiltinMembers$$Lambda$2)
.class Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers$$Lambda$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers$$Lambda$2;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers$$Lambda$2;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers$$Lambda$2;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers$$Lambda$2;

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

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers;->accessor$SpecialBuiltinMembers$lambda2(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
