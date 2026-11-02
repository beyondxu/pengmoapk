###### Class kotlin.reflect.jvm.internal.impl.resolve.constants.KClassValue (kotlin.reflect.jvm.internal.impl.resolve.constants.KClassValue)
.class public final Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue;
.super Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;
.source "constantValues.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Companion;,
        Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue<",
        "Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue;->Companion:Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/name/ClassId;I)V
    .registers 4

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;

    invoke-direct {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;-><init>(Lkotlin/reflect/jvm/internal/impl/name/ClassId;I)V

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$NormalClass;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$NormalClass;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value;

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getArgumentType(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .registers 7

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value;

    .line 190
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$LocalClass;

    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$LocalClass;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$LocalClass;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p1

    return-object p1

    .line 191
    :cond_1a
    instance-of v0, v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$NormalClass;

    if-eqz v0, :cond_74

    .line 192
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$NormalClass;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$NormalClass;->getValue()Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;->component1()Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;->component2()I

    move-result v0

    .line 193
    invoke-static {p1, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt;->findClassAcrossModuleDependencies(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v2

    if-nez v2, :cond_4b

    .line 194
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->UNRESOLVED_KCLASS_CONSTANT_VALUE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->createErrorType(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    return-object p1

    .line 198
    :cond_4b
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    const-string v2, "getDefaultType(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->replaceArgumentsWithStarProjections(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v1

    const/4 v2, 0x0

    :goto_5b
    if-ge v2, v0, :cond_71

    .line 200
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object v3

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-virtual {v3, v4, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getArrayType(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    const-string v3, "getArrayType(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    .line 203
    :cond_71
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    return-object v1

    .line 189
    :cond_74
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public getType(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .registers 5

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->getEmpty()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v0

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getKClass()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v1

    const-string v2, "getKClass(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue;->getArgumentType(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p1

    invoke-direct {v2, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->simpleNotNullType(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    return-object p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.resolve.constants.KClassValue.Companion (kotlin.reflect.jvm.internal.impl.resolve.constants.KClassValue$Companion)
.class public final Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Companion;
.super Ljava/lang/Object;
.source "constantValues.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue<",
            "*>;"
        }
    .end annotation

    const-string v0, "argumentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    return-object v1

    :cond_d
    const/4 v0, 0x0

    move-object v2, p1

    const/4 v3, 0x0

    .line 216
    :goto_10
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isArray(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 217
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v2

    const-string v4, "getType(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 221
    :cond_2c
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v2

    .line 222
    instance-of v4, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-eqz v4, :cond_55

    .line 223
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getClassId(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v0

    if-nez v0, :cond_4d

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$LocalClass;

    invoke-direct {v1, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$LocalClass;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;

    return-object v0

    .line 224
    :cond_4d
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue;

    invoke-direct {p1, v0, v3}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue;-><init>(Lkotlin/reflect/jvm/internal/impl/name/ClassId;I)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;

    return-object p1

    .line 226
    :cond_55
    instance-of p1, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    if-eqz p1, :cond_6d

    .line 231
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->Companion:Lkotlin/reflect/jvm/internal/impl/name/ClassId$Companion;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->any:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;->toSafe()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/name/ClassId$Companion;->topLevel(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue;-><init>(Lkotlin/reflect/jvm/internal/impl/name/ClassId;I)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;

    return-object p1

    :cond_6d
    return-object v1
.end method

###### Class kotlin.reflect.jvm.internal.impl.resolve.constants.KClassValue.Value (kotlin.reflect.jvm.internal.impl.resolve.constants.KClassValue$Value)
.class public abstract Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value;
.super Ljava/lang/Object;
.source "constantValues.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$LocalClass;,
        Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$NormalClass;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value;-><init>()V

    return-void
.end method

###### Class kotlin.reflect.jvm.internal.impl.resolve.constants.KClassValue.Value.LocalClass (kotlin.reflect.jvm.internal.impl.resolve.constants.KClassValue$Value$LocalClass)
.class public final Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$LocalClass;
.super Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value;
.source "constantValues.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocalClass"
.end annotation


# instance fields
.field private final type:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V
    .registers 3

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 178
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$LocalClass;->type:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$LocalClass;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$LocalClass;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$LocalClass;->type:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$LocalClass;->type:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .registers 2

    .line 178
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$LocalClass;->type:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$LocalClass;->type:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LocalClass(type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$LocalClass;->type:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.resolve.constants.KClassValue.Value.NormalClass (kotlin.reflect.jvm.internal.impl.resolve.constants.KClassValue$Value$NormalClass)
.class public final Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$NormalClass;
.super Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value;
.source "constantValues.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NormalClass"
.end annotation


# instance fields
.field private final value:Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 173
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$NormalClass;->value:Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$NormalClass;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$NormalClass;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$NormalClass;->value:Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$NormalClass;->value:Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getArrayDimensions()I
    .registers 2

    .line 175
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$NormalClass;->value:Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;->getArrayNestedness()I

    move-result v0

    return v0
.end method

.method public final getClassId()Lkotlin/reflect/jvm/internal/impl/name/ClassId;
    .registers 2

    .line 174
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$NormalClass;->value:Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;->getClassId()Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;
    .registers 2

    .line 173
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$NormalClass;->value:Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$NormalClass;->value:Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NormalClass(value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$NormalClass;->value:Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
