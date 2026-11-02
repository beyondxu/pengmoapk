###### Class kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.TypeEnhancementKt (kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.TypeEnhancementKt)
.class public final Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementKt;
.super Ljava/lang/Object;
.source "typeEnhancement.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementKt$WhenMappings;
    }
.end annotation


# static fields
.field private static final ENHANCED_MUTABILITY_ANNOTATIONS:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/EnhancedTypeAnnotations;

.field private static final ENHANCED_NULLABILITY_ANNOTATIONS:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 202
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/EnhancedTypeAnnotations;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAnnotationNames;->ENHANCED_NULLABILITY_ANNOTATION:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v2, "ENHANCED_NULLABILITY_ANNOTATION"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/EnhancedTypeAnnotations;-><init>(Lkotlin/reflect/jvm/internal/impl/name/FqName;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementKt;->ENHANCED_NULLABILITY_ANNOTATIONS:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 203
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/EnhancedTypeAnnotations;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAnnotationNames;->ENHANCED_MUTABILITY_ANNOTATION:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v2, "ENHANCED_MUTABILITY_ANNOTATION"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/EnhancedTypeAnnotations;-><init>(Lkotlin/reflect/jvm/internal/impl/name/FqName;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementKt;->ENHANCED_MUTABILITY_ANNOTATIONS:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/EnhancedTypeAnnotations;

    return-void
.end method

.method public static final synthetic access$compositeAnnotationsOrSingle(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;
    .registers 1

    .line 1
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementKt;->compositeAnnotationsOrSingle(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$enhanceMutability(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementKt;->enhanceMutability(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getENHANCED_MUTABILITY_ANNOTATIONS$p()Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/EnhancedTypeAnnotations;
    .registers 1

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementKt;->ENHANCED_MUTABILITY_ANNOTATIONS:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/EnhancedTypeAnnotations;

    return-object v0
.end method

.method public static final synthetic access$getEnhancedNullability(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;)Ljava/lang/Boolean;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementKt;->getEnhancedNullability(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static final compositeAnnotationsOrSingle(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;"
        }
    .end annotation

    .line 171
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v1, 0x1

    if-eq v0, v1, :cond_17

    .line 174
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/CompositeAnnotations;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/CompositeAnnotations;-><init>(Ljava/util/List;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    return-object v0

    .line 173
    :cond_17
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    return-object p0

    .line 171
    :cond_1e
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 172
    const-string v0, "At least one Annotations object expected"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final enhanceMutability(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    .registers 7

    .line 181
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMapper;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMapper;

    .line 183
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPositionKt;->shouldEnhance(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return-object v2

    .line 184
    :cond_a
    instance-of v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-nez v1, :cond_f

    return-object v2

    .line 185
    :cond_f
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->getMutability()Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    move-result-object v1

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;->READ_ONLY:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    if-ne v1, v3, :cond_2b

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;->FLEXIBLE_LOWER:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;

    if-ne p2, v1, :cond_2b

    move-object v1, p0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMapper;->isMutable(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 186
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMapper;->convertMutableToReadOnly(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    return-object p0

    .line 187
    :cond_2b
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->getMutability()Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    move-result-object p1

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;->MUTABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/MutabilityQualifier;

    if-ne p1, v1, :cond_46

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;->FLEXIBLE_UPPER:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;

    if-ne p2, p1, :cond_46

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMapper;->isReadOnly(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)Z

    move-result p1

    if-eqz p1, :cond_46

    .line 188
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMapper;->convertReadOnlyToMutable(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    return-object p0

    :cond_46
    return-object v2
.end method

.method public static final getENHANCED_NULLABILITY_ANNOTATIONS()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;
    .registers 1

    .line 202
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementKt;->ENHANCED_NULLABILITY_ANNOTATIONS:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    return-object v0
.end method

.method private static final getEnhancedNullability(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;)Ljava/lang/Boolean;
    .registers 3

    .line 194
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPositionKt;->shouldEnhance(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeComponentPosition;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return-object v0

    .line 195
    :cond_8
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeQualifiers;->getNullability()Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    move-result-object p0

    if-nez p0, :cond_10

    const/4 p0, -0x1

    goto :goto_18

    :cond_10
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->ordinal()I

    move-result p0

    aget p0, p1, p0

    :goto_18
    const/4 p1, 0x1

    if-eq p0, p1, :cond_25

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1f

    return-object v0

    :cond_1f
    const/4 p0, 0x0

    .line 197
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 196
    :cond_25
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static final hasEnhancedNullability(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/SimpleClassicTypeSystemContext;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/checker/SimpleClassicTypeSystemContext;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-static {v0, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementUtilsKt;->hasEnhancedNullability(Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result p0

    return p0
.end method

###### Class kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.TypeEnhancementKt.WhenMappings (kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.TypeEnhancementKt$WhenMappings)
.class public final synthetic Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementKt$WhenMappings;
.super Ljava/lang/Object;
.source "typeEnhancement.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->values()[Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NullabilityQualifier;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/TypeEnhancementKt$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
